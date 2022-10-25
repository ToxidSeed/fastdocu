order_by
===============

Agrupación de datos

.. py:function:: order_by(*clauses)

.. code-block:: python

    import sqlalchemy.sql.functions as func
    from Model.salesforce import SalesforceModel

    result = session.query(
        Salesforce.Order_Priority
    ).order_by(
        Salesforce.Order_Priority.desc()
    ).all()

    print(result)