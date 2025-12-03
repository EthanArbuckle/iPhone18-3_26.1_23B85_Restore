@interface NIServerClient
+ (id)delegateProxyWithConnection:(id)connection;
- (NIServerClient)initWithConnection:(id)connection;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)object;
- (void)didGenerateShareableConfigurationData:(id)data forObject:(id)object;
- (void)didPrefetchAcwgUrsk:(unsigned int)ursk error:(id)error;
- (void)didProcessAcwgM1MsgWithResponse:(id)response error:(id)error;
- (void)didProcessAcwgM3MsgWithResponse:(id)response error:(id)error;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)response error:(id)error;
- (void)didReceiveAopSFZoneUpdate:(id)update;
- (void)didReceiveRangingAuthRecommendation:(BOOL)recommendation forObject:(id)object;
- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason;
- (void)didStartAcwgRanging:(int64_t)ranging;
- (void)didSuspendAcwgRanging:(int64_t)ranging;
- (void)didUpdateAlgorithmState:(id)state forObject:(id)object;
- (void)didUpdateDLTDOAMeasurements:(id)measurements;
- (void)didUpdateHealthStatus:(int64_t)status;
- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)availability;
- (void)didUpdateLocalDiscoveryToken:(id)token;
- (void)didUpdateMotionState:(int64_t)state;
- (void)didUpdateNICoordinates:(id)coordinates;
- (void)didUpdateNearbyObjects:(id)objects;
- (void)didUpdateState:(int64_t)state forItem:(id)item;
- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)relayDCKMessage:(id)message;
- (void)requestAcwgRangingSessionSuspend:(unsigned int)suspend withSuspendTriggerReason:(int64_t)reason;
- (void)setConnection:(id)connection;
- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationTypeWithName:(id)name;
- (void)systemDidUpdateState:(id)state;
- (void)uwbSessionDidFailWithError:(id)error;
- (void)uwbSessionDidInvalidateWithError:(id)error;
- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp;
@end

@implementation NIServerClient

+ (id)delegateProxyWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[NIServerClient alloc] initWithConnection:connectionCopy];

  return v4;
}

- (NIServerClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIServerClient.mm" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v13.receiver = self;
  v13.super_class = NIServerClient;
  v7 = [(NIServerClient *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_connection, connection);
    v9 = [[PRNSXPCConnection alloc] initWithConnection:v8->_connection];
    connWrapper = v8->_connWrapper;
    v8->_connWrapper = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(UWBSessionDelegateProxyProtocol *)self->_connWrapper invalidate];
  v3.receiver = self;
  v3.super_class = NIServerClient;
  [(NIServerClient *)&v3 dealloc];
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_connection, connection);
  v5 = [[PRNSXPCConnection alloc] initWithConnection:self->_connection];
  connWrapper = self->_connWrapper;
  self->_connWrapper = v5;
}

- (void)uwbSessionDidFailWithError:(id)error
{
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042808;
  v7[3] = &unk_10098B488;
  v8 = errorCopy;
  v6 = errorCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)uwbSessionDidInvalidateWithError:(id)error
{
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042930;
  v7[3] = &unk_10098B488;
  v8 = errorCopy;
  v6 = errorCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason
{
  objectsCopy = objects;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042A5C;
  v9[3] = &unk_10098B4B0;
  v10 = objectsCopy;
  reasonCopy = reason;
  v8 = objectsCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042B84;
  v7[3] = &unk_10098B488;
  v8 = objectsCopy;
  v6 = objectsCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042C70;
  v5[3] = &unk_10098B4D0;
  v5[4] = reason;
  *&v5[5] = timestamp;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042D60;
  v5[3] = &unk_10098B4D0;
  v5[4] = ended;
  *&v5[5] = timestamp;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)didDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042E8C;
  v7[3] = &unk_10098B488;
  v8 = objectCopy;
  v6 = objectCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  connWrapper = self->_connWrapper;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100043020;
  v15[3] = &unk_10098B4F8;
  v16 = objectCopy;
  v17 = regionCopy;
  v18 = previousRegionCopy;
  v12 = previousRegionCopy;
  v13 = regionCopy;
  v14 = objectCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v15];
}

