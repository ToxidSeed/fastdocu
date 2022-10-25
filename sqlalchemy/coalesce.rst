Coalesce
==================

Devuelve el primer valor no NULO

.. py:function:: coalesce(expr1, expr2, ...)
    

.. code-block:: python

    import sqlalchemy.sql.functions as func

        result = db.session.query(
            func.coalesce(Model.campo1,0).label("label")
        ).all()

* En el ejemplo: Model.campo1 es nulo, por lo tanto la fución coalesce devuelve 0 al ser el primer valor no NULO.
