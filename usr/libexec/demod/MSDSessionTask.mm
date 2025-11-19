@interface MSDSessionTask
- (id)initFromTaskInfo:(id)a3;
- (id)prepareToWrite:(id)a3;
- (void)resetData;
- (void)resetFileHandle;
@end

@implementation MSDSessionTask

- (id)initFromTaskInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDSessionTask;
  v5 = [(MSDSessionTask *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDSessionTask *)v5 setInfo:v4];
    [(MSDSessionTask *)v6 resetFileHandle];
    [(MSDSessionTask *)v6 resetData];
    v7 = v6;
  }

  return v6;
}

- (void)resetFileHandle
{
  v3 = [(MSDSessionTask *)self info];
  v4 = [v3 savePath];

  if (v4)
  {
    v5 = [MSDPartialDownload alloc];
    v6 = [(MSDSessionTask *)self info];
    v7 = [v6 savePath];
    v8 = [(MSDPartialDownload *)v5 initWithFilePath:v7];
    [(MSDSessionTask *)self setContentRange:v8];

    v11 = [(MSDSessionTask *)self info];
    v9 = [(MSDPartialDownload *)v11 savePath];
    v10 = [(MSDSessionTask *)self prepareToWrite:v9];
    [(MSDSessionTask *)self setFileHandle:v10];
  }

  else
  {
    v11 = objc_alloc_init(MSDPartialDownload);
    [(MSDSessionTask *)self setContentRange:?];
  }
}

- (void)resetData
{
  v3 = [NSMutableData dataWithCapacity:0];
  [(MSDSessionTask *)self setOutData:v3];
}

- (id)prepareToWrite:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v7 = [v3 stringByDeletingLastPathComponent];
  v8 = +[NSFileManager defaultManager];
  v16 = 0;
  v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v16];
  v6 = v16;

  if ((v9 & 1) == 0)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000D15EC(v7, v6);
    }

    goto LABEL_15;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 createFileAtPath:v3 contents:0 attributes:0];

  if ((v11 & 1) == 0)
  {
    sub_1000D1698(v3, &v17);
    v15 = v17;
LABEL_15:

    v13 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v12 = [NSFileHandle fileHandleForWritingAtPath:v3];
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