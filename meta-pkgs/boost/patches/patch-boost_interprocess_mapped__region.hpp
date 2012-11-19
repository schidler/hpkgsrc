$NetBSD$

--- boost/interprocess/mapped_region.hpp.orig	2012-07-19 20:57:54.054001664 +0000
+++ boost/interprocess/mapped_region.hpp
@@ -32,9 +32,11 @@
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
@@ -446,6 +448,7 @@ inline mapped_region::mapped_region
    mapping_handle_t map_hnd = mapping.get_mapping_handle();
 
    //Some systems dont' support XSI shared memory
+   # if !defined(__HAIKU__)
    #ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
    if(map_hnd.is_xsi){
       //Get the size
@@ -487,6 +490,7 @@ inline mapped_region::mapped_region
       return;
    }
    #endif   //ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
+   #endif //Haiku
 
    //We calculate the difference between demanded and valid offset
    const offset_t page_offset = priv_page_offset_addr_fixup(offset, address);
@@ -575,6 +579,7 @@ inline bool mapped_region::flush(std::si
 inline void mapped_region::priv_close()
 {
    if(m_base != 0){
+      # if !defined(__HAIKU__)
       #ifdef BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
       if(m_is_xsi){
          int ret = ::shmdt(m_base);
