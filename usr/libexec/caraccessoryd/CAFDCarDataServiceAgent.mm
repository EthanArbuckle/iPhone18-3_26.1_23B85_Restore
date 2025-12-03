@interface CAFDCarDataServiceAgent
- (BOOL)_setupCarDataChannel:(id)channel channelType:(id)type qualityOfService:(id)service streamPriority:(id)priority priority:(unint64_t)a7;
- (BOOL)currentCarIdentifierIsEqual:(id)equal;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CAFCarConfiguration)currentCar;
- (CAFDCarDataServiceAgent)initWithSessionStatus:(id)status config:(id)config;
- (id)_getChannel:(id)channel;
- (id)_getClient:(id)client;
- (id)registrationsForPluginID:(id)d;
- (id)valuesForPluginID:(unint64_t)d iids:(id)iids;
- (unint64_t)currentCarPluginCount;
- (unint64_t)pluginCount;
- (void)_addRegistration:(id)registration instanceIDs:(id)ds priority:(id)priority withResponse:(id)response;
- (void)_mainQueue_initVehicleDataSession:(id)session;
- (void)_observeAssertion:(id)assertion;
- (void)_removeConnection:(id)connection;
- (void)_removeRegistration:(id)registration instanceIDs:(id)ds priority:(id)priority withResponse:(id)response;
- (void)_workQueue_didReceiveConfigFromPluginID:(id)d config:(id)config;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)carDataChannelDidClose:(id)close;
- (void)carDataChannelDidOpen:(id)open;
- (void)carDataChannelDidReceive:(id)receive pluginID:(id)d payload:(id)payload;
- (void)close;
- (void)dealloc;
- (void)didReceiveConfigFromPluginID:(id)d config:(id)config;
- (void)didReceiveErrorFromPluginID:(id)d error:(id)error;
- (void)didReceiveNotificationFromPluginID:(id)d instanceID:(id)iD value:(id)value;
- (void)didReceiveRequestFromPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response;
- (void)didReceiveUpdateFromPluginID:(id)d values:(id)values;
- (void)handlePairedVehiclesDidChange:(id)change;
- (void)processFastStartupRegistrations:(id)registrations config:(id)config;
- (void)sendToPluginID:(id)d payload:(id)payload priority:(id)priority completion:(id)completion;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCurrentCar:(id)car;
@end

@implementation CAFDCarDataServiceAgent

- (CAFDCarDataServiceAgent)initWithSessionStatus:(id)status config:(id)config
{
  statusCopy = status;
  configCopy = config;
  v51.receiver = self;
  v51.super_class = CAFDCarDataServiceAgent;
  v9 = [(CAFDCarDataServiceAgent *)&v51 init];
  v10 = v9;
  if (v9)
  {
    *&v9->_carLock._os_unfair_lock_opaque = 0;
    v9->_channelLock._os_unfair_lock_opaque = 0;
    currentCar = v9->_currentCar;
    v9->_currentCar = 0;

    v12 = +[NSMutableDictionary dictionary];
    carDataChannels = v10->_carDataChannels;
    v10->_carDataChannels = v12;

    v14 = +[NSMutableArray array];
    carDataClients = v10->_carDataClients;
    v10->_carDataClients = v14;

    v16 = +[NSMutableSet set];
    connections = v10->_connections;
    v10->_connections = v16;

    uTF8String = [@"com.apple.caraccessoryframework.cardata" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    workQueue = v10->_workQueue;
    v10->_workQueue = v20;

    v22 = [CARObserverHashTable alloc];
    workQueue = [(CAFDCarDataServiceAgent *)v10 workQueue];
    v24 = [v22 initWithProtocol:&OBJC_PROTOCOL___CAFCarDataClient callbackQueue:workQueue];
    remoteProxies = v10->_remoteProxies;
    v10->_remoteProxies = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    fastStartupRegistrations = v10->_fastStartupRegistrations;
    v10->_fastStartupRegistrations = v26;

    v46 = configCopy;
    registrations = [configCopy registrations];
    ascTree = v10->_ascTree;
    v10->_ascTree = registrations;

    v10->_allowPartialConfiguration = CAFDefaultsGetBoolean(@"allowPartialConfiguration", 1);
    v10->_pluginConfigsRequested = 0;
    notify_register_check("com.apple.private.caraccessoryframework.cardata.available", &v10->_carDataAvailableToken);
    notify_set_state(v10->_carDataAvailableToken, 0);
    notify_post("com.apple.private.caraccessoryframework.cardata.available");
    objc_storeStrong(&v10->_sessionStatus, status);
    [statusCopy addSessionObserver:v10];
    sessionStatus = [(CAFDCarDataServiceAgent *)v10 sessionStatus];
    currentSession = [sessionStatus currentSession];

    if (currentSession)
    {
      sessionStatus2 = [(CAFDCarDataServiceAgent *)v10 sessionStatus];
      currentSession2 = [sessionStatus2 currentSession];
      [(CAFDCarDataServiceAgent *)v10 sessionDidConnect:currentSession2];
    }

    v34 = statusCopy;
    v35 = +[NSDistributedNotificationCenter defaultCenter];
    [v35 addObserver:v10 selector:"handlePairedVehiclesDidChange:" name:CRPairedVehiclesDidChangeNotification object:0];

    v36 = CAFDDataLogging();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent initWithSessionStatus:? config:?];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    ascTree = [(CAFDCarDataServiceAgent *)v10 ascTree];
    treeLogLines = [ascTree treeLogLines];

    v39 = [treeLogLines countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v48;
      do
      {
        v42 = 0;
        do
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(treeLogLines);
          }

          v43 = *(*(&v47 + 1) + 8 * v42);
          v44 = CAFDDataLogging();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v53 = v43;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "registrations %{public}@", buf, 0xCu);
          }

          v42 = v42 + 1;
        }

        while (v40 != v42);
        v40 = [treeLogLines countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v40);
    }

    statusCopy = v34;
    configCopy = v46;
  }

  return v10;
}

