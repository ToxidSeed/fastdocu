User Defined Functions
==================================

Funciones personalizadas de usuario

Ejemplo:
    Dataframe base para los ejemplos:
    https://www.kaggle.com/anuvagoyal/sales-store-product-details

    .. code-block:: python

        df = spark.read.csv("datasets/Salesstore.csv", quote='"', escape='"', sep=",", header=True)

    **Spark UDF**

    Definiendo la función

    .. code-block:: python

        import pyspark.sql.functions as F

        def delivery_priority(order_priority, order_quantity):
            if ((order_priority == "High") & (int(order_quantity) > 47)):
                return "fast"
            else:
                return "true"

    Usando la función

    .. code-block:: python

        delivery_udf = F.udf(delivery_priority, StringType())
        df = df.withColumn('delivery_priority', delivery_udf(df["Order_Priority"], df["Order_Quantity"]))
        df.show(truncate=False)

    **Pandas UDF**

    Definiendo la función

    .. code-block:: python

        from pyspark.sql.functions import pandas_udf, PandasUDFType

        def delivery_priority(order_priority, order_quantity):
            if ((order_priority == "High") & (int(order_quantity) > 47)):
                return "fast"
            else:
                return "true"

    Usando la función

    .. code-block:: python

        del_udf = pandas_udf(delivery_priority, StringType())
        df = df.withColumn('delivery_priority', delivery_udf(df["Order_Priority"], df["Order_Quantity"]))
        df.show(truncate=False)


    

    
