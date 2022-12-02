Procesos
=====================

Matar un proceso
------------------

.. code-block:: bash

    $ kill {pid}

.. code-block:: bash

    $ kill -9 {pid}

Puertos usados por procesos
------------------------------

Requiere del paquete *lsof*

.. code-block:: bash

    $ lsof -i -P -n | grep LISTEN



    

