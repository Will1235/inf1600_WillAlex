.global func_s

func_s:
	/* Votre programme assembleur ici... */

	flds e	  /*On pousse e sur le dessus de la pile*/
	flds b	  /*On pousse b sur le dessus de la pile*/
	fmulp	  /*On multiplie e et b ensemble*/
	flds g	  /*On pousse g sur le dessus de la pile*/
	faddp	  /*On additionne le résultat de la multiplication a g*/
	flds d	  /*On pousse d sur le dessus de la pile*/
	fdivrp    /*le résultat de la multiplication est divisé par d*/
	fstps a   /*On place le dernier résultat dans a*/

	flds g    /*On pousse g sur le dessus de la pile*/
	flds f    /*On pousse f sur le dessus de la pile*/
	fsubrp    /*On soustrait f de e*/
	flds a    /*On met a au-dessus de la pile*/
	fmulp     /*On multiplie a au résultat dernier de notre soustraction*/
	fstps a   /*On place la nouvelle valeur dans a*/
	flds d	  /*On pousse d sur le dessus de la pile*/
	flds e	  /*On pousse e sur le dessus de la pile*/
	faddp     /*d est additionné a e*/
	flds a    /*On met a au-dessus de la pile*/
	fdivp     /*On divise a par le résultat obtenu a la dernière division*/
	fstps a	  /*On pousse au sommet de la pile a dans la mémoire*/

	ret       /*On retourne le résultat*/