- (void)close
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__CAFDCarDataServiceAgent_close__block_invoke(id a1, NSNumber *a2, CarDataChannel *a3, BOOL *a4)
{
  v4 = a3;
  if ([(CarDataChannel *)v4 isOpened])
  {
    [(CarDataChannel *)v4 invalidate];
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_setupCarDataChannel:(id)channel channelType:(id)type qualityOfService:(id)service streamPriority:(id)priority priority:(unint64_t)a7
{
  typeCopy = type;
  serviceCopy = service;
  priorityCopy = priority;
  channelCopy = channel;
  v16 = CAFDDataLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138544130;
    v32 = typeCopy;
    v33 = 2114;
    v34 = serviceCopy;
    v35 = 2114;
    v36 = priorityCopy;
    v37 = 2050;
    v38 = a7;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Init car data channel START type: %{public}@ QoS: %{public}@ stream priority: %{public}@ priority: %{public}lu", &v31, 0x2Au);
  }

  v17 = 0xEEEEB0B5B2B2EEEELL;

  v18 = CARSignpostLogForCategory();
  v19 = 0xEEEEB0B5B2B2EEEELL;
  if (!self || (CARSignpostLogForCategory(), v20 = objc_claimAutoreleasedReturnValue(), v19 = os_signpost_id_make_with_pointer(v20, self), v20, v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v18))
    {
      v31 = 138543362;
      v32 = typeCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, v19, "CAFd-ChannelInit", "Start %{public}@", &v31, 0xCu);
    }
  }

  v21 = [[CARSessionChannel alloc] initWithSession:channelCopy channelType:typeCopy channelID:0 withoutReply:1 qualityOfService:serviceCopy streamPriority:priorityCopy];
  if (v21)
  {
    v22 = [[CarDataChannel alloc] initWithChannel:v21 priority:a7];
    v23 = v22 != 0;
    if (v22)
    {
      os_unfair_lock_lock(&self->_channelLock);
      carDataChannels = [(CAFDCarDataServiceAgent *)self carDataChannels];
      v25 = [NSNumber numberWithUnsignedInteger:a7];
      [carDataChannels setObject:v22 forKeyedSubscript:v25];

      [(CarDataChannel *)v22 setChannelDelegate:self];
      os_unfair_lock_unlock(&self->_channelLock);
      v26 = CAFDLogging();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v31 = 138543874;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = typeCopy;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Open car session channel: %{public}@ data channel: %{public}@ type: %{public}@ START", &v31, 0x20u);
      }

      if (![(CarDataChannel *)v22 isOpened])
      {
        [(CarDataChannel *)v22 openChannel];
      }

      v27 = CARSignpostLogForCategory();
      if (!self || (CARSignpostLogForCategory(), v28 = objc_claimAutoreleasedReturnValue(), v17 = os_signpost_id_make_with_pointer(v28, self), v28, v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
      {
        if (os_signpost_enabled(v27))
        {
          v31 = 138543362;
          v32 = typeCopy;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, v17, "CAFd-ChannelInit", "End %{public}@", &v31, 0xCu);
        }
      }

      v29 = CAFDDataLogging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [CAFDCarDataServiceAgent _setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:];
      }
    }

    else
    {
      v29 = CAFDLogging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CAFDCarDataServiceAgent _setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:];
      }
    }
  }

  else
  {
    v22 = CAFDLogging();
    if (os_log_type_enabled(&v22->super, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:];
    }

    v23 = 0;
  }

  return v23;
}

- (void)_mainQueue_initVehicleDataSession:(id)session
{
  sessionCopy = session;
  v5 = CAFDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
  }

  mFiCertificateSerialNumber = [sessionCopy MFiCertificateSerialNumber];
  if (mFiCertificateSerialNumber)
  {
    v7 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(mFiCertificateSerialNumber, "bytes")}];
  }

  else
  {
    v8 = CAFDLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

    v7 = +[NSUUID UUID];
  }

  v9 = v7;
  if ([(CAFDCarDataServiceAgent *)self currentCarIdentifierIsEqual:v7])
  {
    v10 = CAFDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:v9];
    }

