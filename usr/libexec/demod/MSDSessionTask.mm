@interface MSDSessionTask
- (id)initFromTaskInfo:(id)info;
- (id)prepareToWrite:(id)write;
- (void)resetData;
- (void)resetFileHandle;
@end

@implementation MSDSessionTask

- (id)initFromTaskInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MSDSessionTask;
  v5 = [(MSDSessionTask *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDSessionTask *)v5 setInfo:infoCopy];
    [(MSDSessionTask *)v6 resetFileHandle];
    [(MSDSessionTask *)v6 resetData];
    v7 = v6;
  }

  return v6;
}

- (void)resetFileHandle
{
  info = [(MSDSessionTask *)self info];
  savePath = [info savePath];

  if (savePath)
  {
    v5 = [MSDPartialDownload alloc];
    info2 = [(MSDSessionTask *)self info];
    savePath2 = [info2 savePath];
    v8 = [(MSDPartialDownload *)v5 initWithFilePath:savePath2];
    [(MSDSessionTask *)self setContentRange:v8];

    info3 = [(MSDSessionTask *)self info];
    savePath3 = [(MSDPartialDownload *)info3 savePath];
    v10 = [(MSDSessionTask *)self prepareToWrite:savePath3];
    [(MSDSessionTask *)self setFileHandle:v10];
  }

  else
  {
    info3 = objc_alloc_init(MSDPartialDownload);
    [(MSDSessionTask *)self setContentRange:?];
  }
}

- (void)resetData
{
  v3 = [NSMutableData dataWithCapacity:0];
  [(MSDSessionTask *)self setOutData:v3];
}

- (id)prepareToWrite:(id)write
{
  writeCopy = write;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:writeCopy];

  if (v5)
  {
    v6 = 0;
    goto LABEL_6;
  }

  stringByDeletingLastPathComponent = [writeCopy stringByDeletingLastPathComponent];
  v8 = +[NSFileManager defaultManager];
  v16 = 0;
  v9 = [v8 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
  v6 = v16;

  if ((v9 & 1) == 0)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000D15EC(stringByDeletingLastPathComponent, v6);
    }

    goto LABEL_15;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 createFileAtPath:writeCopy contents:0 attributes:0];

  if ((v11 & 1) == 0)
  {
    sub_1000D1698(writeCopy, &v17);
    v15 = v17;
LABEL_15:

    v13 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v12 = [NSFileHandle fileHandleForWritingAtPath:writeCopy];
  v13 = v12;
  if (v12)
  {
    [v12 seekToEndOfFile];
    fcntl([v13 fileDescriptor], 48, 1);
  }

  else
  {
    sub_1000D1778();
  }

LABEL_8:

  return v13;
}

@end