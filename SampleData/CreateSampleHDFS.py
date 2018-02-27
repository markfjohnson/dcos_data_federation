import pyspark
from pyspark.sql import SQLContext

sc = pyspark.SparkContext()
sqlContext = SQLContext(sc)

columns = ['id', 'dogs', 'cats']
vals = [
    (1, 2, 0),
    (2, 0, 1)
]

df = sqlContext.createDataFrame(vals, columns)

df.write.csv("hdfs://example.csv")