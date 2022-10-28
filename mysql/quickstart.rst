quickstart
=====================

Install
-----------------

Instalar el paquete

.. code-block:: bash
    
    $ sudo pacman -S mariadb

Inicializar la base de datos

.. code-block:: bash
    
    $ sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

Permisos al directorio de la base de datos

.. code-block:: bash

    $ sudo chmod -R 777 /var/lib/mysql

Inicializar el servicio

.. code-block:: bash

    $ sudo mysqld -u root

Conexión de Prueba

.. code-block:: bash

    $ sudo mysql

Post Instalación
--------------------

Conectarse

.. code-block:: bash

    $ sudo mysql

Ver usuarios

.. code-block:: bash

    mysql> SELECT User FROM mysql.user;

Crear un nuevo usuario

.. code-block:: bash

    mysql> CREATE USER alone@localhost IDENTIFIED BY 'alone';

Permisos al usuario creado

.. code-block:: bash

    mysql> GRANT ALL PRIVILEGES ON *.* TO 'alone'@localhost;

Probar nuevo usuario

.. code-block:: bash

    mysql> exit
    mysql> mysql -u alone -p

    

Enable Service
----------------------

.. code-block:: bash

    $ sudo systemctl enable mariadb.service

.. code-block:: bash

    $ sudo systemctl start mariadb.service

