@interface SACompanionMessengerAdapter
- (BOOL)sendMessageToWatch:(id)watch identifier:(id *)identifier;
- (SACompanionMessengerAdapter)initWithProxy:(void *)proxy andQueue:(id)queue;
- (void)beginService;
- (void)endService;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)updateNearbyStatusWithDevices:(id)devices;
@end

@implementation SACompanionMessengerAdapter

- (SACompanionMessengerAdapter)initWithProxy:(void *)proxy andQueue:(id)queue
{
  queueCopy = queue;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,initWithQueue}", buf, 0x12u);
  }

  v18.receiver = self;
  v18.super_class = SACompanionMessengerAdapter;
  v9 = [(SACompanionMessengerAdapter *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->queue, queue);
    v10->cmProxy = proxy;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004377C;
    v16[3] = &unk_10013B1F0;
    v11 = v10;
    v17 = v11;
    [IDSService serviceWithIdentifier:@"com.apple.private.alloy.safetyalerts" completion:v16];
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,initComplete}", buf, 0x12u);
    }

    v13 = v11;
  }

  else
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,#warning,initFailed}", buf, 0x12u);
    }
  }

  return v10;
}

- (void)beginService
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,beginService}", v7, 0x12u);
  }

  service = [(SACompanionMessengerAdapter *)self service];
  [service addDelegate:self queue:self->queue];

  service2 = [(SACompanionMessengerAdapter *)self service];
  devices = [service2 devices];
  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:devices];
}

- (void)endService
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,endService}", v4, 0x12u);
  }

  [(SACompanionMessengerAdapter *)self setService:0];
}

- (void)updateNearbyStatusWithDevices:(id)devices
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  devicesCopy = devices;
  uniqueIDOverride = [devicesCopy countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (uniqueIDOverride)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != uniqueIDOverride; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice] && objc_msgSend(v8, "isNearby"))
        {
          uniqueIDOverride = [v8 uniqueIDOverride];
          if (v8)
          {
            [v8 operatingSystemVersion];
          }

          v9 = SALogObjectGeneral;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            isActive = [v8 isActive];
            isConnected = [v8 isConnected];
            destination = [v8 destination];
            *buf = 68289795;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            v27 = 1025;
            v28 = isActive;
            v29 = 1025;
            v30 = isConnected;
            v31 = 2113;
            v32 = destination;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyStatusDetails, isActive:%{private}hhd, isConnected:%{private}hhd, destination:%{private, location:escape_only}@}", buf, 0x28u);
          }

          goto LABEL_16;
        }
      }

      uniqueIDOverride = [devicesCopy countByEnumeratingWithState:&v19 objects:v33 count:16];
      if (uniqueIDOverride)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  saPairUniqueID = [(SACompanionMessengerAdapter *)self saPairUniqueID];
  v14 = [uniqueIDOverride isEqualToString:saPairUniqueID];

  if ((v14 & 1) == 0)
  {
    [(SACompanionMessengerAdapter *)self setSaPairUniqueID:uniqueIDOverride];
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      saPairUniqueID2 = [(SACompanionMessengerAdapter *)self saPairUniqueID];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1025;
      v28 = saPairUniqueID2 != 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyStatusChanged, is nearby:%{private}d}", buf, 0x18u);
    }

    cmProxy = self->cmProxy;
    if (cmProxy)
    {
      saPairUniqueID3 = [(SACompanionMessengerAdapter *)self saPairUniqueID];
      cmProxy[56] = saPairUniqueID3 != 0;
    }
  }
}

- (BOOL)sendMessageToWatch:(id)watch identifier:(id *)identifier
{
  watchCopy = watch;
  saPairUniqueID = [(SACompanionMessengerAdapter *)self saPairUniqueID];

  if (saPairUniqueID)
  {
    *identifier = 0;
    service = [(SACompanionMessengerAdapter *)self service];
    v9 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v20 = 0;
    LODWORD(saPairUniqueID) = [service sendMessage:watchCopy toDestinations:v9 priority:300 options:0 identifier:identifier error:&v20];
    v10 = v20;

    if (v10)
    {
      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2113;
        v26[0] = v10;
        v12 = "{msg%{public}.0s:#sacm,sendMessageToWatch, #warning got error from IDS, error, error:%{private, location:escape_only}@}";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 28;
LABEL_5:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
      }
    }

    else
    {
      v18 = *identifier;
      v19 = SALogObjectGeneral;
      if (v18)
      {
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289539;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          v25 = 1025;
          LODWORD(v26[0]) = saPairUniqueID;
          WORD2(v26[0]) = 2113;
          *(v26 + 6) = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,sendMessageToWatch, recoverable:%{private}hhd, identifier:%{private, location:escape_only}@}", buf, 0x22u);
        }

        goto LABEL_7;
      }

      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v12 = "{msg%{public}.0s:#sacm,sendMessageToWatch, No error, but also no identifier}";
        v13 = v19;
        v14 = OS_LOG_TYPE_FAULT;
        v15 = 18;
        goto LABEL_5;
      }
    }

    LOBYTE(saPairUniqueID) = 0;
LABEL_7:

    goto LABEL_10;
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,sendMessageToWatch, returned early, watch is not nearby}", buf, 0x12u);
    LOBYTE(saPairUniqueID) = 0;
  }

LABEL_10:

  return saPairUniqueID;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289795;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = identifierCopy;
    v17 = 1025;
    v18 = successCopy;
    v19 = 2113;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,processDidSendMsgWithSuccess, identifier:%{private, location:escape_only}@, success:%{private}hhd, error:%{private, location:escape_only}@}", v12, 0x2Cu);
  }
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyDevicesChanged}", v7, 0x12u);
  }

  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:changedCopy];
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  serviceCopy = service;
  deviceCopy = device;
  blockCopy = block;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2113;
    v19 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,didSwitchActivePairedDevice,activePairedDevice, activePairedDevice:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  blockCopy[2](blockCopy);
  saPairUniqueID = self->_saPairUniqueID;
  self->_saPairUniqueID = 0;

  v13 = [NSArray arrayWithObjects:deviceCopy, 0];
  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:v13];
}

@end