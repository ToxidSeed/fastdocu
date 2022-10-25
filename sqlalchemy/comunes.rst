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

Operadores lógicos
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    from sqlalchemy import and_



order_by
^^^^^^^^^^

.. code-block:: python

    query.order_by(model.column.desc())

.. code-block:: python

    query.order_by(model.column.desc())

.. code-block:: python

    query.order_by(model.column.desc(),model.column.asc())

min
^^^^^^^^^^^^^^

.. code-block:: python

    from sqlalchemy.sql import func
    query = db.session.query(
        func.min(campo).label("alias")
    ).group_by(campo2)


