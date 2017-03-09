#Calculador Litros
valido=0

echo '¿Cuantos litros de agua has consumido?'
read NUMERO

precio=0
if [ $NUMERO != 0 ]; then
    for i in `seq 1 $NUMERO`; do
	if [ $i -le 50 ]; then
	    precio=`echo "scale=2; $precio+2.50" | bc`
	else 
	    if [ $i -le 200 ]; then
		precio=`echo "scale=2; $precio+0.20" | bc`
	    else
		precio=`echo "scale=2; $precio+0.10" | bc`
	    fi
	fi
    done
    echo 'El precio a pagar por '$NUMERO' litros es de '$precio' €'
else
    echo 'Litros no validos'
fi