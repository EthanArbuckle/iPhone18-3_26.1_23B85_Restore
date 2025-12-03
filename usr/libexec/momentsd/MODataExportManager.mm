@interface MODataExportManager
- (MODataExportManager)init;
- (void)_initConnectionToService;
- (void)_scheduleSendBarrierBlock:(id)block;
- (void)addBundlesToDataExportSession:(id)session;
- (void)addEventsToDataExportSession:(id)session;
- (void)addMetadataToDataExportSession:(id)session;
- (void)addRankingModelToDataExportSession:(id)session;
- (void)dealloc;
- (void)endSessionAndUploadAsync;
- (void)endSessionSyncWithReply:(id)reply;
- (void)startDataExportSession;
@end

@implementation MODataExportManager

- (MODataExportManager)init
{
  v4.receiver = self;
  v4.super_class = MODataExportManager;
  v2 = [(MODataExportManager *)&v4 init];
  if (v2)
  {
    v2->_isAvailable = +[MOPlatformInfo isInternalBuild];
    [(MODataExportManager *)v2 _initConnectionToService];
  }

  return v2;
}

- (void)dealloc
{
  if (self->_isAvailable)
  {
    connection = self->connection;
    if (connection)
    {
      [(NSXPCConnection *)connection invalidate];
    }
  }

  v4.receiver = self;
  v4.super_class = MODataExportManager;
  [(MODataExportManager *)&v4 dealloc];
}

- (void)_initConnectionToService
{
  if (self->_isAvailable)
  {
    v17 = v2;
    v18 = v3;
    v5 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MomentsDataExportService"];
    connection = self->connection;
    self->connection = v5;

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MomentsDataExportServiceProtocol];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    [v7 setClasses:v9 forSelector:"addEventsToDataExportSession:" argumentIndex:0 ofReply:0];

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    [v7 setClasses:v11 forSelector:"addBundlesToDataExportSession:" argumentIndex:0 ofReply:0];

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
    [v7 setClasses:v14 forSelector:"addRankingModelToDataExportSession:" argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->connection setRemoteObjectInterface:v7];
    [(NSXPCConnection *)self->connection setInterruptionHandler:&__block_literal_global_16];
    [(NSXPCConnection *)self->connection setInvalidationHandler:&__block_literal_global_133];
    [(NSXPCConnection *)self->connection activate];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Initialized connection to service", buf, 2u);
    }
  }
}

void __47__MODataExportManager__initConnectionToService__block_invoke(id a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection to XPC service interrupted", v2, 2u);
  }
}

void __47__MODataExportManager__initConnectionToService__block_invoke_131(id a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection to XPC service invalidated", v2, 2u);
  }
}

- (void)_scheduleSendBarrierBlock:(id)block
{
  blockCopy = block;
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    [v4 scheduleSendBarrierBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)startDataExportSession
{
  if (self->_isAvailable)
  {
    v8 = v2;
    v9 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting session", v7, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy startDataExportSession];
  }
}

- (void)addEventsToDataExportSession:(id)session
{
  if (self->_isAvailable)
  {
    v10 = v3;
    v11 = v4;
    sessionCopy = session;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Adding events to session session", v9, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy addEventsToDataExportSession:sessionCopy];

    [(MODataExportManager *)self _scheduleSendBarrierBlock:&__block_literal_global_135];
  }
}

- (void)addBundlesToDataExportSession:(id)session
{
  sessionCopy = session;
  if (self->_isAvailable)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding bundles to session session", buf, 2u);
    }

    if (MomentsLibraryCore() && [sessionCopy count])
    {
      v6 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Moments framework is available. Localize bundle labels and prompts", v14, 2u);
      }

      v7 = objc_alloc(getMOPromptManagerClass());
      v8 = objc_opt_class();
      v9 = [v7 initForSoftLinkwithMOEventClass:v8 moEventBundleClass:objc_opt_class()];
      [v9 localizeEventBundles:sessionCopy];
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Bundles were localized", v13, 2u);
      }
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Can't localize bundles: bundles or Moments framework is not available", v12, 2u);
      }
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy addBundlesToDataExportSession:sessionCopy];

    [(MODataExportManager *)self _scheduleSendBarrierBlock:&__block_literal_global_137];
  }
}

- (void)addMetadataToDataExportSession:(id)session
{
  if (self->_isAvailable)
  {
    v10 = v3;
    v11 = v4;
    sessionCopy = session;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Adding metadata to session", v9, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy addMetadataToDataExportSession:sessionCopy];

    [(MODataExportManager *)self _scheduleSendBarrierBlock:&__block_literal_global_139];
  }
}

- (void)addRankingModelToDataExportSession:(id)session
{
  if (self->_isAvailable)
  {
    v10 = v3;
    v11 = v4;
    sessionCopy = session;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Adding ranking model to session", v9, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy addRankingModelToDataExportSession:sessionCopy];

    [(MODataExportManager *)self _scheduleSendBarrierBlock:&__block_literal_global_141];
  }
}

- (void)endSessionAndUploadAsync
{
  if (self->_isAvailable)
  {
    v8 = v2;
    v9 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ending session", v7, 2u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->connection remoteObjectProxy];
    [remoteObjectProxy endSessionAndUploadAsync];
  }
}

- (void)endSessionSyncWithReply:(id)reply
{
  replyCopy = reply;
  if (self->_isAvailable)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__16;
    v14 = __Block_byref_object_dispose__16;
    v15 = 0;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ending session", buf, 2u);
    }

    v6 = [(NSXPCConnection *)self->connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_144];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __47__MODataExportManager_endSessionSyncWithReply___block_invoke_145;
    v8[3] = &unk_100335B58;
    v8[4] = &v10;
    [v6 endSessionSyncWithReply:v8];

    replyCopy[2](replyCopy, v11[5], 0);
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Completed request for data export", buf, 2u);
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __47__MODataExportManager_endSessionSyncWithReply___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDataExporter);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__MODataExportManager_endSessionSyncWithReply___block_invoke_cold_1(v2, v3);
  }
}

void __47__MODataExportManager_endSessionSyncWithReply___block_invoke_145(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }
}

void __47__MODataExportManager_endSessionSyncWithReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to invoke synchronous API: %@", &v2, 0xCu);
}

@end