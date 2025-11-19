@interface WCDPrivateClient
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WCDClientDelegate)delegate;
- (WCDPrivateClient)init;
- (id)preferredBundleIDForApplicationInfo:(id)a3;
- (unint64_t)hash;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)dealloc;
- (void)fakeIncomingPayloadOnSubService:(id)a3 ofType:(id)a4 clientData:(id)a5 resource:(id)a6 resourceSandboxToken:(id)a7 completionHandler:(id)a8;
- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)a3;
- (void)handlePingForApplicationInfo:(id)a3;
- (void)isApplicationInfoPrivileged:(id)a3 completionHandler:(id)a4;
- (void)reconnect;
- (void)setConnection:(id)a3;
- (void)shouldWakeAppForApplicationInfo:(id)a3 completionHandler:(id)a4;
@end

@implementation WCDPrivateClient

- (WCDPrivateClient)init
{
  v6.receiver = self;
  v6.super_class = WCDPrivateClient;
  v2 = [(WCDPrivateClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.wcd.private-client.work-queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCDPrivateClient;
  [(WCDPrivateClient *)&v2 dealloc];
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_connection, a3);
    [(NSXPCConnection *)self->_connection setDelegate:self];
    v7 = +[WCPrivateXPCManager privateDaemonInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = +[WCPrivateXPCManager privateClientInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000F15C;
    v11[3] = &unk_100048B78;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F1EC;
    v9[3] = &unk_100048B78;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)*p_connection setInvalidationHandler:v9];
    [(NSXPCConnection *)*p_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(WCDPrivateClient *)self connection];
  v6 = [NSString stringWithFormat:@"<%@: %p, connection: %@>", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCDPrivateClient *)self connection];
      v7 = [(WCDPrivateClient *)v5 connection];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCDPrivateClient *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a4;
  [v5 retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F4D0;
  block[3] = &unk_100048A48;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reconnect
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "private client reconnected", v3, 2u);
  }
}

- (void)fakeIncomingPayloadOnSubService:(id)a3 ofType:(id)a4 clientData:(id)a5 resource:(id)a6 resourceSandboxToken:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v38 = a6;
  v17 = a7;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10000FAA8;
  v48[3] = &unk_100048E30;
  v18 = v14;
  v49 = v18;
  v19 = a8;
  v41 = objc_retainBlock(v48);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000FBF8;
  v46[3] = &unk_100048E58;
  v46[4] = self;
  v20 = v18;
  v47 = v20;
  v21 = objc_retainBlock(v46);
  v22 = objc_opt_new();
  v23 = [v22 UUIDString];

  v40 = v16;
  if ([v15 isEqual:@"file"])
  {
    v24 = objc_opt_new();
    [v24 setObject:&off_10004AB28 forKeyedSubscript:@"t"];
    if (v16)
    {
      [v24 setObject:v16 forKeyedSubscript:@"u"];
    }

    v45 = 0;
    v25 = v38;
    (v21[2])(v21, v38, v17, v24, v23, &v45);
    v26 = v45;
    goto LABEL_19;
  }

  if (![v15 isEqual:@"userinfo"])
  {
    if ([v15 isEqual:@"complication"])
    {
      v24 = objc_opt_new();
      [v24 setVersion:1];
      [v24 setClientData:v16];
      [v24 setTransferIdentifier:v23];
      v33 = [v24 data];
      v34 = v41[2];
    }

    else
    {
      if (![v15 isEqual:@"appcontext"])
      {
        v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v24 = wc_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10002A620(v15, v24);
        }

        goto LABEL_18;
      }

      v24 = objc_opt_new();
      [v24 setVersion:1];
      [v24 setClientData:v16];
      v33 = [v24 data];
      v34 = v41[2];
    }

    v34();

    v26 = 0;
LABEL_18:
    v25 = v38;
    goto LABEL_19;
  }

  v35 = v15;
  v36 = v20;
  v37 = v17;
  v24 = objc_opt_new();
  v44 = 0;
  [v24 updateUserInfoData:v16 error:&v44];
  v27 = v44;
  [v24 setTransferIdentifier:v23];
  v28 = [v24 protobufData];
  v29 = NSTemporaryDirectory();
  v30 = [v29 stringByAppendingPathComponent:WCUserInfoTransferWireDataFileName];
  v25 = [NSURL fileURLWithPath:v30];

  v43 = v27;
  v39 = v28;
  LODWORD(v29) = [v28 writeToURL:v25 options:1073741825 error:&v43];
  v26 = v43;

  if (v29)
  {
    v50 = @"t";
    v51 = &off_10004AB40;
    v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v42 = v26;
    v17 = v37;
    (v21[2])(v21, v25, v37, v31, v23, &v42);
    v32 = v42;

    v26 = v32;
  }

  else
  {
    v31 = wc_log();
    v17 = v37;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10002A698(v26);
    }
  }

  v15 = v35;
  v20 = v36;

LABEL_19:
  v19[2](v19, v26);
}

- (id)preferredBundleIDForApplicationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 watchExtensionBundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 watchAppBundleIdentifier];
  }

  v7 = v6;

  return v7;
}

- (void)handlePingForApplicationInfo:(id)a3
{
  v4 = a3;
  v6 = [(WCDPrivateClient *)self remoteObjectProxy];
  v5 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:v4];

  [v6 handlePingForExtensionBundleID:v5];
}

- (void)isApplicationInfoPrivileged:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WCDPrivateClient *)self remoteObjectProxy];
  v8 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:v7];

  [v9 isExtensionPrivileged:v8 completionHandler:v6];
}

- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WCDPrivateClient *)self remoteObjectProxy];
  [v5 handlePairedSyncComplicationsStartedWithCompletionHandler:v4];
}

- (void)shouldWakeAppForApplicationInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WCDPrivateClient *)self remoteObjectProxy];
  v8 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:v7];

  [v9 shouldWakeAppWithBundleID:v8 completionHandler:v6];
}

- (WCDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end