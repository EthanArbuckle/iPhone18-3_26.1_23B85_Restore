@interface MOManageServer
- (BOOL)clientConnection:(id)connection hasInternalEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MOManageServer)initWithUniverse:(id)universe;
- (id)getInternalEntitlementsForConnection:(id)connection;
- (id)getNotifier;
- (void)getNotifier;
@end

@implementation MOManageServer

- (MOManageServer)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v85.receiver = self;
  v85.super_class = MOManageServer;
  v6 = [(MOManageServer *)&v85 init];
  if (v6)
  {
    v7 = [[MODaemonClient alloc] initWithUniverse:universeCopy];
    client = v6->_client;
    v6->_client = v7;

    [(MODaemonClient *)v6->_client setEntitlementDelegate:v6];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MOMomentsXPCProtocol];
    interface = v6->interface;
    v6->interface = v9;

    if (v6->interface)
    {
      v83 = universeCopy;
      if (!MomentsLibraryCore() || !NSClassFromString(@"MONotificationScheduleItem"))
      {
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [MOManageServer initWithUniverse:];
        }

        v12 = +[NSAssertionHandler currentHandler];
        [v12 handleFailureInMethod:a2 object:v6 file:@"MOManageServer.m" lineNumber:51 description:{@"Moments framework not deployed on OS (in %s:%d)", "-[MOManageServer initWithUniverse:]", 51}];
      }

      v13 = v6->interface;
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MODatabaseUpgradeCompletionDelegateProtocol];
      [(NSXPCInterface *)v13 setInterface:v14 forSelector:"scheduleDatabaseUpgradeWithContext:andDelegate:" argumentIndex:1 ofReply:0];

      v15 = v6->interface;
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [NSSet setWithObjects:v16, v17, v18, v19, objc_opt_class(), 0];
      [(NSXPCInterface *)v15 setClasses:v20 forSelector:"storeEvents:withContext:andHandler:" argumentIndex:0 ofReply:0];

      v21 = v6->interface;
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = [NSSet setWithObjects:v22, v23, v24, v25, objc_opt_class(), 0];
      [(NSXPCInterface *)v21 setClasses:v26 forSelector:"analyzeTrendsInEvents:withContext:andRefreshVariant:andHandler:" argumentIndex:0 ofReply:0];

      v27 = v6->interface;
      v28 = objc_opt_class();
      v29 = [NSSet setWithObjects:v28, objc_opt_class(), 0];
      [(NSXPCInterface *)v27 setClasses:v29 forSelector:"didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:" argumentIndex:0 ofReply:0];

      v30 = v6->interface;
      v31 = objc_opt_class();
      v32 = objc_opt_class();
      v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
      [(NSXPCInterface *)v30 setClasses:v33 forSelector:"didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:" argumentIndex:3 ofReply:0];

      v34 = objc_opt_class();
      v35 = objc_opt_class();
      v36 = objc_opt_class();
      v37 = objc_opt_class();
      v38 = objc_opt_class();
      v39 = [NSSet setWithObjects:v34, v35, v36, v37, v38, objc_opt_class(), 0];
      [(NSXPCInterface *)v6->interface setClasses:v39 forSelector:"logEngagementEvent:timestamp:withContext:" argumentIndex:2 ofReply:0];
      [(NSXPCInterface *)v6->interface setClasses:v39 forSelector:"logPerformanceEvent:timestamp:withContext:" argumentIndex:2 ofReply:0];
      [(NSXPCInterface *)v6->interface setClasses:v39 forSelector:"logUsageEvent:timestamp:withContext:" argumentIndex:2 ofReply:0];
      v40 = v6->interface;
      v41 = objc_opt_class();
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = [NSSet setWithObjects:v41, v42, v43, objc_opt_class(), 0];
      [(NSXPCInterface *)v40 setClasses:v44 forSelector:"getOnboardingFlowCompletionStatusWithHandler:" argumentIndex:0 ofReply:0];

      v45 = v6->interface;
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = objc_opt_class();
      v49 = [NSSet setWithObjects:v46, v47, v48, objc_opt_class(), 0];
      [(NSXPCInterface *)v45 setClasses:v49 forSelector:"setOnboardingFlowCompletionStatus:" argumentIndex:0 ofReply:0];

      v50 = v6->interface;
      v51 = objc_opt_class();
      v52 = objc_opt_class();
      v53 = objc_opt_class();
      v54 = [NSSet setWithObjects:v51, v52, v53, objc_opt_class(), 0];
      [(NSXPCInterface *)v50 setClasses:v54 forSelector:"getOnboardingFlowRefreshCompletionStatusWithHandler:" argumentIndex:0 ofReply:0];

      v55 = v6->interface;
      v56 = objc_opt_class();
      v57 = objc_opt_class();
      v58 = objc_opt_class();
      v59 = [NSSet setWithObjects:v56, v57, v58, objc_opt_class(), 0];
      [(NSXPCInterface *)v55 setClasses:v59 forSelector:"getStateForSetting:withHandler:" argumentIndex:0 ofReply:0];

      v60 = v6->interface;
      v61 = objc_opt_class();
      v62 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = [NSSet setWithObjects:v61, v62, v63, objc_opt_class(), 0];
      [(NSXPCInterface *)v60 setClasses:v64 forSelector:"getStateForSettingFast:withHandler:" argumentIndex:0 ofReply:0];

      v65 = v6->interface;
      v66 = objc_opt_class();
      v67 = objc_opt_class();
      v68 = objc_opt_class();
      v69 = [NSSet setWithObjects:v66, v67, v68, objc_opt_class(), 0];
      [(NSXPCInterface *)v65 setClasses:v69 forSelector:"setState:forSetting:" argumentIndex:0 ofReply:0];

      v70 = v6->interface;
      v71 = objc_opt_class();
      v72 = [NSSet setWithObjects:v71, objc_opt_class(), 0];
      [(NSXPCInterface *)v70 setClasses:v72 forSelector:"getDiagnosticReporterConfiguration:" argumentIndex:0 ofReply:0];

      v73 = v6->interface;
      v74 = objc_opt_class();
      v75 = objc_opt_class();
      v76 = [NSSet setWithObjects:v74, v75, objc_opt_class(), 0];
      [(NSXPCInterface *)v73 setClasses:v76 forSelector:"getApplicationsWithDataAccess:" argumentIndex:0 ofReply:0];

      v77 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.momentsd"];
      v78 = v77;
      if (v77)
      {
        [v77 setDelegate:v6];
        [v78 resume];
        v79 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "initiate managerSever", buf, 2u);
        }

        v80 = v6;
      }

      else
      {
        v80 = 0;
      }

      v81 = v39;

      universeCopy = v83;
    }

    else
    {
      v81 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        [MOManageServer initWithUniverse:];
      }

      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
  }

  return v80;
}

