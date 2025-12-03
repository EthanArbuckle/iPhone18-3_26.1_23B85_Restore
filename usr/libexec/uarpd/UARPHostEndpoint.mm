@interface UARPHostEndpoint
- (BOOL)isEqual:(id)equal;
- (BOOL)prepareDownstreamEndpoint;
- (BOOL)prepareEndpoint;
- (BOOL)prepareEndpointForXPC;
- (UARPHostEndpoint)initWithNewConnection:(id)connection hostManager:(id)manager tempFolderPath:(id)path;
- (UARPHostEndpoint)initWithUpstreamEndpoint:(id)endpoint downstreamID:(unsigned __int16)d uuid:(id)uuid hostManager:(id)manager tempFolderPath:(id)path;
- (id)activeFirmwareVersion;
- (id)assetIdentifierForAppleModelNumber:(id)number;
- (id)description;
- (id)findPersonalizedAssetByUUID:(id)d;
- (id)findPersonalizingAssetByUUID:(id)d;
- (id)initCommon:(id)common tempFolderPath:(id)path;
- (id)stagedFirmwareVersion;
- (unint64_t)hash;
- (void)hostEndpointAvailable:(id)available mfiPG:(id)g mfiPN:(id)n;
- (void)hostEndpointAvailable:(id)available releasePolicy:(id)policy;
- (void)hostEndpointAvailableAndTransportAvailable:(id)available mfiPG:(id)g mfiPN:(id)n uarpMessage:(id)message;
- (void)hostEndpointAvailableAndTransportAvailable:(id)available uarpMessage:(id)message;
- (void)hostEndpointQueryFirmwareVersion:(id)version reply:(id)reply;
- (void)hostEndpointQueryStagedFirmwareVersion:(id)version reply:(id)reply;
- (void)hostEndpointSupportsChargingChimeDebounce:(id)debounce;
- (void)hostEndpointSupportsHeySiri:(id)siri;
- (void)hostEndpointSupportsJustSiri:(id)siri;
- (void)hostEndpointSupportsVoiceAssist:(id)assist;
- (void)hostEndpointTransportAvailable:(id)available releasePolicy:(id)policy;
- (void)hostEndpointTransportUnavailable:(id)unavailable;
- (void)hostEndpointUARPMessageReceived:(id)received uarpMessage:(id)message;
- (void)hostEndpointUnavailable:(id)unavailable;
- (void)hostEntryDeviceAssetTransferProgress:(id)progress bytesTransferred:(id)transferred totalBytes:(id)bytes;
- (void)hostEntryDeviceAssetTransferStatus:(id)status transferStatus:(id)transferStatus;
- (void)hostEntryDevicePropertiesUpdated;
- (void)hostEntryDeviceTransportNotNeeded;
- (void)hostEntryDeviceTransportSetup;
- (void)hostEntryDeviceTransportTeardown;
- (void)hostEntryDeviceUARPMessageSend:(id)send;
- (void)hostEntryDeviceUnresponsive;
- (void)personalizationComplete:(id)complete;
- (void)personalizeFirmware:(id)firmware tssServerURL:(id)l;
- (void)powerAssertionCreate;
- (void)powerAssertionRelease;
- (void)showAllAssets;
- (void)stageFirmware:(id)firmware tssServerURL:(id)l;
- (void)stageFirmwareComplete:(id)complete;
- (void)subscribeToAssetManagerEvents;
- (void)uarpMessageSendToTransport:(id)transport;
@end

@implementation UARPHostEndpoint

- (id)initCommon:(id)common tempFolderPath:(id)path
{
  commonCopy = common;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = UARPHostEndpoint;
  v8 = [(UARPHostEndpoint *)&v24 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.uarp.uarpd.entry", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = os_log_create("com.apple.uarp", "hostentry");
    log = v8->_log;
    v8->_log = v11;

    v13 = [pathCopy copy];
    tmpFolderPath = v8->_tmpFolderPath;
    v8->_tmpFolderPath = v13;

    objc_storeWeak(&v8->_hostManager, commonCopy);
    *&v8->_debug = 0;
    v8->_debugTransfer = 0;
    v15 = objc_opt_new();
    personalizingAssets = v8->_personalizingAssets;
    v8->_personalizingAssets = v15;

    v17 = objc_opt_new();
    personalizedAssets = v8->_personalizedAssets;
    v8->_personalizedAssets = v17;

    v19 = objc_opt_new();
    stagingAssets = v8->_stagingAssets;
    v8->_stagingAssets = v19;

    v8->_powerAssertionID = 0;
    v21 = objc_alloc_init(UARPEndpointPacketCaptureDelegate);
    pcapDelegate = v8->_pcapDelegate;
    v8->_pcapDelegate = v21;
  }

  return v8;
}

