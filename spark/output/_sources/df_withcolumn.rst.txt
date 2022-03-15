Dataframe.withColumn
=====================================

.. py:function:: df.withColumn(colname str, col)

    Retorna el dataframe agregando una columna o reemplazando la existente que tiene el mismo nombre

    Parámetros:

        *colname*: string, nombre de la nueva columna

        *col*: Una expressión para el valor de la nueva columna

    Ejemplos:

        Dataframe base para los ejemplos:
        https://www.kaggle.com/anuvagoyal/sales-store-product-details

        .. code-block:: python

            df = spark.read.csv("datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)

        .. code-block:: python

            df=df.withColumn('constant',F.lit('finance'))
            df.select("Product_Container","constant").show(truncate=False)