- (void)didUpdateMotionState:(int64_t)state
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004310C;
  v4[3] = &unk_10098B518;
  v4[4] = state;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didUpdateHealthStatus:(int64_t)status
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000431F4;
  v4[3] = &unk_10098B518;
  v4[4] = status;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)relayDCKMessage:(id)message
{
  messageCopy = message;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004331C;
  v7[3] = &unk_10098B488;
  v8 = messageCopy;
  v6 = messageCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didGenerateShareableConfigurationData:(id)data forObject:(id)object
{
  dataCopy = data;
  objectCopy = object;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043478;
  v11[3] = &unk_10098B540;
  v12 = dataCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = dataCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didUpdateLocalDiscoveryToken:(id)token
{
  tokenCopy = token;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000435A0;
  v7[3] = &unk_10098B488;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didReceiveRangingAuthRecommendation:(BOOL)recommendation forObject:(id)object
{
  objectCopy = object;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000436D0;
  v9[3] = &unk_10098B568;
  recommendationCopy = recommendation;
  v10 = objectCopy;
  v8 = objectCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateAlgorithmState:(id)state forObject:(id)object
{
  stateCopy = state;
  objectCopy = object;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043830;
  v11[3] = &unk_10098B540;
  v12 = stateCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = stateCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)availability
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043918;
  v4[3] = &unk_10098B588;
  availabilityCopy = availability;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didProcessAcwgM1MsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043A74;
  v11[3] = &unk_10098B540;
  v12 = responseCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = responseCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didProcessAcwgM3MsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043BD0;
  v11[3] = &unk_10098B540;
  v12 = responseCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = responseCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043D2C;
  v11[3] = &unk_10098B540;
  v12 = responseCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = responseCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)requestAcwgRangingSessionSuspend:(unsigned int)suspend withSuspendTriggerReason:(int64_t)reason
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043E18;
  v5[3] = &unk_10098B5A8;
  suspendCopy = suspend;
  v5[4] = reason;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)didStartAcwgRanging:(int64_t)ranging
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043F04;
  v4[3] = &unk_10098B518;
  v4[4] = ranging;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didSuspendAcwgRanging:(int64_t)ranging
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043FEC;
  v4[3] = &unk_10098B518;
  v4[4] = ranging;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didPrefetchAcwgUrsk:(unsigned int)ursk error:(id)error
{
  errorCopy = error;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004411C;
  v9[3] = &unk_10098B5D0;
  urskCopy = ursk;
  v10 = errorCopy;
  v8 = errorCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didReceiveAopSFZoneUpdate:(id)update
{
  updateCopy = update;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044248;
  v7[3] = &unk_10098B488;
  v8 = updateCopy;
  v6 = updateCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)systemDidUpdateState:(id)state
{
  stateCopy = state;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044370;
  v7[3] = &unk_10098B488;
  v8 = stateCopy;
  v6 = stateCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationTypeWithName:(id)name
{
  nameCopy = name;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000444A0;
  v9[3] = &unk_10098B568;
  exceededCopy = exceeded;
  v10 = nameCopy;
  v8 = nameCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateState:(int64_t)state forItem:(id)item
{
  itemCopy = item;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000445D0;
  v9[3] = &unk_10098B4B0;
  v10 = itemCopy;
  stateCopy = state;
  v8 = itemCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateNICoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000446F8;
  v7[3] = &unk_10098B488;
  v8 = coordinatesCopy;
  v6 = coordinatesCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didUpdateDLTDOAMeasurements:(id)measurements
{
  measurementsCopy = measurements;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044820;
  v7[3] = &unk_10098B488;
  v8 = measurementsCopy;
  v6 = measurementsCopy;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

@end