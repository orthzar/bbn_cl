����" V"	J�"	J�"   "�J�	 "�ʨ"  !"  �   =�J�"   "                                                                                                                                                   (	J�   �'  }�� A�& � A���C��pN�,�� & n $|2   "z�N���� < n $|2   "z�N���� R n $|2   "z�N���� h n $|2   "z�N���� ~ n $|2   "z�N���� � n $|2   "zxN���� � n $|2   "z^N���� � n $|2   "z`N���� � n $|    "zFN���� � n $|    "z,N���� n $|2   "zN���� n $|2   "z �N����./. /. Hz X� (/.  z � " ��2g(-@ (/. (�.g
-W P�BNu//_ X�,: �N�DN�����-@ (`�N�\�����l�-_  . �� 0	� -_  n $@"z hN����� z D " ��2g$-@ (/. (/. -z 4 (-_ /. (/: "pN�8N�����-@ (`� 	L�	L�   3	L�  	M	L�	M	M	M	M$	M,	M4	Mh	Mp"   	M�"   !	M�!	M�3	M�	M�"   	M�"   	M�"   	N"   	N4"   	NP"   '     */nfs/lisperanto/u2/mach/runtime/bf-gc.binf  	Np"   '     BF-GC-PACKAGE       '     GC-FLIP 	N�	N�	N�	N�!	N�!	N�3	N�'     AWAIT-SYNCHRONY     '     IMPURIFY-CODE-SPACE     '     PURIFY-CODE-SPACE v8   '     *GC-FINISH-HOOK*        '     *GC-START-HOOK*     '     MAKE-SYNCHRONIZER       '     ENVIRONMENT 	N�"       
	N�	O "       
	O4	O<	OD	OL	OT!	O\!	Od	Ol'     (PREPARE-TO-SNAPSHOT-RESOURCES-BEFORE-GC!           	N�'     'PREPARE-TO-SNAPSHOT-RESOURCES-AFTER-GC!        	N�	Ox"       
	O�	O�"       
	O�	O�	O�	O�	P	P	P  '     $MASTER-SNAPSHOT-RESOURCES-BEFORE-GC!           	O<'     #SLAVE-SNAPSHOT-RESOURCES-BEFORE-GC!        	OL	P "       
	PP	P\"       
	P�3	P�
	P�  	P�    '     #MASTER-SNAPSHOT-RESOURCES-AFTER-GC!        	O�	P�'     "SLAVE-SNAPSHOT-RESOURCES-AFTER-GC!         	O�#	P�#	P�3	P�   	P�	P�	P�	Q	Q	Q	Q	Q$"   	Q@"   ,	Q\	Qh,	Qp	Q|#	Q�#	Q�3	Q�	Q�"   	Q�"   	Q�"   	R"   	R"   	R@"   	RP"   '     SYNCHRONIZER        '     REMAINING-FREE      	M,       	Rh
	Rt	M       4	R|
	R�,	R�	R�,	R�	R�#	R�#	R�3	R�'     #[LET-PROCEDURE]    '     SYNCHRONIZER-MARKER     '  	   INTERRUPT-MASK-GLOBAL-GC        '     TEST-AND-GC     '     GC-WITHOUT-INTERRUPTS       '     RESET   '     
SPECIAL-GC        ,	R�0     	M,	R�	R�*	R�   	M	P�	Q       &	S
	S$	Q       	S4
	S@,	SL	SX,	S`	Sl*	Sx	S�3	S�	P�         	S�	S�  ,	S�     	S�,	S�-      	S�&	S�&	T &	T&	T   	Q	T	T   ,	T(	T4   	Q	T	Q       	T<
	TD	L�       	TL
	TT       	Td  	Tl  	0  
&	Tt#	T|3	T�	T�	T�	T�,	T�	P�       '     $AWAIT-SYNCHRONY: Not a synchronizer.    3	T�
	T�     ,	T�   ,	T�   ,	T�   ,	T�	T�"   	T�"   	P�       &	U 
	U  ,	U   	Q,	U 	U,   	L�	U4	U<	T�	UD	UP
	U\   ,	Ul,	Ux	U�#	U�#	U�3	U�4	U�
	U�  	U�	P�       #	U�4	U�4	U�   	P�	U�	U�	U�	V	V	M,       '     THUNK   '     ACTION     ,	V   	V 	V(	P�       	Q       	V0
	V<	VD"   	V`"     0  
  ,	Vx,	V�     	V�	V�	V�	Q       	V�       	V�
	V� ,	V�4	V�,	V�4	V�#	V�#	W 	W	W	W,	W$   	P�	W0	T�,	S�,	W8	WD	WL&	WT    *	W\	Wp   	Wx"   	W�"   	W�"   	W�"   	X "   	T       	X"   	X8"   ,	XT4	X`	Xl   	V '     NEW-SAFETY-MARGIN   '     	CONDITION       	L�       	Xt       	X|"   	X�"   	X�"   	X�"   	X�,	X�   	V�	X�	X�	M       	X�	Y	Y	M       	Y	Y	Y$,	Y,	Y8,	YD	YP	YX,	Y`    .,	Yl  ,	Yx	W0       	Y�2  	V       3	Y�
	Y�	T�,	Y�   ,	Y�        ,	Y�,	Y�	Y�	Y�'     GC-SYNCHRONIZER     '     GC-STARTING-SYNC        '  	   BEFORE-GC-RESOURCES-SYNC        '     AFTER-GC-RESOURCES-SYNC     '     GC-SLAVE        '     #[UNNAMED-PROCEDURE]    '     OLD-INTERRUPT-MASK  	Q       	Y�	Y�,	Y�	Z 
	Z	Z"   '     GC-INTERRUPT    '     INTERRUPT-CODE  '     INTERRUPT-ENABLES   '     PURIFY  ,	Z0	Z<	X�       	ZD"   	ZT"   	T�,	Zl	Zx
	Z�&	Z�
	Z�	T�,	Zl0  
	Z�	Z�
	Z�	Q       	Z�
	Z� 	Z�       4	Z�
	Z�#	Z�
	Z�	Z�       	W0       	W0       '     G0  	[0  3	[   	V	V�	V�	M$       	V       	T       ,	[,	[$	[00    -   	U<   
	[8	U<         4	[@   	V '     DEFAULT-SAFETY-MARGIN   	Q       	[L
	[X'     ITEM    '     REALLY-PURE?    	[`       ,	[h	[t   	V    ,	[|   	V    	V 	[�"      	V ,	[�	[�   	Q	[�	U4	[�"   	[�,	[�4	[�   	Z�	[�,	[�	[�   	P�	\	\"   ,	\$,	\0	\<&	\D3	\L	M       	U�       3	\X
	\d   	V 	\p,	\|,	\�  ,	\�4	\�   	V 	\�"   	Q       0  
	\�	L�       '     DONE    	Q       	\�
	\�	\�"   '     IMPURIFY      	] 	[�       	]	],	[�	]"   	Z�       4	](
	]4	]H"   '     SUSPEND-WORLD   	M       	U�       ,	\$,	]h   ,	]t	]�0  	]�0  &	]�3	]�   	P�	]�  -   	U4	Xt       	U4       	X�       	]�    ,	]�'     IS-A-BUTTERFLY? �   	V ,	]�	]�,	]�   	V '     SPECIAL-ACTION        ,	[�  ,	[�  ,	[�'     OBJECT  	]�	]�&	]�   	^	^	^	^ '     OLD-SUSPEND-WORLD       	U�       	OL       ,	\$,	^(	^4&	^<   ,	^D	^P&	^X	^`	^h"     -   	X�	X�       	Q          
	^�	[�       	T�&	^�	^�&	^�   ,	^�,	^�,	^�,	^�	^�"   	^�"   	_"   	_"   	U�       ,	\$,	_4   ,	_@	N�       ,	_L,	_X   ,	_d	_p	_x'     	THE-QUEUE          	V    ,	_�	_�
	_�   ,	_�	\       	^       	^       	^        '     BFLY-SUSPEND-WORLD      '     	SUSPENDER   '     AFTER-SUSPEND   '     AFTER-RESTORE   	V       	O�       	M       	U�       	O<       ,	_L,	_�	_�&	_�	_�       &	_�&	_�   	P�	_�	_�       	U�       3	_�
	`   ,	`	` "      ,	`8   ,	`D,	`P	`\	`d	`l"   	`�"   &	`�	`�3	`�   	P�	`�	T        '     FUTURES-ON?     	`�       	\       	^       	`�
	`�	`�
	`�'     SCHEDULING-INTERVAL     '     GET-SCHEDULING-DELTA           ,	a,	a,	a	a(4	a0&	a<	aD"   	aT"   	al	ax   	V 	a�	a�	a�   	V 	a�	N�       	M       	V       ,	a�,	a�	a�&	a�       	a�'     RESULT  '     FUTURES-OFF     ,	a�,	a�   ,	a�,	a�	b "   ,	b,	b   ,	b$,	b0	O�       	`�       	T�,	b<   ,	b<	bH
	bP   	b\       	_�       	^       	a�       '     IE  	b\       	_�       	^        	a�       	M       #	bd	bl   	P�	bt	b|"   ,	b�	b�,	b�,	b�	b�"   '     INITIALIZE-SCHEDULER!       	bt       4	b�
	b�	bt       	]�       '     LOOP    	b�	b�,	c   	bt	c	T�,	c	c$	c,	`�       	c4"   	c       	cD
	cL  	cX'     LIST    4	c`	cl   	P�	ct	T�,	c	c|	c�    ,	c�	c�	c�"   	T�	c�  ,	c�	bt          	c�'     	WORK-UNIT       ,	c�,	c�	ct       	T�,	c�	c�       	c       	c�"   '     FUTURE?   '     
SCODE-EVAL P  '     TOUCH AI  '     CONS      '     N-INTERPRETERS    '     EQ?   '     AWAIT-SYNCHRONY   '     ERROR-PROCEDURE   '     WITH-INTERRUPTS-REDUCED   '     VECTOR-SET!   '     SET-FIXED-OBJECTS-VECTOR! BE   '     GET-FIXED-OBJECTS-VECTOR TYP  '     ENABLE-INTERRUPTS!   '     CAR   '     
VECTOR-REF V   '     
GC-NEEDED?   '     PRIMITIVE-TYPE?   '     GLOBAL-INTERRUPT G��   '     IMPURIFY-CODE-SPACE    '     SLAVE-GC-BEFORE-SYNC Z     '     DRAIN-WORK-QUEUE! �0  '     LEXICAL-UNASSIGNED?   '     MASTER-GC-LOOP    '     PRIMITIVE-PURIFY     '     PURIFY-CODE-SPACE .�  '     ZERO?  !   '     SLAVE-GC-AFTER-SYNC    '     MASTER-GC-BEFORE-SYNC ��  '     PRIMITIVE-GC-TYPE �   '     PURE? �8  '     PRIMITIVE-IMPURIFY �  '     SYSTEM-PAIR-CAR   '     PUT-WORK  F  '     SYSTEM-PAIR-CDR 