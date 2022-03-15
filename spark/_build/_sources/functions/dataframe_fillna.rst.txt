dataframe.fillna
=======================

.. py:function:: dataframe.fillna(value, subset=None)

    Reemplaza los valores nulos con *value*.
    
    * Es alias de *dataframe.na.fill()* y *DataFrameNaFunctions.fill*

    Parámetros:
        *value*: valor con el que reemplazar a los nulos.

            * Si *value* es un dict *subset* es ignorado
  
        *subset*: str, tuple or list, optional

            * Subconjunto del dataframe sobre el que aplicar el reemplazo de nulos.
        
            * Los tipos de datos tienen que ser acorde a lo que se ingresa en *value*

Ejemplos
---------------------

Creamos el dataset para los ejemplos

.. code-block:: python

    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName('spark-fast').getOrCreate()
    from pyspark.sql.types import *
    import pyspark.sql.functions as F


    df = spark.createDataFrame([("High",50,281.39,-106.4,"Regular Air")
                    ,(None,50,None,None,"Regular Air")
                    ,("High",50,None,None,"Regular Air")
                    ,(None,None,None,None,None)],
                    ["Order_Priority","Order_Quantity","Sales","Profit","Ship_Mode"])

.. image:: images/df_fillna_input.png

fillna value="0"
^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.fillna("0")
    df.show(truncate=False)

**Resultado**

Solo rellena los nulos para las columnas de tipo string.

.. image:: images/df_fillna_string_output.png

fillna value=0
^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.fillna(0)
    df.show(truncate=False)

**Resultado**

Solo rellena los nulos para las columnas de tipo number.

.. image:: images/df_fillna_number_output.png

fillna value=0, subset="Profit"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.fillna(value=0,subset="Profit")
    df.show(truncate=False)

**Resultado**

Solo rellena los nulos para las columnas de tipo number y la columna "Profit"

.. image:: images/df_fillna_number_subset_output.png

fillna value = dict
^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.fillna({"Sales":0})
    df.show()

**Resultado**

Solo rellena los nulos para el campo "Sales"

.. image:: images/df_fillna_dict_output.png
