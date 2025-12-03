@interface SKResizeOperation
- (BOOL)resizeLastPartitionWithError:(id *)error;
- (BOOL)run;
- (SKResizeOperation)initWithDisk:(id)disk toSize:(unint64_t)size withCompletionBlock:(id)block;
- (void)finishWithError:(id)error;
@end

@implementation SKResizeOperation

- (SKResizeOperation)initWithDisk:(id)disk toSize:(unint64_t)size withCompletionBlock:(id)block
{
  diskCopy = disk;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = SKResizeOperation;
  v10 = [(SKManagerOperation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(SKResizeOperation *)v10 setTargetDisk:diskCopy];
    [(SKResizeOperation *)v11 setSize:size];
    [(SKResizeOperation *)v11 setCallbackBlock:blockCopy];
    v12 = [SKProgress progressWithTotalUnitCount:100];
    [(SKManagerOperation *)v11 setSkProgress:v12];
  }

  return v11;
}

- (BOOL)run
{
  targetDisk = [(SKResizeOperation *)self targetDisk];
  isWholeDisk = [targetDisk isWholeDisk];

  if (isWholeDisk)
  {
    v9 = 0;
    [(SKResizeOperation *)self resizeLastPartitionWithError:&v9];
    v5 = v9;
  }

  else
  {
    v6 = sub_10000BFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[SKResizeOperation run]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Resize operation (on iOS) is currently supported only for whole disks", buf, 0xCu);
    }

    v5 = [SKError errorWithPOSIXCode:45 error:0];
  }

  v7 = v5;
  [(SKResizeOperation *)self finishWithError:v5];

  return 1;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    skProgress = [(SKManagerOperation *)self skProgress];
    totalUnitCount = [skProgress totalUnitCount];
    skProgress2 = [(SKManagerOperation *)self skProgress];
    [skProgress2 setCompletedUnitCount:totalUnitCount];
  }

  callbackBlock = [(SKResizeOperation *)self callbackBlock];
  (callbackBlock)[2](callbackBlock, errorCopy);

  [(SKManagerOperation *)self finished];
}

- (BOOL)resizeLastPartitionWithError:(id *)error
{
  v5 = [SKLastPartitionResizer alloc];
  targetDisk = [(SKResizeOperation *)self targetDisk];
  v7 = [(SKDiskResizerBase *)v5 initWithDisk:targetDisk requestedSize:[(SKResizeOperation *)self size]];

  skProgress = [(SKManagerOperation *)self skProgress];
  progress = [(SKDiskResizerBase *)v7 progress];
  [skProgress chainChildProgress:progress withPendingUnitCount:100];

  v10 = [(SKLastPartitionResizer *)v7 resizeStateMachine:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 runWithError:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end