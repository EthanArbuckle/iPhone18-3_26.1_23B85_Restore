@interface SKManagerOperation
- (BOOL)run;
- (SKManagerOperation)init;
- (id)redactedDescription;
- (id)validateWithRecachedDisk:(id)disk error:(id)error;
- (void)dmAsyncMessageForDisk:(__DADisk *)disk string:(id)string dictionary:(id)dictionary;
- (void)dmAsyncStartedForDisk:(__DADisk *)disk;
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

  finishedSemaphore = [(SKManagerOperation *)self finishedSemaphore];
  dispatch_semaphore_signal(finishedSemaphore);
}

- (void)dmAsyncStartedForDisk:(__DADisk *)disk
{
  [(SKManagerOperation *)self setProgress:disk, 0.0];
  progressHandler = [(SKManagerOperation *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(SKManagerOperation *)self progressHandler];
    progressHandler2[2](progressHandler2, 0, 0.0);
  }
}

- (void)dmAsyncMessageForDisk:(__DADisk *)disk string:(id)string dictionary:(id)dictionary
{
  stringCopy = string;
  progressHandler = [(SKManagerOperation *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(SKManagerOperation *)self progressHandler];
    [(SKManagerOperation *)self progress];
    (progressHandler2)[2](progressHandler2, stringCopy);
  }
}

- (id)validateWithRecachedDisk:(id)disk error:(id)error
{
  diskCopy = disk;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    v9 = errorCopy;
LABEL_3:
    v10 = v9;
    goto LABEL_8;
  }

  v11 = sub_10000BFD0();
  v12 = v11;
  if (!diskCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SKManagerOperation validateWithRecachedDisk:error:]";
      v16 = 2112;
      selfCopy = self;
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
    selfCopy = diskCopy;
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