LABEL_43:

    goto LABEL_44;
  }

  [(CAFDCarDataServiceAgent *)self close];
  configuration = [sessionCopy configuration];

  if (!configuration)
  {
    v10 = CAFDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

    goto LABEL_43;
  }

  configuration2 = [sessionCopy configuration];
  supportsVehicleData = [configuration2 supportsVehicleData];

  if ((supportsVehicleData & 1) == 0)
  {
    v10 = CAFDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

    goto LABEL_43;
  }

  configuration3 = [sessionCopy configuration];
  vehicleDataProtocolVersion = [configuration3 vehicleDataProtocolVersion];
  v16 = [vehicleDataProtocolVersion isEqualToString:kCarDataProtocolSupportedVersion];

  if ((v16 & 1) == 0)
  {
    v10 = CAFDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:sessionCopy];
    }

    goto LABEL_43;
  }

  configuration4 = [sessionCopy configuration];
  vehicleDataPluginCount = [configuration4 vehicleDataPluginCount];

  if (!vehicleDataPluginCount)
  {
    v10 = CAFDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

    goto LABEL_43;
  }

  v19 = 0xEEEEB0B5B2B2EEEELL;
  v20 = CARSignpostLogForCategory();
  v21 = 0xEEEEB0B5B2B2EEEELL;
  if (!self || (CARSignpostLogForCategory(), v22 = objc_claimAutoreleasedReturnValue(), v21 = os_signpost_id_make_with_pointer(v22, self), v22, v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v20))
    {
      uUIDString = [v9 UUIDString];
      v50 = 138543362;
      v51 = uUIDString;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, v21, "CAFd-SessionInit", "Start %{public}@", &v50, 0xCu);
    }
  }

  configuration5 = [sessionCopy configuration];
  vehicleDataPluginCount2 = [configuration5 vehicleDataPluginCount];

  if (vehicleDataPluginCount2)
  {
    v26 = 0;
    do
    {
      v27 = [CarDataClient alloc];
      v28 = [NSNumber numberWithUnsignedInteger:v26];
      v29 = [(CarDataClient *)v27 initWithPluginID:v28];

      os_unfair_lock_lock(&self->_channelLock);
      carDataClients = [(CAFDCarDataServiceAgent *)self carDataClients];
      [carDataClients addObject:v29];

      [(CarDataClient *)v29 setClientDelegate:self];
      os_unfair_lock_unlock(&self->_channelLock);

      ++v26;
      configuration6 = [sessionCopy configuration];
      vehicleDataPluginCount3 = [configuration6 vehicleDataPluginCount];
    }

    while (v26 < vehicleDataPluginCount3);
  }

  v33 = kFigEndpointRemoteControlSessionClientTypeUUIDKey_CarPlayProtocolData;
  v34 = [NSNumber numberWithInt:0];
  LOBYTE(v33) = [(CAFDCarDataServiceAgent *)self _setupCarDataChannel:sessionCopy channelType:v33 qualityOfService:v34 streamPriority:&off_100057580 priority:0];

  if ((v33 & 1) == 0)
  {
    v49 = CAFDLogging();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

    goto LABEL_49;
  }

  v35 = kFigEndpointRemoteControlSessionClientTypeUUIDKey_CarPlayProtocolData2;
  v36 = [NSNumber numberWithInt:12];
  LOBYTE(v35) = [(CAFDCarDataServiceAgent *)self _setupCarDataChannel:sessionCopy channelType:v35 qualityOfService:v36 streamPriority:&off_100057598 priority:1];

  if ((v35 & 1) == 0)
  {
    v49 = CAFDLogging();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:];
    }

LABEL_49:

    [(CAFDCarDataServiceAgent *)self close];
    goto LABEL_44;
  }

  v37 = CARSignpostLogForCategory();
  if (!self || (CARSignpostLogForCategory(), v38 = objc_claimAutoreleasedReturnValue(), v19 = os_signpost_id_make_with_pointer(v38, self), v38, v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v37))
    {
      uUIDString2 = [v9 UUIDString];
      v50 = 138543362;
      v51 = uUIDString2;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, v19, "CAFd-SessionInit", "End %{public}@", &v50, 0xCu);
    }
  }

  v40 = CAFDDataLogging();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [(CAFDCarDataServiceAgent *)v9 _mainQueue_initVehicleDataSession:sessionCopy];
  }

  v41 = [[CAFCarConfiguration alloc] initWithIdentifier:v9 session:sessionCopy];
  if (v41)
  {
    [(CAFDCarDataServiceAgent *)self setCurrentCar:v41];
    v42 = CAFDDataLogging();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);

    if (v43)
    {
      v44 = objc_opt_new();
      [(CAFDCarDataServiceAgent *)self setStateCaptureManager:v44];

      stateCaptureManager = [(CAFDCarDataServiceAgent *)self stateCaptureManager];
      [stateCaptureManager setDelegate:self];

      stateCaptureManager2 = [(CAFDCarDataServiceAgent *)self stateCaptureManager];
      [stateCaptureManager2 setCurrentCarConfiguration:v41];
    }

    remoteProxies = [(CAFDCarDataServiceAgent *)self remoteProxies];
    [remoteProxies didUpdateCurrentCarConfig:v41];

    v48 = CAFDLogging();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:v9];
    }
  }

  else
  {
    v48 = CAFDLogging();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _mainQueue_initVehicleDataSession:v9];
    }
  }

LABEL_44:
}

- (void)handlePairedVehiclesDidChange:(id)change
{
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__CAFDCarDataServiceAgent_handlePairedVehiclesDidChange___block_invoke;
  block[3] = &unk_100055470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __57__CAFDCarDataServiceAgent_handlePairedVehiclesDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionStatus];
  v4 = [v2 currentSession];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _mainQueue_initVehicleDataSession:v4];
    v3 = v4;
  }
}

- (void)processFastStartupRegistrations:(id)registrations config:(id)config
{
  registrationsCopy = registrations;
  configCopy = config;
  ascTree = [(CAFDCarDataServiceAgent *)self ascTree];

  if (ascTree)
  {
    objc_opt_class();
    v9 = [configCopy objectForKeyedSubscript:kCarDataConfigurationAccessoriesKey];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_18;
    }

    +[NSMutableSet set];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke;
    v23 = &unk_1000554C0;
    v11 = v24 = self;
    v25 = v11;
    [v10 enumerateObjectsUsingBlock:&v20];
    v12 = [(CAFDCarDataServiceAgent *)self fastStartupRegistrations:v20];
    [v12 setObject:v11 forKeyedSubscript:registrationsCopy];

    v13 = [v11 count];
    if (!v13)
    {
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v14 = v13;
    v15 = CAFDLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent processFastStartupRegistrations:config:];
    }

    v16 = CARSignpostLogForCategory();
    if (self)
    {
      v17 = CARSignpostLogForCategory();
      v18 = os_signpost_id_make_with_pointer(v17, self);

      if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_16:

        allObjects = [v11 allObjects];
        [(CAFDCarDataServiceAgent *)self _addRegistration:registrationsCopy instanceIDs:allObjects priority:&off_1000575B0 withResponse:0];

        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v16))
    {
      *buf = 138543618;
      v27 = registrationsCopy;
      v28 = 2050;
      v29 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v18, "Perform", "Fast Startup Registrations pluginID: %{public}@ count: %{public}lu", buf, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_19:
}