- (UARPHostEndpoint)initWithNewConnection:(id)connection hostManager:(id)manager tempFolderPath:(id)path
{
  connectionCopy = connection;
  v10 = [(UARPHostEndpoint *)self initCommon:manager tempFolderPath:path];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 5, connection);
    v11->_processIdentifier = [(NSXPCConnection *)v11->_xpcConnection processIdentifier];
    log = v11->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      processIdentifier = v11->_processIdentifier;
      v15[0] = 67109120;
      v15[1] = processIdentifier;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Storing connection from PID %d", v15, 8u);
    }
  }

  return v11;
}

- (UARPHostEndpoint)initWithUpstreamEndpoint:(id)endpoint downstreamID:(unsigned __int16)d uuid:(id)uuid hostManager:(id)manager tempFolderPath:(id)path
{
  endpointCopy = endpoint;
  uuidCopy = uuid;
  v15 = [(UARPHostEndpoint *)self initCommon:manager tempFolderPath:path];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 19, endpoint);
    v16->_downstreamID = d;
    v17 = [uuidCopy copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    log = v16->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      downstreamID = v16->_downstreamID;
      v21 = v16->_uuid;
      v22 = log;
      uUIDString = [(NSUUID *)v21 UUIDString];
      uuid = [(UARPHostEndpoint *)v16->_upstreamEndpoint uuid];
      uUIDString2 = [uuid UUIDString];
      v27[0] = 67109634;
      v27[1] = downstreamID;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Starting downstream endpoint id (%u) %@ on upstream endpoint %@", v27, 0x1Cu);
    }
  }

  return v16;
}

- (BOOL)prepareEndpointForXPC
{
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPHostEndpointProtocol];
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v3];

  exportedInterface = [(NSXPCConnection *)self->_xpcConnection exportedInterface];
  UARPHostEndpointProtocolSetupInterface();

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPHostEndpointDelegateProtocol];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  remoteObjectInterface = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  UARPHostEndpointDelegateProtocolSetupInterface();

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000178D4;
  v10[3] = &unk_1000B8CE0;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017960;
  v8[3] = &unk_1000B8CE0;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v8];
  [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
}

- (BOOL)prepareDownstreamEndpoint
{
  v3 = [UARPEndpointLayer3 alloc];
  uuid = self->_uuid;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v6 = [(UARPEndpointLayer3 *)v3 initWithUUID:uuid transportTxDelegate:self layer3Delegate:WeakRetained tmpFolderPath:self->_tmpFolderPath];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = v6;

  v8 = +[UARPEndpointOptions hostDefaultOptions];
  v9 = self->_layer3Endpoint;
  v10 = objc_loadWeakRetained(&self->_hostManager);
  layer2InfoProperties = [v10 layer2InfoProperties];
  v12 = objc_loadWeakRetained(&self->_hostManager);
  layer2AppleProperties = [v12 layer2AppleProperties];
  downstreamID = self->_downstreamID;
  layer3Endpoint = [(UARPHostEndpoint *)self->_upstreamEndpoint layer3Endpoint];
  [(UARPEndpointLayer3 *)v9 startUARPLayer2:v8 configuration:0 infoProperties:layer2InfoProperties appleProperties:layer2AppleProperties endpointID:downstreamID upstreamEndpoint:layer3Endpoint pcapDelegate:self->_pcapDelegate];

  return 1;
}

- (BOOL)prepareEndpoint
{
  if (self->_xpcConnection)
  {

    return [(UARPHostEndpoint *)self prepareEndpointForXPC];
  }

  else
  {
    layer3Endpoint = [(UARPHostEndpoint *)self->_upstreamEndpoint layer3Endpoint];

    if (layer3Endpoint)
    {

      return [(UARPHostEndpoint *)self prepareDownstreamEndpoint];
    }

    else
    {
      return 0;
    }
  }
}

- (void)subscribeToAssetManagerEvents
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017C14;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)activeFirmwareVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000181F4;
  v10 = sub_100018204;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001820C;
  v5[3] = &unk_1000B8D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)stagedFirmwareVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000181F4;
  v10 = sub_100018204;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018368;
  v5[3] = &unk_1000B8D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)hash
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [uUIDString hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(UARPHostEndpoint *)self uuid];
    uuid2 = [v5 uuid];

    v8 = UARPLayer3MatchingUUIDs(uuid, uuid2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UARPHostEndpoint <%@>", uUIDString];

  return v3;
}

