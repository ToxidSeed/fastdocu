outerjoin
===================

**outerjoin** genera un left outer join

.. code-block:: python

    from sqlalchemy.orm import outerjoin
    session.query(obj).\
    select_from(obj).\
    outerjoin(refobj, obj.campo1 == refobj.campo2)
