# < Shopping >

> Preparando el entorno de trabajo para el sistema operativo **Windows**.

> **Nota:** puedes ejecutar la instalación del punto **1** y **2** simultaneamente.

1. Descargar de https://rubyinstaller.org/downloads/ e instalar, la versión **2.4.3-2** de `ruby`.
> Si usas **Linux** específicamente distribuciones basadas en `Debian` como lo es `Ubuntu`, puedes ver: https://github.com/rvm/ubuntu_rvm, **RVM** es un manejador de versiones de ruby, para más información: https://rvm.io/

![rubyInstall-0]

[rubyInstall-0]: ./assets/images/Screenshot_1.png

![rubyInstall-1]

[rubyInstall-1]: ./assets/images/Screenshot_2.png

![rubyInstall-2]

[rubyInstall-2]: ./assets/images/Screenshot_3.png

![rubyInstall-3]

[rubyInstall-3]: ./assets/images/Screenshot_4.png

> Presionamos la tecla **ENTER** para que se instalen los 3 componentes.

![rubyInstall-4]

[rubyInstall-4]: ./assets/images/Screenshot_5.png

> En este punto ya culmino la instalación de `ruby` y sus dependencias con el sistema.

> Verificamos con el comando `ruby -v`.

![rubyInstall-5]

[rubyInstall-5]: ./assets/images/Screenshot_11.png

2. Descargar de `https://www.postgresql.org/download/windows/` e instalar la versión **9.4.17** de `PostgreSQL`. Es un manejador de base de datos relacionales.
> Si usas **Linux** específicamente distribuciones basadas en `Debian` como lo es `Ubuntu`, puedes ver: https://doc.odoo.com/es/install/linux/postgres/ para complementar.
>
> Escribe en la terminal:
>>`sudo apt install postgresql postgresql-client
postgresql-contrib libpq-dev`
>
> Esto instala el cliente y servidor de la base de datos y algunos scripts de utilería
>
>El paquete `libpq-dev` nos permitirá compilar la gema para **PostgreSQL**.
>
> Confirma que la instalación terminó adecuadamente:
>
>> `psql --version`
>
> Para crear un usuario llamado **admin**:
>> sudo su postgres -c psql
>
>> CREATE USER **admin** WITH PASSWORD '**password**';
>
>> ALTER ROLE **admin** WITH CREATEDB;
>
>> `\q`

Continuamos con la instalación en el sistema operativo **Windows**

![pgInstall-0]

[pgInstall-0]: ./assets/images/Screenshot_6.png

![pgInstall-1]

[pgInstall-1]: ./assets/images/Screenshot_7.png

![pgInstall-2]

[pgInstall-2]: ./assets/images/Screenshot_8.png

![pgInstall-2.0]

[pgInstall-2.0]: ./assets/images/Screenshot_8.1.png

![pgInstall-2.1]

[pgInstall-2.1]: ./assets/images/Screenshot_8.2.png

![pgInstall-2.2]

[pgInstall-2.2]: ./assets/images/Screenshot_8.3.png

![pgInstall-3]

[pgInstall-3]: ./assets/images/Screenshot_9.png

![pgInstall-4]

[pgInstall-4]: ./assets/images/Screenshot_10.png

> Al ejecutar **pgAdmin III** verificamos que se haya instalado. Este es nuestro administrador de base de datos.

![pgInstall-5]

[pgInstall-5]: ./assets/images/Screenshot_12.png

3. Instalamos la gema `rails` desde `https://rubygems.org/` con la instrucción `gem install rails -v 4.2.10 --no-ri --no-rdoc` en un **cmd**.

![railsInstall-0]

[railsInstall-0]: ./assets/images/Screenshot_13.png

![railsInstall-1]

[railsInstall-1]: ./assets/images/Screenshot_14.png

![railsInstall-2]

[railsInstall-2]: ./assets/images/Screenshot_15.png

![railsInstall-3]

[railsInstall-3]: ./assets/images/Screenshot_16.png

![railsInstall-4]

[railsInstall-4]: ./assets/images/Screenshot_17.png

> **Nota:** no se te olvide agregar `--no-ri --no-rdoc`.

![railsInstall-5]

[railsInstall-5]: ./assets/images/Screenshot_18.png

> Verificamos con la instrucción `rails -v`.

![railsInstall-6]

[railsInstall-6]: ./assets/images/Screenshot_19.png

4. Ya disponemos de un proyecto al momento de clonar este repositorio, por lo que puedes saltarte este punto.

> Crearemos un proyecto de `rails` con una configuración de base de datos para `PostgreSQL`.

> Con la instrucción `rails new my-app -d postgresql` en un **cmd**.

![railsApp-0]

[railsApp-0]: ./assets/images/Screenshot_20.png

5. Entramos al proyecto con la instrucción `cd name-app` y configuramos `./config/database.yml` con el username y el password de la base de datos correspondiente, `por ejemplo`:

```yml
default: &default
  adapter: postgresql
  encoding: utf-8
  pool: 5
  username: postgres
  password: password
  host: localhost
```

![railsApp-1]

[railsApp-1]: ./assets/images/Screenshot_21.png

> **postgres** es el usuario por defecto con permisos de **Admin**, es recomendable crear uno diferente. Y en `password` debe ir el que configuraste al instalar `PostgreSQL`.

6. Vamos a crear nuestra base de datos con la instrucción `rake db:create` dentro del directorio del proyecto.

7. Con la instrucción `rails s` podremos ver funcionando nuestro servidor en `localhost:3000`.

![railsApp-2]

[railsApp-2]: ./assets/images/Screenshot_22.png
