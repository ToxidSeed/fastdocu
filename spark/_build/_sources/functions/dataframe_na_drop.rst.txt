dataframe.na.drop
=============================

.. py:function:: df.na.drop([how, thresh, subset])

    Retira las filas que tinen algún valor nulo.

    Parámetros:
        :how: str, opcional
        
        Posibles valores:
            :**any**: Retira una fila si esta contiene algún valor nulos
            :**all**: Retira una fila si todos los valores de la fila son nulos

        :thresh: int, optional
        
        Default None, si s especificado retira filas que tienen menos valores **no nulos** que *thresh*. Esto sobre escribe el valor del parámetro how 

        :subset: str, tuple or list, optional

        Lista opcional de nombres de columnas a considerar.

Ejemplos
-----------

Creamos el dataset para los ejemplos

.. code-block:: python

    df = spark.createDataFrame([("High",50,281.39,-106.4,"Regular Air")
                            ,(None,50,None,None,"Regular Air")
                            ,("High",50,None,None,"Regular Air")
                            ,(None,None,None,None,None)],
                            ["Order_Priority","Order_Quantity","Sales","Profit","Ship_Mode"])
    df.show()
    
.. image:: images/df_na_drop_input.png

df.na.drop - how="any"
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(how="any")
    df.show(truncate=False)

.. image:: images/df_na_drop_how_any_output.png

df.na.drop - how="all"
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(how="all")
    df.show(truncate=False)

.. image:: images/df_na_drop_how_all_output.png

df.na.drop - thresh=3
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(thresh=3)
    df.show(truncate=False)

.. image:: images/df_na_drop_thresh_3.png

df.na.drop - subset="Ship_Mode"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(subset="Ship_Mode")
    df.show(truncate=False)

.. image:: images/df_na_drop_subset_field_output.png

df.na.drop - subset=("Ship_Mode","Sales")
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(subset=("Ship_Mode","Sales"))
    df.show(truncate=False)

.. image:: images/df_na_drop_subset_tuple_output.png

df.na.drop - subset=["Order_Priority","Sales"]
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: python

    df = df.na.drop(subset=["Order_Priority","Sales"])
    df.show(truncate=False)

.. image:: images/df_na_drop_subset_list_output.png
