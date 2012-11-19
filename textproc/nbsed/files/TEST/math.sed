#
#	from: @(#)math.sed	8.1 (Berkeley) 6/6/93
#	$NetBSD: math.sed,v 1.1.1.1 2003/08/18 16:43:12 agc Exp $
#
# Addition and multiplication in sed.
# ++ for a limited time only do (expr) too!!!
#
# Kevin S Braunsdorf, PUCC UNIX Group, ksb@cc.purdue.edu.
#
# Ex:
#	echo "4+7*3" | sed -f %f

# make sure the expression is well formed
s/[ 	]//g
/[+*\/-]$/{
	a\
	poorly formed expression, operator on the end
	q
}
/^[+*\/]/{
	a\
	poorly formed expression, leading operator
	q
}

# fill hold space with done token
x
s/^.*/done/
x

# main loop, process operators (*, + and () )
: loop
/^\+/{
	s///
	b loop
}
/^\(.*\)(\([^)]*\))\(.*\)$/{
	H
	s//\2/
	x
	s/^\(.*\)\n\(.*\)(\([^()]*\))\(.*\)$/()\2@\4@\1/
	x
	b loop
}
/^[0-9]*\*/b mul
/^\([0-9]*\)\+\([0-9+*]*\*[0-9]*\)$/{
	s//\2+\1/
	b loop
}
/^[0-9]*\+/{
	s/$/=/
	b add
}
x
/^done$/{
	x
	p
	d
}
/^()/{
	s///
	x
	G
	s/\(.*\)\n\([^@]*\)@\([^@]*\)@\(.*\)/\2\1\3/
	x
	s/[^@]*@[^@]*@\(.*\)/\1/
	x
	b loop
}
i\
help, stack problem
p
x
p
q

# turn mul into add until 1*x -> x
: mul
/^0*1\*/{
	s///
	b loop
}
/^\([0-9]*\)0\*/{
	s/^\([0-9]*\)0\*\([0-9]*\)/\1*\20/
	b mul
}
s/^\([0-9]*\)1\*/\10*/
s/^\([0-9]*\)2\*/\11*/
s/^\([0-9]*\)3\*/\12*/
s/^\([0-9]*\)4\*/\13*/
s/^\([0-9]*\)5\*/\14*/
s/^\([0-9]*\)6\*/\15*/
s/^\([0-9]*\)7\*/\16*/
s/^\([0-9]*\)8\*/\17*/
s/^\([0-9]*\)9\*/\18*/
s/\*\([0-9*]*\)/*\1+\1/
b mul

# get rid of a plus term until 0+x -> x
: add
/^\+\([0-9+*]*\)=/{
	s//\1/
	b loop
}
/^\([0-9*]*\)\+=/{
	s//\1/
	b loop
}
/^\([0-9]*\)\+\([0-9*+]*\)\+=/{
	s//\2+\1/
	b loop
}
/^\([0-9]*\)0\+\([0-9]*\)\([0-9]\)=/{
	s//\1+\2=\3/
	b add
}
/^\([0-9]*\)\([0-9]\)\+\([0-9]*\)0=/{
	s//\1+\3=\2/
	b add
}
/^\([0-9]*\)0\+\([0-9*+]*\)\+\([0-9]*\)\([0-9]\)=/{
	s//\1+\2+\3=\4/
	b add
}
/^\([0-9]*\)\([0-9]\)\+\([0-9*+]*\)\+\([0-9]*\)0=/{
	s//\1+\3+\4=\2/
	b add
}
s/^\([0-9]*\)1\+/\10+/
s/^\([0-9]*\)2\+/\11+/
s/^\([0-9]*\)3\+/\12+/
s/^\([0-9]*\)4\+/\13+/
s/^\([0-9]*\)5\+/\14+/
s/^\([0-9]*\)6\+/\15+/
s/^\([0-9]*\)7\+/\16+/
s/^\([0-9]*\)8\+/\17+/
s/^\([0-9]*\)9\+/\18+/

s/9=\([0-9]*\)$/_=\1/
s/8=\([0-9]*\)$/9=\1/
s/7=\([0-9]*\)$/8=\1/
s/6=\([0-9]*\)$/7=\1/
s/5=\([0-9]*\)$/6=\1/
s/4=\([0-9]*\)$/5=\1/
s/3=\([0-9]*\)$/4=\1/
s/2=\([0-9]*\)$/3=\1/
s/1=\([0-9]*\)$/2=\1/
/_/{
	s//_0/
	: inc
	s/9_/_0/
	s/8_/9/
	s/7_/8/
	s/6_/7/
	s/5_/6/
	s/4_/5/
	s/3_/4/
	s/2_/3/
	s/1_/2/
	s/0_/1/
	s/\+_/+1/
	/_/b inc
}
b add
