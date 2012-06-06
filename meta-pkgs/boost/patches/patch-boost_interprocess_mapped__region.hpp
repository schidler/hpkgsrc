$NetBSD$

--- boost/interprocess/mapped_region.hpp.orig	2012-06-06 04:46:17.332660736 +0000
+++ boost/interprocess/mapped_region.hpp
@@ -31,9 +31,11 @@
 #    include <unistd.h>
 #    include <sys/stat.h>
 #    include <sys/types.h>
+#  if !defined(__HAIKU__)
 #    if defined(BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS)
 #      include <sys/shm.h>      //System V shared memory...
 #    endif
+#  endif
 #    include <boost/assert.hpp>
 #  else
 #    error Unknown platform
@@ -396,6 +398,7 @@ inline mapped_region::mapped_region
    mapping_handle_t map_hnd = mapping.get_mapping_handle();
 
    //Some systems dont' support XSI shared memory
+   # if !defined(__HAIKU__)
    #ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
    if(map_hnd.is_xsi){
       //Get the size
@@ -438,6 +441,7 @@ inline mapped_region::mapped_region
       return;
    }
    #endif   //ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
+   #endif   //Haiku
    if(size == 0){
       struct ::stat buf;
       if(0 != fstat(map_hnd.handle, &buf)){
@@ -543,6 +547,7 @@ inline bool mapped_region::flush(std::si
 inline void mapped_region::priv_close()
 {
    if(m_base != 0){
+      # if !defined(__HAIKU__)
       #ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
       if(m_is_xsi){
          int ret = ::shmdt(m_base);
@@ -551,6 +556,7 @@ inline void mapped_region::priv_close()
          return;
       }
       #endif //#ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
+      #endif //Haiku
       munmap(static_cast<char*>(m_base) - m_extra_offset, m_size + m_extra_offset);
       m_base = 0;
    }