void __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [CAFCarConfiguration getType:v4];
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:kCarDataConfigurationServicesKey];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) ascTree];
        v9 = [v8 hasAccessory:v5];

        if (v9)
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_2;
          v10[3] = &unk_100055250;
          v10[4] = *(a1 + 32);
          v11 = v5;
          v12 = *(a1 + 40);
          [v7 enumerateObjectsUsingBlock:v10];
        }
      }
    }
  }
}

void __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [CAFCarConfiguration getType:v4];
    if (v5)
    {
      v6 = [*(a1 + 32) ascTree];
      v7 = [v6 hasAccessory:*(a1 + 40) service:v5];

      if (v7)
      {
        objc_opt_class();
        v8 = [v4 objectForKeyedSubscript:kCarDataConfigurationCharacteristicsKey];
        if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_3;
        v19[3] = &unk_100055498;
        v10 = *(a1 + 40);
        v19[4] = *(a1 + 32);
        v20 = v10;
        v11 = v5;
        v21 = v11;
        v22 = *(a1 + 48);
        [v9 enumerateObjectsUsingBlock:v19];
        objc_opt_class();
        v12 = [v4 objectForKeyedSubscript:kCarDataConfigurationControlsKey];
        if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_4;
        v15[3] = &unk_100055498;
        v14 = *(a1 + 40);
        v15[4] = *(a1 + 32);
        v16 = v14;
        v17 = v11;
        v18 = *(a1 + 48);
        [v13 enumerateObjectsUsingBlock:v15];
      }
    }
  }
}

void __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = v3;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = [CAFCarConfiguration getType:v10];
    objc_opt_class();
    v5 = [v10 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 32) ascTree];
        v8 = [v7 hasAccessory:*(a1 + 40) service:*(a1 + 48) characteristic:v4];

        if (v8)
        {
          v9 = [v10 objectForKey:kCarDataConfigurationInitialValueKey];
          if (([CAFCarConfiguration getBoolean:v10 key:kCarDataConfigurationMutableKey]& 1) != 0 || !v9)
          {
            [*(a1 + 56) addObject:v6];
          }
        }
      }
    }
  }
}

void __66__CAFDCarDataServiceAgent_processFastStartupRegistrations_config___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v9 = v3;
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = [CAFCarConfiguration getType:v9];
    objc_opt_class();
    v5 = [v9 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 32) ascTree];
        v8 = [v7 hasAccessory:*(a1 + 40) service:*(a1 + 48) control:v4];

        if (v8)
        {
          [*(a1 + 56) addObject:v6];
        }
      }
    }
  }
}

- (CAFCarConfiguration)currentCar
{
  os_unfair_lock_lock(&self->_carLock);
  v3 = self->_currentCar;
  os_unfair_lock_unlock(&self->_carLock);

  return v3;
}

- (void)setCurrentCar:(id)car
{
  carCopy = car;
  os_unfair_lock_lock(&self->_carLock);
  currentCar = self->_currentCar;
  self->_currentCar = carCopy;

  os_unfair_lock_unlock(&self->_carLock);
}

- (BOOL)currentCarIdentifierIsEqual:(id)equal
{
  equalCopy = equal;
  os_unfair_lock_lock(&self->_carLock);
  currentCar = self->_currentCar;
  if (currentCar)
  {
    uniqueIdentifier = [(CAFCarConfiguration *)currentCar uniqueIdentifier];
    v7 = [equalCopy isEqual:uniqueIdentifier];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_carLock);

  return v7;
}

- (unint64_t)currentCarPluginCount
{
  os_unfair_lock_lock(&self->_carLock);
  pluginCount = [(CAFCarConfiguration *)self->_currentCar pluginCount];
  os_unfair_lock_unlock(&self->_carLock);
  return pluginCount;
}

- (void)_observeAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_assertionCounterLock);
  [assertionCopy addObserver:self];

  [(CAFDCarDataServiceAgent *)self setAssertionCount:[(CAFDCarDataServiceAgent *)self assertionCount]+ 1];
  assertionCount = [(CAFDCarDataServiceAgent *)self assertionCount];
  v6 = CAFDAssertionLogging();
  v7 = v6;
  if (assertionCount == 1800)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CAFDCarDataServiceAgent _observeAssertion:?];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent _observeAssertion:?];
  }

  os_unfair_lock_unlock(&self->_assertionCounterLock);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_assertionCounterLock);
  [assertionCopy removeObserver:self];

  [(CAFDCarDataServiceAgent *)self setAssertionCount:[(CAFDCarDataServiceAgent *)self assertionCount]- 1];
  v6 = CAFDAssertionLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent assertion:? didInvalidateWithError:?];
  }

  os_unfair_lock_unlock(&self->_assertionCounterLock);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = CAFDDataLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent sessionDidConnect:];
  }

  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__CAFDCarDataServiceAgent_sessionDidConnect___block_invoke;
  v8[3] = &unk_100055368;
  v8[4] = self;
  v9 = connectCopy;
  v7 = connectCopy;
  dispatch_async(workQueue, v8);
}

uint64_t __45__CAFDCarDataServiceAgent_sessionDidConnect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) osTransaction];

  if (!v2)
  {
    v3 = os_transaction_create();
    [*(a1 + 32) setOsTransaction:v3];
  }

  [*(a1 + 32) _mainQueue_initVehicleDataSession:*(a1 + 40)];
  notify_set_state([*(a1 + 32) carDataAvailableToken], 1uLL);

  return notify_post("com.apple.private.caraccessoryframework.cardata.available");
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v4 = CAFDDataLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent sessionDidDisconnect:];
  }

  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke;
  block[3] = &unk_100055470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) close];
  v2 = dispatch_time(0, 5000000000);
  v3 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2;
  block[3] = &unk_100055470;
  block[4] = *(a1 + 32);
  dispatch_after(v2, v3, block);
}

