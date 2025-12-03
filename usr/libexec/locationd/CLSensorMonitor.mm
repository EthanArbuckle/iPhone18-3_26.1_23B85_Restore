@interface CLSensorMonitor
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)deferXpcActivityIfNecessary:(id)necessary;
- (CLSensorMonitor)init;
- (Class)classForSensorIdentifier:(id)identifier;
- (id).cxx_construct;
- (void)beginService;
- (void)clearConfigurationsForUninstalledApps:(id)apps;
- (void)endService;
- (void)onAppUninstallationCheckActivity:(id)activity;
- (void)onCatherineNotification:(int)notification data:(NotificationData *)data;
- (void)onDaemonStatusNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onFallSnippetNotification:(int)notification data:(ImpactStreamData *)data;
- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onOdometerNotification:(int)notification data:(NotificationData *)data;
- (void)onStepNotification:(int)notification data:(NotificationData *)data;
- (void)scheduleAppUninstallationCheck;
- (void)sensorWriter:(id)writer didReceiveUpdateToConfigurationRequests:(id)requests;
- (void)sensorWriterDidStopMonitoring:(id)monitoring;
- (void)sensorWriterWillStartMonitoring:(id)monitoring;
- (void)simulateMotionSensorDataForType:(unint64_t)type payload:(id)payload;
@end

@implementation CLSensorMonitor

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102659980 != -1)
  {
    sub_1019220D4();
  }

  return qword_102659978;
}

