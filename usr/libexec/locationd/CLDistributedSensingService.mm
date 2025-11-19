@interface CLDistributedSensingService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLDistributedSensingService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)dealloc;
- (void)dsmotion:(id)a3 didFailToStartProviderWithError:(id)a4;
- (void)dsmotion:(id)a3 didRequestMotionDataWithOptions:(id)a4;
- (void)dsmotion:(id)a3 didSubscribeToMotionDataWithOptions:(id)a4;
- (void)dsmotionDidExpireMotionDataSubscription:(id)a3;
- (void)dsmotionDidStartProvider:(id)a3;
- (void)dsmotionDidUnsubscribeToMotionData:(id)a3;
- (void)endService;
- (void)providerBeginService;
- (void)providerDealloc;
- (void)providerEndService;
- (void)providerFitnessTrackingNotification:(BOOL)a3;
- (void)providerInit;
- (void)providerOnVehicleStateNotification:(VehicleStateData *)a3;
- (void)providerQueryMotionDataType:(unsigned int)a3;
- (void)providerSubscribeToMotionDataType:(unsigned int)a3;
- (void)providerUnsubscribeToMotionDataType:(unsigned int)a3;
- (void)sendVehicleState;
- (void)toggleProactiveVehicleDetection:(BOOL)a3;
- (void)toggleVehicleStateProvider:(BOOL)a3;
@end

@implementation CLDistributedSensingService

- (void)providerBeginService
{
  sub_10001A3E8();
  if ((sub_100023B30() & 0x1000000000) != 0)
  {
    *&self->_isConnectedToStationaryWifi = [[DSMotionProvider alloc] initWithDelegate:self queue:0];
    [(CLDistributedSensingService *)self toggleVehicleStateProvider:1];
    [(CLDistributedSensingService *)self universe];
    sub_101336E60();
  }
}

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656720 != -1)
  {
    sub_10189C148();
  }

  return qword_102656718;
}

+ (BOOL)isSupported
{
  sub_10001A3E8();
  if (sub_10001CF04())
  {
    return 1;
  }

  sub_10001A3E8();
  if (sub_10003FFF8())
  {
    return 1;
  }

  sub_10001A3E8();

  return sub_1000F42C0();
}

- (CLDistributedSensingService)init
{
  v4.receiver = self;
  v4.super_class = CLDistributedSensingService;
  v2 = [(CLDistributedSensingService *)&v4 initWithInboundProtocol:&OBJC_PROTOCOL___CLDistributedSensingServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLDistributedSensingServiceClientProtocol];
  [(CLDistributedSensingService *)v2 listenerInit];
  [(CLDistributedSensingService *)v2 providerInit];
  return v2;
}

- (void)dealloc
{
  [(CLDistributedSensingService *)self listenerDealloc];
  [(CLDistributedSensingService *)self providerDealloc];
  v3.receiver = self;
  v3.super_class = CLDistributedSensingService;
  [(CLDistributedSensingService *)&v3 dealloc];
}

- (void)beginService
{
  [(CLDistributedSensingService *)self listenerBeginService];

  [(CLDistributedSensingService *)self providerBeginService];
}

- (void)endService
{
  [(CLDistributedSensingService *)self listenerEndService];

  [(CLDistributedSensingService *)self providerEndService];
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 9) = 0;
  *(self + 13) = 0;
  return self;
}

- (void)toggleProactiveVehicleDetection:(BOOL)a3
{
  if (self->_proactiveVehicleDetectionTimer)
  {
    if (a3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v18 = Current;
      v17 = 1.79769313e308;
      v5 = sub_1000206B4();
      sub_100023B78(v5, @"DistributedSensingProactiveVehicleStateSubscriptionTimestamp", &v17);
      if (vabdd_f64(Current, v17) <= *&self->_vehicleStateClient.__ptr_)
      {
        if (qword_1025D4470 != -1)
        {
          sub_1018ADD48();
        }

        v15 = qword_1025D4478;
        if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134283777;
          *v20 = Current;
          *&v20[8] = 2049;
          *&v20[10] = v17;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Provider, Too frequent proactive vehicle detection request, declined, %{private}.3f, %{private}.3f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018ADD70(&v17, Current);
        }
      }

      else
      {
        v6 = sub_1000206B4();
        sub_100116DD4(v6, @"DistributedSensingProactiveVehicleStateSubscriptionTimestamp", &v18);
        v7 = *sub_1000206B4();
        (*(v7 + 944))();
        timeBetweenProactiveVehicleDetection = self->_timeBetweenProactiveVehicleDetection;
        if (timeBetweenProactiveVehicleDetection == 0.0)
        {
          v9 = [-[CLDistributedSensingService silo](self "silo")];
          *&self->_timeBetweenProactiveVehicleDetection = v9;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100507B8C;
          v16[3] = &unk_102447418;
          v16[4] = self;
          [v9 setHandler:v16];
          timeBetweenProactiveVehicleDetection = self->_timeBetweenProactiveVehicleDetection;
        }

        [*&timeBetweenProactiveVehicleDetection nextFireDelay];
        if (v10 == 1.79769313e308)
        {
          sub_10183A3AC(buf, "ProactiveVehicleDetectionDurationSeconds", &qword_101C7C578, 0);
          [*&self->_timeBetweenProactiveVehicleDetection setNextFireDelay:*&v20[4]];
          [*(self->_vehicleStateProvider + 2) register:*(self->_vehicleStateProvider + 1) forNotification:0 registrationInfo:0];
          if (qword_1025D4470 != -1)
          {
            sub_1018ADD48();
          }

          v11 = qword_1025D4478;
          if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Provider, Starting proactive vehicle detection", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018ADE88();
          }
        }
      }
    }

    else
    {
      [*(self->_vehicleStateProvider + 2) unregister:*(self->_vehicleStateProvider + 1) forNotification:0];
      v13 = self->_timeBetweenProactiveVehicleDetection;
      if (v13 != 0.0)
      {
        [*&v13 setNextFireDelay:1.79769313e308];
      }

      if (qword_1025D4470 != -1)
      {
        sub_1018ADB7C();
      }

      v14 = qword_1025D4478;
      if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Provider, Stopping proactive vehicle detection", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ADC6C();
      }
    }
  }

  else
  {
    if (qword_1025D4470 != -1)
    {
      sub_1018ADB7C();
    }

    v12 = qword_1025D4478;
    if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Proactive vehicle detection is DISABLED", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018ADB90();
    }
  }
}

