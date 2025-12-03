@interface CDDCommControl
- (CDD)cdd;
- (CDDCommControl)initWithCommInstance:(id)instance;
- (CDDCommunicator)comm;
- (id)deviceDescriptionFromDevice:(id)device;
- (id)deviceFromDeviceDescription:(id)description;
- (id)identifierFromDeviceDescription:(id)description;
- (id)requestDataFromDevice:(id)device message:(id)message;
- (void)addDevice:(id)device;
- (void)checkDevices:(id)devices;
- (void)checkForecastSync;
- (void)dealloc;
- (void)loadSavedDateIfExist;
- (void)receiveData:(id)data context:(id)context device:(id)device;
- (void)removeDevice:(id)device;
- (void)saveLastDate;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setupIDSLink;
- (void)setupPairedSyncClient;
- (void)syncCoordinatorDidReceiveStartSyncCommand:(id)command;
- (void)triggeredExchange:(id)exchange opportunistic:(BOOL)opportunistic queue:(id)queue timeout:(id)timeout urgent:(BOOL)urgent;
- (void)updateOutgoingVersionNumberAndSyncState:(unint64_t)state forIncomingSupportedVersions:(id)versions;
@end

@implementation CDDCommControl

- (CDDCommControl)initWithCommInstance:(id)instance
{
  instanceCopy = instance;
  v29.receiver = self;
  v29.super_class = CDDCommControl;
  v5 = [(CDDCommControl *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->comm, instanceCopy);
    v8 = [instanceCopy cdd];
    objc_storeWeak(&v6->cdd, v8);

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.coreduetdCommQueue", v9);
    commQueue = v6->commQueue;
    v6->commQueue = v10;

    v12 = +[NSMutableDictionary dictionary];
    identifierCache = v6->identifierCache;
    v6->identifierCache = v12;

    v14 = +[NSMutableSet set];
    registeredDevices = v6->registeredDevices;
    v6->registeredDevices = v14;

    v16 = +[NSMutableDictionary dictionary];
    sentRequestedTimestamps = v6->sentRequestedTimestamps;
    v6->sentRequestedTimestamps = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    exchangeRecords = v6->exchangeRecords;
    v6->exchangeRecords = v18;

    lastForecastSent = v6->lastForecastSent;
    v6->lastForecastSent = 0;

    if (notify_register_check("com.apple.coreduetd.systemConditionNotification", &v6->_conditionsChangedToken))
    {
      v21 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10002275C(v21);
      }
    }

    [(CDDCommControl *)v6 loadSavedDateIfExist];
    out_token = 0;
    v22 = v6->commQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000D1CC;
    v26[3] = &unk_10003CC60;
    v23 = v6;
    v27 = v23;
    notify_register_dispatch("com.apple.coreduetd.communication.triggerSync", &out_token, v22, v26);
    v24 = v23;
  }

  return v6;
}

- (void)dealloc
{
  nearbyDevicesNotifyToken = self->nearbyDevicesNotifyToken;
  if (nearbyDevicesNotifyToken)
  {
    notify_cancel(nearbyDevicesNotifyToken);
  }

  conditionsChangedToken = self->_conditionsChangedToken;
  if (conditionsChangedToken)
  {
    notify_cancel(conditionsChangedToken);
  }

  v5.receiver = self;
  v5.super_class = CDDCommControl;
  [(CDDCommControl *)&v5 dealloc];
}

