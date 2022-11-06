logs
==============

Para generar logs utilizamos el modulo **logging**

Ejemplo básico:

.. code-block:: python

    import logging

    logging.basicConfig(filename="log_filename.txt", level=logging.DEBUG)
    logging.debug("prueba debug")