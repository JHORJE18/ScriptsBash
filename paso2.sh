
valido=0

while [ $valido -eq 0 ]; do
    echo 'Introduce un número mayor que 0'
    read numero
    
    if [ $numero -gt 0 ]; then
	#Posible par
	valido=1
	resto=`expr $numero % 2`
	
	if [ $resto == 0 ]; then
	    echo 'El numero' $numero 'es par'
	else
	    echo 'El numero' $numero 'no es par'
	fi
    else
	echo 'El número' $numero ' no es válido'
    fi

done