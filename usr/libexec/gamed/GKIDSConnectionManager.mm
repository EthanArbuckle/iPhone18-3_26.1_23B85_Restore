@interface GKIDSConnectionManager
+ (id)sharedManager;
- (BOOL)isReady;
- (GKIDSConnectionManager)init;
- (GKIDSConnectionManagerDelegate)delegate;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)dealloc;
- (void)fetchIDSDataForHandles:(id)handles service:(id)service infoTypes:(unint64_t)types performingBlockPerBatch:(id)batch;
- (void)setDelegate:(id)delegate;
@end

@implementation GKIDSConnectionManager

+ (id)sharedManager
{
  if (qword_1003B91F0 != -1)
  {
    sub_10028DF8C();
  }

  v3 = qword_1003B91F8;

  return v3;
}

- (GKIDSConnectionManager)init
{
  v10.receiver = self;
  v10.super_class = GKIDSConnectionManager;
  v2 = [(GKIDSConnectionManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.gamed.idsConnectionManager.idsDelegateQueue", 0);
    idsDelegateQueue = v2->_idsDelegateQueue;
    v2->_idsDelegateQueue = v3;

    v5 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.arcade"];
    gcArcadeAccountController = v2->_gcArcadeAccountController;
    v2->_gcArcadeAccountController = v5;

    v7 = v2->_gcArcadeAccountController;
    idsDelegateQueue = [(GKIDSConnectionManager *)v2 idsDelegateQueue];
    [(IDSAccountController *)v7 addDelegate:v2 queue:idsDelegateQueue];
  }

  return v2;
}

- (void)dealloc
{
  [(IDSAccountController *)self->_gcArcadeAccountController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = GKIDSConnectionManager;
  [(GKIDSConnectionManager *)&v3 dealloc];
}

- (BOOL)isReady
{
  gcArcadeAccountController = [(GKIDSConnectionManager *)self gcArcadeAccountController];
  v3 = [gcArcadeAccountController _gkIsReadyForService:@"com.apple.private.alloy.arcade"];

  return v3;
}

- (void)fetchIDSDataForHandles:(id)handles service:(id)service infoTypes:(unint64_t)types performingBlockPerBatch:(id)batch
{
  handlesCopy = handles;
  serviceCopy = service;
  batchCopy = batch;
  idsDelegateQueue = [(GKIDSConnectionManager *)self idsDelegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010BF80;
  block[3] = &unk_100363018;
  v18 = handlesCopy;
  v19 = serviceCopy;
  v21 = batchCopy;
  typesCopy = types;
  selfCopy = self;
  v14 = batchCopy;
  v15 = serviceCopy;
  v16 = handlesCopy;
  dispatch_async(idsDelegateQueue, block);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  idsDelegateQueue = [(GKIDSConnectionManager *)self idsDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010C14C;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(idsDelegateQueue, v7);
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  controllerCopy = controller;
  addedCopy = added;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    serviceName = [addedCopy serviceName];
    v13 = 138412290;
    v14 = serviceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Account added: %@", &v13, 0xCu);
  }

  if ([(GKIDSConnectionManager *)self isReady])
  {
    delegate = [(GKIDSConnectionManager *)self delegate];
    [delegate connectionManagerReady:self];
  }
}

- (GKIDSConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end