- (void)hostEndpointAvailable:(id)available releasePolicy:(id)policy
{
  availableCopy = available;
  policyCopy = policy;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    uUIDString = [availableCopy UUIDString];
    *buf = 136315394;
    v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
    v42 = 2112;
    selfCopy6 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", buf, 0x16u);
  }

  if (!self->_uuid)
  {
    v11 = [availableCopy copy];
    uuid = self->_uuid;
    self->_uuid = v11;

    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_uuid;
      v15 = v13;
      uUIDString2 = [(NSUUID *)v14 UUIDString];
      *buf = 136315394;
      v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
      v42 = 2112;
      selfCopy6 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: host endpoint uuid was nil, saving %@", buf, 0x16u);
    }
  }

  v17 = [NSString stringWithFormat:@"com.apple.uarp.uarpd.powerassertion"];
  uUIDString3 = [(NSUUID *)self->_uuid UUIDString];
  v19 = [NSString stringWithFormat:@"%@.%@", v17, uUIDString3];
  powerAssertionName = self->_powerAssertionName;
  self->_powerAssertionName = v19;

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v22 = [WeakRetained matchingDatabaseEntry:availableCopy];
  databaseEntry = self->_databaseEntry;
  self->_databaseEntry = v22;

  if (self->_databaseEntry)
  {
    integerValue = [policyCopy integerValue];
    self->_transportReleasePolicy = integerValue;
    v25 = self->_log;
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (integerValue == 2)
    {
      if (v26)
      {
        *buf = 136315394;
        v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
        v42 = 2112;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s: Transport Release Policy is Immediate for %@; checking version before requesting to plumb transport", buf, 0x16u);
      }

      activeFirmwareVersion = [(UARPEndpointDatabaseEntry2 *)self->_databaseEntry activeFirmwareVersion];
      if (!activeFirmwareVersion)
      {
        v35 = self->_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
          v42 = 2112;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s: Request to plumb transport for %@, Unknown firmware version", buf, 0x16u);
        }

        [(UARPHostEndpoint *)self hostEntryDeviceTransportSetup];
        goto LABEL_31;
      }

      availableFirmwareVersion = [(UARPEndpointDatabaseEntry2 *)self->_databaseEntry availableFirmwareVersion];
      v29 = availableFirmwareVersion;
      if (availableFirmwareVersion)
      {
        v30 = [(UARPHostEndpoint *)availableFirmwareVersion isGreaterThan:activeFirmwareVersion];
        v31 = self->_log;
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
        if (v30)
        {
          if (v32)
          {
            *buf = 136315906;
            v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
            v42 = 2112;
            selfCopy6 = v29;
            v44 = 2112;
            v45 = activeFirmwareVersion;
            v46 = 2112;
            selfCopy4 = self;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s: Request to plumb transport. Available firmware version %@ is greater than Active firmware version %@ of endpoint %@", buf, 0x2Au);
          }

          [(UARPHostEndpoint *)self hostEntryDeviceTransportSetup];
          goto LABEL_30;
        }

        if (v32)
        {
          *buf = 136315906;
          v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
          v42 = 2112;
          selfCopy6 = v29;
          v44 = 2112;
          v45 = activeFirmwareVersion;
          v46 = 2112;
          selfCopy4 = self;
          v37 = "%s: Do not request to plumb transport. Available firmware version %@ is not greater than Active firmware version %@ of endpoint %@";
          v38 = v31;
          v39 = 42;
          goto LABEL_28;
        }
      }

      else
      {
        v36 = self->_log;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
          v42 = 2112;
          selfCopy6 = self;
          v37 = "%s: Do not request to plumb transport. No available firmware for endpoint %@";
          v38 = v36;
          v39 = 22;
LABEL_28:
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v37, buf, v39);
        }
      }

      [(UARPHostEndpoint *)self hostEntryDeviceTransportNotNeeded];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    if (v26)
    {
      transportReleasePolicy = self->_transportReleasePolicy;
      *buf = 136315650;
      v41 = "[UARPHostEndpoint hostEndpointAvailable:releasePolicy:]";
      v42 = 2112;
      selfCopy6 = self;
      v44 = 2048;
      v45 = transportReleasePolicy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s: Request to plumb transport for %@, based on transport policy of %ld", buf, 0x20u);
    }

    [(UARPHostEndpoint *)self hostEntryDeviceTransportSetup];
  }

  else
  {
    v33 = self->_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10007EC3C(v33);
    }
  }

LABEL_32:
}