- (id)getInternalEntitlementsForConnection:(id)connection
{
  v3 = [connection valueForEntitlement:@"com.apple.momentsd.internal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(MOManageServer *)self getInternalEntitlementsForConnection:connectionCopy];
  v7 = [v6 count];

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109378;
      v11[1] = [connectionCopy processIdentifier];
      v12 = 2112;
      v13 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New XPC connection from process %d (%@)", v11, 0x12u);
    }

    [connectionCopy setExportedInterface:self->interface];
    [connectionCopy setExportedObject:self->_client];
    [connectionCopy setInterruptionHandler:&__block_literal_global_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_237];
    [connectionCopy resume];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOManageServer listener:connectionCopy shouldAcceptNewConnection:v9];
    }

    [connectionCopy invalidate];
  }

  return v7 != 0;
}

void __53__MOManageServer_listener_shouldAcceptNewConnection___block_invoke(id a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __53__MOManageServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __53__MOManageServer_listener_shouldAcceptNewConnection___block_invoke_235(id a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Invalidated", v2, 2u);
  }
}

- (id)getNotifier
{
  client = self->_client;
  if (client)
  {
    notifier = [(MODaemonClient *)client notifier];
    if (notifier)
    {
      goto LABEL_10;
    }

    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOManageServer getNotifier];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOManageServer.m" lineNumber:170 description:{@"No daemon notifier (in %s:%d)", "-[MOManageServer getNotifier]", 170}];
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOManageServer getNotifier];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOManageServer.m" lineNumber:168 description:@"Invalid parameter not satisfying: _client"];
    notifier = 0;
  }

LABEL_10:

  return notifier;
}

- (BOOL)clientConnection:(id)connection hasInternalEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v7 = [(MOManageServer *)self getInternalEntitlementsForConnection:connection];
  LOBYTE(self) = [v7 containsObject:entitlementCopy];

  return self;
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4[0] = 67109378;
  v4[1] = [a1 processIdentifier];
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection from process %d (%@)", v4, 0x12u);
}

- (void)getNotifier
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end