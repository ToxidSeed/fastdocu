scan
==============================

.. code:: R

    > var = scan()

.. code:: R

    > scan(what = 'character')
    > scan(what = 'char')

.. code:: R

    > data = scan(sep = ',')

Para la lectura de un fichero si no se pone indica el separador, el separador por default es **espacios**
Si no se indica el tipo de dato, por defecto es **numérico**.

.. code:: R

    > data = scan(file="filename.txt")

.. code:: R

    > data = scan(file.choose())

.. code:: R

    > data = scan(file.choose(), what='char', sep=',')    