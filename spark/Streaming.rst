Streaming
======================

.. toctree::
   :maxdepth: 3
   :hidden:

   streaming/readstream

Spark Streaming **Dstream** (primeras versiones de streaming), basado en **RDD** que era una temprana abstracción de Spark antes de Dataframes y Datasets.

Era capaz de recibir datos de entrada de varios origenes, tales como **Kafka**, **Flume**, etc., y convertir la data entrante en micro-batches y procesarlos usando el engine Spark.

En resumen Spark Streaming troceaba los datos entrantes en partes y luego estas partes eran procesadas por el engine Spark.

**Desventajas**

1. Diferentes APIs para jobs de procesamiento batch y Stream.
2. Incapaz de manejar procesamiento de datos batch basados en eventos.
3. Limitada capacidad de tolerancia a fallos, sin una garantia end-to-end de procesamiento consistente de datos.

**structured streaming** (versiones mas recientes de streaming), ofrece la misma API tanto para procesamiento batch como streaming

* Esta basado sobre el engine Spark Sql y usa dataframe para múltiples operaciones.
* Proporciona una garantía end-to-end de consistencia de datos.

**Elementos del Streaming**

**Data Inputs**

Desde: 
*Sistemas de Mensajería*: Apache Kafka, Flume, Logstash

*Carpetas de Archivos/Directorios*: Los archivos son leidos continuamente del directorio como un flujo de datos.

**Data Processing**

**Final Output**

En el momento de escrbir esta docu, la última versión es la 3.2.1 y los tipos de salida estan descritos en la sección *Output Sinks* de la documentación de structured streaming `structured streaming`_.

.. _structured streaming: https://spark.apache.org/docs/latest/structured-streaming-programming-guide.html

Alternativas a Structured Streaming
-------------------------------------

* Flink
* Beam de Google