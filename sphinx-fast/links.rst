Links
===============

`Documentacion oficial`_

.. _Documentacion oficial: https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#external-links

Para construir un enlace externo se debe crear dos cosas, el marcador y la referencia; Para crear el marcador se debe seguir la siguiente sintaxis:

.. code-block:: rst

    .. _{nombre_enlace}: {enlace}

Y luego en alguna parte del documento crear la referencia al marcador así:

.. code-block:: rst

    `{nombre_enlace}`_

Ejemplo:

.. code-block:: rst

    `Documentacion oficial`_

    .. _Documentacion oficial: https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#external-links