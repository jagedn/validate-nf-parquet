include { splitParquet } from 'plugin/nf-parquet'

def tmp = File.createTempFile("temp",".parquet")

tmp.bytes = params.file.toURL().bytes

channel.fromPath(tmp.absolutePath).splitParquet()
        | view
