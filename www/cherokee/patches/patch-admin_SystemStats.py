$NetBSD$

--- admin/SystemStats.py.orig	2011-10-12 18:07:44.064487424 +0000
+++ admin/SystemStats.py
@@ -49,6 +49,8 @@ def get_system_stats():
             _stats = System_stats__OpenBSD()
         elif sys.platform.startswith ('sunos'):
             _stats = System_stats__Solaris()
+        elif sys.platform.startswith ('haiku'):
+            _stats = System_stats__Haiku()
         else:
             _stats = System_stats()
 
@@ -399,8 +401,8 @@ class System_stats__Solaris (Thread, Sys
 
 
 
-# FreeBSD implementation
-class System_stats__FreeBSD (Thread, System_stats):
+# Haiku implementation
+class System_stats__Haiku (Thread, System_stats):
     CHECK_INTERVAL = 2
 
     def __init__ (self):
@@ -507,6 +509,115 @@ class System_stats__FreeBSD (Thread, Sys
             time.sleep (self.CHECK_INTERVAL)
 
 
+
+# FreeBSD implementation
+class System_stats__FreeBSD (Thread, System_stats):
+    CHECK_INTERVAL = 2
+
+    def __init__ (self):
+        Thread.__init__ (self)
+        System_stats.__init__ (self)
+        self.daemon = True
+
+        self.vmstat_fd = subprocess.Popen ("/boot/system/bin/vmstat -r" %(self.CHECK_INTERVAL),
+                                            shell=True, stdout=subprocess.PIPE, close_fds=True )
+
+        # Single read values
+        self._read_info_hostname()
+        self._read_info_cpu_and_mem()
+
+        # Initial status info
+        self._read_cpu_and_memory()
+
+        self.start()
+
+    def _read_info_hostname (self):
+        # First try: uname()
+	self.hostname = os.uname()[1]
+        if self.hostname:
+            return
+
+        # Second try: hostname()
+        ret = popen.popen_sync ("/boot/system/bin/hostname")
+        self.hostname = ret['stdout'].rstrip()
+        if self.hostname:
+            return
+
+        # Could not figure it out
+        self.hostname = "Unknown"
+
+    def _read_info_cpu_and_mem (self):
+	# cpu related
+        ncpus = 0
+        vcpus = 0
+	clock = ''
+
+        # mem related
+	psize  = 0
+	pcount = 0
+
+        # Execute sysinfo. Depending on the version of Haiku some of
+        # these keys might not exist. Thus, /boot/system/bin/sysinfo is executed
+        # with a single key, so in case one were not supported the
+        # rest would not be ignored. (~ Reliability for efficiency)
+        #
+        for key in ("-cpu", "-semaphore", "-teams",
+                    "-mem", "-ports"):
+            ret = popen.popen_sync ("/boot/system/bin/sysinfo %s"%(key))
+            lines = filter (lambda x: x, ret['stdout'].split('\n'))
+
+            for line in lines:
+                parts = line.split()
+                if parts[0] == '-cpu:':
+                    ncpus = int(parts[1])
+                elif parts[0] == '-mem:':
+                    clock = parts[1]
+                elif parts[0] == '-ports:':
+                    vcpus = parts[1]
+                elif parts[0] == '-semaphore:':
+                    pcount = int(parts[1])
+                elif parts[0] == '-teams:':
+                    psize = int(parts[1])
+
+	# Deal with cores
+        if vcpus:
+            self.cpu.num   = str (int(vcpus) / int(ncpus))
+            self.cpu.cores = vcpus
+        else:
+            self.cpu.num   = int (ncpus)
+            self.cpu.cores = int (ncpus)
+
+        # Global speed
+	self.cpu.speed = '%s MHz' %(clock)
+
+	# Physical mem
+	self.mem.total = (psize * pcount) / 1024
+
+    def _read_cpu_and_memory (self):
+	# Read a new line
+        line = self.vmstat_fd.stdout.readline().rstrip('\n')
+
+        # Skip headers
+	if len(filter (lambda x: x not in " -.0123456789", line)):
+	    return
+
+        # Parse
+	parts = filter (lambda x: x, line.split(' '))
+
+        # Memory
+        self.mem.free = int(parts[4])
+        self.mem.used = self.mem.total - self.mem.free
+
+        # CPU
+	self.cpu.idle  = int(parts[-1])
+	self.cpu.usage = 100 - self.cpu.idle
+
+    def run (self):
+        while True:
+            self._read_cpu_and_memory()
+            time.sleep (self.CHECK_INTERVAL)
+
+
 # OpenBSD implementation
 class System_stats__OpenBSD (Thread, System_stats):
     CHECK_INTERVAL = 2