void __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionStatus];
  v3 = [v2 currentSession];

  v4 = CAFDDataLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2_cold_2();
    }

    [*(a1 + 32) setOsTransaction:0];
    notify_set_state([*(a1 + 32) carDataAvailableToken], 0);
    notify_post("com.apple.private.caraccessoryframework.cardata.available");
  }
}

- (void)carDataChannelDidOpen:(id)open
{
  openCopy = open;
  v5 = CAFDDataLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent carDataChannelDidOpen:];
  }

  os_unfair_lock_lock(&self->_channelLock);
  carDataChannels = [(CAFDCarDataServiceAgent *)self carDataChannels];
  v7 = [carDataChannels count];

  if (v7 == 2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    carDataChannels2 = [(CAFDCarDataServiceAgent *)self carDataChannels];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke;
    v14[3] = &unk_1000554E8;
    v14[4] = &v15;
    [carDataChannels2 enumerateKeysAndObjectsUsingBlock:v14];

    os_unfair_lock_unlock(&self->_channelLock);
    if (v16[3])
    {
      v9 = CAFDLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CAFDCarDataServiceAgent carDataChannelDidOpen:];
      }

      workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_241;
      v13[3] = &unk_100055470;
      v13[4] = self;
      dispatch_async(workQueue, v13);
    }

    else
    {
      v12 = CAFDLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CAFDCarDataServiceAgent carDataChannelDidOpen:];
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    os_unfair_lock_unlock(&self->_channelLock);
    v11 = CAFDLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent carDataChannelDidOpen:];
    }
  }
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isOpened] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v7 = CAFDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_cold_1();
    }

    *a4 = 1;
  }
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_241(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCarPluginCount];
  if (v2)
  {
    v3 = v2;
    if (([*(a1 + 32) pluginConfigsRequested] & 1) == 0)
    {
      [*(a1 + 32) setPluginConfigsRequested:1];
      for (i = 0; i != v3; ++i)
      {
        v5 = *(a1 + 32);
        v6 = [NSNumber numberWithUnsignedInteger:i];
        v7 = [v5 _getClient:v6];

        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_242;
        v9[3] = &__block_descriptor_40_e21_v16__0__CAFResponse_8l;
        v9[4] = i;
        [v7 requestConfigurationWithPriority:&off_1000575B0 withResponse:v9];
      }
    }
  }

  else
  {
    v8 = CAFGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_241_cold_1();
    }
  }
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_242(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = CAFDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_242_cold_1(a1, v3);
    }
  }
}

- (void)carDataChannelDidClose:(id)close
{
  closeCopy = close;
  if (closeCopy)
  {
    v5 = CAFDDataLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent carDataChannelDidClose:];
    }

    os_unfair_lock_lock(&self->_channelLock);
    carDataChannels = [(CAFDCarDataServiceAgent *)self carDataChannels];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [closeCopy priority]);
    [carDataChannels removeObjectForKey:v7];

    carDataChannels2 = [(CAFDCarDataServiceAgent *)self carDataChannels];
    [carDataChannels2 count];

    os_unfair_lock_unlock(&self->_channelLock);
    v9 = CAFDDataLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent carDataChannelDidClose:];
    }
  }
}

- (void)carDataChannelDidReceive:(id)receive pluginID:(id)d payload:(id)payload
{
  receiveCopy = receive;
  dCopy = d;
  payloadCopy = payload;
  v11 = [(CAFDCarDataServiceAgent *)self _getClient:dCopy];
  if (v11)
  {
    [v11 receiveData:payloadCopy priority:{objc_msgSend(receiveCopy, "priority")}];
  }

  else
  {
    v12 = CAFDChannelLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent carDataChannelDidReceive:pluginID:payload:];
    }
  }
}

- (void)didReceiveConfigFromPluginID:(id)d config:(id)config
{
  dCopy = d;
  configCopy = config;
  v8 = CAFDDataLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent didReceiveConfigFromPluginID:config:];
  }

  objc_initWeak(&location, self);
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __63__CAFDCarDataServiceAgent_didReceiveConfigFromPluginID_config___block_invoke;
  v12[3] = &unk_100055530;
  objc_copyWeak(&v15, &location);
  v13 = dCopy;
  v14 = configCopy;
  v10 = configCopy;
  v11 = dCopy;
  dispatch_async(workQueue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __63__CAFDCarDataServiceAgent_didReceiveConfigFromPluginID_config___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _workQueue_didReceiveConfigFromPluginID:*(a1 + 32) config:*(a1 + 40)];
}

- (void)_workQueue_didReceiveConfigFromPluginID:(id)d config:(id)config
{
  dCopy = d;
  configCopy = config;
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock(&self->_carLock);
  if (self->_currentCar)
  {
    v9 = CAFDDataLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:config:];
    }

    [(CAFCarConfiguration *)self->_currentCar updateConfiguration:dCopy pluginConfig:configCopy];
    [(CAFDCarDataServiceAgent *)self processFastStartupRegistrations:dCopy config:configCopy];
    isConfigured = [(CAFCarConfiguration *)self->_currentCar isConfigured];
    v11 = CAFDLogging();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (isConfigured)
    {
      if (v12)
      {
        [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:? config:?];
      }

      CAFSignpostEmit_InstantOn();
    }

    else
    {
      if (v12)
      {
        [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:v11 config:?];
      }

      if (![(CAFDCarDataServiceAgent *)self allowPartialConfiguration])
      {
        pluginConfigs = 0;
        goto LABEL_16;
      }
    }

    pluginConfigs = [(CAFCarConfiguration *)self->_currentCar pluginConfigs];
