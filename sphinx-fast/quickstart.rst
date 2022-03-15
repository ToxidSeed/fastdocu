quickstart
========================

Install
-----------------------

ArchLinux

.. code-block:: bash

    $ sudo pacman -S python-sphinx

Si se presenta el error: **importlib.metadata.PackageNotFoundError: Sphinx**, instalar el paquete mediante pip

.. code-block:: bash

    $ pip install -U sphinx

Inicio rápido
-----------------------
.. code-block:: bash

    $ cd project_path
    $ sphinx-quickstart

Build
----------------------

.. code-block:: bash
    
    $ sphinx-build -b html ./ output

Notas
--------------------

.. note::

    Esto es una nota

Warnings
--------------

.. warning:: 

    Esto es una advertencia

