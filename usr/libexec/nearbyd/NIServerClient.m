@interface NIServerClient
+ (id)delegateProxyWithConnection:(id)a3;
- (NIServerClient)initWithConnection:(id)a3;
- (void)dealloc;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4;
- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4;
- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4;
- (void)didReceiveAopSFZoneUpdate:(id)a3;
- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4;
- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4;
- (void)didStartAcwgRanging:(int64_t)a3;
- (void)didSuspendAcwgRanging:(int64_t)a3;
- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4;
- (void)didUpdateDLTDOAMeasurements:(id)a3;
- (void)didUpdateHealthStatus:(int64_t)a3;
- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3;
- (void)didUpdateLocalDiscoveryToken:(id)a3;
- (void)didUpdateMotionState:(int64_t)a3;
- (void)didUpdateNICoordinates:(id)a3;
- (void)didUpdateNearbyObjects:(id)a3;
- (void)didUpdateState:(int64_t)a3 forItem:(id)a4;
- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5;
- (void)relayDCKMessage:(id)a3;
- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
- (void)setConnection:(id)a3;
- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4;
- (void)systemDidUpdateState:(id)a3;
- (void)uwbSessionDidFailWithError:(id)a3;
- (void)uwbSessionDidInvalidateWithError:(id)a3;
- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4;
@end

@implementation NIServerClient

+ (id)delegateProxyWithConnection:(id)a3
{
  v3 = a3;
  v4 = [[NIServerClient alloc] initWithConnection:v3];

  return v4;
}

- (NIServerClient)initWithConnection:(id)a3
{
  v6 = a3;
  if (!v6)
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
    objc_storeStrong(&v7->_connection, a3);
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

- (void)setConnection:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_connection, a3);
  v5 = [[PRNSXPCConnection alloc] initWithConnection:self->_connection];
  connWrapper = self->_connWrapper;
  self->_connWrapper = v5;
}

- (void)uwbSessionDidFailWithError:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042808;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)uwbSessionDidInvalidateWithError:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042930;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042A5C;
  v9[3] = &unk_10098B4B0;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042B84;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042C70;
  v5[3] = &unk_10098B4D0;
  v5[4] = a3;
  *&v5[5] = a4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042D60;
  v5[3] = &unk_10098B4D0;
  v5[4] = a3;
  *&v5[5] = a4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)didDiscoverNearbyObject:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042E8C;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  connWrapper = self->_connWrapper;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100043020;
  v15[3] = &unk_10098B4F8;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v15];
}

- (void)didUpdateMotionState:(int64_t)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004310C;
  v4[3] = &unk_10098B518;
  v4[4] = a3;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didUpdateHealthStatus:(int64_t)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000431F4;
  v4[3] = &unk_10098B518;
  v4[4] = a3;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)relayDCKMessage:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004331C;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043478;
  v11[3] = &unk_10098B540;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didUpdateLocalDiscoveryToken:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000435A0;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didReceiveRangingAuthRecommendation:(BOOL)a3 forObject:(id)a4
{
  v6 = a4;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000436D0;
  v9[3] = &unk_10098B568;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043830;
  v11[3] = &unk_10098B540;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043918;
  v4[3] = &unk_10098B588;
  v5 = a3;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043A74;
  v11[3] = &unk_10098B540;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043BD0;
  v11[3] = &unk_10098B540;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  connWrapper = self->_connWrapper;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043D2C;
  v11[3] = &unk_10098B540;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v11];
}

- (void)requestAcwgRangingSessionSuspend:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043E18;
  v5[3] = &unk_10098B5A8;
  v6 = a3;
  v5[4] = a4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)didStartAcwgRanging:(int64_t)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043F04;
  v4[3] = &unk_10098B518;
  v4[4] = a3;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didSuspendAcwgRanging:(int64_t)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043FEC;
  v4[3] = &unk_10098B518;
  v4[4] = a3;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)didPrefetchAcwgUrsk:(unsigned int)a3 error:(id)a4
{
  v6 = a4;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004411C;
  v9[3] = &unk_10098B5D0;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didReceiveAopSFZoneUpdate:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044248;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)systemDidUpdateState:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044370;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)systemDidUpdateResourceUsageLimitExceeded:(BOOL)a3 forSessionConfigurationTypeWithName:(id)a4
{
  v6 = a4;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000444A0;
  v9[3] = &unk_10098B568;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateState:(int64_t)a3 forItem:(id)a4
{
  v6 = a4;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000445D0;
  v9[3] = &unk_10098B4B0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didUpdateNICoordinates:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000446F8;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didUpdateDLTDOAMeasurements:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044820;
  v7[3] = &unk_10098B488;
  v8 = v4;
  v6 = v4;
  [(UWBSessionDelegateProxyProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

@end