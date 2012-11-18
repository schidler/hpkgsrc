$NetBSD: patch-lib_rubygems_specification.rb,v 1.1.1.1 2011/11/08 16:10:51 taca Exp $

Changes for pkgsrc environment:

* Allow some attributes to nil.
* Relax date/time format.

--- lib/rubygems/specification.rb.orig	2012-04-19 22:43:16.000000000 +0000
+++ lib/rubygems/specification.rb
@@ -118,6 +118,12 @@ class Gem::Specification
     @@default_value[k].nil?
   }
 
+  # under pkgsrc environment
+  @@pkgsrc_nil_attributes = {}
+  [:authors, :cert_chain, :executables, :extensions, :extra_rdoc_files, :licenses, :required_rubygems_version, :test_files].each do |k|
+    @@pkgsrc_nil_attributes[k] = true
+  end
+
   ######################################################################
   # :section: Required gemspec attributes
 
@@ -1000,7 +1006,7 @@ class Gem::Specification
     # way to do it.
     @date = case date
             when String then
-              if /\A(\d{4})-(\d{2})-(\d{2})\Z/ =~ date then
+              if /\A(\d{4})-(\d{2})-(\d{2})/ =~ date then
                 Time.utc($1.to_i, $2.to_i, $3.to_i)
 
               # Workaround for where the date format output from psych isn't
@@ -1987,7 +1993,24 @@ class Gem::Specification
     normalize
 
     nil_attributes = self.class.non_nil_attributes.find_all do |name|
-      instance_variable_get("@#{name}").nil?
+      val = instance_variable_get("@#{name}")
+      if val.nil?
+        if @@pkgsrc_nil_attributes.key?(name)
+          case name
+          when :required_rubygems_version
+            val = Gem::Requirement.default
+          else
+            val = []
+          end
+          instance_variable_set("@#{name}", val)
+          false
+        end
+      end
+      if name == :authors and val.empty?
+        val = ['not specified']
+        self.authors = val
+        false
+      end
     end
 
     unless nil_attributes.empty? then
@@ -2090,10 +2113,15 @@ class Gem::Specification
       raise Gem::InvalidSpecificationException, "#{lazy} is not a summary"
     end
 
-    if homepage and not homepage.empty? and
-       homepage !~ /\A[a-z][a-z\d+.-]*:/i then
-      raise Gem::InvalidSpecificationException,
-            "\"#{homepage}\" is not a URI"
+    if homepage and not homepage.empty?
+      if @homepage =~ /\A[a-z][a-z\d+.-]*/i and
+          @homepage !~ /\A[a-z][a-z\d+.-]*:/i
+        @homepage = "http://" + @homepage
+      end
+      if homepage !~ /\A[a-z][a-z\d+.-]*:/i then
+        raise Gem::InvalidSpecificationException,
+              "\"#{homepage}\" is not a URI"
+      end
     end
 
     # Warnings
