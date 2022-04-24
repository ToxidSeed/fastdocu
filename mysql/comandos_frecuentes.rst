Comandos Frecuentes
========================

**Lista de Base de datos**

    .. code-block:: mysql

        mysql> show databases;

**Lista de Tablas**

    .. code-block:: mysql

        mysql> show tables;

**Lista de columnas de una tabla**

    .. code-block:: mysql

        mysql> show columns from <tablename>;

**Renombrar Tabla**

    .. code-block:: mysql

        mysql> rename table <older_name> to <new_name>;

**Renombrar Columna**

    .. code-block:: mysql

        mysql> alter table <table_name> rename column <older_name> to <new_name>;

**Backup de base de datos**

    .. code-block:: shell

        sudo mysqldump bagholdercuy -p > /home/alone/projects/bagholdercuy/data/bagholdercuy.sql