- (void)loadSavedDateIfExist
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreDuet"];
  [v3 synchronize];
  v4 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000227A0(v4);
  }

  v5 = [v3 objectForKey:@"deviceExchangeTime"];
  v6 = [v3 objectForKey:@"deviceExchangeRecord"];
  v7 = v6;
  if (v6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000D6B8;
    v17[3] = &unk_10003CC88;
    v17[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v17];
  }

  if (!v5)
  {
    v13 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "no known last exchange time";
      v15 = v13;
      v16 = 2;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  objc_storeStrong(&self->lastForecastSent, v5);
  v8 = [(CDDCommControl *)self cdd];
  config = [v8 config];
  verbose = [config verbose];

  if (verbose)
  {
    [(NSDate *)self->lastForecastSent timeIntervalSinceNow];
    v12 = v11;
    v13 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = v12 / -86400.0;
      v14 = "last device exchange time was %0.2f days ago";
      v15 = v13;
      v16 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)saveLastDate
{
  if (self->lastForecastSent)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreDuet"];
    [v3 setObject:self->lastForecastSent forKey:@"deviceExchangeTime"];
    [v3 setObject:self->exchangeRecords forKey:@"deviceExchangeRecord"];
    [v3 synchronize];
    v4 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Last date did synchronize.", v5, 2u);
    }
  }
}

- (void)setupIDSLink
{
  WeakRetained = objc_loadWeakRetained(&self->cdd);
  config = [WeakRetained config];
  commEnabled = [config commEnabled];

  v6 = +[_CDLogging communicatorChannel];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (commEnabled)
  {
    if (v7)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CDDCommunicator: enabled.", &buf, 2u);
    }

    v8 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.coreduet"];
    service = self->_service;
    self->_service = v8;

    if (self->_service)
    {
      v10 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = self->_service;
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CDDCommunicator: setup with service %p.", &buf, 0xCu);
      }

      v12 = objc_loadWeakRetained(&self->comm);
      [v12 setInitialized:1];

      commQueue = self->commQueue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000DB30;
      v18[3] = &unk_10003CA78;
      v18[4] = self;
      v14 = v18;
      v15 = commQueue;
      v16 = os_transaction_create();
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v20 = sub_100011388;
      v21 = &unk_10003CAA0;
      v22 = v16;
      v23 = v14;
      v17 = v16;
      dispatch_async(v15, &buf);

      [(IDSService *)self->_service addDelegate:self queue:self->commQueue];
      notify_register_check("com.apple.coreduetd.nearbydeviceschanged", &self->nearbyDevicesNotifyToken);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CDDCommunicator: not enabled.", &buf, 2u);
    }
  }
}

