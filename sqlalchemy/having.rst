Having
===============

Condiciones sobre datos agrupados

`Documentacion oficial`_

.. _Documentacion oficial: https://docs.sqlalchemy.org/en/14/orm/query.html#sqlalchemy.orm.Query.having

.. py:function:: having(criterio)

    :param str criterio: Cualquier condición o condiciones que devuelva true

**Ejemplo**:

.. code-block:: python

    import sqlalchemy.sql.functions as func
    from Model.salesforce import SalesforceModel

    result = session.query(
        Salesforce.Order_Priority,
        func.count(1).label("cantidad")
    ).group_by(
        Salesforce.Order_Priority
    ).having(
        func.count(1) > 1
    ).all()

    print(result)
    