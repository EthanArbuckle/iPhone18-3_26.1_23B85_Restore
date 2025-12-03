@interface NIServerConnection
+ (BOOL)_internalBuildShouldDenyConnection;
+ (id)createOneShotConnectionAndResume:(BOOL)resume;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForConnection;
- (NIServerConnection)initWithSessionID:(id)d queue:(id)queue exportedObject:(id)object options:(unint64_t)options;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxy;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NIServerConnection

- (NIServerConnection)initWithSessionID:(id)d queue:(id)queue exportedObject:(id)object options:(unint64_t)options
{
  dCopy = d;
  queueCopy = queue;
  objectCopy = object;
  if (!dCopy)
  {
    sub_1004C296C(a2, self);
  }

  v32.receiver = self;
  v32.super_class = NIServerConnection;
  v15 = [(NIServerConnection *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, d);
    objc_storeStrong(&v16->_queue, queue);
    v16->_options = options;
    v17 = os_log_create("com.apple.NearbyInteraction", "NIServerConnection");
    log = v16->_log;
    v16->_log = v17;

    if (+[NIServerConnection _internalBuildShouldDenyConnection])
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        v19 = v16->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = +[NSProcessInfo processInfo];
          processName = [v21 processName];
          *buf = 138412290;
          v34 = processName;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deny connection: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v23 = [NSXPCConnection alloc];
      if (options)
      {
        v24 = @"com.apple.nearbyd.xpc.nearbyinteraction.observer";
      }

      else
      {
        v24 = @"com.apple.nearbyd.xpc.nearbyinteraction";
      }

      v25 = [v23 initWithMachServiceName:v24 options:4096];
      connection = v16->_connection;
      v16->_connection = v25;

      v27 = v16->_connection;
      v28 = sub_10036AE64();
      [(NSXPCConnection *)v27 setExportedInterface:v28];

      if (objectCopy)
      {
        [(NSXPCConnection *)v16->_connection setExportedObject:objectCopy];
      }

      v29 = v16->_connection;
      v30 = sub_100369ECC();
      [(NSXPCConnection *)v29 setRemoteObjectInterface:v30];

      [(NSXPCConnection *)v16->_connection _setQueue:queueCopy];
    }
  }

  return v16;
}

- (void)dealloc
{
  [(NIServerConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = NIServerConnection;
  [(NIServerConnection *)&v3 dealloc];
}

- (id)remoteObjectProxy
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10035ABAC;
  v5[3] = &unk_1009A6F88;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (id)synchronousRemoteObjectProxy
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10035AC98;
  v5[3] = &unk_1009A6F88;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForConnection
{
  result = self->_connection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

+ (id)createOneShotConnectionAndResume:(BOOL)resume
{
  resumeCopy = resume;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_create("com.apple.NearbyInteraction", v4);
  v6 = [NIServerConnection alloc];
  v7 = objc_opt_new();
  v8 = [(NIServerConnection *)v6 initWithSessionID:v7 queue:v5 exportedObject:0 options:0];

  if (resumeCopy)
  {
    [(NIServerConnection *)v8 resume];
  }

  return v8;
}

+ (BOOL)_internalBuildShouldDenyConnection
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@".GlobalPreferences"];
    v3 = [v2 objectForKey:@"com.apple.NearbyInteraction.ConnectionAllowList"];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = +[NSProcessInfo processInfo];
      processName = [v4 processName];
      v6 = [v3 containsObject:processName] ^ 1;
    }

    else
    {
      v4 = [v2 objectForKey:@"com.apple.NearbyInteraction.ConnectionDenyList"];
      if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v6) = 0;
        goto LABEL_11;
      }

      processName = +[NSProcessInfo processInfo];
      v5ProcessName = [processName processName];
      LOBYTE(v6) = [v4 containsObject:v5ProcessName];
    }

LABEL_11:
    return v6;
  }

  LOBYTE(v6) = 0;
  return v6;
}

@end