- (void)setupPairedSyncClient
{
  WeakRetained = objc_loadWeakRetained(&self->cdd);
  config = [WeakRetained config];
  commEnabled = [config commEnabled];

  if (commEnabled)
  {
    v6 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting up pairedSync client", v10, 2u);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = qword_1000445A8;
    v14 = qword_1000445A8;
    if (!qword_1000445A8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100011398;
      v10[3] = &unk_10003CC00;
      v10[4] = &v11;
      sub_100011398(v10);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v9 = [v7 syncCoordinatorWithServiceName:@"com.apple.pairedsync.coreduet"];
    [v9 setDelegate:self queue:self->commQueue];
  }
}

- (void)syncCoordinatorDidReceiveStartSyncCommand:(id)command
{
  commandCopy = command;
  v5 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received pairedSync sync start notification", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->comm);
  [WeakRetained syncStateWithActiveRemote];

  v7 = objc_loadWeakRetained(&self->comm);
  [v7 requestRemoteDeviceSync];

  [commandCopy syncDidComplete];
}

- (void)checkForecastSync
{
  commQueue = self->commQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DEBC;
  v7[3] = &unk_10003CA78;
  v7[4] = self;
  v3 = v7;
  v4 = commQueue;
  v5 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011388;
  block[3] = &unk_10003CAA0;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (void)updateOutgoingVersionNumberAndSyncState:(unint64_t)state forIncomingSupportedVersions:(id)versions
{
  versionsCopy = versions;
  WeakRetained = objc_loadWeakRetained(&self->comm);
  localMaxSupportedVersionNumber = [WeakRetained localMaxSupportedVersionNumber];

  v8 = objc_loadWeakRetained(&self->comm);
  remoteVersionNumber = [v8 remoteVersionNumber];

  v10 = objc_loadWeakRetained(&self->comm);
  v11 = [v10 getOutgoingVersionForIncomingVersions:versionsCopy];

  v12 = +[_CDLogging communicatorChannel];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (remoteVersionNumber == v11)
  {
    if (v13)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: VersionMismatch: Current outgoing versionis supported by remote device, not resetting the version number", &v15, 2u);
    }
  }

  else
  {
    if (v13)
    {
      v15 = 134218496;
      v16 = localMaxSupportedVersionNumber;
      v17 = 2048;
      v18 = remoteVersionNumber;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: VersionMismatch: localMaxSupportedVersionNumber = %llu,currentoutgoingVersionNumber = %llu updating outgoingVersionNumber to %llu", &v15, 0x20u);
    }

    v14 = objc_loadWeakRetained(&self->comm);
    [v14 setRemoteVersionNumber:v11];

    v12 = objc_loadWeakRetained(&self->comm);
    [v12 triggerSystemDataExchange:1 wakeRemote:0];
  }
}

- (void)receiveData:(id)data context:(id)context device:(id)device
{
  dataCopy = data;
  contextCopy = context;
  deviceCopy = device;
  v100 = contextCopy;
  v101 = deviceCopy;
  v102 = dataCopy;
  if (!deviceCopy)
  {
    v18 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "CDDCommunicator: receivedData: missing device.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    }

LABEL_10:

    v14 = 0;
    getAckMessage = 0;
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  v11 = deviceCopy;
  v12 = [(CDDCommControl *)self deviceDescriptionFromDevice:deviceCopy];
  if (!v12)
  {
    v18 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "CDDCommunicator: receivedData: missing device data.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v13 = v12;
  [(CDDCommControl *)self checkForecastSync];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_10000F194;
    v105[3] = &unk_10003CCB0;
    v105[4] = self;
    v106 = contextCopy;
    v107 = v11;
    [dataCopy enumerateObjectsUsingBlock:v105];

    v14 = 0;
    getAckMessage = 0;
    v16 = 0;
    v17 = v13;
LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = v13;
    v37 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: receivedData: invalid message type.", buf, 2u);
    }

    v14 = 0;
    getAckMessage = 0;
    v16 = 0;
    goto LABEL_22;
  }

  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v22 = [dataCopy objectForKey:&off_10003F098];
  v26 = [dataCopy objectForKey:&off_10003F0B0];
  unsignedIntValue = [v22 unsignedIntValue];
  WeakRetained = objc_loadWeakRetained(&self->comm);
  remoteVersionNumber = [WeakRetained remoteVersionNumber];

  if (remoteVersionNumber != unsignedIntValue)
  {
    v30 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v115 = remoteVersionNumber;
      v116 = 2048;
      v117 = unsignedIntValue;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: receivedData: VersionMismatch. OutgoingVersionNumber = %llu IncomingVersionNumber = %llu", buf, 0x16u);
    }

    [(CDDCommControl *)self updateOutgoingVersionNumberAndSyncState:unsignedIntValue forIncomingSupportedVersions:v26];
  }

  v31 = objc_loadWeakRetained(&self->comm);
  localMaxSupportedVersionNumber = [v31 localMaxSupportedVersionNumber];

  v97 = v26;
  if (localMaxSupportedVersionNumber <= unsignedIntValue)
  {
    if (localMaxSupportedVersionNumber < unsignedIntValue)
    {
      v38 = objc_loadWeakRetained(&self->comm);
      getAckMessage = [v38 getAckMessage];

      v112[0] = IDSSendMessageOptionPeerResponseIdentifierKey;
      v112[1] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
      v113[0] = outgoingResponseIdentifier;
      v113[1] = &__kCFBooleanFalse;
      v112[2] = IDSSendMessageOptionBypassDuetKey;
      v113[2] = &__kCFBooleanTrue;
      v14 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];
      v16 = 0;
      v39 = 0;
      v21 = 0;
LABEL_26:
      v102 = dataCopy;
      if (getAckMessage)
      {
        v40 = IDSCopyIDForDevice();
        if (!v40)
        {
          v17 = v13;
          v20 = v39;
          v77 = +[_CDLogging communicatorChannel];
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "CDDCommunicator: receiveRequestData: failed to get idsIdentifier, cannot proceed.", buf, 2u);
          }

          v24 = incomingResponseIdentifier;
          v23 = outgoingResponseIdentifier;
          goto LABEL_36;
        }

        service = self->_service;
        v90 = v40;
        v41 = [NSSet setWithObject:v40];
        v103 = 0;
        v104 = 0;
        logb = [(IDSService *)service sendData:getAckMessage toDestinations:v41 priority:300 options:v14 identifier:&v104 error:&v103];
        v88 = v104;
        v95 = v103;

        if ((logb & 1) == 0)
        {
          v42 = +[_CDLogging communicatorChannel];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            [v95 description];
            v43 = logc = v42;
            uTF8String = [v43 UTF8String];
            *buf = 136315138;
            v115 = uTF8String;
            _os_log_impl(&_mh_execute_header, logc, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: receiveData: send error %s.", buf, 0xCu);

            v42 = logc;
          }
        }
      }

      v24 = incomingResponseIdentifier;
      goto LABEL_34;
    }
  }

  else
  {
    v33 = objc_loadWeakRetained(&self->comm);
    v34 = [v33 isConversionRequiredForMessage:dataCopy fromVersion:unsignedIntValue toVersion:localMaxSupportedVersionNumber];

    if (v34)
    {
      v35 = objc_loadWeakRetained(&self->comm);
      v36 = [v35 convertMessage:dataCopy fromVersion:unsignedIntValue toVersion:localMaxSupportedVersionNumber];

      dataCopy = v36;
    }
  }

  v21 = [dataCopy objectForKey:&off_10003F0C8];
  v39 = [dataCopy objectForKey:&off_10003F0E0];
  v16 = [dataCopy objectForKey:&off_10003F0F8];
  intValue = [v21 intValue];
  v102 = dataCopy;
  if (intValue <= 5)
  {
    if (intValue >= 2)
    {
      if (intValue == 3)
      {
        v71 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          uniqueIDOverride = [v11 uniqueIDOverride];
          uTF8String2 = [uniqueIDOverride UTF8String];
          *buf = 136315138;
          v115 = uTF8String2;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "CDDCommunicator: receivedData: received forecast data from %s.", buf, 0xCu);
        }

        v74 = [(NSMutableDictionary *)self->sentRequestedTimestamps objectForKey:?];

        v75 = objc_loadWeakRetained(&self->comm);
        v76 = v75;
        if (v74)
        {
          v24 = incomingResponseIdentifier;
          [v75 receiveRequestedForecast:v39 paramDict:v16 transactionId:objc_msgSend(incomingResponseIdentifier device:{"hash"), v13}];

          [(NSMutableDictionary *)self->sentRequestedTimestamps removeObjectForKey:incomingResponseIdentifier];
          v14 = 0;
          getAckMessage = 0;
LABEL_34:
          v23 = outgoingResponseIdentifier;
          v17 = v13;
LABEL_35:
          v20 = v39;
LABEL_36:
          v25 = v97;
          goto LABEL_23;
        }

        [v75 receiveForecast:v39 paramDict:v16 device:v13];

        v79 = objc_loadWeakRetained(&self->comm);
        getAckMessage = [v79 getAckMessage];

        v110[0] = IDSSendMessageOptionPeerResponseIdentifierKey;
        v110[1] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
        v111[0] = outgoingResponseIdentifier;
        v111[1] = &__kCFBooleanFalse;
        v110[2] = IDSSendMessageOptionBypassDuetKey;
        v111[2] = &__kCFBooleanTrue;
        v80 = v111;
        v81 = v110;
        goto LABEL_81;
      }

      if (intValue == 5)
      {
        intValue2 = [v39 intValue];
        v47 = +[_CDLogging communicatorChannel];
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
        if (intValue2 != 2)
        {
          v89 = v21;
          v91 = v16;
          v92 = v13;
          v96 = v22;
          log = v39;
          if (v48)
          {
            uniqueIDOverride2 = [v101 uniqueIDOverride];
            uTF8String3 = [uniqueIDOverride2 UTF8String];
            *buf = 136315138;
            v115 = uTF8String3;
            v55 = "CDDCommunicator: receivedData: Invalid data value request from %s.";
            v56 = v47;
            v57 = OS_LOG_TYPE_INFO;
            goto LABEL_74;
          }

LABEL_75:
          v24 = incomingResponseIdentifier;
          v23 = outgoingResponseIdentifier;

          v14 = 0;
          getAckMessage = 0;
LABEL_76:
          v22 = v96;
          v25 = v97;
          v20 = log;
          v21 = v89;
          v16 = v91;
          v17 = v92;
          goto LABEL_23;
        }

        if (v48)
        {
          uniqueIDOverride3 = [v11 uniqueIDOverride];
          uTF8String4 = [uniqueIDOverride3 UTF8String];
          *buf = 136315138;
          v115 = uTF8String4;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "CDDCommunicator: receivedData: received forecast data request from %s.", buf, 0xCu);
        }

        v51 = [(CDDCommControl *)self cdd];
        classCLocked = [v51 classCLocked];

        if (classCLocked)
        {
          v89 = v21;
          v91 = v16;
          v96 = v22;
          v47 = +[_CDLogging communicatorChannel];
          log = v39;
          v92 = v13;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIDOverride2 = [v101 uniqueIDOverride];
            uTF8String5 = [uniqueIDOverride2 UTF8String];
            *buf = 136315138;
            v115 = uTF8String5;
            v55 = "CDDCommunicator: forecast data unavailable before class C unlock form %s.";
            v56 = v47;
            v57 = OS_LOG_TYPE_DEFAULT;
LABEL_74:
            _os_log_impl(&_mh_execute_header, v56, v57, v55, buf, 0xCu);

            goto LABEL_75;
          }

          goto LABEL_75;
        }

        v82 = objc_loadWeakRetained(&self->comm);
        getAckMessage = [v82 satisfyForecastDataRequest:v16];

        v108[0] = IDSSendMessageOptionPeerResponseIdentifierKey;
        v108[1] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
        v109[0] = outgoingResponseIdentifier;
        v109[1] = &__kCFBooleanFalse;
        v108[2] = IDSSendMessageOptionBypassDuetKey;
        v109[2] = &__kCFBooleanTrue;
        v80 = v109;
        v81 = v108;
