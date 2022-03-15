pyspark.sql.functions.collect_list
=====================================

.. py:function:: F.collect_list(col)

    Retorna una lista de valores.

    Parámetros:
        *col*: column

Ejemplos:
-----------

El csv de origen para los ejemplos es https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    #creamos el dataset base para los ejemplos
    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *
    import pyspark.sql.functions as F

    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)

groupBy - collect_list
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.groupBy(["Order_Priority","Order_Quantity"]).agg(F.collect_list("Region"))
    df.show(truncate=False)

.. image:: images/df_groupby_collect_list_output.png

