Column.alias
===============

.. meta::
    :description: Cambio de nombre en columnas
    :keywords: alias, label, as

.. py:function:: column.alias(*alias, **kwargs)

    Parámetros:

        :alias: str

            El nombre de columna deseado

**Ejemplos**

El csv base para los ejemplos es:

    archivo csv https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *
    import pyspark.sql.functions as F

    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)
    df.show(n=10, truncate=False) 
    df = df.select("Order_Priority")
    df.show(n=10, truncate=False)

.. image:: images/df_column_alias_input.png

column.alias(str)
------------------

.. code-block:: python

    df = df.select(df.Order_Priority, df.Order_Priority.alias('fake_piority'))
    df.show(n=10, truncate=False)

.. image:: images/df_column_alias_str_output.png