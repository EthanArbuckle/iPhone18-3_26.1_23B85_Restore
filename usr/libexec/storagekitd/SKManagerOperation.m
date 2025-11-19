@interface SKManagerOperation
- (BOOL)run;
- (SKManagerOperation)init;
- (id)redactedDescription;
- (id)validateWithRecachedDisk:(id)a3 error:(id)a4;
- (void)dmAsyncMessageForDisk:(__DADisk *)a3 string:(id)a4 dictionary:(id)a5;
- (void)dmAsyncStartedForDisk:(__DADisk *)a3;
- (void)finished;
@end

@implementation SKManagerOperation

- (SKManagerOperation)init
{
  v6.receiver = self;
  v6.super_class = SKManagerOperation;
  v2 = [(SKManagerOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    finishedSemaphore = v2->_finishedSemaphore;
    v2->_finishedSemaphore = v3;
  }

  return v2;
}

- (BOOL)run
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"No implementation provided for generic base class." userInfo:0];
  objc_exception_throw(v2);
}

- (void)finished
{
  v3 = +[SKDaemonManager sharedManager];
  [v3 _advanceOperationQueue];

  v4 = [(SKManagerOperation *)self finishedSemaphore];
  dispatch_semaphore_signal(v4);
}

- (void)dmAsyncStartedForDisk:(__DADisk *)a3
{
  [(SKManagerOperation *)self setProgress:a3, 0.0];
  v4 = [(SKManagerOperation *)self progressHandler];

  if (v4)
  {
    v5 = [(SKManagerOperation *)self progressHandler];
    v5[2](v5, 0, 0.0);
  }
}

- (void)dmAsyncMessageForDisk:(__DADisk *)a3 string:(id)a4 dictionary:(id)a5
{
  v8 = a4;
  v6 = [(SKManagerOperation *)self progressHandler];

  if (v6)
  {
    v7 = [(SKManagerOperation *)self progressHandler];
    [(SKManagerOperation *)self progress];
    (v7)[2](v7, v8);
  }
}

- (id)validateWithRecachedDisk:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
LABEL_3:
    v10 = v9;
    goto LABEL_8;
  }

  v11 = sub_10000BFD0();
  v12 = v11;
  if (!v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SKManagerOperation validateWithRecachedDisk:error:]";
      v16 = 2112;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Disk recache failed, failing %@", &v14, 0x16u);
    }

    v9 = [SKError errorWithCode:117 userInfo:0];
    goto LABEL_3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SKManagerOperation validateWithRecachedDisk:error:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Disk recached successfully: %@", &v14, 0x16u);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)redactedDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end