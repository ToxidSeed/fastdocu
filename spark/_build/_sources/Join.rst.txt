Join
======================

Une con otro dataframe

.. py:function:: df.join(other, on=None, how=None)

    Parámetros:
        *other*: DataFrame

            Lado derecho del join

        *on*: str, list o column, opcional

            Una cadena string para el nombre de columna del join, una lista de nombres de columnas, una expresión de join (Column), o una lista de columnas. Si *on* es una cadena o una lista de cadenas indicando el nombre de las columnas join, la o las columnas deben existir en ambos lados, y esto realiza un equijoin

        *how*: str, opcional

            default inner. Debe ser uno de: inner, cross, outer, full, fullouter, full_outer, left, leftouter, left_outer, right, rightouter, right_outer, semi, leftsemi, left_semi, anti, leftanti and left_anti 

**Datasets Base Para Ejemplos:**

Dataframe Sales Product
https://www.kaggle.com/anuvagoyal/sales-store-product-details

.. code-block:: python

    df = spark.read.csv("datasets/Salesstore.csv", quote='"', escape='"', header=True)

Dataframe

.. code-block:: python

    df_segment = spark.createDataFrame([("Corporate","001"),("Consumer","002"),("Furniture","003"),("Office Supplies","004")], schema=StructType()./
    add("Customer_Segment","string")./
    add("customer_code","string"))

Join simple

.. code-block:: python

    new_df = df.join(df_segment, on = "Customer_Segment")
    new_df.show(truncate=False)
