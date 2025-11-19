@interface SKDiskResizerBase
- (BOOL)resizeWithError:(id *)a3;
- (SKDiskResizerBase)initWithDisk:(id)a3 requestedSize:(unint64_t)a4;
- (id)cancelWithError:(id *)a3;
- (id)eventFromSize;
- (id)resizeStateMachine:(id *)a3;
- (id)rollbackResize:(id *)a3;
- (int64_t)completedUnitCount;
- (unint64_t)currentSize;
- (void)setCompletedUnitCount:(int64_t)a3;
@end

@implementation SKDiskResizerBase

- (SKDiskResizerBase)initWithDisk:(id)a3 requestedSize:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = SKDiskResizerBase;
  v8 = [(SKDiskResizerBase *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_disk, a3);
    v9->_requestedSize = a4;
    v9->_originalSize = [(SKDiskResizerBase *)v9 currentSize];
    v10 = [SKProgress progressWithTotalUnitCount:100];
    progress = v9->_progress;
    v9->_progress = v10;
  }

  return v9;
}

- (int64_t)completedUnitCount
{
  v2 = [(SKDiskResizerBase *)self progress];
  v3 = [v2 completedUnitCount];

  return v3;
}

- (void)setCompletedUnitCount:(int64_t)a3
{
  v5 = [(SKDiskResizerBase *)self resizeError];

  if (!v5)
  {
    if (a3 >= 100)
    {
      a3 = 100;
    }

    v6 = [(SKDiskResizerBase *)self progress];
    [v6 setCompletedUnitCount:a3];
  }
}

- (unint64_t)currentSize
{
  v2 = [(SKDiskResizerBase *)self disk];
  v3 = [v2 unformattedSize];

  return v3;
}

- (BOOL)resizeWithError:(id *)a3
{
  v5 = [(SKDiskResizerBase *)self resizeStateMachine:?];
  [(SKDiskResizerBase *)self setActiveFSM:v5];

  v6 = [(SKDiskResizerBase *)self activeFSM];

  if (v6)
  {
    v7 = [(SKDiskResizerBase *)self activeFSM];
    v17 = 0;
    [v7 runWithError:&v17];
    v8 = v17;

    v9 = [(SKDiskResizerBase *)self resizeError];

    if (v9)
    {
      v10 = [(SKDiskResizerBase *)self resizeError];

      v8 = v10;
    }

    if (a3)
    {
      v11 = v8;
      *a3 = v8;
    }

    [(SKDiskResizerBase *)self setActiveFSM:0];
    v12 = [(SKDiskResizerBase *)self progress];
    v13 = [v12 totalUnitCount];
    v14 = [(SKDiskResizerBase *)self progress];
    [v14 setCompletedUnitCount:v13];

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

- (id)resizeStateMachine:(id *)a3
{
  v3 = [NSException exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v3 raise];

  return 0;
}

- (id)eventFromSize
{
  v3 = [(SKDiskResizerBase *)self requestedSize];
  v4 = [(SKDiskResizerBase *)self originalSize];
  v5 = &off_100059118;
  if (v3 <= v4)
  {
    v5 = &off_100059120;
  }

  v6 = *v5;

  return v6;
}

- (id)cancelWithError:(id *)a3
{
  v5 = [SKError errorWithPOSIXCode:89 error:a3];

  return [(SKDiskResizerBase *)self rollbackResize:a3];
}

- (id)rollbackResize:(id *)a3
{
  if (a3 && (v5 = *a3) != 0)
  {
    v6 = v5;
    v7 = [(SKDiskResizerBase *)self resizeError];

    v8 = sub_10000BFD0();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [(SKDiskResizerBase *)self resizeError];
        v15 = 136315650;
        v16 = "[SKDiskResizerBase rollbackResize:]";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failing resize with %@ after attempt to recover from %@", &v15, 0x20u);
      }

      *a3 = [(SKDiskResizerBase *)self resizeError];

      v11 = 0;
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
        v20 = [(SKDiskResizerBase *)self requestedSize];
        v21 = 2048;
        v22 = [(SKDiskResizerBase *)self originalSize];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Rolling back resize after %@, reverting resize direction from %llu to %llu", &v15, 0x2Au);
      }

      [(SKDiskResizerBase *)self setResizeError:v6];
      v14 = [(SKDiskResizerBase *)self requestedSize];
      [(SKDiskResizerBase *)self setRequestedSize:[(SKDiskResizerBase *)self originalSize]];
      [(SKDiskResizerBase *)self setOriginalSize:v14];
      v11 = [(SKDiskResizerBase *)self eventFromSize];
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

    v11 = [SKError nilWithSKErrorCode:102 error:a3];
  }

  return v11;
}

@end