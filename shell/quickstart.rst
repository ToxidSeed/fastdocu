Quickstart
=================

* Significado de **#!/bin/bash** 

https://www.geeksforgeeks.org/shell-scripting-define-bin-bash/

* Dar permisos de ejecución al script

.. code-block:: sh

    chmod +x script.shell

Parámetros
^^^^^^^^^^^^^

* Pasar parámetros

Los parámetros son cadenas de texto enviados al script en su llamada

**Ejemplo**:

.. code-block:: shell

    ./script.sh param1 param2 param3

* Recibir parámetros

Los parámetros se reciben de acuerdo a la posición en la que son enviados con el caracter *"$"*.

**Ejemplo**:

.. code-block:: shell

    #!/bin/sh
    var1=$1
    var2=$2
    var3=$3


