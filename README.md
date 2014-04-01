# jdbc-hive2

Hive2 JDBC driver that allows Java programs to connect to a HiveServer2
or Impala cluster using standard, database independent Java code.

## Usage

To make the driver accessible to JDBC and ActiveRecord code running in
JRuby :

    require 'jdbc/hive2'
    Jdbc::Hive2.load_driver
