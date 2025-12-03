@interface APIDAccountsReconciler
+ (void)forceReconcile:(id)reconcile;
@end

@implementation APIDAccountsReconciler

+ (void)forceReconcile:(id)reconcile
{
  reconcileCopy = reconcile;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Going to forceReconcile.", buf, 2u);
  }

  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ap.adprivacyd.idmanager" options:4096];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___APIDAccountsReconciler_XPC];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  remoteObjectProxy = [v5 remoteObjectProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10028CADC;
  v10[3] = &unk_10047CA18;
  v11 = v5;
  v12 = reconcileCopy;
  v8 = v5;
  v9 = reconcileCopy;
  [remoteObjectProxy forceReconcile:v10];
}

@end