LABEL_16:
    v15 = CAFDDataLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:config:];
    }

    os_unfair_lock_unlock(&self->_carLock);
    stateCaptureManager = [(CAFDCarDataServiceAgent *)self stateCaptureManager];
    [stateCaptureManager carConfigDidUpdate];

    if ([pluginConfigs count])
    {
      v17 = CAFDLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:pluginConfigs config:?];
      }

      remoteProxies = [(CAFDCarDataServiceAgent *)self remoteProxies];
      [remoteProxies didUpdateConfig:pluginConfigs];
    }

    goto LABEL_22;
  }

  v13 = CAFGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CAFDCarDataServiceAgent _workQueue_didReceiveConfigFromPluginID:config:];
  }

  os_unfair_lock_unlock(&self->_carLock);
  pluginConfigs = 0;
LABEL_22:
}

- (void)didReceiveUpdateFromPluginID:(id)d values:(id)values
{
  dCopy = d;
  valuesCopy = values;
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__CAFDCarDataServiceAgent_didReceiveUpdateFromPluginID_values___block_invoke;
  block[3] = &unk_1000553B8;
  block[4] = self;
  v12 = dCopy;
  v13 = valuesCopy;
  v9 = valuesCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

void __63__CAFDCarDataServiceAgent_didReceiveUpdateFromPluginID_values___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxies];
  [v2 didUpdatePluginID:*(a1 + 40) values:*(a1 + 48)];
}

- (void)didReceiveNotificationFromPluginID:(id)d instanceID:(id)iD value:(id)value
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __79__CAFDCarDataServiceAgent_didReceiveNotificationFromPluginID_instanceID_value___block_invoke;
  v15[3] = &unk_100055408;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = valueCopy;
  v12 = valueCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

void __79__CAFDCarDataServiceAgent_didReceiveNotificationFromPluginID_instanceID_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxies];
  [v2 didNotifyPluginID:*(a1 + 40) instanceID:*(a1 + 48) value:*(a1 + 56)];
}

- (void)didReceiveRequestFromPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  responseCopy = response;
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke;
  block[3] = &unk_1000553E0;
  block[4] = self;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = valueCopy;
  v23 = responseCopy;
  v15 = responseCopy;
  v16 = valueCopy;
  v17 = iDCopy;
  v18 = dCopy;
  dispatch_async(workQueue, block);
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke(id *a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2810000000;
  v16[3] = &unk_10004D189;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v2 = [a1[4] connections];
  v3 = [v2 mutableCopy];

  v4 = [a1[4] connections];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_2;
  v6[3] = &unk_100055580;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v12 = v16;
  v5 = v3;
  v10 = v5;
  v13 = v14;
  v11 = a1[8];
  [v4 enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3;
  v13[3] = &unk_100055558;
  v6 = *(a1 + 72);
  v7 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v3;
  v18 = *(a1 + 80);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *&v10 = *(a1 + 64);
  *(&v10 + 1) = v6;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v16 = v11;
  v17 = v10;
  v12 = v3;
  [v12 didRequestPluginID:v4 instanceID:v5 value:v7 withResponse:v13];
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v7 = [*(a1 + 32) count];
  if (*(*(*(a1 + 80) + 8) + 24) != 1)
  {
    if (!v6)
    {
      v13 = CAFDDataLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_3(a1);
      }

      (*(*(a1 + 64) + 16))();
      goto LABEL_14;
    }

    v8 = v7;
    v9 = [v6 code];
    if (v9 != 9)
    {
      v14 = v9;
      v15 = CAFDDataLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_1(a1);
      }

      v16 = *(a1 + 64);
      v17 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:v14 userInfo:0];
      (*(v16 + 16))(v16, 0, v17);

      goto LABEL_14;
    }

    if (!v8)
    {
      v10 = CAFDDataLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_2(a1);
      }

      v11 = *(a1 + 64);
      v12 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
      (*(v11 + 16))(v11, 0, v12);

LABEL_14:
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
}

- (void)didReceiveErrorFromPluginID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v7 = CAFDDataLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CAFDCarDataServiceAgent didReceiveErrorFromPluginID:error:];
  }
}

- (void)sendToPluginID:(id)d payload:(id)payload priority:(id)priority completion:(id)completion
{
  dCopy = d;
  payloadCopy = payload;
  priorityCopy = priority;
  completionCopy = completion;
  v14 = [(CAFDCarDataServiceAgent *)self _getChannel:priorityCopy];
  v15 = v14;
  if (v14)
  {
    [v14 sendToPluginID:dCopy payload:payloadCopy withCompletion:completionCopy];
  }

  else
  {
    v16 = CAFDLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543874;
      selfCopy = self;
      v20 = 2114;
      v21 = dCopy;
      v22 = 2114;
      v23 = priorityCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Send vehicle data pluginID: %{public}@ with priority: %{public}@ failed due to missing channel", &v18, 0x20u);
    }

    if (completionCopy)
    {
      v17 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:1 userInfo:0];
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (unint64_t)pluginCount
{
  carDataClients = [(CAFDCarDataServiceAgent *)self carDataClients];
  v3 = [carDataClients count];

  return v3;
}

- (id)registrationsForPluginID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__CAFDCarDataServiceAgent_registrationsForPluginID___block_invoke;
  block[3] = &unk_1000553B8;
  block[4] = self;
  v13 = dCopy;
  v7 = v5;
  v14 = v7;
  v8 = dCopy;
  dispatch_sync(workQueue, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __52__CAFDCarDataServiceAgent_registrationsForPluginID___block_invoke(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(a1 + 32) connections];
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      v2 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v2;
        v3 = *(*(&v23 + 1) + 8 * v2);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v4 = [v3 registrationsForPluginID:*(a1 + 40)];
        v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v20;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v20 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v19 + 1) + 8 * i);
              v10 = [*(a1 + 48) objectForKeyedSubscript:v9];

              if (!v10)
              {
                v11 = objc_opt_new();
                [*(a1 + 48) setObject:v11 forKeyedSubscript:v9];
              }

              v12 = [*(a1 + 48) objectForKeyedSubscript:v9];
              v13 = [v3 connection];
              v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 processIdentifier]);
              [v12 addObject:v14];
            }

            v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v6);
        }

        v2 = v18 + 1;
      }

      while ((v18 + 1) != v17);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)valuesForPluginID:(unint64_t)d iids:(id)iids
{
  iidsCopy = iids;
  v7 = objc_opt_new();
  carDataClients = [(CAFDCarDataServiceAgent *)self carDataClients];
  v9 = [carDataClients count];

  if (v9 <= d)
  {
    v11 = CAFDDataLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent valuesForPluginID:d iids:?];
    }
  }

  else
  {
    carDataClients2 = [(CAFDCarDataServiceAgent *)self carDataClients];
    v11 = [carDataClients2 objectAtIndexedSubscript:d];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = iidsCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v11 cachedValueForInstanceID:v17, v20];
          [v7 setObject:v18 forKeyedSubscript:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = CAFDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent listener:shouldAcceptNewConnection:];
  }

  serviceName = [connectionCopy serviceName];
  if ([serviceName isEqualToString:@"com.apple.caraccessoryframework.cardata"])
  {
    v8 = [connectionCopy valueForEntitlement:@"com.apple.private.carp"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v10 = CAFDLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CAFDCarDataServiceAgent listener:shouldAcceptNewConnection:];
      }

      workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __62__CAFDCarDataServiceAgent_listener_shouldAcceptNewConnection___block_invoke;
      v15[3] = &unk_100055368;
      v16 = connectionCopy;
      selfCopy = self;
      dispatch_async(workQueue, v15);

      v12 = 1;
      v13 = v16;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = CAFDLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CAFDCarDataServiceAgent listener:shouldAcceptNewConnection:];
  }

  v12 = 0;
