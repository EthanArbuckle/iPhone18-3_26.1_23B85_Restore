@interface PTPCameraFolder
- (PTPCameraFolder)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5;
- (id)newFolderWithObjectInfo:(id)a3 inFolder:(id)a4 notify:(BOOL)a5;
- (void)dealloc;
- (void)newItemWithObjectInfo:(id)a3 notify:(BOOL)a4;
@end

@implementation PTPCameraFolder

- (PTPCameraFolder)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PTPCameraFolder;
  v9 = [(PTPCameraItem *)&v14 initWithObjectInfo:v8 parent:a4 initiator:a5];
  v10 = v9;
  if (v9)
  {
    [(PTPCameraItem *)v9 setType:3];
    v11 = [(PTPCameraItem *)v10 cameraItemProxy];
    [v11 setType:ICCameraItemProxyTypeFolder];

    LODWORD(v11) = [v8 parentObject];
    if (v11 == [v8 storageID])
    {
      v12 = [(PTPCameraItem *)v10 cameraItemProxy];
      [v12 setTopLevel:1];
    }
  }

  return v10;
}

- (void)dealloc
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = PTPCameraFolder;
  [(PTPCameraFolder *)&v3 dealloc];
}

- (void)newItemWithObjectInfo:(id)a3 notify:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(PTPCameraItem *)self initiator];
    v8 = [v7 delegate];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014E74;
    v18[3] = &unk_10002C900;
    v19 = v6;
    v20 = self;
    v9 = [NSBlockOperation blockOperationWithBlock:v18];
    [v8 addInitiatedOperation:v9];

    v10 = v19;
  }

  else
  {
    v11 = [PTPCameraFile alloc];
    v12 = [(PTPCameraItem *)self initiator];
    v10 = [(PTPCameraFile *)v11 initWithObjectInfo:v6 parent:self initiator:v12];

    __ICOSLogCreate();
    v13 = [NSString stringWithFormat:@"File queued: %@\n", v10];
    v14 = [v13 description];
    v15 = [NSString stringWithFormat:@"%@", v14];

    if (__ICLogTypeEnabled())
    {
      v16 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    v17 = [(PTPCameraItem *)self storage];
    [v17 addCameraFileToIndex:v10];
  }
}

- (id)newFolderWithObjectInfo:(id)a3 inFolder:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PTPCameraFolder alloc];
  v11 = [(PTPCameraItem *)self initiator];
  v12 = [(PTPCameraFolder *)v10 initWithObjectInfo:v9 parent:v8 initiator:v11];

  v13 = [(PTPCameraItem *)self storage];
  [v13 addCameraFolderToIndex:v12];

  if (v5)
  {
    v14 = [(PTPCameraItem *)self initiator];
    v15 = [v14 delegate];

    v22 = @"ICCameraItemProxyArray";
    v16 = [(PTPCameraItem *)v12 cameraItemProxy];
    v21 = v16;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    v23 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v19 = [v15 allConnections];
    [v15 sendAddedItemsNotification:v18 toConnections:v19];
  }

  return v12;
}

@end