Funciones Comunes
========================

Extraer año, mes y día de una fecha
----------------------------------------

* Para obtener el año, mes y día de una fecha

Ejemplo:

.. code-block:: python

    from sqlalchemy.sql import extract
    extract('year',campo)

Operadores de Comparación
----------------------------

in_
^^^^^

.. code-block:: python

    model.field.in_(values)

order_by
^^^^^^^^^^

.. code-block:: python

    query.order_by(model.field.desc())

.. code-block:: python

    query.order_by(model.field.desc())

.. code-block:: python

    query.order_by(model.field1.desc(),model.field.asc())        