LABEL_81:
        v14 = [NSDictionary dictionaryWithObjects:v80 forKeys:v81 count:3];
        goto LABEL_26;
      }

LABEL_62:
      v91 = v16;
      v92 = v13;
      v89 = v21;
      v96 = v22;
      v68 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIDOverride4 = [v101 uniqueIDOverride];
        uTF8String6 = [uniqueIDOverride4 UTF8String];
        *buf = 136315138;
        v115 = uTF8String6;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: receivedData: Invalid request type from %s.", buf, 0xCu);
      }

      v14 = 0;
      getAckMessage = 0;
      v24 = incomingResponseIdentifier;
      v23 = outgoingResponseIdentifier;
      goto LABEL_76;
    }

    goto LABEL_53;
  }

  if (intValue == 6)
  {
    v24 = incomingResponseIdentifier;
    v66 = [(NSMutableDictionary *)self->sentRequestedTimestamps objectForKey:incomingResponseIdentifier];

    v17 = v13;
    if (v66)
    {
      v20 = v39;
      [(NSMutableDictionary *)self->sentRequestedTimestamps removeObjectForKey:incomingResponseIdentifier];
      v67 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "CDDCommunicator: receivedData: received ack from request.", buf, 2u);
      }

      v14 = 0;
      getAckMessage = 0;
      v23 = outgoingResponseIdentifier;
      goto LABEL_36;
    }

    v23 = outgoingResponseIdentifier;
    if (!v39)
    {
      v20 = 0;
      v83 = +[_CDLogging communicatorChannel];
      v24 = incomingResponseIdentifier;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "CDDCommunicator: receivedData: received ack without timestamp.", buf, 2u);
      }

      v14 = 0;
      getAckMessage = 0;
      goto LABEL_36;
    }

    v14 = 0;
    getAckMessage = 0;
    v24 = incomingResponseIdentifier;
    goto LABEL_35;
  }

  if (intValue == 7)
  {
LABEL_53:
    v60 = objc_loadWeakRetained(&self->comm);
    [v60 receiveSystemData:v39 device:v13];

    v61 = objc_loadWeakRetained(&self->cdd);
    watchUpdate = [v61 watchUpdate];
    v93 = v13;
    [watchUpdate receiveWatchfaceInfo:v39 device:v13];

    v63 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDOverride5 = [v11 uniqueIDOverride];
      uTF8String7 = [uniqueIDOverride5 UTF8String];
      *buf = 136315138;
      v115 = uTF8String7;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "CDDCommunicator: receivedData: received system data from %s.", buf, 0xCu);
    }

    v20 = v39;

    v24 = incomingResponseIdentifier;
    v14 = [(NSMutableDictionary *)self->sentRequestedTimestamps objectForKey:incomingResponseIdentifier];

    if (v14)
    {
      [(NSMutableDictionary *)self->sentRequestedTimestamps removeObjectForKey:incomingResponseIdentifier];
      v14 = 0;
    }

    getAckMessage = 0;
    v23 = outgoingResponseIdentifier;
    v25 = v97;
    v17 = v93;
    goto LABEL_23;
  }

  if (intValue != 8)
  {
    goto LABEL_62;
  }

  v17 = v13;
  loga = v39;
  v58 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "CDDCommunicator: receivedData: received remote device sync request.", buf, 2u);
  }

  v59 = objc_loadWeakRetained(&self->comm);
  [v59 syncStateWithActiveRemote];

  [(CDDCommControl *)self setLastForecastSent:0];
  [(CDDCommControl *)self checkForecastSync];
  v14 = 0;
  getAckMessage = 0;
  v24 = incomingResponseIdentifier;
  v23 = outgoingResponseIdentifier;
  v25 = v97;
  v20 = loga;