- (void)hostEndpointAvailable:(id)available mfiPG:(id)g mfiPN:(id)n
{
  gCopy = g;
  nCopy = n;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    uUIDString = [available UUIDString];
    v13 = 136315906;
    v14 = "[UARPHostEndpoint hostEndpointAvailable:mfiPG:mfiPN:]";
    v15 = 2112;
    v16 = uUIDString;
    v17 = 2112;
    v18 = gCopy;
    v19 = 2112;
    v20 = nCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, mfiPG is %@, mfiPN is %@", &v13, 0x2Au);
  }
}

- (void)hostEndpointUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  if (!UARPLayer3MatchingUUIDs(unavailableCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007ECEC(&self->_uuid, log);
    }
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    uUIDString = [unavailableCopy UUIDString];
    v12 = 136315394;
    v13 = "[UARPHostEndpoint hostEndpointUnavailable:]";
    v14 = 2112;
    v15 = uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v12, 0x16u);
  }

  [(UARPEndpointLayer3 *)self->_layer3Endpoint stopUARPLayer2];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = 0;

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained endpointDisconnection:self];

  v11 = objc_loadWeakRetained(&self->_hostManager);
  [v11 endpointControllerEndpointUnavailable:self->_uuid];

  [(UARPHostEndpoint *)self powerAssertionRelease];
}

- (void)hostEndpointTransportAvailable:(id)available releasePolicy:(id)policy
{
  availableCopy = available;
  uuid = self->_uuid;
  policyCopy = policy;
  if (!UARPLayer3MatchingUUIDs(availableCopy, uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007ED9C(&self->_uuid, log);
    }
  }

  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    uUIDString = [availableCopy UUIDString];
    *buf = 136315394;
    v26 = "[UARPHostEndpoint hostEndpointTransportAvailable:releasePolicy:]";
    v27 = 2112;
    v28 = uUIDString;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", buf, 0x16u);
  }

  integerValue = [policyCopy integerValue];

  self->_transportReleasePolicy = integerValue;
  v14 = [UARPEndpointLayer3 alloc];
  v15 = self->_uuid;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v17 = [(UARPEndpointLayer3 *)v14 initWithUUID:v15 transportTxDelegate:self layer3Delegate:WeakRetained tmpFolderPath:self->_tmpFolderPath];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = v17;

  v19 = +[UARPEndpointOptions hostDefaultOptions];
  v20 = self->_layer3Endpoint;
  v21 = objc_loadWeakRetained(&self->_hostManager);
  layer2InfoProperties = [v21 layer2InfoProperties];
  v23 = objc_loadWeakRetained(&self->_hostManager);
  layer2AppleProperties = [v23 layer2AppleProperties];
  [(UARPEndpointLayer3 *)v20 startUARPLayer2:v19 configuration:0 infoProperties:layer2InfoProperties appleProperties:layer2AppleProperties endpointID:0 upstreamEndpoint:0 pcapDelegate:self->_pcapDelegate];
}

- (void)hostEndpointTransportUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  if (!UARPLayer3MatchingUUIDs(unavailableCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007EE4C(&self->_uuid, log);
    }
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    uUIDString = [unavailableCopy UUIDString];
    v12 = 136315394;
    v13 = "[UARPHostEndpoint hostEndpointTransportUnavailable:]";
    v14 = 2112;
    v15 = uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v12, 0x16u);
  }

  [(UARPEndpointLayer3 *)self->_layer3Endpoint stopUARPLayer2];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = 0;

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained endpointDisconnection:self];

  v11 = objc_loadWeakRetained(&self->_hostManager);
  [v11 endpointControllerEndpointUnavailable:self->_uuid];

  [(UARPHostEndpoint *)self powerAssertionRelease];
}

- (void)hostEndpointAvailableAndTransportAvailable:(id)available uarpMessage:(id)message
{
  availableCopy = available;
  messageCopy = message;
  if (!UARPLayer3MatchingUUIDs(availableCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007EEFC(&self->_uuid, log);
    }
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    uUIDString = [availableCopy UUIDString];
    v12 = 136315650;
    v13 = "[UARPHostEndpoint hostEndpointAvailableAndTransportAvailable:uarpMessage:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2048;
    v17 = [messageCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, uarpMessage is %lu bytes", &v12, 0x20u);
  }
}

- (void)hostEndpointAvailableAndTransportAvailable:(id)available mfiPG:(id)g mfiPN:(id)n uarpMessage:(id)message
{
  availableCopy = available;
  gCopy = g;
  nCopy = n;
  messageCopy = message;
  if (!UARPLayer3MatchingUUIDs(availableCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007EFAC(&self->_uuid, log);
    }
  }

  v15 = self->_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    uUIDString = [availableCopy UUIDString];
    v18 = 136316162;
    v19 = "[UARPHostEndpoint hostEndpointAvailableAndTransportAvailable:mfiPG:mfiPN:uarpMessage:]";
    v20 = 2112;
    v21 = uUIDString;
    v22 = 2112;
    v23 = gCopy;
    v24 = 2112;
    v25 = nCopy;
    v26 = 2048;
    v27 = [messageCopy length];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@, mfiPG is %@, mfiPN is %@, uarpMessage is %lu bytes", &v18, 0x34u);
  }
}

