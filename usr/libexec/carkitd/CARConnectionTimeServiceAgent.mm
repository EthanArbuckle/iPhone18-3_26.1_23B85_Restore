@interface CARConnectionTimeServiceAgent
+ (id)_CARConnectionServiceInterface;
- (BOOL)allowSessionDurationRecordingEvents;
- (BOOL)allowUnlimitedConnectionEvents;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CARConnectionTimeServiceAgent)initWithUserDefaults:(id)defaults sessionStatus:(id)status;
- (id)_newInvalidEventDateErrorDueToExceedingTime;
- (id)sortedConnectionEvents;
- (void)_addConnectionData:(id)data toReconnectArray:(id)array;
- (void)clearHistoricalConnectionDataWithReply:(id)reply;
- (void)eraseConnectionData;
- (void)fetchConnectionSessions:(id)sessions;
- (void)fetchPreviousSessionConnectionDataWithReply:(id)reply;
- (void)recordConnectionEvent:(id)event completion:(id)completion;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setSessionUUIDString:(id)string;
- (void)trimConnectionDataBefore:(id)before;
- (void)trimHistoricalConnectionDataBefore:(id)before completion:(id)completion;
@end

@implementation CARConnectionTimeServiceAgent

- (CARConnectionTimeServiceAgent)initWithUserDefaults:(id)defaults sessionStatus:(id)status
{
  defaultsCopy = defaults;
  statusCopy = status;
  v17.receiver = self;
  v17.super_class = CARConnectionTimeServiceAgent;
  v9 = [(CARConnectionTimeServiceAgent *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, defaults);
    objc_storeStrong(&v10->_sessionStatus, status);
    [(CARSessionStatus *)v10->_sessionStatus addSessionObserver:v10];
    v11 = [(NSUserDefaults *)v10->_userDefaults stringForKey:@"CARConnectionTimeSessionUUIDKey"];
    sessionUUIDString = v10->_sessionUUIDString;
    v10->_sessionUUIDString = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.carkit.connectionTimeQueue", v13);
    connectionTimeQueue = v10->_connectionTimeQueue;
    v10->_connectionTimeQueue = v14;

    v10->_wasPairing = 0;
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.carconnectiontime"];
  bOOLValue = [v6 BOOLValue];

  v8 = CarConnectionTimeLogging();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      serviceName = [connectionCopy serviceName];
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      v14 = 138412802;
      *v15 = connectionCopy;
      *&v15[8] = 2112;
      *&v15[10] = serviceName;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Receiving connection %@ to service %@ from %@", &v14, 0x20u);
    }

    _CARConnectionServiceInterface = [objc_opt_class() _CARConnectionServiceInterface];
    [connectionCopy setExportedInterface:_CARConnectionServiceInterface];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    if (v9)
    {
      v14 = 67109378;
      *v15 = [connectionCopy processIdentifier];
      *&v15[4] = 2112;
      *&v15[6] = @"com.apple.private.carkit.carconnectiontime";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Process %i does not have entitlement %@", &v14, 0x12u);
    }
  }

  return bOOLValue;
}

+ (id)_CARConnectionServiceInterface
{
  if (qword_100107FA8 != -1)
  {
    sub_1000885E8();
  }

  v3 = qword_100107FA0;

  return v3;
}

- (void)clearHistoricalConnectionDataWithReply:(id)reply
{
  replyCopy = reply;
  connectionTimeQueue = self->_connectionTimeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059188;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(connectionTimeQueue, v7);
}

- (void)trimHistoricalConnectionDataBefore:(id)before completion:(id)completion
{
  beforeCopy = before;
  completionCopy = completion;
  connectionTimeQueue = self->_connectionTimeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059298;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v12 = beforeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = beforeCopy;
  dispatch_async(connectionTimeQueue, block);
}

- (void)fetchConnectionSessions:(id)sessions
{
  sessionsCopy = sessions;
  connectionTimeQueue = self->_connectionTimeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059390;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = sessionsCopy;
  v6 = sessionsCopy;
  dispatch_async(connectionTimeQueue, v7);
}

- (void)fetchPreviousSessionConnectionDataWithReply:(id)reply
{
  replyCopy = reply;
  connectionTimeQueue = self->_connectionTimeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059D00;
  v7[3] = &unk_1000DF660;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(connectionTimeQueue, v7);
}

- (BOOL)allowUnlimitedConnectionEvents
{
  v2 = +[CARPrototypePref allowUnlimitedConnectionEvents];
  internalSettingsState = [v2 internalSettingsState];

  return internalSettingsState;
}

- (BOOL)allowSessionDurationRecordingEvents
{
  v2 = CRIsInternalInstall();
  if (v2)
  {
    v3 = +[CARPrototypePref allowSessionDurationRecordingEvents];
    internalSettingsState = [v3 internalSettingsState];

    LOBYTE(v2) = internalSettingsState;
  }

  return v2;
}

