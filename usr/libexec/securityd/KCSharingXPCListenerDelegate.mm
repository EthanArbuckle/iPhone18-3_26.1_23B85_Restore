@interface KCSharingXPCListenerDelegate
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (KCSharingDaemonGroupManager)groupManager;
- (KCSharingSyncController)syncController;
- (KCSharingXPCListenerDelegate)init;
- (KCSharingXPCListenerDelegate)initWithListener:(id)a3 queue:(id)a4 daemonGroupManager:(id)a5 syncController:(id)a6 entitlementBearer:(id)a7;
- (id)allowedProtocolForEntitlementBearer:(id)a3;
- (void)accountChanged;
- (void)connectionWasInterrupted:(id)a3;
- (void)connectionWasInvalidated:(id)a3;
- (void)groupsUpdated;
@end

@implementation KCSharingXPCListenerDelegate

- (KCSharingDaemonGroupManager)groupManager
{
  WeakRetained = objc_loadWeakRetained(&self->_groupManager);

  return WeakRetained;
}

- (KCSharingSyncController)syncController
{
  WeakRetained = objc_loadWeakRetained(&self->_syncController);

  return WeakRetained;
}

- (void)accountChanged
{
  v3 = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031A80;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)groupsUpdated
{
  v3 = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031C98;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)connectionWasInvalidated:(id)a3
{
  v4 = a3;
  v5 = KCSharingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "connection invalidated %@", buf, 0xCu);
  }

  clientConnections = self->_clientConnections;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031F6C;
  v9[3] = &unk_100333C68;
  v7 = v4;
  v10 = v7;
  v8 = [(NSMutableArray *)clientConnections indexOfObjectPassingTest:v9];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_clientConnections removeObjectAtIndex:v8];
  }
}

- (void)connectionWasInterrupted:(id)a3
{
  v3 = a3;
  v4 = KCSharingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "connection interrupted %@", &v5, 0xCu);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KCSharingXPCListenerDelegate *)self entitlementBearer];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [(KCSharingXPCListenerDelegate *)self allowedProtocolForEntitlementBearer:v11];
  v13 = KCSharingLogObject();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v7;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Rejected connection %{public}@ lacks entitlement", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromProtocol(v12);
    *buf = 138543618;
    v31 = v7;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepted connection %{public}@, allowed protocol %{public}@", buf, 0x16u);
  }

  v16 = [KCSharingXPCServer alloc];
  v17 = [(KCSharingXPCListenerDelegate *)self groupManager];
  v18 = [(KCSharingXPCListenerDelegate *)self syncController];
  v14 = [(KCSharingXPCServer *)v16 initWithConnection:v7 allowedProtocol:v12 groupManager:v17 syncController:v18];

  if (!v14)
  {
    v21 = KCSharingLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v7;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to init KCSharingXPCServer for connection %{public}@", buf, 0xCu);
    }

    v14 = 0;
LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v14);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100032430;
  v26[3] = &unk_100333C40;
  objc_copyWeak(&v27, buf);
  objc_copyWeak(&v28, &location);
  [v7 setInterruptionHandler:v26];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100032494;
  v23[3] = &unk_100333C40;
  objc_copyWeak(&v24, buf);
  objc_copyWeak(&v25, &location);
  [v7 setInvalidationHandler:v23];
  v19 = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  [v7 _setQueue:v19];

  [v7 resume];
  [(NSMutableArray *)self->_clientConnections addObject:v14];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v20 = 1;
LABEL_15:

  return v20;
}

- (id)allowedProtocolForEntitlementBearer:(id)a3
{
  v3 = a3;
  if (sub_100010058(v3, @"com.apple.private.keychain.kcsharing.client"))
  {
    v4 = &protocolRef_KCSharingXPCServerProtocol;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if (sub_100010058(v3, @"com.apple.private.keychain.kcsharing.invitation.notifier"))
  {
    v4 = &protocolRef_KCSharingInvitationNotificationProtocol;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (KCSharingXPCListenerDelegate)initWithListener:(id)a3 queue:(id)a4 daemonGroupManager:(id)a5 syncController:(id)a6 entitlementBearer:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = KCSharingLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "initing KCSharingXPCListenerDelegate", buf, 2u);
  }

  v24.receiver = self;
  v24.super_class = KCSharingXPCListenerDelegate;
  v19 = [(KCSharingXPCListenerDelegate *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_listener, a3);
    objc_storeStrong(&v20->_connectionQueue, a4);
    v21 = +[NSMutableArray array];
    clientConnections = v20->_clientConnections;
    v20->_clientConnections = v21;

    objc_storeWeak(&v20->_groupManager, v15);
    objc_storeWeak(&v20->_syncController, v16);
    objc_storeStrong(&v20->_entitlementBearer, a7);
    [(NSXPCListener *)v20->_listener setDelegate:v20];
    [(NSXPCListener *)v20->_listener _setQueue:v20->_connectionQueue];
    [(NSXPCListener *)v20->_listener resume];
  }

  return v20;
}

- (KCSharingXPCListenerDelegate)init
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.security.kcsharing"];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, -1);

  v6 = dispatch_queue_create("com.apple.KCSharingXPCListenerDelegate.clientConnections", v5);
  v7 = +[KCSharingDaemonGroupManager sharedInstance];
  v8 = +[KCSharingSyncController sharedInstance];
  v9 = [(KCSharingXPCListenerDelegate *)self initWithListener:v3 queue:v6 daemonGroupManager:v7 syncController:v8 entitlementBearer:0];

  return v9;
}

+ (id)sharedInstance
{
  if (qword_10039DB40 != -1)
  {
    dispatch_once(&qword_10039DB40, &stru_100333C18);
  }

  v3 = qword_10039DB48;

  return v3;
}

@end