- (void)sendVehicleState
{
  v3 = [NSData dataWithBytes:&self->_mostRecentVehicleState length:16];
  v4 = *&self->_isConnectedToStationaryWifi;

  [v4 sendMotionData:v3];
}

- (void)toggleVehicleStateProvider:(BOOL)a3
{
  v4 = *&self->_isConnectedToStationaryWifi;
  if (v4)
  {
    if (a3)
    {
      v5 = objc_opt_new();
      [v5 setDeviceType:1];
      [v5 setDataSubType:1];
      v6 = *&self->_isConnectedToStationaryWifi;

      [v6 startMotionDataProviderWithOptions:v5];
    }

    else
    {

      [v4 stopMotionDataProvider];
    }
  }
}

- (void)dsmotionDidStartProvider:(id)a3
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v3 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Provider, started", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ADF64();
  }
}

- (void)dsmotion:(id)a3 didFailToStartProviderWithError:(id)a4
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v5 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = a4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Provider, failed to start with error, %@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018AE040(a4);
  }
}

- (void)dsmotionDidExpireMotionDataSubscription:(id)a3
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v4 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Provider, subscription expired", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AE144();
  }

  [objc_msgSend(-[CLDistributedSensingService vendor](self "vendor")];
}

- (void)dsmotionDidUnsubscribeToMotionData:(id)a3
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v4 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Provider, un-subscribed", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AE220();
  }

  [objc_msgSend(-[CLDistributedSensingService vendor](self "vendor")];
}

- (void)dsmotion:(id)a3 didSubscribeToMotionDataWithOptions:(id)a4
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v6 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67174913;
    v7[1] = [a4 deviceType];
    v8 = 1025;
    v9 = [a4 dataSubType];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Provider, subscribed with options, %{private}u, %{private}u", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AE2FC(a4);
  }

  [objc_msgSend(-[CLDistributedSensingService vendor](self "vendor")];
}

- (void)dsmotion:(id)a3 didRequestMotionDataWithOptions:(id)a4
{
  if (qword_1025D4470 != -1)
  {
    sub_1018ADB7C();
  }

  v6 = qword_1025D4478;
  if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67174913;
    v7[1] = [a4 deviceType];
    v8 = 1025;
    v9 = [a4 dataSubType];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Provider, queried with options, %{private}u, %{private}u", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AE40C(a4);
  }

  [objc_msgSend(-[CLDistributedSensingService vendor](self "vendor")];
}

- (void)providerInit
{
  *&self->_isConnectedToStationaryWifi = 0;
  vehicleStateProvider = self->_vehicleStateProvider;
  self->_vehicleStateProvider = 0;
  if (vehicleStateProvider)
  {
    (*(*vehicleStateProvider + 8))(vehicleStateProvider, a2);
  }

  self->_mostRecentVehicleState.version = 0;
  *(&self->_mostRecentVehicleState.version + 1) = -1;
  *(&self->_mostRecentVehicleState.timestamp + 1) = 0;
  BYTE5(self->_mostRecentVehicleState.timestamp) = 0;
  HIWORD(self->_mostRecentVehicleState.timestamp) = 0;
  self->_vehicleStateClient.__ptr_ = 0x7FEFFFFFFFFFFFFFLL;
  self->_timeBetweenProactiveVehicleDetection = 0.0;
  LOBYTE(self->_proactiveVehicleDetectionTimer) = 0;
}

