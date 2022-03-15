dataframe.drop
===================

.. py:function:: dataframe.drop(*cols)

    Parámetros: 

        :cols: lista de nombres de columnas o la columna

Ejemplos
------------

El csv base para los ejemplos es https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *
    import pyspark.sql.functions as F

    df = spark.read.csv("./datasets/Salesstore.csv" , sep=",", header=True)
    df = df.select("Order_Priority","Order_Quantity","Sales","Ship_Mode","Profit","Customer_Name","Region")
    df.show(n=10, truncate=False)

.. image:: images/df_drop_input.png

dataframe.drop(str, str)
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.drop("Customer_Name","Region")
    df.show(n=10, truncate=False)

.. image:: images/df_drop_str_str_output.png

dataframe.drop(Column: col)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.drop(df.Customer_Name)
    df.show(n=10, truncate=False)

.. image:: images/df_drop_col_output.png