LABEL_23:
}

- (void)triggeredExchange:(id)exchange opportunistic:(BOOL)opportunistic queue:(id)queue timeout:(id)timeout urgent:(BOOL)urgent
{
  exchangeCopy = exchange;
  queueCopy = queue;
  timeoutCopy = timeout;
  commQueue = self->commQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000F6A4;
  v23[3] = &unk_10003CCD8;
  v23[4] = self;
  v24 = exchangeCopy;
  opportunisticCopy = opportunistic;
  urgentCopy = urgent;
  v25 = timeoutCopy;
  v26 = queueCopy;
  v16 = v23;
  v17 = commQueue;
  v18 = queueCopy;
  v19 = timeoutCopy;
  v20 = exchangeCopy;
  v21 = os_transaction_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011388;
  block[3] = &unk_10003CAA0;
  v30 = v21;
  v31 = v16;
  v22 = v21;
  dispatch_async(v17, block);
}

- (id)requestDataFromDevice:(id)device message:(id)message
{
  deviceCopy = device;
  messageCopy = message;
  v8 = [deviceCopy objectForKey:&off_10003F098];
  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = [(NSMutableDictionary *)selfCopy->identifierCache objectForKey:v8];
    objc_sync_exit(selfCopy);

    if (v10)
    {
      service = selfCopy->_service;
      v12 = [NSSet setWithObject:v10];
      v29 = IDSSendMessageOptionExpectsPeerResponseKey;
      v30 = &__kCFBooleanTrue;
      v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v27 = 0;
      v28 = 0;
      v14 = [(IDSService *)service sendData:messageCopy toDestinations:v12 priority:300 options:v13 identifier:&v28 error:&v27];
      v15 = v28;
      v16 = v27;

      if (v15)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        sentRequestedTimestamps = selfCopy->sentRequestedTimestamps;
        v19 = +[NSDate date];
        [(NSMutableDictionary *)sentRequestedTimestamps setObject:v19 forKey:v15];

        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 hash]);
      }

      else
      {
        v22 = +[_CDLogging communicatorChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v16 description];
          v24 = v23;
          uTF8String = [v23 UTF8String];
          *buf = 136315138;
          uTF8String2 = uTF8String;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "CDDCommunicator: requestDataFromDevice: send error %s.", buf, 0xCu);
        }

        v20 = 0;
      }
    }

    else
    {
      v16 = +[_CDLogging communicatorChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CDDCommunicator: requestDataFromDevice: missing idsIdentifier, cannot proceed.", buf, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v10 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v21 = [deviceCopy description];
      *buf = 136315138;
      uTF8String2 = [v21 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CDDCommunicator: requestDataFromDevice: bad description %s.", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (id)deviceDescriptionFromDevice:(id)device
{
  deviceCopy = device;
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  modelIdentifier = [deviceCopy modelIdentifier];
  v6 = modelIdentifier;
  if (modelIdentifier)
  {
    v7 = modelIdentifier;
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  v8 = v7;

  name = [deviceCopy name];
  v10 = name;
  if (name)
  {
    v11 = name;
  }

  else
  {
    v11 = @"UNKNOWN";
  }

  v12 = v11;

  productName = [deviceCopy productName];

  if (productName)
  {
    v14 = productName;
  }

  else
  {
    v14 = @"UNKNOWN";
  }

  v15 = v14;

  if (uniqueIDOverride)
  {
    v20[0] = &off_10003F098;
    v20[1] = &off_10003F0E0;
    v21[0] = uniqueIDOverride;
    v21[1] = v8;
    v20[2] = &off_10003F0C8;
    v20[3] = &off_10003F0F8;
    v21[2] = v12;
    v21[3] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  }

  else
  {
    v17 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "CDDCommunicator: deviceDescriptionFromDevice: missing unique identifier.", v19, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)deviceFromDeviceDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKey:&off_10003F098];
  v6 = [descriptionCopy objectForKey:&off_10003F0E0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  devices = [(IDSService *)self->_service devices];
  v8 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v16 = descriptionCopy;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        uniqueIDOverride = [v11 uniqueIDOverride];
        if ([uniqueIDOverride isEqualToString:v5])
        {
          modelIdentifier = [v11 modelIdentifier];
          v14 = [modelIdentifier isEqualToString:v6];

          if (v14)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v8 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
LABEL_12:
    descriptionCopy = v16;
  }

  return v8;
}

- (id)identifierFromDeviceDescription:(id)description
{
  v3 = [description objectForKeyedSubscript:&off_10003F098];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_10003DC70;
  }

  return v5;
}

- (void)addDevice:(id)device
{
  deviceCopy = device;
  v5 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "addDevice: %@", &buf, 0xCu);
  }

  commQueue = self->commQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010368;
  v12[3] = &unk_10003CB38;
  v12[4] = self;
  v13 = deviceCopy;
  v7 = v12;
  v8 = commQueue;
  v9 = deviceCopy;
  v10 = os_transaction_create();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v15 = sub_100011388;
  v16 = &unk_10003CAA0;
  v17 = v10;
  v18 = v7;
  v11 = v10;
  dispatch_async(v8, &buf);
}

- (void)removeDevice:(id)device
{
  deviceCopy = device;
  v4 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [deviceCopy description];
    v6 = 136315138;
    uTF8String = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "removeDevice: %s.", &v6, 0xCu);
  }
}

