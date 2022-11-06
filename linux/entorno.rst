Entorno
===============

Variables de entorno que son necesarias de conocer, para conocer todas las variables de enterno referirse a *env*.

$HOME
-----------

Ruta de nuestro home directorio home.

Para acceder a situarnos en esta ruta se puede hacer de la siguiente manera:

.. code-block:: shell

    $ cd $HOME

o

.. code-block:: shell

    $ cd ~

El caracter **~** tiene ASCII code = 126


$PATH
-----------

Ruta donde se encuentran las rutas donde buscar los programas

Agregar rutas a la variable $PATH
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Editar el archivo **~/.bashrc**
2. Agregar una línea con el nuevo directorio.

.. code-block:: shell

    export PATH="/newfolder:$PATH"

Donde **/newfolder** es el directorio que se va a agregar a **$PATH**.