- (id)sortedConnectionEvents
{
  userDefaults = [(CARConnectionTimeServiceAgent *)self userDefaults];
  v3 = [userDefaults arrayForKey:@"CARConnectionTimeEventStoreKey"];

  if (v3)
  {
    v4 = [v3 sortedArrayUsingComparator:&stru_1000DF6A0];
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (void)recordConnectionEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  connectionTimeQueue = self->_connectionTimeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A0C8;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(connectionTimeQueue, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  if ([(CARConnectionTimeServiceAgent *)self allowSessionDurationRecordingEvents]&& CRIsInternalInstall())
  {
    v4 = +[NSDate date];
    v5 = [CARConnectionEvent eventWithName:@"CARSessionDidDisconnectEvent" type:4 date:v4 payload:0];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005ADF8;
    v8[3] = &unk_1000DE4B0;
    v8[4] = self;
    [(CARConnectionTimeServiceAgent *)self recordConnectionEvent:v5 completion:v8];
  }

  else
  {
    v6 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Session disconnected, clearing current session identifier if any.", v7, 2u);
    }

    [(CARConnectionTimeServiceAgent *)self setSessionUUIDString:0];
  }

  self->_wasPairing = 0;
}

- (void)setSessionUUIDString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting session identifier", v7, 2u);
    }

    [(NSUserDefaults *)self->_userDefaults setObject:stringCopy forKey:@"CARConnectionTimeSessionUUIDKey"];
  }

  else
  {
    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"CARConnectionTimeSessionUUIDKey"];
  }

  sessionUUIDString = self->_sessionUUIDString;
  self->_sessionUUIDString = stringCopy;
}

- (void)eraseConnectionData
{
  v3 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Erasing Connection Time measurement data", v4, 2u);
  }

  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"CARConnectionTimeSessionUUIDKey"];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"CARConnectionTimeEventStoreKey"];
}

- (void)trimConnectionDataBefore:(id)before
{
  beforeCopy = before;
  v5 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = beforeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pruning Connection Time events before %@", buf, 0xCu);
  }

  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"CARConnectionTimeEventStoreKey"];
  v7 = [v6 copy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005B190;
  v13[3] = &unk_1000DF6C8;
  v14 = beforeCopy;
  v8 = beforeCopy;
  v9 = [NSPredicate predicateWithBlock:v13];
  v10 = [v7 filteredArrayUsingPredicate:v9];

  userDefaults = [(CARConnectionTimeServiceAgent *)self userDefaults];
  [userDefaults setObject:v10 forKey:@"CARConnectionTimeEventStoreKey"];

  v12 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Wrote CARConnectionEvent array to disk after pruning", buf, 2u);
  }
}

- (void)_addConnectionData:(id)data toReconnectArray:(id)array
{
  dataCopy = data;
  arrayCopy = array;
  v8 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    eventName = [dataCopy eventName];
    eventDate = [dataCopy eventDate];
    sessionUUIDString = self->_sessionUUIDString;
    *buf = 138412802;
    v26 = eventName;
    v27 = 2112;
    v28 = eventDate;
    v29 = 2112;
    v30 = sessionUUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Recording CarConnectionEvent: %@ with date %@ and identifier %@", buf, 0x20u);
  }

  dictionaryRepresentation = [dataCopy dictionaryRepresentation];
  v13 = [dictionaryRepresentation mutableCopy];

  sessionUUIDString = [(CARConnectionTimeServiceAgent *)self sessionUUIDString];
  [v13 setObject:sessionUUIDString forKeyedSubscript:CAREventIdentifier];

  [arrayCopy insertObject:v13 atIndex:0];
  [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005B53C;
  v24 = v23[3] = &unk_1000DF6C8;
  v15 = v24;
  v16 = [NSPredicate predicateWithBlock:v23];
  v17 = [arrayCopy filteredArrayUsingPredicate:v16];

  if (-[CARConnectionTimeServiceAgent allowUnlimitedConnectionEvents](self, "allowUnlimitedConnectionEvents") || [v17 count] < 0x1A)
  {
    userDefaults = [(CARConnectionTimeServiceAgent *)self userDefaults];
    [userDefaults setObject:v17 forKey:@"CARConnectionTimeEventStoreKey"];
  }

  else
  {
    userDefaults = [v17 mutableCopy];
    [userDefaults removeObjectsInRange:{25, objc_msgSend(userDefaults, "count") - 25}];
    userDefaults2 = [(CARConnectionTimeServiceAgent *)self userDefaults];
    [userDefaults2 setObject:userDefaults forKey:@"CARConnectionTimeEventStoreKey"];

    v20 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v17 count];
      *buf = 134217984;
      v26 = v21 - 25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Trimmed connection events: %lu", buf, 0xCu);
    }
  }

  v22 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Wrote CARConnectionEvent array to disk", buf, 2u);
  }
}

- (id)_newInvalidEventDateErrorDueToExceedingTime
{
  v2 = off_100107858;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Invalid connection event. Event date exceeds the allowed time in the future.";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:1 userInfo:v3];

  return v4;
}

@end