LABEL_12:

  return v12;
}

void __62__CAFDCarDataServiceAgent_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [[_CAFdConnectionProxy alloc] initWithConnection:*(a1 + 32) agent:*(a1 + 40)];
  v3 = CAFDDataLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__CAFDCarDataServiceAgent_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }

  v4 = [*(a1 + 40) connections];
  [v4 addObject:v2];

  v5 = [*(a1 + 40) remoteProxies];
  [v5 addObserver:v2];
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__CAFDCarDataServiceAgent__removeConnection___block_invoke;
  v7[3] = &unk_100055368;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(workQueue, v7);
}

void __45__CAFDCarDataServiceAgent__removeConnection___block_invoke(uint64_t a1)
{
  v2 = CAFDDataLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__CAFDCarDataServiceAgent__removeConnection___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) connections];
  [v3 removeObject:*(a1 + 32)];

  v4 = [*(a1 + 40) remoteProxies];
  [v4 unregisterObserver:*(a1 + 32)];
}

- (void)_addRegistration:(id)registration instanceIDs:(id)ds priority:(id)priority withResponse:(id)response
{
  registrationCopy = registration;
  dsCopy = ds;
  priorityCopy = priority;
  responseCopy = response;
  v14 = [(CAFDCarDataServiceAgent *)self _getClient:registrationCopy];
  v15 = CAFDDataLogging();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v21 = registrationCopy;
      v22 = 2050;
      v23 = [dsCopy count];
      v24 = 2114;
      v25 = priorityCopy;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Add registartion pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", buf, 0x20u);
    }

    [v14 registerInstanceIDs:dsCopy priority:priorityCopy withResponse:responseCopy];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CAFDCarDataServiceAgent _addRegistration:instanceIDs:priority:withResponse:];
    }

    if (responseCopy)
    {
      workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __78__CAFDCarDataServiceAgent__addRegistration_instanceIDs_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v19 = responseCopy;
      dispatch_async(workQueue, block);
    }
  }
}

void __78__CAFDCarDataServiceAgent__addRegistration_instanceIDs_priority_withResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CAFResponse alloc];
  v4 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:2 userInfo:0];
  v3 = [v2 initWithError:v4];
  (*(v1 + 16))(v1, v3);
}

- (void)_removeRegistration:(id)registration instanceIDs:(id)ds priority:(id)priority withResponse:(id)response
{
  registrationCopy = registration;
  dsCopy = ds;
  priorityCopy = priority;
  responseCopy = response;
  v14 = [[NSMutableArray alloc] initWithArray:dsCopy];
  if ([priorityCopy isEqual:CAFRequestForcedPriority])
  {

    v15 = CAFDDataLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CAFDCarDataServiceAgent _removeRegistration:registrationCopy instanceIDs:v14 priority:? withResponse:?];
    }

    priorityCopy = &off_100057580;
  }

  else
  {
    connections = [(CAFDCarDataServiceAgent *)self connections];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke;
    v33[3] = &unk_1000555A8;
    v17 = registrationCopy;
    v34 = v17;
    v18 = v14;
    v35 = v18;
    [connections enumerateObjectsUsingBlock:v33];

    fastStartupRegistrations = [(CAFDCarDataServiceAgent *)self fastStartupRegistrations];
    v20 = [fastStartupRegistrations objectForKeyedSubscript:v17];

    if (v20)
    {
      allObjects = [v20 allObjects];
      [v18 removeObjectsInArray:allObjects];
    }

    v22 = CAFDDataLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v18 count];
      *buf = 138543874;
      v37 = v17;
      v38 = 2050;
      v39 = v28;
      v40 = 2114;
      v41 = priorityCopy;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Remove registration pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", buf, 0x20u);
    }

    v15 = v34;
  }

  if ([v14 count])
  {
    v23 = [(CAFDCarDataServiceAgent *)self _getClient:registrationCopy];
    v24 = v23;
    if (v23)
    {
      [v23 unregisterInstanceIDs:dsCopy priority:priorityCopy withResponse:responseCopy];
    }

    else
    {
      v26 = CAFDDataLogging();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CAFDCarDataServiceAgent _removeRegistration:instanceIDs:priority:withResponse:];
      }

      if (responseCopy)
      {
        workQueue = [(CAFDCarDataServiceAgent *)self workQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke_252;
        block[3] = &unk_100055340;
        v32 = responseCopy;
        dispatch_async(workQueue, block);
      }
    }

    goto LABEL_19;
  }

  if (responseCopy)
  {
    workQueue2 = [(CAFDCarDataServiceAgent *)self workQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke_2;
    v29[3] = &unk_100055340;
    v30 = responseCopy;
    dispatch_async(workQueue2, v29);

    v24 = v30;
LABEL_19:
  }
}

