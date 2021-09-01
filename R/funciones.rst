funciones
===================

**mean**

Genera una media estandar

Sintaxis

.. code:: R

    mean(x, trim, na.rm)

**x:** An R Object.

**trim:** the fraction (0 to 0.5) of observations to be trimmed at the end of each 'x' before the mean is computed.

**na.rm:** A logical value indicating whether 'NA' values should be stripped before the computation proceeds.

Example:

.. code:: R

    x <- c(0:10,50)
    mean(x)

    Resultado:
    8.75