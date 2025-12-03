@interface KCSharingXPCListenerDelegate
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (KCSharingDaemonGroupManager)groupManager;
- (KCSharingSyncController)syncController;
- (KCSharingXPCListenerDelegate)init;
- (KCSharingXPCListenerDelegate)initWithListener:(id)listener queue:(id)queue daemonGroupManager:(id)manager syncController:(id)controller entitlementBearer:(id)bearer;
- (id)allowedProtocolForEntitlementBearer:(id)bearer;
- (void)accountChanged;
- (void)connectionWasInterrupted:(id)interrupted;
- (void)connectionWasInvalidated:(id)invalidated;
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
  connectionQueue = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031A80;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)groupsUpdated
{
  connectionQueue = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031C98;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)connectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = KCSharingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = invalidatedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "connection invalidated %@", buf, 0xCu);
  }

  clientConnections = self->_clientConnections;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031F6C;
  v9[3] = &unk_100333C68;
  v7 = invalidatedCopy;
  v10 = v7;
  v8 = [(NSMutableArray *)clientConnections indexOfObjectPassingTest:v9];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_clientConnections removeObjectAtIndex:v8];
  }
}

- (void)connectionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v4 = KCSharingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = interruptedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "connection interrupted %@", &v5, 0xCu);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  entitlementBearer = [(KCSharingXPCListenerDelegate *)self entitlementBearer];
  v9 = entitlementBearer;
  if (entitlementBearer)
  {
    v10 = entitlementBearer;
  }

  else
  {
    v10 = connectionCopy;
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
      v31 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Rejected connection %{public}@ lacks entitlement", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromProtocol(v12);
    *buf = 138543618;
    v31 = connectionCopy;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepted connection %{public}@, allowed protocol %{public}@", buf, 0x16u);
  }

  v16 = [KCSharingXPCServer alloc];
  groupManager = [(KCSharingXPCListenerDelegate *)self groupManager];
  syncController = [(KCSharingXPCListenerDelegate *)self syncController];
  v14 = [(KCSharingXPCServer *)v16 initWithConnection:connectionCopy allowedProtocol:v12 groupManager:groupManager syncController:syncController];

  if (!v14)
  {
    v21 = KCSharingLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = connectionCopy;
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
  [connectionCopy setInterruptionHandler:v26];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100032494;
  v23[3] = &unk_100333C40;
  objc_copyWeak(&v24, buf);
  objc_copyWeak(&v25, &location);
  [connectionCopy setInvalidationHandler:v23];
  connectionQueue = [(KCSharingXPCListenerDelegate *)self connectionQueue];
  [connectionCopy _setQueue:connectionQueue];

  [connectionCopy resume];
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

- (id)allowedProtocolForEntitlementBearer:(id)bearer
{
  bearerCopy = bearer;
  if (sub_100010058(bearerCopy, @"com.apple.private.keychain.kcsharing.client"))
  {
    v4 = &protocolRef_KCSharingXPCServerProtocol;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if (sub_100010058(bearerCopy, @"com.apple.private.keychain.kcsharing.invitation.notifier"))
  {
    v4 = &protocolRef_KCSharingInvitationNotificationProtocol;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (KCSharingXPCListenerDelegate)initWithListener:(id)listener queue:(id)queue daemonGroupManager:(id)manager syncController:(id)controller entitlementBearer:(id)bearer
{
  listenerCopy = listener;
  queueCopy = queue;
  managerCopy = manager;
  controllerCopy = controller;
  bearerCopy = bearer;
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
    objc_storeStrong(&v19->_listener, listener);
    objc_storeStrong(&v20->_connectionQueue, queue);
    v21 = +[NSMutableArray array];
    clientConnections = v20->_clientConnections;
    v20->_clientConnections = v21;

    objc_storeWeak(&v20->_groupManager, managerCopy);
    objc_storeWeak(&v20->_syncController, controllerCopy);
    objc_storeStrong(&v20->_entitlementBearer, bearer);
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