uint64_t __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 registrationsForPluginID:*(a1 + 32)];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v5 allObjects];
    [v6 removeObjectsInArray:v7];

    if (![*(a1 + 40) count])
    {
      *a3 = 1;
    }
  }

  return _objc_release_x1();
}

void __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke_252(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CAFResponse alloc];
  v4 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:2 userInfo:0];
  v3 = [v2 initWithError:v4];
  (*(v1 + 16))(v1, v3);
}

void __81__CAFDCarDataServiceAgent__removeRegistration_instanceIDs_priority_withResponse___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[CAFResponse alloc] initWithValuesAndError:0 error:0];
  (*(v1 + 16))(v1, v2);
}

- (id)_getClient:(id)client
{
  if (client)
  {
    unsignedIntegerValue = [client unsignedIntegerValue];
    os_unfair_lock_lock(&self->_channelLock);
    carDataClients = [(CAFDCarDataServiceAgent *)self carDataClients];
    v6 = [carDataClients count];

    if (unsignedIntegerValue >= v6)
    {
      v8 = 0;
    }

    else
    {
      carDataClients2 = [(CAFDCarDataServiceAgent *)self carDataClients];
      v8 = [carDataClients2 objectAtIndex:unsignedIntegerValue];
    }

    os_unfair_lock_unlock(&self->_channelLock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getChannel:(id)channel
{
  channelCopy = &off_1000575C8;
  if (channel)
  {
    channelCopy = channel;
  }

  v6 = channelCopy;
  channelCopy2 = channel;
  os_unfair_lock_lock(&self->_channelLock);
  carDataChannels = [(CAFDCarDataServiceAgent *)self carDataChannels];
  v9 = [carDataChannels objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_channelLock);

  return v9;
}

- (void)initWithSessionStatus:(_BYTE *)a1 config:.cold.1(_BYTE *a1)
{
  *a1;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setupCarDataChannel:channelType:qualityOfService:streamPriority:priority:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_mainQueue_initVehicleDataSession:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 vehicleDataProtocolVersion];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12(v3, v4, v5, v6, v7);
}

- (void)_mainQueue_initVehicleDataSession:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:(void *)a1 .cold.7(void *a1, void *a2)
{
  v3 = [a1 UUIDString];
  v4 = [a2 configuration];
  v5 = [v4 name];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)_mainQueue_initVehicleDataSession:(void *)a1 .cold.8(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_mainQueue_initVehicleDataSession:(void *)a1 .cold.9(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)_mainQueue_initVehicleDataSession:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mainQueue_initVehicleDataSession:(void *)a1 .cold.12(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_observeAssertion:(void *)a1 .cold.1(void *a1)
{
  [a1 assertionCount];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_observeAssertion:(void *)a1 .cold.2(void *a1)
{
  [a1 assertionCount];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);
}

- (void)assertion:(void *)a1 didInvalidateWithError:.cold.1(void *a1)
{
  [a1 assertionCount];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)sessionDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sessionDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__CAFDCarDataServiceAgent_sessionDidDisconnect___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)carDataChannelDidOpen:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)carDataChannelDidOpen:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)carDataChannelDidOpen:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)carDataChannelDidOpen:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_241_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__CAFDCarDataServiceAgent_carDataChannelDidOpen___block_invoke_242_cold_1(uint64_t a1, void *a2)
{
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v4 = [a2 error];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12(v5, v6, v7, v8, v9);
}

- (void)carDataChannelDidClose:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)carDataChannelDidReceive:pluginID:payload:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didReceiveConfigFromPluginID:config:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_workQueue_didReceiveConfigFromPluginID:config:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_workQueue_didReceiveConfigFromPluginID:(id *)a1 config:(NSObject *)a2 .cold.2(id *a1, NSObject *a2)
{
  v4 = [*a1 pluginConfigs];
  v5 = [v4 count];
  v6 = [*a1 pluginCount];
  v7 = [*a1 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = 134349570;
  v10 = v5;
  v11 = 2050;
  v12 = v6;
  v13 = 2114;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Configuration incomplete with %{public}ld of %{public}ld plugins configured UUID: %{public}@", &v9, 0x20u);
}

- (void)_workQueue_didReceiveConfigFromPluginID:(id *)a1 config:.cold.3(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_workQueue_didReceiveConfigFromPluginID:config:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_workQueue_didReceiveConfigFromPluginID:(void *)a1 config:.cold.5(void *a1)
{
  v1 = [a1 allKeys];
  v2 = [v1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_workQueue_didReceiveConfigFromPluginID:config:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __87__CAFDCarDataServiceAgent_didReceiveRequestFromPluginID_instanceID_value_withResponse___block_invoke_3_cold_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)didReceiveErrorFromPluginID:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

- (void)valuesForPluginID:(uint64_t)a1 iids:.cold.1(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__CAFDCarDataServiceAgent_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __45__CAFDCarDataServiceAgent__removeConnection___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_addRegistration:instanceIDs:priority:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_removeRegistration:(uint64_t)a1 instanceIDs:(void *)a2 priority:withResponse:.cold.1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_removeRegistration:instanceIDs:priority:withResponse:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

@end