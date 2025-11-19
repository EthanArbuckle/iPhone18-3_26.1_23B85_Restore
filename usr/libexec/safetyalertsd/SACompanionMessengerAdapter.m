@interface SACompanionMessengerAdapter
- (BOOL)sendMessageToWatch:(id)a3 identifier:(id *)a4;
- (SACompanionMessengerAdapter)initWithProxy:(void *)a3 andQueue:(id)a4;
- (void)beginService;
- (void)endService;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)updateNearbyStatusWithDevices:(id)a3;
@end

@implementation SACompanionMessengerAdapter

- (SACompanionMessengerAdapter)initWithProxy:(void *)a3 andQueue:(id)a4
{
  v7 = a4;
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
    objc_storeStrong(&v9->queue, a4);
    v10->cmProxy = a3;
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

  v4 = [(SACompanionMessengerAdapter *)self service];
  [v4 addDelegate:self queue:self->queue];

  v5 = [(SACompanionMessengerAdapter *)self service];
  v6 = [v5 devices];
  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:v6];
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

- (void)updateNearbyStatusWithDevices:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice] && objc_msgSend(v8, "isNearby"))
        {
          v5 = [v8 uniqueIDOverride];
          if (v8)
          {
            [v8 operatingSystemVersion];
          }

          v9 = SALogObjectGeneral;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 isActive];
            v11 = [v8 isConnected];
            v12 = [v8 destination];
            *buf = 68289795;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            v27 = 1025;
            v28 = v10;
            v29 = 1025;
            v30 = v11;
            v31 = 2113;
            v32 = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyStatusDetails, isActive:%{private}hhd, isConnected:%{private}hhd, destination:%{private, location:escape_only}@}", buf, 0x28u);
          }

          goto LABEL_16;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v13 = [(SACompanionMessengerAdapter *)self saPairUniqueID];
  v14 = [v5 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    [(SACompanionMessengerAdapter *)self setSaPairUniqueID:v5];
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SACompanionMessengerAdapter *)self saPairUniqueID];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1025;
      v28 = v16 != 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyStatusChanged, is nearby:%{private}d}", buf, 0x18u);
    }

    cmProxy = self->cmProxy;
    if (cmProxy)
    {
      v18 = [(SACompanionMessengerAdapter *)self saPairUniqueID];
      cmProxy[56] = v18 != 0;
    }
  }
}

- (BOOL)sendMessageToWatch:(id)a3 identifier:(id *)a4
{
  v6 = a3;
  v7 = [(SACompanionMessengerAdapter *)self saPairUniqueID];

  if (v7)
  {
    *a4 = 0;
    v8 = [(SACompanionMessengerAdapter *)self service];
    v9 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v20 = 0;
    LODWORD(v7) = [v8 sendMessage:v6 toDestinations:v9 priority:300 options:0 identifier:a4 error:&v20];
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
      v18 = *a4;
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
          LODWORD(v26[0]) = v7;
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

    LOBYTE(v7) = 0;
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
    LOBYTE(v7) = 0;
  }

LABEL_10:

  return v7;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a7;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289795;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = v9;
    v17 = 1025;
    v18 = v8;
    v19 = 2113;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,processDidSendMsgWithSuccess, identifier:%{private, location:escape_only}@, success:%{private}hhd, error:%{private, location:escape_only}@}", v12, 0x2Cu);
  }
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,nearbyDevicesChanged}", v7, 0x12u);
  }

  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:v5];
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2113;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,didSwitchActivePairedDevice,activePairedDevice, activePairedDevice:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v10[2](v10);
  saPairUniqueID = self->_saPairUniqueID;
  self->_saPairUniqueID = 0;

  v13 = [NSArray arrayWithObjects:v9, 0];
  [(SACompanionMessengerAdapter *)self updateNearbyStatusWithDevices:v13];
}

@end