- (void)hostEndpointUARPMessageReceived:(id)received uarpMessage:(id)message
{
  receivedCopy = received;
  messageCopy = message;
  if (!UARPLayer3MatchingUUIDs(receivedCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007F05C(&self->_uuid, log);
    }
  }

  if (self->_debugTransfer)
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10007F10C(v9, receivedCopy);
    }
  }

  [(UARPEndpointLayer3 *)self->_layer3Endpoint uarpMessageRecvFromTransport:messageCopy];
}

- (void)hostEndpointQueryFirmwareVersion:(id)version reply:(id)reply
{
  versionCopy = version;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    uUIDString = [versionCopy UUIDString];
    v25 = 136315394;
    v26 = "[UARPHostEndpoint hostEndpointQueryFirmwareVersion:reply:]";
    v27 = 2112;
    v28 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v25, 0x16u);
  }

  if (!UARPLayer3MatchingUUIDs(versionCopy, self->_uuid))
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007F1C8(&self->_uuid, v11);
    }
  }

  layer3Endpoint = self->_layer3Endpoint;
  if (layer3Endpoint)
  {
    directConfiguration = [(UARPEndpointLayer3 *)layer3Endpoint directConfiguration];
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      firmwareVersion = [directConfiguration firmwareVersion];
      versionString = [firmwareVersion versionString];
      v25 = 136315394;
      v26 = "[UARPHostEndpoint hostEndpointQueryFirmwareVersion:reply:]";
      v27 = 2112;
      v28 = versionString;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: reporting from endpoint %@", &v25, 0x16u);
    }

    firmwareVersion2 = [directConfiguration firmwareVersion];
    versionString2 = [firmwareVersion2 versionString];
    replyCopy[2](replyCopy, versionString2);
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      databaseEntry = self->_databaseEntry;
      v22 = v20;
      activeFirmwareVersion = [(UARPEndpointDatabaseEntry2 *)databaseEntry activeFirmwareVersion];
      versionString3 = [activeFirmwareVersion versionString];
      v25 = 136315394;
      v26 = "[UARPHostEndpoint hostEndpointQueryFirmwareVersion:reply:]";
      v27 = 2112;
      v28 = versionString3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: reporting from database %@", &v25, 0x16u);
    }

    directConfiguration = [(UARPEndpointDatabaseEntry2 *)self->_databaseEntry activeFirmwareVersion];
    firmwareVersion2 = [directConfiguration versionString];
    replyCopy[2](replyCopy, firmwareVersion2);
  }
}

- (void)hostEndpointQueryStagedFirmwareVersion:(id)version reply:(id)reply
{
  versionCopy = version;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    uUIDString = [versionCopy UUIDString];
    v21 = 136315394;
    v22 = "[UARPHostEndpoint hostEndpointQueryStagedFirmwareVersion:reply:]";
    v23 = 2112;
    v24 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: deviceUUID is %@", &v21, 0x16u);
  }

  if (!UARPLayer3MatchingUUIDs(versionCopy, self->_uuid))
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007F278(&self->_uuid, v11);
    }
  }

  layer3Endpoint = self->_layer3Endpoint;
  if (layer3Endpoint)
  {
    directConfiguration = [(UARPEndpointLayer3 *)layer3Endpoint directConfiguration];
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      stagedFirmwareVersion = [directConfiguration stagedFirmwareVersion];
      versionString = [stagedFirmwareVersion versionString];
      v21 = 136315394;
      v22 = "[UARPHostEndpoint hostEndpointQueryStagedFirmwareVersion:reply:]";
      v23 = 2112;
      v24 = versionString;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: reporting from endpoint %@", &v21, 0x16u);
    }

    stagedFirmwareVersion2 = [directConfiguration stagedFirmwareVersion];
    versionString2 = [stagedFirmwareVersion2 versionString];
    replyCopy[2](replyCopy, versionString2);
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[UARPHostEndpoint hostEndpointQueryStagedFirmwareVersion:reply:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: unknown staged firmware version", &v21, 0xCu);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)hostEndpointSupportsHeySiri:(id)siri
{
  siriCopy = siri;
  if (!UARPLayer3MatchingUUIDs(siriCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007F328(&self->_uuid, log);
    }
  }

  self->_supportsHeySiri = 1;
}

- (void)hostEndpointSupportsJustSiri:(id)siri
{
  siriCopy = siri;
  if (!UARPLayer3MatchingUUIDs(siriCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007F3D8(&self->_uuid, log);
    }
  }

  self->_supportsJustSiri = 1;
}

- (void)hostEndpointSupportsVoiceAssist:(id)assist
{
  assistCopy = assist;
  if (!UARPLayer3MatchingUUIDs(assistCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007F488(&self->_uuid, log);
    }
  }

  self->_supportsVoiceAssist = 1;
}

- (void)hostEndpointSupportsChargingChimeDebounce:(id)debounce
{
  debounceCopy = debounce;
  if (!UARPLayer3MatchingUUIDs(debounceCopy, self->_uuid))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10007F538(&self->_uuid, log);
    }
  }

  self->_supportsChargingChimeDebounce = 1;
}