- (CLSensorMonitor)init
{
  v3.receiver = self;
  v3.super_class = CLSensorMonitor;
  return [(CLSensorMonitor *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLSensorMonitorProtocol outboundProtocol:&OBJC_PROTOCOL___CLSensorMonitorClientProtocol];
}

- (void)beginService
{
  [-[CLSensorMonitor universe](self "universe")];
  if ([objc_msgSend(-[CLSensorMonitor universe](self "universe")])
  {
    [(CLSensorMonitor *)self universe];
    sub_101379CA4();
  }

  if ([objc_msgSend(-[CLSensorMonitor universe](self universe])
  {
    [(CLSensorMonitor *)self universe];
    sub_1009D97BC();
  }

  if ([objc_msgSend(-[CLSensorMonitor universe](self universe])
  {
    [(CLSensorMonitor *)self universe];
    sub_100156C60();
  }

  if ([objc_msgSend(-[CLSensorMonitor universe](self universe])
  {
    [(CLSensorMonitor *)self universe];
    sub_1009AB6F0();
  }

  if ([objc_msgSend(-[CLSensorMonitor universe](self universe])
  {
    [(CLSensorMonitor *)self universe];
    sub_1006960B0();
  }

  [(CLSensorMonitor *)self universe];
  sub_10061F1A0();
}

- (void)endService
{
  [-[CLSensorMonitor universe](self "universe")];
  ptr = self->_stepCountClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:0];
    [*(self->_stepCountClient.__ptr_ + 2) unregister:*(self->_stepCountClient.__ptr_ + 1) forNotification:3];
    v4 = self->_stepCountClient.__ptr_;
    self->_stepCountClient.__ptr_ = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = self->_odometerClient.__ptr_;
  if (v5)
  {
    [*(v5 + 2) unregister:*(v5 + 1) forNotification:4];
    [*(self->_odometerClient.__ptr_ + 2) unregister:*(self->_odometerClient.__ptr_ + 1) forNotification:7];
    v6 = self->_odometerClient.__ptr_;
    self->_odometerClient.__ptr_ = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = self->_heartRateClient.__ptr_;
  if (v7)
  {
    [*(v7 + 2) unregister:*(v7 + 1) forNotification:10];
    v8 = self->_heartRateClient.__ptr_;
    self->_heartRateClient.__ptr_ = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v9 = self->_fallClient.__ptr_;
  if (v9)
  {
    [*(v9 + 2) unregister:*(v9 + 1) forNotification:2];
    v10 = self->_fallClient.__ptr_;
    self->_fallClient.__ptr_ = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = self->_motionStateMediatorClient.__ptr_;
  if (v11)
  {
    [*(v11 + 2) unregister:*(v11 + 1) forNotification:4];
    v12 = self->_motionStateMediatorClient.__ptr_;
    self->_motionStateMediatorClient.__ptr_ = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = self->_daemonStatusClient.__ptr_;
  if (v13)
  {
    [*(v13 + 2) unregister:*(v13 + 1) forNotification:11];
    [*(self->_daemonStatusClient.__ptr_ + 2) unregister:*(self->_daemonStatusClient.__ptr_ + 1) forNotification:17];
    v14 = self->_daemonStatusClient.__ptr_;
    self->_daemonStatusClient.__ptr_ = 0;
    if (v14)
    {
      v15 = *(*v14 + 8);

      v15();
    }
  }
}

- (void)onAppUninstallationCheckActivity:(id)activity
{
  if (activity)
  {
    state = xpc_activity_get_state(activity);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (qword_1025D44B0 != -1)
      {
        sub_101922714();
      }

      v7 = qword_1025D44B8;
      if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to delete configurations from uninstalled apps", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101922728();
      }

      [(CLSensorMonitor *)self clearConfigurationsForUninstalledApps:activity];
    }

    else
    {
      if (qword_1025D44B0 != -1)
      {
        sub_101922714();
      }

      v9 = qword_1025D44B8;
      if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136446466;
        v11 = "com.apple.locationd.AppUninstallationCheck";
        v12 = 2048;
        v13 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unexpected %{public}s activity state: %ld", &v10, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101922804();
      }
    }
  }

  else
  {
    if (qword_1025D44B0 != -1)
    {
      sub_101922714();
    }

    v8 = qword_1025D44B8;
    if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101922910();
    }
  }
}

- (void)simulateMotionSensorDataForType:(unint64_t)type payload:(id)payload
{
  if (qword_1025D4820 != -1)
  {
    sub_1019229F4();
  }

  v7 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = type;
    *&buf[12] = 2112;
    *&buf[14] = payload;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Simulate motion sensor data for type : %lu, data : %@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101922A08(payload, type);
  }

  if (type <= 2)
  {
    if (!type)
    {
      [CLSensorMonitorSimulatedDataGenerator generateSimulatedPedometerData:payload];
      memcpy(v15, buf, 0x148uLL);
      v9 = v15;
      selfCopy2 = self;
      v11 = 0;
      goto LABEL_17;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        *buf = [CLSensorMonitorSimulatedDataGenerator generateSimulatedOdometerSuitabilityData:payload];
        *&buf[8] = v8;
        v9 = buf;
        selfCopy2 = self;
        v11 = 3;
LABEL_17:
        [(CLSensorMonitor *)selfCopy2 onStepNotification:v11 data:v9];
        return;
      }

      goto LABEL_19;
    }

    [CLSensorMonitorSimulatedDataGenerator generateSimulatedOdometerData:payload];
    v15[8] = *&buf[128];
    v15[9] = *&buf[144];
    v15[10] = *&buf[160];
    v15[11] = *&buf[176];
    v15[4] = *&buf[64];
    v15[5] = *&buf[80];
    v15[6] = *&buf[96];
    v15[7] = *&buf[112];
    v15[0] = *buf;
    v15[1] = *&buf[16];
    v15[2] = *&buf[32];
    v15[3] = *&buf[48];
    selfCopy4 = self;
    v13 = 4;
LABEL_26:
    [(CLSensorMonitor *)selfCopy4 onOdometerNotification:v13 data:v15, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11]];
    return;
  }

  switch(type)
  {
    case 3uLL:
      [CLSensorMonitorSimulatedDataGenerator generateSimulatedElevationData:payload];
      v15[8] = *&buf[128];
      v15[9] = *&buf[144];
      v15[10] = *&buf[160];
      v15[11] = *&buf[176];
      v15[4] = *&buf[64];
      v15[5] = *&buf[80];
      v15[6] = *&buf[96];
      v15[7] = *&buf[112];
      v15[0] = *buf;
      v15[1] = *&buf[16];
      v15[2] = *&buf[32];
      v15[3] = *&buf[48];
      selfCopy4 = self;
      v13 = 3;
      goto LABEL_26;
    case 4uLL:
      [CLSensorMonitorSimulatedDataGenerator generateHighFrequencyHeartRateData:payload];
      v15[8] = *&buf[128];
      v15[9] = *&buf[144];
      v15[10] = *&buf[160];
      v15[4] = *&buf[64];
      v15[5] = *&buf[80];
      v15[6] = *&buf[96];
      v15[7] = *&buf[112];
      v15[0] = *buf;
      v15[1] = *&buf[16];
      v15[2] = *&buf[32];
      v15[3] = *&buf[48];
      [(CLSensorMonitor *)self onCatherineNotification:10 data:v15];
      return;
    case 5uLL:
      [CLSensorMonitorSimulatedDataGenerator generateSimulatedPhysicalActivityEventsData:payload];
      LODWORD(v15[0]) = 4;
      [(CLSensorMonitor *)self onMotionStateMediatorNotification:v15 data:buf];
      return;
  }

LABEL_19:
  if (qword_1025D4820 != -1)
  {
    sub_1019220E8();
  }

  v14 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = type;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "Unhandled motion sensor type %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101922B08();
  }
}

- (void)scheduleAppUninstallationCheck
{
  if (qword_1025D44B0 != -1)
  {
    sub_101922714();
  }

  v3 = qword_1025D44B8;
  if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "com.apple.locationd.AppUninstallationCheck";
    v8 = 2050;
    v9 = XPC_ACTIVITY_INTERVAL_1_MIN;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with delay=(%{public}lld)", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101922BF8();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100735C28;
  handler[3] = &unk_10245EAB8;
  handler[4] = [objc_msgSend(-[CLSensorMonitor universe](self "universe")];
  xpc_activity_register("com.apple.locationd.AppUninstallationCheck", v4, handler);
  xpc_release(v4);
}

- (void)clearConfigurationsForUninstalledApps:(id)apps
{
  v5 = +[NSMutableArray array];
  v6 = sub_100E4F678();
  sub_100E51600(v6, v5);
  if (![(CLSensorMonitor *)self deferXpcActivityIfNecessary:apps])
  {
    sub_10001A3E8();
    if (sub_10001CF3C() && [v5 count])
    {
      v7 = 0;
      do
      {
        [v5 setObject:objc_msgSend(objc_msgSend(v5 atIndexedSubscript:{"objectAtIndexedSubscript:", v7), "stringByAppendingPathExtension:", @"watchkitapp", v7}];
        if (qword_1025D44B0 != -1)
        {
          sub_101922E08();
        }

        v8 = qword_1025D44B8;
        if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v5 objectAtIndexedSubscript:v7];
          *buf = 138543362;
          v15 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Updated bundleId to %{public}@ for uninstall check", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D44B0 != -1)
          {
            sub_101922E08();
          }

          v12 = 138543362;
          v13 = [v5 objectAtIndexedSubscript:v7];
          v10 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLSensorMonitor clearConfigurationsForUninstalledApps:]", "%s\n", v10);
          if (v10 != buf)
          {
            free(v10);
          }
        }

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100736008;
    v11[3] = &unk_10246E0C0;
    v11[4] = self;
    v11[5] = apps;
    [objc_msgSend(objc_msgSend(-[CLSensorMonitor universe](self "universe")];
  }
}

- (BOOL)deferXpcActivityIfNecessary:(id)necessary
{
  should_defer = xpc_activity_should_defer(necessary);
  if (should_defer)
  {
    if (qword_1025D44B0 != -1)
    {
      sub_101922714();
    }

    v5 = qword_1025D44B8;
    if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "com.apple.locationd.AppUninstallationCheck";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to defer %{public}s activity", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923044();
    }

    if (xpc_activity_set_state(necessary, 3))
    {
      LOBYTE(should_defer) = 1;
    }

    else
    {
      if (qword_1025D44B0 != -1)
      {
        sub_101922E08();
      }

      v6 = qword_1025D44B8;
      if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_FAULT))
      {
        state = xpc_activity_get_state(necessary);
        v9 = 136446466;
        v10 = "com.apple.locationd.AppUninstallationCheck";
        v11 = 2050;
        v12 = state;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as deferred. Current state is %{public}ld", &v9, 0x16u);
      }

      should_defer = sub_10000A100(121, 0);
      if (should_defer)
      {
        sub_101923144();
        LOBYTE(should_defer) = 0;
      }
    }
  }

  return should_defer;
}

- (void)onStepNotification:(int)notification data:(NotificationData *)data
{
  [-[CLSensorMonitor universe](self "universe")];
  if (notification == 3)
  {
    v19 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*data];
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v20 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      v21 = *data;
      v22 = *(data + 8);
      v23 = *(data + 9);
      *buf = 134349568;
      v45 = v21;
      v46 = 1026;
      v47 = v22;
      v48 = 1026;
      LODWORD(v49) = v23;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - OdometerSuitability values,startDate,%{public}.8f,suitableForRunning,%{public}d,suitableForWalking,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923250();
    }

    v24 = [[CMOdometerSuitability alloc] initWithStartDate:v19 suitableForRunning:*(data + 8) suitableForWalking:*(data + 9)];
    [(SRSensorWriter *)self->_odometerSuitabilityWriter provideSample:v24];
    if (qword_1025D4820 != -1)
    {
      sub_1019220E8();
    }

    v25 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - OdometerSuitability sample sent to SensorKit", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923368();
    }
  }

  else
  {
    if (notification)
    {
      return;
    }

    v8 = *(data + 1);
    v7 = *(data + 2);
    v9 = *(data + 6);
    v10 = *(data + 4);
    v12 = *(data + 18);
    v11 = *(data + 19);
    v14 = *(data + 10);
    v13 = *(data + 11);
    v15 = *(data + 12);
    v16 = *(data + 26);
    v17 = *(data + 14);
    v18 = *(data + 121);
    v42 = *(data + 39);
    v43 = *(data + 38);
    v38 = *(data + 120);
    v39 = *(data + 41);
    v40 = *(data + 42);
    v41 = *(data + 174);
    if (v17)
    {
      v35 = [[NSUUID alloc] initWithUUIDString:v17];
    }

    else
    {
      v35 = 0;
    }

    v26 = v18;
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v27 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134353152;
      v45 = v8;
      v46 = 1026;
      v47 = v9;
      v48 = 2050;
      v49 = v10;
      v50 = 1026;
      v51 = v12;
      v52 = 1026;
      v53 = v11;
      v54 = 1026;
      v55 = v16;
      v56 = 2050;
      v57 = v14;
      v58 = 2050;
      v59 = v13;
      v60 = 2050;
      v61 = v7;
      v62 = 2050;
      v63 = v15;
      v64 = 1026;
      v65 = v38 & 1;
      v66 = 1026;
      v67 = v18 & 1;
      v68 = 1026;
      v69 = v43;
      v70 = 1026;
      v71 = v42;
      v72 = 1026;
      v73 = v39;
      v74 = 1026;
      v75 = v40;
      v76 = 1026;
      v77 = v41;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - StepCount values,startDate,%{public}.8f,count,%{public}d,distance,%{public}.3f,floorsAscended,%{public}d,floorsDescended,%{public}d,recordId,%{public}d,currentPace,%{public}.3f,currentCadence,%{public}.3f,firstStepTime,%{public}.8f,activeTime,%{public}.8f,isOdometerDistance,%{public}d,isOdometerPace,%{public}d,pushCount,%{public}d,workoutType,%{public}d,elevationAscended,%{public}d,elevationDescended,%{public}d,distanceSource,%{public}d", buf, 0x80u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4820 != -1)
      {
        sub_1019220E8();
      }

      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLSensorMonitor onStepNotification:data:]", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }

      v26 = v18;
    }

    v37 = v9;
    v28 = [CMPedometerData alloc];
    v36 = [NSNumber numberWithUnsignedInt:v12];
    v29 = [NSNumber numberWithUnsignedInt:v11];
    if (v14 == 0.0)
    {
      v30 = 0;
    }

    else
    {
      v30 = [NSNumber numberWithDouble:v14];
    }

    if (v13 == 0.0)
    {
      v31 = 0;
    }

    else
    {
      v31 = [NSNumber numberWithDouble:v13];
    }

    LODWORD(v34) = v41;
    v19 = v35;
    v24 = [v28 initWithStartDate:v37 endDate:v36 steps:v29 distance:v16 floorsAscended:v30 floorsDescended:v31 recordID:v8 currentPace:v8 currentCadence:v10 firstStepTime:v7 activeTime:+[NSNumber numberWithDouble:](NSNumber sourceId:"numberWithDouble:" isOdometerDistance:v15) isOdometerPace:v35 pushes:+[NSNumber numberWithBool:](NSNumber workoutType:"numberWithBool:" elevationAscended:v38 & 1) elevationDescended:+[NSNumber numberWithBool:](NSNumber distanceSource:{"numberWithBool:", v26 & 1), __PAIR64__(v42, v43), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v39), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v40), v34}];
    [(SRSensorWriter *)self->_pedometerWriter provideSample:v24];
    if (qword_1025D4820 != -1)
    {
      sub_1019220E8();
    }

    v32 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Pedometer sample sent to SensorKit", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923444();
    }
  }
}

