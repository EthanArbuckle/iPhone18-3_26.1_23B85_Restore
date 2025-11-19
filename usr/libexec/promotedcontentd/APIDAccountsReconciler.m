@interface APIDAccountsReconciler
+ (void)forceReconcile:(id)a3;
@end

@implementation APIDAccountsReconciler

+ (void)forceReconcile:(id)a3
{
  v3 = a3;
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
  v7 = [v5 remoteObjectProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10028CADC;
  v10[3] = &unk_10047CA18;
  v11 = v5;
  v12 = v3;
  v8 = v5;
  v9 = v3;
  [v7 forceReconcile:v10];
}

@end