- (void)hostEntryDeviceTransportSetup
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019B60;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hostEntryDeviceTransportTeardown
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019CB4;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hostEntryDeviceTransportNotNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019F04;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hostEntryDeviceUnresponsive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A058;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hostEntryDeviceUARPMessageSend:(id)send
{
  sendCopy = send;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A1D0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = sendCopy;
  v6 = sendCopy;
  dispatch_async(queue, v7);
}

- (void)hostEntryDevicePropertiesUpdated
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A2CC;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)hostEntryDeviceAssetTransferProgress:(id)progress bytesTransferred:(id)transferred totalBytes:(id)bytes
{
  progressCopy = progress;
  transferredCopy = transferred;
  bytesCopy = bytes;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001A490;
  v15[3] = &unk_1000B8BF0;
  v15[4] = self;
  v16 = progressCopy;
  v17 = transferredCopy;
  v18 = bytesCopy;
  v12 = bytesCopy;
  v13 = transferredCopy;
  v14 = progressCopy;
  dispatch_async(queue, v15);
}

- (void)hostEntryDeviceAssetTransferStatus:(id)status transferStatus:(id)transferStatus
{
  statusCopy = status;
  transferStatusCopy = transferStatus;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A5E0;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = statusCopy;
  v13 = transferStatusCopy;
  v9 = transferStatusCopy;
  v10 = statusCopy;
  dispatch_async(queue, block);
}

- (void)uarpMessageSendToTransport:(id)transport
{
  transportCopy = transport;
  if (self->_xpcConnection)
  {
    if (self->_debugTransfer)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        sub_10007F758(log, transportCopy, self);
      }
    }

    [(UARPHostEndpoint *)self hostEntryDeviceUARPMessageSend:transportCopy];
  }

  else
  {
    layer3Endpoint = [(UARPHostEndpoint *)self->_upstreamEndpoint layer3Endpoint];

    if (layer3Endpoint)
    {
      if (self->_debugDownstream)
      {
        v7 = self->_log;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_10007F824(v7, transportCopy, self);
        }
      }

      [(UARPEndpointLayer3 *)self->_layer3Endpoint sendMessageUpstream:transportCopy fromDownstreamID:self->_downstreamID];
    }
  }
}

- (void)showAllAssets
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = self->_personalizingAssets;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(v3);
        }

        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v9 = *(*(&v44 + 1) + 8 * i);
          v10 = log;
          uuid = [v9 uuid];
          uUIDString = [uuid UUIDString];
          uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
          *buf = 136315650;
          v51 = "[UARPHostEndpoint showAllAssets]";
          v52 = 2112;
          v53 = uUIDString;
          v54 = 2112;
          v55 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Personalizing Asset %@ for %@", buf, 0x20u);
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v5);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = self->_personalizedAssets;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(*(&v40 + 1) + 8 * j);
          v21 = v19;
          uuid2 = [v20 uuid];
          uUIDString3 = [uuid2 UUIDString];
          uUIDString4 = [(NSUUID *)self->_uuid UUIDString];
          *buf = 136315650;
          v51 = "[UARPHostEndpoint showAllAssets]";
          v52 = 2112;
          v53 = uUIDString3;
          v54 = 2112;
          v55 = uUIDString4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: Personalized Asset %@ for %@", buf, 0x20u);
        }
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v16);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = self->_stagingAssets;
  v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = self->_log;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = *(*(&v36 + 1) + 8 * k);
          v32 = v30;
          uuid3 = [v31 uuid];
          uUIDString5 = [uuid3 UUIDString];
          uUIDString6 = [(NSUUID *)self->_uuid UUIDString];
          *buf = 136315650;
          v51 = "[UARPHostEndpoint showAllAssets]";
          v52 = 2112;
          v53 = uUIDString5;
          v54 = 2112;
          v55 = uUIDString6;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s: Firmware Asset %@ for %@", buf, 0x20u);
        }
      }

      v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v27);
  }
}