- (void)onFallSnippetNotification:(int)notification data:(ImpactStreamData *)data
{
  [-[CLSensorMonitor universe](self universe];
  v6 = [[CMFallStats alloc] initWithBufferAndLength:*(&data->var5 + 7) length:*(&data->var6 + 7) - *(&data->var5 + 7)];
  v12 = 0;
  sub_100126E84(buf, "SensorMonitorFallFileDump", &v12, 0);
  if (buf[1] == 1)
  {
    v7 = +[NSDate date];
    v8 = objc_alloc_init(NSDateFormatter);
    [v8 setDateFormat:@"yyyyMMdd_HH-mm-ss"];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"file:///tmp/com.apple.locationd/CMFallSnippetData_%@.msl", [v8 stringFromDate:v7]);
    [objc_msgSend(v6 "binarySampleRepresentation")];
    if (qword_1025D4330 != -1)
    {
      sub_101923520();
    }

    v10 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Dumped snippet in [%@]", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923548();
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101923630();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#SensorMonitor get fall stats %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101923658();
  }

  [(SRSensorWriter *)self->_fallStatsWriter provideSample:v6];
}

- (void)onOdometerNotification:(int)notification data:(NotificationData *)data
{
  [-[CLSensorMonitor universe](self "universe")];
  if (notification != 7)
  {
    if (notification != 4)
    {
      if (notification != 3)
      {
        return;
      }

      goto LABEL_4;
    }

    v41 = *(data + 1);
    v16 = *(data + 5);
    v18 = *(data + 6);
    v17 = *(data + 7);
    v19 = *(data + 8);
    v47 = *(data + 9);
    v20 = *(data + 21);
    v48 = *(data + 20);
    v21 = *(data + 11);
    v22 = *(data + 13);
    v39 = *(data + 4);
    v40 = *(data + 12);
    v45 = *(data + 7);
    v46 = *(data + 8);
    v23 = *(data + 18);
    v24 = *(data + 19);
    v43 = *(data + 10);
    v44 = *(data + 11);
    v42 = *data;
    v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:*data];
    if (v20 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v20 == 1;
    }

    p_previousOdometerEntry = &self->_previousOdometerEntry;
    startTime = self->_previousOdometerEntry.startTime;
    v37 = v25;
    v38 = v21;
    v36 = v26;
    if (startTime != 0.0)
    {
      if (vabdd_f64(*&v42, startTime) < 1800.0)
      {
        v29 = [NSNumber numberWithDouble:v40 - self->_previousOdometerEntry.groundAltitude];
LABEL_29:
        v14 = [[CMOdometerData alloc] initWithDeltaDistance:v37 startDate:v37 endDate:+[NSNumber numberWithDouble:](NSNumber accuracy:"numberWithDouble:" rawSpeed:*&v41) gpsSpeedAccuracy:+[NSNumber numberWithDouble:](NSNumber timestampGps:"numberWithDouble:" deltaGroundAltitude:v16) groundAltitudeUncertainty:+[NSNumber numberWithDouble:](NSNumber originDevice:"numberWithDouble:" slope:v17) maxAbsSlope:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19), *(&v42 + 1), v29, +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v22), v36, +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v23), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v24)}];
        if (qword_1025D4820 != -1)
        {
          sub_1019220E8();
        }

        v32 = qword_1025D4828;
        if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134286337;
          v50 = *(&v42 + 1);
          v51 = 2050;
          *v52 = v42;
          *&v52[8] = 2049;
          v53 = v39;
          v54 = 2049;
          v55 = v16;
          v56 = 2049;
          v57 = v17;
          v58 = 2049;
          v59 = v41;
          v60 = 1025;
          v61 = v20;
          v62 = 2049;
          v63 = v40;
          v64 = 2049;
          v65 = v22;
          v66 = 2049;
          v67 = v19;
          v68 = 2049;
          v69 = v23;
          v70 = 2049;
          v71 = v24;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Odometer values,distance,%{private}.8f,startTime,%{public}.8f,speed,%{private}.8f,rawSpeed,%{private}.4f,gpsSpeedAccuracy,%{private}.4f,accuracy,%{private}.4f,originDevice,%{private}d,groundAltitude,%{private}.4f,groundAltitudeUncertainty,%{private}.4f,timestampGps,%{private}.4f,slope,%{private}.4f,maxAbsSlope,%{private}.4f", buf, 0x76u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4820 != -1)
          {
            sub_1019220E8();
          }

          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLSensorMonitor onOdometerNotification:data:]", "%s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        [(SRSensorWriter *)self->_odometerWriter provideSample:v14];
        if (qword_1025D4820 != -1)
        {
          sub_1019220E8();
        }

        v33 = qword_1025D4828;
        if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Odometer sample sent to SensorKit", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101923864();
        }

        *&p_previousOdometerEntry->startTime = v42;
        *&self->_previousOdometerEntry.accuracy = v41;
        self->_previousOdometerEntry.speed = v39;
        self->_previousOdometerEntry.rawSpeed = v16;
        self->_previousOdometerEntry.odometer = v18;
        self->_previousOdometerEntry.gpsSpeedAccuracy = v17;
        self->_previousOdometerEntry.timestampGps = v19;
        self->_previousOdometerEntry.machContinuousTime = v47;
        self->_previousOdometerEntry.quality = v48;
        self->_previousOdometerEntry.originDevice = v20;
        *&self->_previousOdometerEntry.type = v38;
        self->_previousOdometerEntry.groundAltitude = v40;
        self->_previousOdometerEntry.groundAltitudeUncertainty = v22;
        *&self->_previousOdometerEntry.smoothedGPSAltitude = v45;
        *&self->_previousOdometerEntry.gpsCourseRadians = v46;
        self->_previousOdometerEntry.slope = v23;
        self->_previousOdometerEntry.maxAbsSlope = v24;
        *&self->_previousOdometerEntry.batchedLocationFixType = v43;
        self->_previousOdometerEntry.trackProximityInfo = v44;
        goto LABEL_41;
      }

      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v30 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
      {
        v31 = p_previousOdometerEntry->startTime;
        *buf = 134349312;
        v50 = v42;
        v51 = 2050;
        *v52 = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "Ignoring cached OdometerEntry due to significant time between entries (%{public}.2f) (%{public}.2f)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101923740(&self->_previousOdometerEntry, *&v42);
      }
    }

    v29 = 0;
    goto LABEL_29;
  }

