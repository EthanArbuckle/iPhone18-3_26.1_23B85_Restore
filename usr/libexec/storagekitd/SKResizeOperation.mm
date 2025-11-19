@interface SKResizeOperation
- (BOOL)resizeLastPartitionWithError:(id *)a3;
- (BOOL)run;
- (SKResizeOperation)initWithDisk:(id)a3 toSize:(unint64_t)a4 withCompletionBlock:(id)a5;
- (void)finishWithError:(id)a3;
@end

@implementation SKResizeOperation

- (SKResizeOperation)initWithDisk:(id)a3 toSize:(unint64_t)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = SKResizeOperation;
  v10 = [(SKManagerOperation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(SKResizeOperation *)v10 setTargetDisk:v8];
    [(SKResizeOperation *)v11 setSize:a4];
    [(SKResizeOperation *)v11 setCallbackBlock:v9];
    v12 = [SKProgress progressWithTotalUnitCount:100];
    [(SKManagerOperation *)v11 setSkProgress:v12];
  }

  return v11;
}

- (BOOL)run
{
  v3 = [(SKResizeOperation *)self targetDisk];
  v4 = [v3 isWholeDisk];

  if (v4)
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

- (void)finishWithError:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v4 = [(SKManagerOperation *)self skProgress];
    v5 = [v4 totalUnitCount];
    v6 = [(SKManagerOperation *)self skProgress];
    [v6 setCompletedUnitCount:v5];
  }

  v7 = [(SKResizeOperation *)self callbackBlock];
  (v7)[2](v7, v8);

  [(SKManagerOperation *)self finished];
}

- (BOOL)resizeLastPartitionWithError:(id *)a3
{
  v5 = [SKLastPartitionResizer alloc];
  v6 = [(SKResizeOperation *)self targetDisk];
  v7 = [(SKDiskResizerBase *)v5 initWithDisk:v6 requestedSize:[(SKResizeOperation *)self size]];

  v8 = [(SKManagerOperation *)self skProgress];
  v9 = [(SKDiskResizerBase *)v7 progress];
  [v8 chainChildProgress:v9 withPendingUnitCount:100];

  v10 = [(SKLastPartitionResizer *)v7 resizeStateMachine:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 runWithError:a3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end