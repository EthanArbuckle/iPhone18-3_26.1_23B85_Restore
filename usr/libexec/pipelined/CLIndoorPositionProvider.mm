@interface CLIndoorPositionProvider
- (CLIndoorPositionProvider)initWithApiKey:(id)key;
- (CLIndoorPositionProvider)initWithApiKey:(id)key onServer:(id)server;
- (CLIndoorPositionProvider)initWithConnection:(id)connection;
- (id)withinQueuePermanentShutdownReason;
- (void)clVisionNotificationAvailable:(id)available;
- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)available;
- (void)gpsEstimateAvailable:(id)available;
- (void)gpsSignalQualityAvailable:(id)available;
- (void)outdoorLocationAvailable:(id)available;
- (void)playbackDatarun:(id)datarun;
- (void)setApiKey:(id)key;
- (void)setApiKey:(id)key onServer:(id)server;
- (void)setDelegate:(id)delegate;
- (void)startUpdatingLocationAtLocation:(id)location;
- (void)stopUpdatingLocation;
- (void)withinQueueReinitializeRemoteState;
- (void)withinQueueSetDelegate:(id)delegate;
@end

@implementation CLIndoorPositionProvider

- (CLIndoorPositionProvider)initWithApiKey:(id)key
{
  v7.receiver = self;
  v7.super_class = CLIndoorPositionProvider;
  v3 = [(CLIndoorXPCProvider *)&v7 init];
  if (qword_10045B060 != -1)
  {
    sub_1003828D4();
    v4 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      return v3;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deprecated API.  Please call regular -init instead", v6, 2u);
  }

  return v3;
}

- (CLIndoorPositionProvider)initWithApiKey:(id)key onServer:(id)server
{
  v8.receiver = self;
  v8.super_class = CLIndoorPositionProvider;
  v4 = [(CLIndoorXPCProvider *)&v8 init:key];
  if (qword_10045B060 != -1)
  {
    sub_1003828D4();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deprecated API.  Please call regular -init instead", v7, 2u);
  }

  return v4;
}

- (CLIndoorPositionProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CLIndoorPositionProvider;
  v5 = [(CLIndoorXPCProvider *)&v9 initWithConnection:connectionCopy];
  if (v5)
  {
    v6 = objc_alloc_init(ServiceState);
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

- (id)withinQueuePermanentShutdownReason
{
  delegateProxy = [(ServiceState *)self->_state delegateProxy];
  shutdownReason = [delegateProxy shutdownReason];

  return shutdownReason;
}

- (void)withinQueueReinitializeRemoteState
{
  state = [(CLIndoorPositionProvider *)self state];
  delegateProxy = [state delegateProxy];
  delegate = [delegateProxy delegate];
  [(CLIndoorPositionProvider *)self withinQueueSetDelegate:delegate];

  state2 = [(CLIndoorPositionProvider *)self state];
  LODWORD(delegateProxy) = [state2 updateLocation];

  if (delegateProxy)
  {
    state3 = [(CLIndoorPositionProvider *)self state];
    [state3 setUpdateLocation:0];

    state4 = [(CLIndoorPositionProvider *)self state];
    lastLocation = [state4 lastLocation];
    [(CLIndoorPositionProvider *)self startUpdatingLocationAtLocation:lastLocation];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  frameworkQueue = self->super._frameworkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021DA0;
  v7[3] = &unk_1004328A0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(frameworkQueue, v7);
}

- (void)withinQueueSetDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[IndoorProtocolProxy alloc] initWithDelegate:delegateCopy];
  state = [(CLIndoorPositionProvider *)self state];
  [state setDelegateProxy:v4];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLIndoorDelegateProtocolInternal];
  [(NSXPCConnection *)self->super._connection setExportedInterface:v6];

  state2 = [(CLIndoorPositionProvider *)self state];
  delegateProxy = [state2 delegateProxy];
  [(NSXPCConnection *)self->super._connection setExportedObject:delegateProxy];
}

- (void)setApiKey:(id)key
{
  keyCopy = key;
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v4 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "This API is deprecated. Please stop using", v5, 2u);
  }

LABEL_4:
}

- (void)setApiKey:(id)key onServer:(id)server
{
  keyCopy = key;
  serverCopy = server;
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v7 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "This API is deprecated. Please stop using", v8, 2u);
  }

LABEL_4:
}

- (void)playbackDatarun:(id)datarun
{
  datarunCopy = datarun;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022138;
  v9[3] = &unk_1004328C0;
  selfCopy = self;
  v7 = datarunCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_async(frameworkQueue, v9);
}

- (void)startUpdatingLocationAtLocation:(id)location
{
  locationCopy = location;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1000223B0;
  v9[3] = &unk_1004328F0;
  selfCopy = self;
  v7 = locationCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_async(frameworkQueue, v9);
}

- (void)stopUpdatingLocation
{
  frameworkQueue = self->super._frameworkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100022800;
  block[3] = &unk_100432920;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_async(frameworkQueue, block);
}

- (void)outdoorLocationAvailable:(id)available
{
  availableCopy = available;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022B1C;
  v9[3] = &unk_100432950;
  selfCopy = self;
  v7 = availableCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_async(frameworkQueue, v9);
}

- (void)gpsEstimateAvailable:(id)available
{
  availableCopy = available;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022F70;
  v9[3] = &unk_100432980;
  selfCopy = self;
  v7 = availableCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_sync(frameworkQueue, v9);
}

- (void)gpsSignalQualityAvailable:(id)available
{
  availableCopy = available;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1000231C4;
  v9[3] = &unk_1004329B0;
  selfCopy = self;
  v7 = availableCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clVisionNotificationAvailable:(id)available
{
  availableCopy = available;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100023418;
  v9[3] = &unk_1004329E0;
  selfCopy = self;
  v7 = availableCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)available
{
  availableCopy = available;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10002366C;
  v9[3] = &unk_100432A10;
  selfCopy = self;
  v7 = availableCopy;
  v10 = selfCopy;
  v11 = v7;
  v8 = selfCopy;
  dispatch_sync(frameworkQueue, v9);
}

@end