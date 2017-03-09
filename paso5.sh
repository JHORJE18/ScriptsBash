#Suma y media
valido=0

while [ $valido -eq 0 ]; do
    echo 'Introduce un valor a sumar, o pulse 0 para salir'
    read numero
    
    if [ $numero -ne 0 ]; then
	#Suma y media
	valido=0
	suma=`expr $suma + $numero`
	valores=`expr $valores + 1`

    else
	valido=1

	media=`expr $suma / $valores`
	echo 'La suma total es: ' $suma
	echo 'Has sumado ' $valores ' numeros'
	echo 'La media de los valores es: ' $media
    fi

done