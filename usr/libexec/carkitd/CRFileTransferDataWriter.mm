@interface CRFileTransferDataWriter
- (BOOL)_openFile;
- (BOOL)hasAllChunks;
- (BOOL)saveData:(id)data forIndex:(id)index;
- (CRFileTransferDataWriter)initWithFileURL:(id)l chunkCount:(id)count;
- (void)_closeFile;
@end

@implementation CRFileTransferDataWriter

- (CRFileTransferDataWriter)initWithFileURL:(id)l chunkCount:(id)count
{
  lCopy = l;
  countCopy = count;
  v13.receiver = self;
  v13.super_class = CRFileTransferDataWriter;
  v9 = [(CRFileTransferDataWriter *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9 && (objc_storeStrong(&v9->_fileURL, l), objc_storeStrong(p_isa + 2, count), ![p_isa _openFile]))
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
  fileURL = [(CRFileTransferDataWriter *)self fileURL];
  path = [fileURL path];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:path];

  if (v6 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 createFileAtPath:path contents:0 attributes:0], v7, (v8))
  {
    v14 = 0;
    v9 = [NSFileHandle fileHandleForWritingToURL:fileURL error:&v14];
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
  fileHandle = [(CRFileTransferDataWriter *)self fileHandle];
  [fileHandle closeFile];

  [(CRFileTransferDataWriter *)self setFileHandle:0];
}

- (BOOL)saveData:(id)data forIndex:(id)index
{
  dataCopy = data;
  indexCopy = index;
  fileHandle = [(CRFileTransferDataWriter *)self fileHandle];
  if (fileHandle)
  {
    [(CRFileTransferDataWriter *)self setCurrentChunkIndex:indexCopy];
    [fileHandle seekToEndReturningOffset:0 error:0];
    v17 = 0;
    v9 = [fileHandle writeData:dataCopy error:&v17];
    v10 = v17;
    if (v9)
    {
      hasAllChunks = [(CRFileTransferDataWriter *)self hasAllChunks];
      v12 = sub_100002A68(4uLL);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!hasAllChunks)
      {
        if (v13)
        {
          chunkCount = [(CRFileTransferDataWriter *)self chunkCount];
          *buf = 138412546;
          v19 = indexCopy;
          v20 = 2112;
          v21 = chunkCount;
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

      chunkCount2 = [(CRFileTransferDataWriter *)self chunkCount];
      *buf = 138412546;
      v19 = indexCopy;
      v20 = 2112;
      v21 = chunkCount2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "saved final file chunk index %@ (total chunks: %@)", buf, 0x16u);
    }

    else
    {
      v12 = sub_100002A68(4uLL);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      chunkCount2 = [(CRFileTransferDataWriter *)self chunkCount];
      *buf = 138412802;
      v19 = indexCopy;
      v20 = 2112;
      v21 = chunkCount2;
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
  currentChunkIndex = [(CRFileTransferDataWriter *)self currentChunkIndex];

  if (!currentChunkIndex)
  {
    return 0;
  }

  currentChunkIndex2 = [(CRFileTransferDataWriter *)self currentChunkIndex];
  unsignedIntegerValue = [currentChunkIndex2 unsignedIntegerValue];
  chunkCount = [(CRFileTransferDataWriter *)self chunkCount];
  v7 = unsignedIntegerValue == [chunkCount unsignedIntegerValue] - 1;

  return v7;
}

@end