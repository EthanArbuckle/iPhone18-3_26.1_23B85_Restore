@interface CLIndoorPositionProvider
- (CLIndoorPositionProvider)initWithApiKey:(id)a3;
- (CLIndoorPositionProvider)initWithApiKey:(id)a3 onServer:(id)a4;
- (CLIndoorPositionProvider)initWithConnection:(id)a3;
- (id)withinQueuePermanentShutdownReason;
- (void)clVisionNotificationAvailable:(id)a3;
- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)a3;
- (void)gpsEstimateAvailable:(id)a3;
- (void)gpsSignalQualityAvailable:(id)a3;
- (void)outdoorLocationAvailable:(id)a3;
- (void)playbackDatarun:(id)a3;
- (void)setApiKey:(id)a3;
- (void)setApiKey:(id)a3 onServer:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startUpdatingLocationAtLocation:(id)a3;
- (void)stopUpdatingLocation;
- (void)withinQueueReinitializeRemoteState;
- (void)withinQueueSetDelegate:(id)a3;
@end

@implementation CLIndoorPositionProvider

- (CLIndoorPositionProvider)initWithApiKey:(id)a3
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

- (CLIndoorPositionProvider)initWithApiKey:(id)a3 onServer:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLIndoorPositionProvider;
  v4 = [(CLIndoorXPCProvider *)&v8 init:a3];
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

- (CLIndoorPositionProvider)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLIndoorPositionProvider;
  v5 = [(CLIndoorXPCProvider *)&v9 initWithConnection:v4];
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
  v2 = [(ServiceState *)self->_state delegateProxy];
  v3 = [v2 shutdownReason];

  return v3;
}

- (void)withinQueueReinitializeRemoteState
{
  v6 = [(CLIndoorPositionProvider *)self state];
  v3 = [v6 delegateProxy];
  v4 = [v3 delegate];
  [(CLIndoorPositionProvider *)self withinQueueSetDelegate:v4];

  v7 = [(CLIndoorPositionProvider *)self state];
  LODWORD(v3) = [v7 updateLocation];

  if (v3)
  {
    v8 = [(CLIndoorPositionProvider *)self state];
    [v8 setUpdateLocation:0];

    v9 = [(CLIndoorPositionProvider *)self state];
    v5 = [v9 lastLocation];
    [(CLIndoorPositionProvider *)self startUpdatingLocationAtLocation:v5];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021DA0;
  v7[3] = &unk_1004328A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(frameworkQueue, v7);
}

- (void)withinQueueSetDelegate:(id)a3
{
  v9 = a3;
  v4 = [[IndoorProtocolProxy alloc] initWithDelegate:v9];
  v5 = [(CLIndoorPositionProvider *)self state];
  [v5 setDelegateProxy:v4];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLIndoorDelegateProtocolInternal];
  [(NSXPCConnection *)self->super._connection setExportedInterface:v6];

  v7 = [(CLIndoorPositionProvider *)self state];
  v8 = [v7 delegateProxy];
  [(NSXPCConnection *)self->super._connection setExportedObject:v8];
}

- (void)setApiKey:(id)a3
{
  v3 = a3;
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

- (void)setApiKey:(id)a3 onServer:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)playbackDatarun:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022138;
  v9[3] = &unk_1004328C0;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)startUpdatingLocationAtLocation:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1000223B0;
  v9[3] = &unk_1004328F0;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)stopUpdatingLocation
{
  frameworkQueue = self->super._frameworkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100022800;
  block[3] = &unk_100432920;
  v5 = self;
  v3 = v5;
  dispatch_async(frameworkQueue, block);
}

- (void)outdoorLocationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022B1C;
  v9[3] = &unk_100432950;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)gpsEstimateAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100022F70;
  v9[3] = &unk_100432980;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)gpsSignalQualityAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1000231C4;
  v9[3] = &unk_1004329B0;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clVisionNotificationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100023418;
  v9[3] = &unk_1004329E0;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10002366C;
  v9[3] = &unk_100432A10;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

@end