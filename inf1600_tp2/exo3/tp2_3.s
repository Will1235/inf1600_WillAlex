.data

.global func_s

func_s:	

	

						#initialisation des variables dans leur registre respectif

	movl a, %eax
	movl b, %ebx
	movl c, %ecx
	movl d, %edx
	movl e, %edi
	movl $0, %esi  		#initialisation du compteur a 0

	
boucle:

	#On remet les variables dans leur registre respectif
	movl a, %eax
	movl b, %ebx
	movl c, %ecx
	movl d, %edx
	movl $0, %eax		#On met a a 0

	addl %ebx, %eax  
	addl %ecx, %eax
	subl %edx, %eax   	#a=b+c-d
	movl %eax, a	  	#On met le resultat dans a
	addl $1000, %ecx	#c+1000
	sub $500, %edi		#e-500
	cmp %edi, %ecx		#comparaison des deux résultat
	jng else			#jump a else si (c+1000)<(e-500)

if1:
	movl c, %ecx    	#Remet les bonnes valeurs a nos registres
	movl b, %ebx
	movl e, %edi
	subl $300, %edi		#e-300
	movl %edi, e
	cmp %ecx, %ebx		#Comparaison entre c et b
	jng comparaison

if2:
	movl c, %ecx		#Remet les bonnes valeurs a nos registres
	addl $300, %ecx		#c+300
	movl %ecx, c		#On met le resultat dans c
	jmp comparaison		#On retourne a la comparaison

else:

	movl c, %ecx		#Remet les bonnes valeurs a nos registre
	movl d, %edx
	subl %edx, %ecx		#c-d
	movl %ecx, c
	movl b, %ebx
	subl $300, %ebx		#b-300
	movl %ebx, b
	jmp comparaison

comparaison:
	add $1, %esi  #incrementation du compteur
	cmp $10, %esi	  #Verifier si compteur a 10
	jnge boucle
	ret		

