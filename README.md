Instalacion Mojolicious
Ejecutar una terminal e ingresar los siguientes comandos:

curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious

apt install libmojolicious-perl


Agregamos el modulo para poder leer un archivo 
sudo cpan install File::Slurp

Nos ubicamos en la ruta donde se encuentra el proyecto
y damos permiso de ejecucion al .pl con el siguiente comando:
chmod +x api.pl

Y luego lanzamos el script con:
morbo api.pl

Este comando sirve para que el servidor este continuamente corriendo y no ejecutarlo cada vez que realizamos una modificacion.
Abrimos un navegador y nos dirigimos a la ruta que nos indica.


