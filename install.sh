echo "Actualizando repositorios..."
sudo  apt update

echo "Agregando soporte i386..."
sudo  dpkg --add-architecture i386

echo "Instalando driver de la impresora..."
sudo dpkg -i driver.deb

echo "Instalando drivers/paquetes adicionales para el funcionamiento correcto..."
sudo apt install printer-driver-gutenprint
sudo apt install foomatic-db foomatic-db-engine

clear
echo "Se ha limpiado la consola"

echo "Instalacion completada! los cambios se aplican al instante, si no notas la diferencia intenta reiniciar"

read -n 1 -s -r -p "Presiona cualquier tecla para salir..."
echo
exit 0
