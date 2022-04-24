Funciones Comunes
========================

label
--------

* Para obtener el año, mes y día de una fecha

Ejemplo:

.. code-block:: python

    from sqlalchemy.sql import extract
    extract('year',campo)