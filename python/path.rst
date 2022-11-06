Path
============

Rutas de trabajo
----------------------

.. py:function:: cwd()

    Devuelve el actual directorio de trabajo.

**Ejemplos**

.. code-block:: python

    from pathlib import Path
    print(Path.cwd())

**Cambiar directorio de trabajo**

Para cambiar la ruta de trabajo se usa la función *chdir*

.. py:function:: os.chdir(path)


    :param str path: La nueva ruta que va a ser el directorio de trabajo
    :raises FileNotFoundError: Si el directorio no existe

**Ejemplos**

.. code-block:: python

    from pathlib import Path
    import os

    os.chdir('newwd')

    print(Path.cwd())    

