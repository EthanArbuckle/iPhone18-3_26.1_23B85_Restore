@interface CRFileTransferDataWriter
- (BOOL)_openFile;
- (BOOL)hasAllChunks;
- (BOOL)saveData:(id)a3 forIndex:(id)a4;
- (CRFileTransferDataWriter)initWithFileURL:(id)a3 chunkCount:(id)a4;
- (void)_closeFile;
@end

@implementation CRFileTransferDataWriter

- (CRFileTransferDataWriter)initWithFileURL:(id)a3 chunkCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CRFileTransferDataWriter;
  v9 = [(CRFileTransferDataWriter *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9 && (objc_storeStrong(&v9->_fileURL, a3), objc_storeStrong(p_isa + 2, a4), ![p_isa _openFile]))
  {
    v11 = 0;
  }

  else
  {
    v11 = p_isa;
  }

  return v11;
}

- (BOOL)_openFile
{
  v3 = [(CRFileTransferDataWriter *)self fileURL];
  v4 = [v3 path];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 createFileAtPath:v4 contents:0 attributes:0], v7, (v8))
  {
    v14 = 0;
    v9 = [NSFileHandle fileHandleForWritingToURL:v3 error:&v14];
    v10 = v14;
    v11 = v9 != 0;
    if (v9)
    {
      [(CRFileTransferDataWriter *)self setFileHandle:v9];
    }

    else
    {
      v12 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100081194(v10, v12);
      }
    }
  }

  else
  {
    v10 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100081150(v10);
    }

    v11 = 0;
  }

  return v11;
}

- (void)_closeFile
{
  v3 = [(CRFileTransferDataWriter *)self fileHandle];
  [v3 closeFile];

  [(CRFileTransferDataWriter *)self setFileHandle:0];
}

- (BOOL)saveData:(id)a3 forIndex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRFileTransferDataWriter *)self fileHandle];
  if (v8)
  {
    [(CRFileTransferDataWriter *)self setCurrentChunkIndex:v7];
    [v8 seekToEndReturningOffset:0 error:0];
    v17 = 0;
    v9 = [v8 writeData:v6 error:&v17];
    v10 = v17;
    if (v9)
    {
      v11 = [(CRFileTransferDataWriter *)self hasAllChunks];
      v12 = sub_100002A68(4uLL);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v13)
        {
          v15 = [(CRFileTransferDataWriter *)self chunkCount];
          *buf = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "saved file chunk index %@ (total chunks: %@)", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (!v13)
      {
LABEL_9:

        [(CRFileTransferDataWriter *)self _closeFile];
LABEL_13:

        goto LABEL_14;
      }

      v14 = [(CRFileTransferDataWriter *)self chunkCount];
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "saved final file chunk index %@ (total chunks: %@)", buf, 0x16u);
    }

    else
    {
      v12 = sub_100002A68(4uLL);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v14 = [(CRFileTransferDataWriter *)self chunkCount];
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to save file chunk %@ of %@: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)hasAllChunks
{
  v3 = [(CRFileTransferDataWriter *)self currentChunkIndex];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CRFileTransferDataWriter *)self currentChunkIndex];
  v5 = [v4 unsignedIntegerValue];
  v6 = [(CRFileTransferDataWriter *)self chunkCount];
  v7 = v5 == [v6 unsignedIntegerValue] - 1;

  return v7;
}

@end