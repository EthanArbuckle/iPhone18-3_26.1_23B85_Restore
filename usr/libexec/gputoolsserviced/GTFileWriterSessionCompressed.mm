@interface GTFileWriterSessionCompressed
+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)_finalizeCompressedFileData:(id *)a3;
- (BOOL)_writeCompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)finish:(id *)a3;
- (GTFileWriterSessionCompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (void)writeFileData:(id)a3 completionHandler:(id)a4;
@end

@implementation GTFileWriterSessionCompressed

+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithFileEntries:v12 relativeToURL:v11 options:v10 error:a6];

  return v13;
}

- (GTFileWriterSessionCompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = GTFileWriterSessionCompressed;
  v13 = [(GTFileWriterSessionCompressed *)&v24 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [GTFileWriterSessionUncompressed sessionWithFileEntries:v10 relativeToURL:v11 options:v12 error:a6];
  v15 = *(v13 + 8);
  *(v13 + 8) = v14;

  if (!*(v13 + 8))
  {
LABEL_15:
    a6 = 0;
    goto LABEL_16;
  }

  v16 = [v12 compressionAlgorithm] - 1;
  if (v16 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1000320B0[v16];
  }

  if (compression_stream_init((v13 + 8), COMPRESSION_STREAM_DECODE, v17) == COMPRESSION_STATUS_OK)
  {
    *(v13 + 6) = malloc_type_malloc([v12 chunkSize], 0x28ACB392uLL);
    v19 = [v12 chunkSize];
    *(v13 + 7) = v19;
    *(v13 + 1) = *(v13 + 6);
    *(v13 + 2) = v19;
LABEL_11:
    a6 = v13;
    goto LABEL_16;
  }

  if (GTCoreLogUseOsLog())
  {
    v18 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000133A4();
    }
  }

  else
  {
    v20 = __stderrp;
    v18 = [NSString stringWithFormat:@"Failed to initialize decode compression stream"];
    fprintf(v20, "%s\n", [v18 UTF8String]);
  }

  if (a6)
  {
    v25 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithFormat:@"Compression failed: %@", @"Failed to initialize decode compression stream"];
    v26 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v22];

    goto LABEL_15;
  }

LABEL_16:

  return a6;
}

- (void)writeFileData:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  v13 = 0;
  [(GTFileWriterSessionCompressed *)self _writeCompressedFileData:v10 length:v11 error:&v13];
  v12 = v13;
  v8[2](v8, v12);
}

- (BOOL)_writeCompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D18C;
  v10[3] = &unk_100040C28;
  v10[4] = self;
  return sub_10000CF90(&self->_compressionStream, a3, a4, decompressorOutput, decompressorOutputSize, a5, v10);
}

- (BOOL)finish:(id *)a3
{
  v5 = [(GTFileWriterSessionCompressed *)self _finalizeCompressedFileData:?];
  compression_stream_destroy(&self->_compressionStream);
  free(self->_decompressorOutput);
  self->_decompressorOutput = 0;
  self->_decompressorOutputSize = 0;
  uncompressedSession = self->_uncompressedSession;
  v10 = 0;
  v7 = [(GTFileWriterSessionUncompressed *)uncompressedSession finish:&v10];
  v8 = v10;
  if (v5 && (v7 & 1) == 0)
  {
    if (a3)
    {
      v8 = v8;
      LOBYTE(v5) = 0;
      *a3 = v8;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_finalizeCompressedFileData:(id *)a3
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D4BC;
  v7[3] = &unk_100040C28;
  v7[4] = self;
  return sub_10000D2B0(&self->_compressionStream, decompressorOutput, decompressorOutputSize, a3, v7);
}

@end