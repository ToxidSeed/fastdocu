extract
=================

Dataset de ejemplo
https://www.kaggle.com/datasets/ruchi798/a-tale-of-two-cities

Extrae parte de una fecha

Ejemplos:

* Extraer el año de una fecha

.. code-block:: python

    from sqlalchemy.sql import extract
    from model.talecities import TaleCitiesModel

    results = session.query(
        extract("year",TaleCitiesModel.date)
    ).all()

    return results

* Extraer el mes de una fecha

.. code-block:: python

    from sqlalchemy.sql import extract
    from model.talecities import TaleCitiesModel

    results = session.query(
        extract("month",TaleCitiesModel.date)
    ).all()

    return results

* Extraer el día de una fecha

.. code-block:: python

    from sqlalchemy.sql import extract
    from model.talecities import TaleCitiesModel

    results = session.query(
        extract("day",TaleCitiesModel.date)
    ).all()

    return results
