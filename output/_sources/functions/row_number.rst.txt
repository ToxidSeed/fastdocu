pyspark.sql.functions.row_number
========================================

Crear una columna adicional con el número de registro iniciando en 1 de una partición Window, para hacer uso de esta función es necesario del objeto pyspark.sql.window.Window.

.. py:function:: row_number()

Ejemplos:

row_number simple
-----------------------------

Dataframe base para los ejemplos:
https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    #Imports
    from pyspark.sql import SparkSession, dataframe
    spark = SparkSession.builder.appName('data_processing').getOrCreate()
    from pyspark.sql.types import *
    from pyspark.sql.functions import col, row_number
    from pyspark.sql.window import Window

    #Código
    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)
    df = df.select(["Order_ID","Order_Priority","Profit"])
    df = df.withColumn("Profit",df["Profit"].cast(FloatType()))

    win = Window.orderBy(df["Profit"].desc())
    df = df.withColumn('rank',row_number().over(win).alias('rank'))
    df.show(n=10)


**Resultado**

.. image:: images/row_number_output.png

row_number por partición
-------------------------

.. code-block:: python

    #Imports
    from pyspark.sql import SparkSession, dataframe
    spark = SparkSession.builder.appName('data_processing').getOrCreate()
    from pyspark.sql.types import *
    from pyspark.sql.functions import col, row_number
    from pyspark.sql.window import Window

    #Código
    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)
    df = df.select(["Order_ID","Customer_Name","Profit"])
    df = df.withColumn("Profit",df["Profit"].cast(FloatType()))

    win = Window.partitionBy("Customer_Name").orderBy (df["Profit"].desc())
    df = df.withColumn('rank',row_number().over(win).alias('rank'))
    df.show(n=20)

**Resultado**

.. image:: images/row_number_partition_by_output.png