- (void)personalizeFirmware:(id)firmware tssServerURL:(id)l
{
  firmwareCopy = firmware;
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    uuid = [firmwareCopy uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
    v13 = 136315650;
    v14 = "[UARPHostEndpoint personalizeFirmware:tssServerURL:]";
    v15 = 2112;
    v16 = uUIDString;
    v17 = 2112;
    v18 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Add Personalizing Asset %@ for %@", &v13, 0x20u);
  }

  [(NSMutableSet *)self->_personalizingAssets addObject:firmwareCopy];
  [(UARPEndpointLayer3 *)self->_layer3Endpoint personalizeFirmwareSuperBinary:firmwareCopy tssServerURL:lCopy];
}

- (void)personalizationComplete:(id)complete
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    uuid = [completeCopy uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
    v10 = 136315650;
    v11 = "[UARPHostEndpoint personalizationComplete:]";
    v12 = 2112;
    v13 = uUIDString;
    v14 = 2112;
    v15 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Moving Personalizing Asset to Personalized %@ for %@", &v10, 0x20u);
  }

  [(NSMutableSet *)self->_personalizedAssets addObject:completeCopy];
  [(NSMutableSet *)self->_personalizingAssets removeObject:completeCopy];
}

- (void)stageFirmware:(id)firmware tssServerURL:(id)l
{
  firmwareCopy = firmware;
  lCopy = l;
  if ([(NSMutableSet *)self->_stagingAssets count])
  {
    [firmwareCopy setAssetType:1];
    [(UARPEndpointLayer3 *)self->_layer3Endpoint assetFullyStaged:firmwareCopy status:16];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = log;
      uuid = [firmwareCopy uuid];
      uUIDString = [uuid UUIDString];
      uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
      v13 = 136315650;
      v14 = "[UARPHostEndpoint stageFirmware:tssServerURL:]";
      v15 = 2112;
      v16 = uUIDString;
      v17 = 2112;
      v18 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Add Staging Asset %@ for %@", &v13, 0x20u);
    }

    [(UARPHostEndpoint *)self powerAssertionCreate];
    [(NSMutableSet *)self->_stagingAssets addObject:firmwareCopy];
    [(NSMutableSet *)self->_personalizedAssets removeObject:firmwareCopy];
    [(UARPEndpointLayer3 *)self->_layer3Endpoint stageFirmwareSuperBinary:firmwareCopy tssServerURL:lCopy];
  }
}

- (void)stageFirmwareComplete:(id)complete
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    uuid = [completeCopy uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
    v10 = 136315650;
    v11 = "[UARPHostEndpoint stageFirmwareComplete:]";
    v12 = 2112;
    v13 = uUIDString;
    v14 = 2112;
    v15 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Remove Staging Asset %@ for %@", &v10, 0x20u);
  }

  [(NSMutableSet *)self->_stagingAssets removeObject:completeCopy];
  [(UARPHostEndpoint *)self powerAssertionRelease];
}

- (id)findPersonalizingAssetByUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_personalizingAssets;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = UARPLayer3MatchingUUIDs(uuid, dCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)findPersonalizedAssetByUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_personalizedAssets;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = UARPLayer3MatchingUUIDs(uuid, dCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)powerAssertionCreate
{
  powerAssertionID = self->_powerAssertionID;
  log = self->_log;
  v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (powerAssertionID)
  {
    if (!v5)
    {
      return;
    }

    uuid = self->_uuid;
    v7 = log;
    uUIDString = [(NSUUID *)uuid UUIDString];
    *buf = 136315394;
    v23 = "[UARPHostEndpoint powerAssertionCreate]";
    v24 = 2112;
    v25 = uUIDString;
    v9 = "%s: Previous power assertion created for %@";
    goto LABEL_4;
  }

  if (v5)
  {
    v10 = self->_uuid;
    v11 = log;
    uUIDString2 = [(NSUUID *)v10 UUIDString];
    *buf = 136315394;
    v23 = "[UARPHostEndpoint powerAssertionCreate]";
    v24 = 2112;
    v25 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Taking power assertion for %@", buf, 0x16u);
  }

  AssertionID = 0;
  v13 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, self->_powerAssertionName, &AssertionID);
  if (v13)
  {
    v14 = v13;
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = self->_uuid;
      v17 = v15;
      uUIDString3 = [(NSUUID *)v16 UUIDString];
      *buf = 136315650;
      v23 = "[UARPHostEndpoint powerAssertionCreate]";
      v24 = 2112;
      v25 = uUIDString3;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Failed to create power assertion for %@; error %d", buf, 0x1Cu);
    }
  }

  else
  {
    self->_powerAssertionID = AssertionID;
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = self->_uuid;
      v7 = v19;
      uUIDString = [(NSUUID *)v20 UUIDString];
      *buf = 136315394;
      v23 = "[UARPHostEndpoint powerAssertionCreate]";
      v24 = 2112;
      v25 = uUIDString;
      v9 = "%s: Created power assertion for %@";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, buf, 0x16u);
    }
  }
}