LABEL_4:
  v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(data + 1)];
  v8 = *(data + 10);
  if (qword_1025D4820 != -1)
  {
    sub_1019229F4();
  }

  v9 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(data + 1);
    v11 = *(data + 4);
    v12 = *(data + 5);
    v13 = *(data + 10);
    *buf = 134349824;
    v50 = v10;
    v51 = 1026;
    *v52 = v11;
    *&v52[4] = 1026;
    *&v52[6] = v12;
    LOWORD(v53) = 1026;
    *(&v53 + 2) = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Elevation values,startTime,%{public}.8f,elevationAscended,%{public}d,elevationDescended,%{public}d,source,%{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4820 != -1)
    {
      sub_1019220E8();
    }

    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLSensorMonitor onOdometerNotification:data:]", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  v14 = [[CMElevationData alloc] initWithStartDate:v7 endDate:v7 elevationAscended:*(data + 4) elevationDescended:*(data + 5) source:v8 recordId:0 sourceId:0];
  [(SRSensorWriter *)self->_elevationWriter provideSample:v14];
  if (qword_1025D4820 != -1)
  {
    sub_1019220E8();
  }

  v15 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Elevation sample sent to SensorKit", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101923940();
  }

LABEL_41:
}

- (void)onCatherineNotification:(int)notification data:(NotificationData *)data
{
  [-[CLSensorMonitor universe](self "universe")];
  if (notification == 10)
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(data + 5)];
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v8 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(data + 1);
      v10 = *(data + 2);
      v11 = *(data + 24);
      v12 = *data;
      v14 = *(data + 4);
      v13 = *(data + 5);
      v15 = *(data + 14);
      v19 = 134351105;
      v20 = v13;
      v21 = 2049;
      v22 = v9;
      v23 = 2049;
      v24 = v10;
      v25 = 1026;
      v26 = v11;
      v27 = 1026;
      v28 = v12;
      v29 = 2050;
      v30 = v14;
      v31 = 1026;
      v32 = v15;
      v33 = 1026;
      v34 = v15 == 5;
      v35 = 2050;
      v36 = 0x3FF0000000000000;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - HeartRate values,startTime,%{public}.8f,catherine,%{private}.0f,confidence,%{private}.0f,error,%{public}d,dataSource,%{public}d,timestamp,%{public}.8f,context,%{public}d,convertedMode,%{public}d,frequency,%{public}f", &v19, 0x4Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923A1C(data + 40, data);
    }

    if (*(data + 2) >= 0.4 && *data == 3)
    {
      v16 = [[CMHeartRateData alloc] initWithHeartRate:v7 confidence:*(data + 24) timestamp:3 startDate:*(data + 14) == 5 error:*(data + 1) dataSource:*(data + 2) mode:*(data + 4)];
      [v16 setFrequency:1.0];
      v17 = [[CMHighFrequencyHeartRateData alloc] initWithHeartRateData:v16];
      if (v17)
      {
        [(SRSensorWriter *)self->_heartRateWriter provideSample:v17];
        if (qword_1025D4820 != -1)
        {
          sub_1019220E8();
        }

        v18 = qword_1025D4828;
        if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v19) = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Heart rate sample sent to SensorKit", &v19, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101923B8C();
        }
      }
    }
  }
}

- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLSensorMonitor universe](self universe];
  if (*notification == 4)
  {
    v10 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*data];
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v11 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      v12 = *data;
      v13 = *(data + 1);
      v14 = *(data + 2);
      v15 = *(data + 3);
      v16 = *(data + 4);
      v17 = *(data + 5);
      v18 = *(data + 6);
      v21 = 134350593;
      v22 = v12;
      v23 = 2049;
      v24 = v13;
      v25 = 2049;
      v26 = v14;
      v27 = 2050;
      v28 = v15;
      v29 = 2050;
      v30 = v16;
      v31 = 2049;
      v32 = v17;
      v33 = 2049;
      v34 = v18;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - PhysicalActivityEvent values,startTime,%{public}.8f,eventType,%{private}ld,action,%{private}ld,reason,%{public}ld,workoutType,%{public}ld,recoveryStart,%{private}.8f,recoveryEnd,%{private}.8f", &v21, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923C68(data);
    }

    v19 = [[CMActivityEventData alloc] initWithStartDate:v10 eventType:*(data + 1) action:*(data + 2) reason:*(data + 3) workoutType:*(data + 4)];
    [v19 setHeartRateRecoveryStartTime:*(data + 5)];
    [v19 setHeartRateRecoveryEndTime:*(data + 6)];
    [(SRSensorWriter *)self->_physicalActivityEventWriter provideSample:v19];
    if (qword_1025D4820 != -1)
    {
      sub_1019220E8();
    }

    v20 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLSensorMonitor - Physical Activity Event sample sent to SensorKit", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923DAC();
    }
  }
}

