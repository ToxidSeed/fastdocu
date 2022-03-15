pyspark.sql.functions.collect_set
=====================================

.. py:function:: F.collect_set(col)

    Retorna un conjunto de objetos con elementos duplicados eliminados

    Parámetros:
        *col*: column

Ejemplos:
-------------

El csv de origen para los ejemplos es https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    #creamos el dataset base para los ejemplos
    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *
    import pyspark.sql.functions as F

groupBy - collect_set
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.groupBy(["Order_Priority","Order_Quantity"]).agg(F.collect_set("Region"))
    df.show(truncate=False)

.. image::  images/df_groupby_collect_set_output.png