- (void)providerDealloc
{
  timeBetweenProactiveVehicleDetection = self->_timeBetweenProactiveVehicleDetection;
  if (timeBetweenProactiveVehicleDetection != 0.0)
  {

    self->_timeBetweenProactiveVehicleDetection = 0.0;
  }

  v4 = *&self->_isConnectedToStationaryWifi;
  if (v4)
  {

    *&self->_isConnectedToStationaryWifi = 0;
  }
}

- (void)providerEndService
{
  timeBetweenProactiveVehicleDetection = self->_timeBetweenProactiveVehicleDetection;
  if (timeBetweenProactiveVehicleDetection != 0.0)
  {
    [*&timeBetweenProactiveVehicleDetection invalidate];
  }

  v4 = *&self->_isConnectedToStationaryWifi;
  if (v4)
  {
    [v4 stopMotionDataProvider];
  }

  vehicleStateProvider = self->_vehicleStateProvider;
  if (vehicleStateProvider)
  {
    self->_vehicleStateProvider = 0;
    v6 = *(*vehicleStateProvider + 8);

    v6();
  }
}

- (void)providerSubscribeToMotionDataType:(unsigned int)a3
{
  if (a3)
  {
    [(CLDistributedSensingService *)self toggleProactiveVehicleDetection:1];

    [(CLDistributedSensingService *)self sendVehicleState];
  }

  else
  {
    v3 = *&a3;
    if (qword_1025D4470 != -1)
    {
      sub_1018ADB7C();
    }

    v4 = qword_1025D4478;
    if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67174657;
      v6[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Provider, Unsupported subscription request for data type, %{private}u", v6, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AE51C(v3);
    }
  }
}

- (void)providerUnsubscribeToMotionDataType:(unsigned int)a3
{
  if (a3)
  {

    [(CLDistributedSensingService *)self toggleProactiveVehicleDetection:0];
  }

  else
  {
    v3 = *&a3;
    if (qword_1025D4470 != -1)
    {
      sub_1018ADB7C();
    }

    v4 = qword_1025D4478;
    if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67174657;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Provider, Unsupported un-subscribe request for data type, %{private}u", v5, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AE60C(v3);
    }
  }
}

- (void)providerQueryMotionDataType:(unsigned int)a3
{
  if (a3)
  {

    [(CLDistributedSensingService *)self sendVehicleState];
  }

  else
  {
    v3 = *&a3;
    if (qword_1025D4470 != -1)
    {
      sub_1018ADB7C();
    }

    v4 = qword_1025D4478;
    if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67174657;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Provider, Unsupported query for data type, %{private}u", v5, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AE6FC(v3);
    }
  }
}

- (void)providerOnVehicleStateNotification:(VehicleStateData *)a3
{
  if (*&self->_isConnectedToStationaryWifi)
  {
    var0 = a3->var0;
    var1 = a3->var1;
    v7 = (var1 & 0x12) != 0 ? 2 : (a3->var1 & 9) != 0;
    p_mostRecentVehicleState = &self->_mostRecentVehicleState;
    if (*(&self->_mostRecentVehicleState.version + 1) == -1 || *(&self->_mostRecentVehicleState.timestamp + 1) != var0 || HIWORD(self->_mostRecentVehicleState.timestamp) != var1)
    {
      if (var0 == 2)
      {
        [(CLDistributedSensingService *)self toggleProactiveVehicleDetection:0];
      }

      Current = CFAbsoluteTimeGetCurrent();
      v10 = a3->var0;
      v11 = a3->var1;
      p_mostRecentVehicleState->version = 1;
      *(&p_mostRecentVehicleState->version + 1) = Current;
      *(&p_mostRecentVehicleState->timestamp + 1) = v10;
      v12 = (&p_mostRecentVehicleState->timestamp + 1);
      BYTE5(p_mostRecentVehicleState->timestamp) = v7;
      HIWORD(p_mostRecentVehicleState->timestamp) = v11;
      v13 = &p_mostRecentVehicleState->timestamp + 3;
      [(CLDistributedSensingService *)self sendVehicleState];
      if (qword_1025D4470 != -1)
      {
        sub_1018ADB7C();
      }

      v14 = qword_1025D4478;
      if (os_log_type_enabled(qword_1025D4478, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v12;
        v16 = *v13;
        v17[0] = 67174913;
        v17[1] = v15;
        v18 = 1025;
        v19 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Provider, Vehicle State update, state, %{private}d, hints, 0x%{private}x", v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018AE7EC(v12, v13);
      }
    }
  }
}

- (void)providerFitnessTrackingNotification:(BOOL)a3
{
  if (a3)
  {
    [(CLDistributedSensingService *)self toggleVehicleStateProvider:1];
    if (![*&self->_isConnectedToStationaryWifi isSubscriptionActive])
    {
      return;
    }

    v4 = self;
    v5 = 1;
  }

  else
  {
    [(CLDistributedSensingService *)self toggleVehicleStateProvider:0];
    v4 = self;
    v5 = 0;
  }

  [(CLDistributedSensingService *)v4 toggleProactiveVehicleDetection:v5];
}

@end