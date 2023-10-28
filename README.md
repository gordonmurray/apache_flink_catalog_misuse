# Apache Flink Cataglog misuse

(Mis)using Catalogs in Apache Flink for identifying Jobs created using Flink SQL.

When jobs are created in Flink using SQL, they show up in the jobs list with default names such as `insert-into_default_catalog.default_database.sink_name`. If you're pulling records from multiple sources and sinking them to the same place such as a Redis cache it can be hard to tell which one is which if a job needs some attention. As far as I can tell you can only provide names when submitting jobs via Java.
