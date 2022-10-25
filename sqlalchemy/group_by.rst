group_by
===============

Agrupación de datos

.. py:function:: group_by(*clauses)

.. code-block:: python

    import sqlalchemy.sql.functions as func
    from Model.salesforce import SalesforceModel

    result = session.query(
        func.count(1).label("cantidad")
    ).group_by(
        Salesforce.Order_Priority
    ).all()

    print(result)