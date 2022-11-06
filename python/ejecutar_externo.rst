Ejecución de programas
=============================

Para la ejecución de programas externos usar la funcion *run* del módulo *subprocess*.

.. py:function:: subprocess.run(args)

    Es importante revisar la `documentacion oficial`_ porque **subprocess.run** recibe muchos parámetros.

    .. _documentacion oficial: https://docs.python.org/3/library/subprocess.html

    :param list args: Lista que contiene el *programa* en la primera posición de la lista y los parámetros en las posiciones restantes.

**Ejemplo**:

1. Ejecutar una instancia del navegador "firefox"

    .. code-block:: python

        import subprocess
        subprocess.run(["firefox"])