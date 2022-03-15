dataframe.orderBy
===============================

.. py:function:: df.orderBy(*cols, **kwargs)

    Ordena un Dataframe, se puede usar también la función **df.sort**

    Parámetros:
        *cols*: str, list or column, optional

        *ascending*: bool or list, optional

            default: True

    Ejemplos:

        Ordenación simple:

        .. code-block:: python

            df.orderBy("JobTitle", ascending=True).show()

        Ordenar por varios campos:

        .. code-block:: python

            df.orderBy(df.JobTitle.desc()).show()