- (void)powerAssertionRelease
{
  powerAssertionID = self->_powerAssertionID;
  log = self->_log;
  v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!powerAssertionID)
  {
    if (!v5)
    {
      return;
    }

    uuid = self->_uuid;
    v17 = log;
    uUIDString = [(NSUUID *)uuid UUIDString];
    v21 = 136315394;
    v22 = "[UARPHostEndpoint powerAssertionRelease]";
    v23 = 2112;
    v24 = uUIDString;
    v19 = "%s: No power assertion to release for %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v19, &v21, 0x16u);

    return;
  }

  if (v5)
  {
    v6 = self->_uuid;
    v7 = log;
    uUIDString2 = [(NSUUID *)v6 UUIDString];
    v21 = 136315394;
    v22 = "[UARPHostEndpoint powerAssertionRelease]";
    v23 = 2112;
    v24 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: Releasing power assertion for %@", &v21, 0x16u);
  }

  v9 = self->_powerAssertionID;
  self->_powerAssertionID = 0;
  v10 = IOPMAssertionRelease(v9);
  v11 = self->_log;
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v10)
  {
    if (!v12)
    {
      return;
    }

    v20 = self->_uuid;
    v17 = v11;
    uUIDString = [(NSUUID *)v20 UUIDString];
    v21 = 136315394;
    v22 = "[UARPHostEndpoint powerAssertionRelease]";
    v23 = 2112;
    v24 = uUIDString;
    v19 = "%s: Released power assertion for %@";
    goto LABEL_11;
  }

  if (v12)
  {
    v13 = self->_uuid;
    v14 = v11;
    uUIDString3 = [(NSUUID *)v13 UUIDString];
    v21 = 136315650;
    v22 = "[UARPHostEndpoint powerAssertionRelease]";
    v23 = 2112;
    v24 = uUIDString3;
    v25 = 1024;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Failed to release power assertion for %@; error %d", &v21, 0x1Cu);
  }
}

- (id)assetIdentifierForAppleModelNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy isEqualToString:@"A3466"])
  {
    v4 = @"A3385";
  }

  else if ([numberCopy isEqualToString:@"A3250"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3502") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3503"))
  {
    v4 = @"A2580";
  }

  else if ([numberCopy isEqualToString:@"A3151"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3153"))
  {
    v4 = @"A3150";
  }

  else if ([numberCopy isEqualToString:@"A3158"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3159"))
  {
    v4 = @"A3157";
  }

  else if ([numberCopy isEqualToString:@"A2512"])
  {
    v4 = @"A2513";
  }

  else if ([numberCopy isEqualToString:@"A2872"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2952"))
  {
    v4 = @"A2871";
  }

  else if ([numberCopy isEqualToString:@"A2619"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2699") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2698") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2931") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2617") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A2700"))
  {
    v4 = @"A2618";
  }

  else
  {
    if ([numberCopy isEqualToString:@"A3047"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3049"))
    {
      goto LABEL_28;
    }

    if ([numberCopy isEqualToString:@"A3050"])
    {
      v4 = @"A3053";
      goto LABEL_7;
    }

    if ([numberCopy isEqualToString:@"A3054"])
    {
LABEL_28:
      v4 = @"A3048";
    }

    else if ([numberCopy isEqualToString:@"A3055"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3057") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3059"))
    {
      v4 = @"A3056";
    }

    else if ([numberCopy isEqualToString:@"A3063"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3065"))
    {
      v4 = @"A3064";
    }

    else if ([numberCopy isEqualToString:@"A3365"] & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3352") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3353") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3366") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3367") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3368") & 1) != 0 || (objc_msgSend(numberCopy, "isEqualToString:", @"A3369"))
    {
      v4 = @"A3351";
    }

    else
    {
      v4 = @"A3351";
      if (([numberCopy isEqualToString:@"A3370"] & 1) == 0 && !objc_msgSend(numberCopy, "isEqualToString:", @"A3371"))
      {
        v4 = 0;
      }
    }
  }

LABEL_7:

  return v4;
}

@end