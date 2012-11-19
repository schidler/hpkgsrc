/* $NetBSD$ */

static ssize_t
working_pwrite(int fd, const void *buf, size_t nbytes, off_t off)
{
	if (lseek(fd, off, SEEK_SET) == -1)
		return -1;
	return write(fd, buf, nbytes);
}

#undef pwrite
#define	pwrite(fd, buf, nbytes, off) working_pwrite(fd, buf, nbytes,off)