- (void)onDaemonStatusNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLSensorMonitor universe](self universe];
  if (*notification == 17 || *notification == 11)
  {
    ptr = self->_daemonStatusClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) unregister:*(ptr + 1) forNotification:11];
      [*(self->_daemonStatusClient.__ptr_ + 2) unregister:*(self->_daemonStatusClient.__ptr_ + 1) forNotification:17];
      v8 = self->_daemonStatusClient.__ptr_;
      self->_daemonStatusClient.__ptr_ = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v9 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *notification;
        v11[0] = 67109120;
        v11[1] = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Received %d notification from daemon status", v11, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101923E88(notification);
      }

      [(CLSensorMonitor *)self scheduleAppUninstallationCheck];
    }
  }
}

- (Class)classForSensorIdentifier:(id)identifier
{
  if (([identifier isEqualToString:off_1025D81A8()] & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", off_1025D81B0()) & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", off_1025D81B8()) & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", off_1025D81C0()) & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", off_1025D81C8()) & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", off_1025D81D0()) & 1) == 0 && !objc_msgSend(identifier, "isEqualToString:", off_1025D81D8()))
  {
    return 0;
  }

  return objc_opt_class();
}

- (void)sensorWriterWillStartMonitoring:(id)monitoring
{
  if (self->_pedometerWriter == monitoring && self->_stepCountClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v5 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts pedometerWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101923F84();
    }

    ptr = self->_stepCountClient.__ptr_;
    v8 = *(ptr + 1);
    v7 = *(ptr + 2);
    v9 = 0;
    goto LABEL_68;
  }

  if (self->_odometerSuitabilityWriter == monitoring && self->_stepCountClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v10 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts odometerSuitabilityWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101924060();
    }

    v11 = self->_stepCountClient.__ptr_;
    v8 = *(v11 + 1);
    v7 = *(v11 + 2);
    v9 = 3;
    goto LABEL_68;
  }

  if (self->_fallStatsWriter == monitoring)
  {
    if (qword_1025D4330 != -1)
    {
      sub_101924590();
    }

    v12 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts fallStatsWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019245A4();
    }

    v13 = self->_fallClient.__ptr_;
    v8 = *(v13 + 1);
    v7 = *(v13 + 2);
    v9 = 2;
    goto LABEL_68;
  }

  if (self->_elevationWriter == monitoring && self->_odometerClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v14 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts elevationWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192413C();
    }

    v15 = self->_odometerClient.__ptr_;
    v8 = *(v15 + 1);
    v7 = *(v15 + 2);
    v9 = 7;
    goto LABEL_68;
  }

  if (self->_odometerWriter == monitoring)
  {
    v16 = 24;
    if (self->_odometerClient.__ptr_)
    {
      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v17 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts odometerWriter", v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101924218();
      }

LABEL_67:
      v21 = *&self->CLIntersiloService_opaque[v16];
      v8 = *(v21 + 8);
      v7 = *(v21 + 16);
      v9 = 4;
LABEL_68:
      [v7 register:v8 forNotification:v9 registrationInfo:0];
      return;
    }
  }

  if (self->_heartRateWriter == monitoring && self->_heartRateClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v18 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts heartRateWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019242F4();
    }

    v19 = self->_heartRateClient.__ptr_;
    v8 = *(v19 + 1);
    v7 = *(v19 + 2);
    v9 = 10;
    goto LABEL_68;
  }

  if (self->_physicalActivityEventWriter == monitoring)
  {
    v16 = 40;
    if (self->_motionStateMediatorClient.__ptr_)
    {
      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v20 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "sensorWriterWillStartMonitoring: starts physicalActivityEventWriter", v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019243D0();
      }

      goto LABEL_67;
    }
  }

  if (qword_1025D4820 != -1)
  {
    sub_1019229F4();
  }

  v4 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "sensorWriterWillStartMonitoring - Unexpected writer", v22, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019244AC();
  }
}

