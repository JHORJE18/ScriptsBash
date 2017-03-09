echo 'Introduce un valor'
read x

echo 'Introduce otro valor'
read y

if [ "$x" -gt "$y" ]; then
    echo 'El valor' $x 'es mayor que '$y
else
    if [ "$x" -eq "$y" ]; then
	echo 'Los valores' $x 'y' $y 'son iguales'
	else
	echo 'El valor' $x 'es menor que' $y
	fi
fi