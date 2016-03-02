CREATE DATABASE prueba

CREATE TABLE "Usuario"
(
  "Nombre_usuario" character varying NOT NULL,
  "Apellido_usuario" character varying NOT NULL,
  "Edad_usuario" integer NOT NULL,
  "Correo_usuario" character varying NOT NULL,
  id_usuario serial NOT NULL,
  CONSTRAINT "Usuario_pkey" PRIMARY KEY (id_usuario ),
  CONSTRAINT "Usuario_Correo_usuario_key" UNIQUE ("Correo_usuario" )
)

CREATE TABLE "Validar_usuario"
(
  id_usuario serial NOT NULL,
  "Correo_usuario" character varying NOT NULL,
  "Contraseña_usuario" character varying NOT NULL,
  CONSTRAINT "Validar_usuario_pkey" PRIMARY KEY (id_usuario ),
  CONSTRAINT "Validar_usuario_Correo_usuario_fkey" FOREIGN KEY ("Correo_usuario")
      REFERENCES "Usuario" ("Correo_usuario") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)