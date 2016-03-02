Primero creamos una base de datos, 
se adjunta el archivo para poder crear la base de datos

Despues generamos la conexion de netbeans con la base de datos

Una vez hecho esto generamos el controlador,
luego generamos el archivo de ingenieria inversa y finalmente mapeamos
cada una de las tablas de nuestra base de datos

¿Cuanto tiempo te llevo resolver la práctica?
Con prueba y error me tomo al rededor de 5 horas netas, 
ya que no domino bien el tema 

¿Como se llaman los archivos de configuraciones de Hibernate,
tuviste alguna  dificultad con la configuración de estos? 
Controlador
IngenieriaInversa
Hibertate
Mapeousuario
MapeoValidarUsuario

Al principio no venia el driver de postgresql y tuve que descargar
 una version que fuese compatible con postgresql_9.1 y netbeans_8.1

El diseño de la base de datos tiene la siguiente estructura

Simulan la verificacion de cuenta de un usuario por medio de su correo 
su contraseña. Las tablas son las siguientes con sus respectivos atributos

USUARIO (id_usuario, nombre_usuario, apellido_usuario, edad_usuario, correo_usuario)
PK id_usuario


Validar_usuario (id_usuario, correo_usuario, contraseña_usuario)
PK id_usuario
FK correo_usuario  con referencia a USUARIO
