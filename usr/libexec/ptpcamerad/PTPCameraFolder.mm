@interface PTPCameraFolder
- (PTPCameraFolder)initWithObjectInfo:(id)info parent:(id)parent initiator:(id)initiator;
- (id)newFolderWithObjectInfo:(id)info inFolder:(id)folder notify:(BOOL)notify;
- (void)dealloc;
- (void)newItemWithObjectInfo:(id)info notify:(BOOL)notify;
@end

@implementation PTPCameraFolder

- (PTPCameraFolder)initWithObjectInfo:(id)info parent:(id)parent initiator:(id)initiator
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PTPCameraFolder;
  v9 = [(PTPCameraItem *)&v14 initWithObjectInfo:infoCopy parent:parent initiator:initiator];
  v10 = v9;
  if (v9)
  {
    [(PTPCameraItem *)v9 setType:3];
    cameraItemProxy = [(PTPCameraItem *)v10 cameraItemProxy];
    [cameraItemProxy setType:ICCameraItemProxyTypeFolder];

    LODWORD(cameraItemProxy) = [infoCopy parentObject];
    if (cameraItemProxy == [infoCopy storageID])
    {
      cameraItemProxy2 = [(PTPCameraItem *)v10 cameraItemProxy];
      [cameraItemProxy2 setTopLevel:1];
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

- (void)newItemWithObjectInfo:(id)info notify:(BOOL)notify
{
  infoCopy = info;
  if (notify)
  {
    initiator = [(PTPCameraItem *)self initiator];
    delegate = [initiator delegate];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014E74;
    v18[3] = &unk_10002C900;
    v19 = infoCopy;
    selfCopy = self;
    v9 = [NSBlockOperation blockOperationWithBlock:v18];
    [delegate addInitiatedOperation:v9];

    v10 = v19;
  }

  else
  {
    v11 = [PTPCameraFile alloc];
    initiator2 = [(PTPCameraItem *)self initiator];
    v10 = [(PTPCameraFile *)v11 initWithObjectInfo:infoCopy parent:self initiator:initiator2];

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

    storage = [(PTPCameraItem *)self storage];
    [storage addCameraFileToIndex:v10];
  }
}

- (id)newFolderWithObjectInfo:(id)info inFolder:(id)folder notify:(BOOL)notify
{
  notifyCopy = notify;
  folderCopy = folder;
  infoCopy = info;
  v10 = [PTPCameraFolder alloc];
  initiator = [(PTPCameraItem *)self initiator];
  v12 = [(PTPCameraFolder *)v10 initWithObjectInfo:infoCopy parent:folderCopy initiator:initiator];

  storage = [(PTPCameraItem *)self storage];
  [storage addCameraFolderToIndex:v12];

  if (notifyCopy)
  {
    initiator2 = [(PTPCameraItem *)self initiator];
    delegate = [initiator2 delegate];

    v22 = @"ICCameraItemProxyArray";
    cameraItemProxy = [(PTPCameraItem *)v12 cameraItemProxy];
    v21 = cameraItemProxy;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    v23 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    allConnections = [delegate allConnections];
    [delegate sendAddedItemsNotification:v18 toConnections:allConnections];
  }

  return v12;
}

@end