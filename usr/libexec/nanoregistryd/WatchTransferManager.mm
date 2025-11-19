@interface WatchTransferManager
- (WatchTransferManager)initWithServiceRegistry:(id)a3;
- (id)_retrieveWatchesStagedForTransferFromKeychain;
- (id)retrieveWatchesStagedForTransfer;
- (void)dealloc;
- (void)stageDeviceToTransferForTransferWithType:(unsigned int)a3 device:(id)a4 completion:(id)a5;
- (void)unstageDevice:(id)a3 completion:(id)a4;
@end

@implementation WatchTransferManager

- (WatchTransferManager)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WatchTransferManager;
  v6 = [(WatchTransferManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceRegistry, a3);
    v9 = +[NRQueue registryDaemonQueue];
    v10 = [v9 queue];
    queue = v7->_queue;
    v7->_queue = v10;

    v7->_keychainViewHintToken = -1;
    sub_100103D5C(v7);
    sub_100103EA8(v7);
  }

  return v7;
}

- (id)_retrieveWatchesStagedForTransferFromKeychain
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[WatchTransferManager _retrieveWatchesStagedForTransferFromKeychain]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v5 = +[EPKeychain retrieveWatchTransferData];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DE228;
  v8[3] = &unk_100179900;
  v6 = objc_alloc_init(NSMutableArray);
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)retrieveWatchesStagedForTransfer
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[WatchTransferManager retrieveWatchesStagedForTransfer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v6 = [(WatchTransferManager *)self _retrieveWatchesStagedForTransferFromKeychain];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DE454;
  v10[3] = &unk_100179928;
  v11 = objc_alloc_init(NSMutableArray);
  v7 = v11;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = [v7 copy];

  return v8;
}

- (void)dealloc
{
  if (self)
  {
    keychainViewHintToken = self->_keychainViewHintToken;
    if (keychainViewHintToken != -1)
    {
      notify_cancel(keychainViewHintToken);
      self->_keychainViewHintToken = -1;
    }
  }

  v4.receiver = self;
  v4.super_class = WatchTransferManager;
  [(WatchTransferManager *)&v4 dealloc];
}

- (void)stageDeviceToTransferForTransferWithType:(unsigned int)a3 device:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100103FE8(&self->super.isa);
  sub_100021C84();
  v13[1] = 3221225472;
  v13[2] = sub_1000DDBB0;
  v13[3] = &unk_1001798D8;
  v17 = a3;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 grabRegistryWithReadBlockAsync:v13];
}

- (void)unstageDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[WatchTransferManager unstageDevice:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v11 = sub_100103FE8(&self->super.isa);
  sub_100021C84();
  v14[1] = 3221225472;
  v14[2] = sub_1000DF350;
  v14[3] = &unk_1001768D8;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  [v11 grabRegistryWithReadBlockAsync:v14];
}

@end