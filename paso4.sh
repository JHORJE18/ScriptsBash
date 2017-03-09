#Valores

valido=0

while [ $valido -eq 0 ]; do
    echo 'Introduce un número mayor que 0'
    read numero
    
    if [ $numero -gt 0 ]; then
	echo '---------------'
	#Numero valido
	valido=1
	for i in `seq 0 $numero`; do
	    echo 'Numero ' $i
	done
	echo '---------------'
    else
	echo 'El número' $numero ' no es válido'
    fi

done