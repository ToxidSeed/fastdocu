dataframe.filter
==================================

.. py:function:: df.filter(condition)

    Filtra filas usando las condiciones dadas, **where** es alias de filter

    Parámetros: 
        *col*: column

        *str*: cadena

Ejemplos:

        * Creamos el dataset base para los ejemplos en base al archivo csv https://www.kaggle.com/anuvagoyal/sales-store-product-details
        
.. code-block:: python

    from python.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pypark.sql.types import *

    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)
    df = df.withColumn("Profit",df["Profit"].cast(FloatType()))

Filtro por una columna en particular
-------------------------------------

.. code-block:: python

    df = df.select("Order_Priority","Order_Quantity","Sales","Ship_Mode")
    df = df.filter(df["Sales"] > 2700.00)
    df.show(n=10,truncate=False)

**Resultado**

.. image:: images/df_filter_single_column_output.png

Filtro con operador lógico "and" (&)
-------------------------------------

.. code-block:: python

    df = df.select("Order_Priority","Order_Quantity","Sales","Ship_Mode")
    df = df.filter((df["Order_Priority"] == "High") & (df["Order_Quantity"] > 30))
    df = df.show(n=10,truncate=False)

**Resultado**

.. image:: images/df_filter_ope_logic_and_output.png
