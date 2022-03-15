dataframe.sort
===============================

.. py:function:: df.sort(*cols, **kwargs)

    Ordena un Dataframe, se puede usar también la función **df.orderBy**

    Parámetros:
        *cols*: str, list or column, optional

            * Si *value* es un dict *subset* es ignorado

        *ascending*: bool or list, optional

            default: True

**Ejemplos:**

        * Creamos el dataset base para los ejemplos en base al archivo csv https://www.kaggle.com/anuvagoyal/sales-store-product-details
        
.. code-block:: python

    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *

    df = spark.read.csv("./datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)


Ordenar por un campo
---------------------

.. code-block:: python

    df = df.select("Order_Priority","Order_Quantity","Sales","Ship_Mode")
    #Convertimos la columna "Sales" de string a decimal para su correcta ordenación
    df = df.withColumn("Sales",df["Sales"].cast(FloatType()))
    #Bajo esta forma solo se puede ordenar una columna
    df = df.sort("Sales",ascending=True)
    df.show(n=10, truncate=False)

**Resultado**

.. image:: images/df_sort_single_column_output.png

Ordenar por varios campos
---------------------------

Para ordenar por mas de una columna se require indicar los campos bajo las formas:

    * *dataframe.campo.{desc(),asc()}*.  
    * *dataframe["campo"].{desc(),asc()}*.
    * Usando las funciones asc() y desc()

.. code-block:: python

    df = df.select("Order_Priority","Order_Quantity","Sales","Profit","Ship_Mode")
    #necesitamos convertir los campos a numericos para la correcta ordenación
    df = df.withColumn("Order_Quantity",df.Order_Quantity.cast(FloatType()))
    df = df.withColumn("Sales",df["Sales"].cast(FloatType()))

Forma *dataframe.campo.{desc(),asc()}*

.. code-block:: python
    
    df = df.sort(df.Order_Quantity.desc(), df.Sales.asc())
    df.show(n=10, truncate=False)

Forma *dataframe["campo"].{desc(),asc()}*

.. code-block:: python

    df = df.sort(df["Order_Quantity"].desc(), df["Sales"].asc())
    df.show(n=10, truncate=False)

Usando asc() y desc()

.. Note::
    Para usar asc() y desc() se requiere importar las *pyspark.sql.functions*

.. code-block:: python

    import pyspark.sql.functions as f
    df = df.sort(f.desc("Order_Quantity"), f.asc("Sales"))
    df.show(n=10, truncate=False)

**Resultado**

.. image:: images/df_sort_multiple_columns_output.png









