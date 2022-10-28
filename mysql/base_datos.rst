BASE DE DATOS
==================================

Crear base de datos
-----------------------

.. code-block:: bash

    mysql> CREATE DATABASE alumnos;

Backup de Base de datos
--------------------------

.. code-block:: 

    $ sudo mysqldump bagholdercuy -p > /path/bagholdercuy.sql

Restaurar Base de datos
-------------------------

    $ mysql -u alone -p bagholdercuy < /path/bagholdercuy.sql