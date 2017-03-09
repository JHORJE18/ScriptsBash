#Suma y media
valido=0

while [ $valido -eq 0 ]; do
    echo 'Introduce un dia de la semana entre 1 y 30'
    read numero

    if [ $numero -ge 1 ] && [ $numero -le 30 ]; then
	#Numero valido
	valido=1
    fi
done

#Miramos que este en la semana
semana=0

while [ $semana -eq 0 ]; do
    if [ $numero -le 7 ]; then
	semana=1
    else
	numero=`expr $numero - 7`
	semana=0
    fi
done

if [ $numero -eq 1 ]; then
    echo 'Es Lunes'
fi

if [ $numero -eq 2 ]; then
    echo 'Es Martes'
fi

if [ $numero -eq 3 ]; then
    echo 'Es Miercoles'
fi

if [ $numero -eq 4 ]; then
    echo 'Es Jueves'
fi

if [ $numero -eq 5 ]; then
    echo 'Es Viernes'
fi

if [ $numero -eq 6 ]; then
    echo 'Es Sabado'
fi

if [ $numero -eq 7 ]; then
    echo 'Es Domingo'
fi