@interface WCDPrivateClient
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WCDClientDelegate)delegate;
- (WCDPrivateClient)init;
- (id)preferredBundleIDForApplicationInfo:(id)info;
- (unint64_t)hash;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
- (void)fakeIncomingPayloadOnSubService:(id)service ofType:(id)type clientData:(id)data resource:(id)resource resourceSandboxToken:(id)token completionHandler:(id)handler;
- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler;
- (void)handlePingForApplicationInfo:(id)info;
- (void)isApplicationInfoPrivileged:(id)privileged completionHandler:(id)handler;
- (void)reconnect;
- (void)setConnection:(id)connection;
- (void)shouldWakeAppForApplicationInfo:(id)info completionHandler:(id)handler;
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

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  p_connection = &self->_connection;
  if (([(NSXPCConnection *)self->_connection isEqual:connectionCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_connection, connection);
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
  connection = [(WCDPrivateClient *)self connection];
  v6 = [NSString stringWithFormat:@"<%@: %p, connection: %@>", v4, self, connection];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      connection = [(WCDPrivateClient *)self connection];
      connection2 = [(WCDPrivateClient *)v5 connection];

      v8 = [connection isEqual:connection2];
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
  connection = [(WCDPrivateClient *)self connection];
  v3 = [connection hash];

  return v3;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F4D0;
  block[3] = &unk_100048A48;
  v8 = invocationCopy;
  v6 = invocationCopy;
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

- (void)fakeIncomingPayloadOnSubService:(id)service ofType:(id)type clientData:(id)data resource:(id)resource resourceSandboxToken:(id)token completionHandler:(id)handler
{
  serviceCopy = service;
  typeCopy = type;
  dataCopy = data;
  resourceCopy = resource;
  tokenCopy = token;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10000FAA8;
  v48[3] = &unk_100048E30;
  v18 = serviceCopy;
  v49 = v18;
  handlerCopy = handler;
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
  uUIDString = [v22 UUIDString];

  v40 = dataCopy;
  if ([typeCopy isEqual:@"file"])
  {
    v24 = objc_opt_new();
    [v24 setObject:&off_10004AB28 forKeyedSubscript:@"t"];
    if (dataCopy)
    {
      [v24 setObject:dataCopy forKeyedSubscript:@"u"];
    }

    v45 = 0;
    v25 = resourceCopy;
    (v21[2])(v21, resourceCopy, tokenCopy, v24, uUIDString, &v45);
    v26 = v45;
    goto LABEL_19;
  }

  if (![typeCopy isEqual:@"userinfo"])
  {
    if ([typeCopy isEqual:@"complication"])
    {
      v24 = objc_opt_new();
      [v24 setVersion:1];
      [v24 setClientData:dataCopy];
      [v24 setTransferIdentifier:uUIDString];
      data = [v24 data];
      v34 = v41[2];
    }

    else
    {
      if (![typeCopy isEqual:@"appcontext"])
      {
        v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v24 = wc_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10002A620(typeCopy, v24);
        }

        goto LABEL_18;
      }

      v24 = objc_opt_new();
      [v24 setVersion:1];
      [v24 setClientData:dataCopy];
      data = [v24 data];
      v34 = v41[2];
    }

    v34();

    v26 = 0;
LABEL_18:
    v25 = resourceCopy;
    goto LABEL_19;
  }

  v35 = typeCopy;
  v36 = v20;
  v37 = tokenCopy;
  v24 = objc_opt_new();
  v44 = 0;
  [v24 updateUserInfoData:dataCopy error:&v44];
  v27 = v44;
  [v24 setTransferIdentifier:uUIDString];
  protobufData = [v24 protobufData];
  v29 = NSTemporaryDirectory();
  v30 = [v29 stringByAppendingPathComponent:WCUserInfoTransferWireDataFileName];
  v25 = [NSURL fileURLWithPath:v30];

  v43 = v27;
  v39 = protobufData;
  LODWORD(v29) = [protobufData writeToURL:v25 options:1073741825 error:&v43];
  v26 = v43;

  if (v29)
  {
    v50 = @"t";
    v51 = &off_10004AB40;
    v31 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v42 = v26;
    tokenCopy = v37;
    (v21[2])(v21, v25, v37, v31, uUIDString, &v42);
    v32 = v42;

    v26 = v32;
  }

  else
  {
    v31 = wc_log();
    tokenCopy = v37;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10002A698(v26);
    }
  }

  typeCopy = v35;
  v20 = v36;

LABEL_19:
  handlerCopy[2](handlerCopy, v26);
}

- (id)preferredBundleIDForApplicationInfo:(id)info
{
  infoCopy = info;
  watchExtensionBundleIdentifier = [infoCopy watchExtensionBundleIdentifier];
  v5 = watchExtensionBundleIdentifier;
  if (watchExtensionBundleIdentifier)
  {
    watchAppBundleIdentifier = watchExtensionBundleIdentifier;
  }

  else
  {
    watchAppBundleIdentifier = [infoCopy watchAppBundleIdentifier];
  }

  v7 = watchAppBundleIdentifier;

  return v7;
}

- (void)handlePingForApplicationInfo:(id)info
{
  infoCopy = info;
  remoteObjectProxy = [(WCDPrivateClient *)self remoteObjectProxy];
  v5 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:infoCopy];

  [remoteObjectProxy handlePingForExtensionBundleID:v5];
}

- (void)isApplicationInfoPrivileged:(id)privileged completionHandler:(id)handler
{
  handlerCopy = handler;
  privilegedCopy = privileged;
  remoteObjectProxy = [(WCDPrivateClient *)self remoteObjectProxy];
  v8 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:privilegedCopy];

  [remoteObjectProxy isExtensionPrivileged:v8 completionHandler:handlerCopy];
}

- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  remoteObjectProxy = [(WCDPrivateClient *)self remoteObjectProxy];
  [remoteObjectProxy handlePairedSyncComplicationsStartedWithCompletionHandler:handlerCopy];
}

- (void)shouldWakeAppForApplicationInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  remoteObjectProxy = [(WCDPrivateClient *)self remoteObjectProxy];
  v8 = [(WCDPrivateClient *)self preferredBundleIDForApplicationInfo:infoCopy];

  [remoteObjectProxy shouldWakeAppWithBundleID:v8 completionHandler:handlerCopy];
}

- (WCDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end