- (void)checkDevices:(id)devices
{
  devicesCopy = devices;
  v29 = os_transaction_create();
  v30 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = devicesCopy;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v4)
  {
    state64 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v39;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = IDSCopyIDForDevice();

        v6 = v10;
        if (v10)
        {
          v11 = [(CDDCommControl *)self deviceDescriptionFromDevice:v9];

          if (v11)
          {
            if ([v9 isDefaultPairedDevice])
            {
              [v30 addObject:v11];
              selfCopy = self;
              objc_sync_enter(selfCopy);
              identifierCache = self->identifierCache;
              v14 = [v11 objectForKey:&off_10003F098];
              [(NSMutableDictionary *)identifierCache setObject:v6 forKey:v14];

              objc_sync_exit(selfCopy);
              v15 = +[_CDLogging communicatorChannel];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v44 = v11;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Default Paired Device Changed: %@", buf, 0xCu);
              }
            }

            if ([v9 isConnected])
            {
              state64 += [v9 isNearby];
            }

            v5 = v11;
          }

          else
          {
            v17 = +[_CDLogging communicatorChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "CDDCommunicator: checkDevices: missing device description, pass.", buf, 2u);
            }

            v5 = 0;
          }
        }

        else
        {
          v16 = +[_CDLogging communicatorChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CDDCommunicator: checkDevices: missing idsIdentifier, pass.", buf, 2u);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v4);
  }

  else
  {
    state64 = 0;
    v5 = 0;
    v6 = 0;
  }

  notify_set_state(self->nearbyDevicesNotifyToken, state64);
  notify_post("com.apple.coreduetd.nearbydeviceschanged");
  v18 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Device Set Changed! Signaling Conditions have changed", buf, 2u);
  }

  notify_post("com.apple.coreduetd.systemConditionNotification");
  WeakRetained = objc_loadWeakRetained(&self->comm);
  [WeakRetained checkDevices:v30];

  v20 = [NSSet setWithArray:v30];
  if ([(NSMutableSet *)self->registeredDevices isEqualToSet:v20])
  {
    v21 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CDDCommunicator: device set hasn't changed.", buf, 2u);
    }
  }

  else
  {
    v22 = [(NSMutableSet *)self->registeredDevices mutableCopy];
    [v22 minusSet:v20];
    v23 = [v20 mutableCopy];
    [v23 minusSet:self->registeredDevices];
    v24 = [v20 mutableCopy];
    registeredDevices = self->registeredDevices;
    self->registeredDevices = v24;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v22;
    v26 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v26)
    {
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v21);
          }

          [(CDDCommControl *)self removeDevice:*(*(&v34 + 1) + 8 * j)];
        }

        v26 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v26);
    }

    [(CDDCommControl *)self addDevice:v23];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  v10 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    uTF8String = [identifierCopy UTF8String];
    v12 = "NO";
    if (successCopy)
    {
      v12 = "YES";
    }

    v14 = 136315394;
    v15 = uTF8String;
    v16 = 2080;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CDDCommunicator: Message Sent to %s with success %s.", &v14, 0x16u);
  }

  if (!successCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->comm);
    [WeakRetained informCommunicationError];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  dCopy = d;
  contextCopy = context;
  dataCopy = data;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [NSSet setWithObjects:v11, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0];
  v32 = 0;
  v21 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v20 fromData:dataCopy error:&v32];

  v22 = v32;
  if (v22)
  {
    v23 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000227E4(v22, v23);
    }
  }

  v24 = [serviceCopy deviceForFromID:dCopy];
  if (v21)
  {
    v25 = contextCopy;
    [(CDDCommControl *)self receiveData:v21 context:contextCopy device:v24];
  }

  else
  {
    v26 = +[_CDLogging communicatorChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "CDDCommunicator: NIL object received from IDS.", buf, 2u);
    }

    v25 = contextCopy;
  }
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (self->_service == service)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [changedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 isNearby])
          {
            v10 += [v13 isDefaultPairedDevice];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    notify_set_state(self->nearbyDevicesNotifyToken, v10);
    notify_post("com.apple.coreduetd.nearbydeviceschanged");
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  blockCopy = block;
  [(CDDCommControl *)self setLastForecastSent:0];
  blockCopy[2]();
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = +[_CDLogging communicatorChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [changedCopy description];
    v7 = 136315138;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "checkAccounts: accounts changed to %s.", &v7, 0xCu);
  }
}

- (CDD)cdd
{
  WeakRetained = objc_loadWeakRetained(&self->cdd);

  return WeakRetained;
}

- (CDDCommunicator)comm
{
  WeakRetained = objc_loadWeakRetained(&self->comm);

  return WeakRetained;
}

@end