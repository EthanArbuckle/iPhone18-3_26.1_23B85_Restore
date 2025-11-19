@interface GKIDSConnectionManager
+ (id)sharedManager;
- (BOOL)isReady;
- (GKIDSConnectionManager)init;
- (GKIDSConnectionManagerDelegate)delegate;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)dealloc;
- (void)fetchIDSDataForHandles:(id)a3 service:(id)a4 infoTypes:(unint64_t)a5 performingBlockPerBatch:(id)a6;
- (void)setDelegate:(id)a3;
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
    v8 = [(GKIDSConnectionManager *)v2 idsDelegateQueue];
    [(IDSAccountController *)v7 addDelegate:v2 queue:v8];
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
  v2 = [(GKIDSConnectionManager *)self gcArcadeAccountController];
  v3 = [v2 _gkIsReadyForService:@"com.apple.private.alloy.arcade"];

  return v3;
}

- (void)fetchIDSDataForHandles:(id)a3 service:(id)a4 infoTypes:(unint64_t)a5 performingBlockPerBatch:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(GKIDSConnectionManager *)self idsDelegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010BF80;
  block[3] = &unk_100363018;
  v18 = v10;
  v19 = v11;
  v21 = v12;
  v22 = a5;
  v20 = self;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(GKIDSConnectionManager *)self idsDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010C14C;
  v7[3] = &unk_1003610B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 serviceName];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Account added: %@", &v13, 0xCu);
  }

  if ([(GKIDSConnectionManager *)self isReady])
  {
    v12 = [(GKIDSConnectionManager *)self delegate];
    [v12 connectionManagerReady:self];
  }
}

- (GKIDSConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end