- (void)sensorWriterDidStopMonitoring:(id)monitoring
{
  if (self->_pedometerWriter == monitoring && self->_stepCountClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v5 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops pedometerWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101924680();
    }

    ptr = self->_stepCountClient.__ptr_;
    v8 = *(ptr + 1);
    v7 = *(ptr + 2);
    v9 = 0;
    goto LABEL_68;
  }

  if (self->_odometerSuitabilityWriter == monitoring && self->_stepCountClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v10 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops odometerSuitabilityWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192475C();
    }

    v11 = self->_stepCountClient.__ptr_;
    v8 = *(v11 + 1);
    v7 = *(v11 + 2);
    v9 = 3;
    goto LABEL_68;
  }

  if (self->_fallStatsWriter == monitoring)
  {
    if (qword_1025D4330 != -1)
    {
      sub_101924590();
    }

    v12 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops fallStatsWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101924C8C();
    }

    v13 = self->_fallClient.__ptr_;
    v8 = *(v13 + 1);
    v7 = *(v13 + 2);
    v9 = 2;
    goto LABEL_68;
  }

  if (self->_elevationWriter == monitoring && self->_odometerClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v14 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops elevationWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101924838();
    }

    v15 = self->_odometerClient.__ptr_;
    v8 = *(v15 + 1);
    v7 = *(v15 + 2);
    v9 = 7;
    goto LABEL_68;
  }

  if (self->_odometerWriter == monitoring)
  {
    v16 = 24;
    if (self->_odometerClient.__ptr_)
    {
      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v17 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops odometerWriter", v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101924914();
      }

LABEL_67:
      v21 = *&self->CLIntersiloService_opaque[v16];
      v8 = *(v21 + 8);
      v7 = *(v21 + 16);
      v9 = 4;
LABEL_68:
      [v7 unregister:v8 forNotification:v9];
      return;
    }
  }

  if (self->_heartRateWriter == monitoring && self->_heartRateClient.__ptr_)
  {
    if (qword_1025D4820 != -1)
    {
      sub_1019229F4();
    }

    v18 = qword_1025D4828;
    if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops heartRateWriter", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019249F0();
    }

    v19 = self->_heartRateClient.__ptr_;
    v8 = *(v19 + 1);
    v7 = *(v19 + 2);
    v9 = 10;
    goto LABEL_68;
  }

  if (self->_physicalActivityEventWriter == monitoring)
  {
    v16 = 40;
    if (self->_motionStateMediatorClient.__ptr_)
    {
      if (qword_1025D4820 != -1)
      {
        sub_1019229F4();
      }

      v20 = qword_1025D4828;
      if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_DEBUG))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "sensorWriterDidStopMonitoring: stops physicalActivityEventWriter", v22, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101924ACC();
      }

      goto LABEL_67;
    }
  }

  if (qword_1025D4820 != -1)
  {
    sub_1019229F4();
  }

  v4 = qword_1025D4828;
  if (os_log_type_enabled(qword_1025D4828, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "sensorWriterWillStartMonitoring - Unexpected writer", v22, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101924BA8();
  }
}

- (void)sensorWriter:(id)writer didReceiveUpdateToConfigurationRequests:(id)requests
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [requests countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(requests);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = sub_100E4F678();
        v11 = sub_100E5081C(v10, v9);
        if (v11 != 100)
        {
          v12 = v11;
          if (qword_1025D44B0 != -1)
          {
            sub_101922E08();
          }

          v13 = qword_1025D44B8;
          if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240192;
            v21 = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[Dynamic Config] Error on config insertion: %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101924D68(&v18, v12, v19);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [requests countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 30) = 0;
  return self;
}

@end