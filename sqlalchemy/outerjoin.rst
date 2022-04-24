outerjoin
===================

.. code-block:: python

    from sqlalchemy.orm import join
    session.query(obj).\
    join(obj, refobj, obj.campo1 == refobj.campo2)
