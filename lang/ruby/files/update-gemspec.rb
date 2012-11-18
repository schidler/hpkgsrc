#!/usr/pkg/bin/ruby
# -*- coding: utf-8 -*-
#
# $NetBSD: update-gemspec.rb,v 1.3 2011/11/07 11:56:25 taca Exp $
#
# Copyright (c) 2011, 2012 The NetBSD Foundation, Inc.
# All rights reserved.
#
# This code is derived from software contributed to The NetBSD Foundation
# by Takahiro Kambe.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#

#
# This is a quick and dirty tool which updates gemspec file:
#
require 'rubygems'
require 'fileutils'
require 'optparse'

begin
  # Since newer rubygems load psych instead of syck, don't load yaml directly.
  Gem.load_yaml
rescue NoMethodError
  # Older rubygems don't have load_yaml() and don't know about psych.
end

class GemSpecUpdater
  OrigSuffix = '.orig_gemspec'

  def initialize(file)
    @file = file
    open(file) { |f|
      @spec = Gem::Specification.from_yaml(f)
    }
    @requirements = {}
    @attr = {}
  end

  #
  # rule should be:
  #	rule ::= [ dependecy_specs ] [ attr_specs ]
  #	dependency_specs ::= dependency_spec [ dependency_spec ]
  #	dependency_spec ::= name_spec [ dependency ]
  #	name_spec ::= name [ ":" new_name ]
  #	dependency ::= "pkgsrc's dependecy operator and version string"
  #	command ::= ":" attr_name" attr_operations
  #	attr_operations ::= attr_op [ attr_op ]
  #	attr_op ::= new | old=new | old=
  #
  def parse_rules(rules)
    key = nil
    rules.each do |s|
      s.split.each do |ru|
        if /^:([a-z_]+)+/ =~ ru
          key = $1
          @attr[key] = []
        elsif not key.nil?
          @attr[key].push ru
        else
          if /([a-z0-9_:-]+)([=!><\~][=>]*)(.*)/ =~ ru
            names = $1
            op = $2
            ver = $3
            r = Gem::Version.new ver
            name, new_name = names.split(/:/, 2)
            @requirements[name] = {
              :method => :update,
              :op => op,
              :version => r,
              :name => new_name
            }
          elsif /([a-z0-9_-]+):$/ =~ ru
            name = $1
            @requirements[name] = {
              :method => :delete,
            }
          end
        end
      end
    end
  end

  def modify
    dependencies = @spec.instance_variable_get(:@dependencies)

    dependencies.each do |dep|
      next if dep.type != :runtime
      update = @requirements[dep.name]
      if not update.nil? and update[:method] == :update
        r = dep.requirement.requirements
        r[0][0] = update[:op]
        r[0][1] = update[:version]
        unless update[:name].nil?
          dep.name = update[:name]
        end
      end
    end
    dependencies.delete_if { |dep|
      next if dep.type != :runtime
      update = @requirements[dep.name]
      not update.nil? and update[:method] == :delete
    }
    @attr.keys.each do |name|
      av = @spec.instance_variable_get('@' + name)
      if av.class == Array
        operation = @attr[name]
        operation.each do |op|
          if /^([^=]+)=([^=]+)$/ =~ op
            ov = $1
            nv = $2
            av.delete_if {|a| a == ov}
            av.push nv unless av.include? nv
          elsif /^([^=]+)=$/ =~ op
            ov = $1
            av.delete_if {|a| a == ov}
          else
            av.push op unless av.include? op
          end
        end
      end
    end
  end

  def update
    FileUtils.cp(@file, @file + OrigSuffix, :preserve => true)

    open(@file, "w") { |f|
      f.print YAML.dump(@spec) + "\n"
    }
  end

  def dump_dependency
    dependencies = @spec.runtime_dependencies

    dependencies.each do |dep|
      puts "#{dep.name} #{dep.requirement}"
    end
  end
end

def usage(status)
  $stderr.puts <<"EOF"
#{File.basename($0)}: [-n] [-o] [-h] gemspec [rules ...]
	Update gemspec with as version patterns.
	Options:
	-h	Show this help.
	-n	Don't update gemspec file.
	-o	Don't update gemspec file and show original dependency.

EOF
  Process.exit status
end

ENV['TZ'] = 'UTC'

show = false
update = true

opt = OptionParser.new
opt.on('-n') { show = true }
opt.on('-o') { show = true; update = false }
opt.on('-h') { usage 0 }

if ARGV.size < 1
  usage 1
end

opt.parse!(ARGV)

file = ARGV.shift
rules = ARGV

updater = GemSpecUpdater.new file
updater.parse_rules rules
updater.modify if update
if show
  updater.dump_dependency
else
  updater.update
end
