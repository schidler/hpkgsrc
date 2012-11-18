/*	$NetBSD: lstForEachFrom.c,v 1.2 2008/03/09 19:54:29 joerg Exp $	*/

/*
 * Copyright (c) 1988, 1989, 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Adam de Boor.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#ifndef MAKE_NATIVE
static char rcsid[] = "$NetBSD: lstForEachFrom.c,v 1.2 2008/03/09 19:54:29 joerg Exp $";
#else
#include <sys/cdefs.h>
#ifndef lint
#if 0
static char sccsid[] = "@(#)lstForEachFrom.c	8.1 (Berkeley) 6/6/93";
#else
__RCSID("$NetBSD: lstForEachFrom.c,v 1.2 2008/03/09 19:54:29 joerg Exp $");
#endif
#endif /* not lint */
#endif

/*-
 * lstForEachFrom.c --
 *	Perform a given function on all elements of a list starting from
 *	a given point.
 */

#include	"lstInt.h"

/*-
 *-----------------------------------------------------------------------
 * Lst_ForEachFrom --
 *	Apply the given function to each element of the given list. The
 *	function should return 0 if traversal should continue and non-
 *	zero if it should abort.
 *
 * Results:
 *	None.
 *
 * Side Effects:
 *	Only those created by the passed-in function.
 *
 *-----------------------------------------------------------------------
 */
/*VARARGS2*/
int
Lst_ForEachFrom(Lst l, LstNode ln, int (*proc)(void *, void *),
		void *d)
{
    ListNode	tln = ln;
    List 	list = l;
    ListNode	next;
    Boolean 	    	done;
    int     	    	result;

    if (!LstValid (list) || LstIsEmpty (list)) {
	return 0;
    }

    do {
	/*
	 * Take care of having the current element deleted out from under
	 * us.
	 */

	next = tln->nextPtr;

	/*
	 * We're done with the traversal if
	 *  - the next node to examine is the first in the queue or
	 *    doesn't exist and
	 *  - nothing's been added after the current node (check this
	 *    after proc() has been called).
	 */
	done = (next == NULL || next == list->firstPtr);

	(void) tln->useCount++;
	result = (*proc) (tln->datum, d);
	(void) tln->useCount--;

	/*
	 * Now check whether a node has been added.
	 * Note: this doesn't work if this node was deleted before
	 *       the new node was added.
	 */
	if (next != tln->nextPtr) {
		next = tln->nextPtr;
		done = 0;
	}

	if (tln->flags & LN_DELETED) {
	    free((char *)tln);
	}
	tln = next;
    } while (!result && !LstIsEmpty(list) && !done);

    return result;
}

