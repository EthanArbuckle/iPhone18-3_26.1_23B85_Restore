@interface SKDiskResizerBase
- (BOOL)resizeWithError:(id *)error;
- (SKDiskResizerBase)initWithDisk:(id)disk requestedSize:(unint64_t)size;
- (id)cancelWithError:(id *)error;
- (id)eventFromSize;
- (id)resizeStateMachine:(id *)machine;
- (id)rollbackResize:(id *)resize;
- (int64_t)completedUnitCount;
- (unint64_t)currentSize;
- (void)setCompletedUnitCount:(int64_t)count;
@end

@implementation SKDiskResizerBase

- (SKDiskResizerBase)initWithDisk:(id)disk requestedSize:(unint64_t)size
{
  diskCopy = disk;
  v13.receiver = self;
  v13.super_class = SKDiskResizerBase;
  v8 = [(SKDiskResizerBase *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_disk, disk);
    v9->_requestedSize = size;
    v9->_originalSize = [(SKDiskResizerBase *)v9 currentSize];
    v10 = [SKProgress progressWithTotalUnitCount:100];
    progress = v9->_progress;
    v9->_progress = v10;
  }

  return v9;
}

- (int64_t)completedUnitCount
{
  progress = [(SKDiskResizerBase *)self progress];
  completedUnitCount = [progress completedUnitCount];

  return completedUnitCount;
}

- (void)setCompletedUnitCount:(int64_t)count
{
  resizeError = [(SKDiskResizerBase *)self resizeError];

  if (!resizeError)
  {
    if (count >= 100)
    {
      count = 100;
    }

    progress = [(SKDiskResizerBase *)self progress];
    [progress setCompletedUnitCount:count];
  }
}

- (unint64_t)currentSize
{
  disk = [(SKDiskResizerBase *)self disk];
  unformattedSize = [disk unformattedSize];

  return unformattedSize;
}

- (BOOL)resizeWithError:(id *)error
{
  v5 = [(SKDiskResizerBase *)self resizeStateMachine:?];
  [(SKDiskResizerBase *)self setActiveFSM:v5];

  activeFSM = [(SKDiskResizerBase *)self activeFSM];

  if (activeFSM)
  {
    activeFSM2 = [(SKDiskResizerBase *)self activeFSM];
    v17 = 0;
    [activeFSM2 runWithError:&v17];
    v8 = v17;

    resizeError = [(SKDiskResizerBase *)self resizeError];

    if (resizeError)
    {
      resizeError2 = [(SKDiskResizerBase *)self resizeError];

      v8 = resizeError2;
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }

    [(SKDiskResizerBase *)self setActiveFSM:0];
    progress = [(SKDiskResizerBase *)self progress];
    totalUnitCount = [progress totalUnitCount];
    progress2 = [(SKDiskResizerBase *)self progress];
    [progress2 setCompletedUnitCount:totalUnitCount];

    v15 = v8 == 0;
  }

  else
  {
    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[SKDiskResizerBase resizeWithError:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Can't create FSM for resize", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (id)resizeStateMachine:(id *)machine
{
  v3 = [NSException exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v3 raise];

  return 0;
}

- (id)eventFromSize
{
  requestedSize = [(SKDiskResizerBase *)self requestedSize];
  originalSize = [(SKDiskResizerBase *)self originalSize];
  v5 = &off_100059118;
  if (requestedSize <= originalSize)
  {
    v5 = &off_100059120;
  }

  v6 = *v5;

  return v6;
}

- (id)cancelWithError:(id *)error
{
  v5 = [SKError errorWithPOSIXCode:89 error:error];

  return [(SKDiskResizerBase *)self rollbackResize:error];
}

- (id)rollbackResize:(id *)resize
{
  if (resize && (v5 = *resize) != 0)
  {
    v6 = v5;
    resizeError = [(SKDiskResizerBase *)self resizeError];

    v8 = sub_10000BFD0();
    v9 = v8;
    if (resizeError)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        resizeError2 = [(SKDiskResizerBase *)self resizeError];
        v15 = 136315650;
        v16 = "[SKDiskResizerBase rollbackResize:]";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        requestedSize = resizeError2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failing resize with %@ after attempt to recover from %@", &v15, 0x20u);
      }

      *resize = [(SKDiskResizerBase *)self resizeError];

      eventFromSize = 0;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = "[SKDiskResizerBase rollbackResize:]";
        v17 = 2112;
        v18 = v6;
        v19 = 2048;
        requestedSize = [(SKDiskResizerBase *)self requestedSize];
        v21 = 2048;
        originalSize = [(SKDiskResizerBase *)self originalSize];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Rolling back resize after %@, reverting resize direction from %llu to %llu", &v15, 0x2Au);
      }

      [(SKDiskResizerBase *)self setResizeError:v6];
      requestedSize2 = [(SKDiskResizerBase *)self requestedSize];
      [(SKDiskResizerBase *)self setRequestedSize:[(SKDiskResizerBase *)self originalSize]];
      [(SKDiskResizerBase *)self setOriginalSize:requestedSize2];
      eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    }
  }

  else
  {
    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[SKDiskResizerBase rollbackResize:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Reached resize rollback without setting any error", &v15, 0xCu);
    }

    eventFromSize = [SKError nilWithSKErrorCode:102 error:resize];
  }

  return eventFromSize;
}

@end