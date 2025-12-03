@interface PRCompanionRangingService
+ (id)serviceWithQueue:(id)queue;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (BOOL)validateClientEntitlements:(id)entitlements;
- (PRCompanionRangingService)initWithQueue:(id)queue;
- (void)handleXPCDisconnection:(id)disconnection;
@end

@implementation PRCompanionRangingService

- (PRCompanionRangingService)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PRCompanionRangingService.mm" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v12.receiver = self;
  v12.super_class = PRCompanionRangingService;
  v7 = [(PRCompanionRangingService *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(NSMutableSet);
    xpcSessions = v7->_xpcSessions;
    v7->_xpcSessions = v8;

    objc_storeStrong(&v7->_queue, queue);
  }

  return v7;
}

+ (id)serviceWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[PRCompanionRangingService alloc] initWithQueue:queueCopy];

  return v4;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049D5D0(v5);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v7 = [(PRCompanionRangingService *)self validateClientEntitlements:connectionCopy];
  v8 = qword_1009F9820;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_100499ACC(processIdentifier, v8);
    }

    v9 = [[PRCompanionRangingClientProxy alloc] initWithConnection:connectionCopy queue:self->_queue];
    [(NSMutableSet *)self->_xpcSessions addObject:v9];
    v10 = sub_1001B26E0();
    [connectionCopy setRemoteObjectInterface:v10];

    v11 = sub_1001B2D78();
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:v9];
    [connectionCopy _setQueue:self->_queue];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v9);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005F638;
    v20[3] = &unk_100989FA0;
    v23 = processIdentifier;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    [connectionCopy setInterruptionHandler:v20];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10005F730;
    v16 = &unk_100989FA0;
    v19 = processIdentifier;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [connectionCopy setInvalidationHandler:&v13];
    [connectionCopy resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CD00(processIdentifier, v8);
  }

  return v7;
}

- (void)handleXPCDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  if (!disconnectionCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRCompanionRangingService.mm" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"proxy"}];
  }

  clientInfo = [disconnectionCopy clientInfo];
  if (clientInfo)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [clientInfo objectForKey:PRProcessNameKey];
      v9 = [clientInfo objectForKey:PRProcessIdentifierKey];
      *buf = 138412546;
      v12 = v8;
      v13 = 1024;
      intValue = [v9 intValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRCompanionRangingService: XPC connection teardown. Process name: %@, pid: %d", buf, 0x12u);
    }
  }

  [disconnectionCopy terminate];
  [(NSMutableSet *)self->_xpcSessions removeObject:disconnectionCopy];
}

- (BOOL)validateClientEntitlements:(id)entitlements
{
  v3 = [entitlements valueForEntitlement:@"com.apple.nearbyd.xpc"];
  v4 = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
    }
  }

  return v4;
}

@end