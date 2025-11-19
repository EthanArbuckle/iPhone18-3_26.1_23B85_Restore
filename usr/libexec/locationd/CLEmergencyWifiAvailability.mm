@interface CLEmergencyWifiAvailability
- (CLEmergencyWifiAvailability)initWithUniverse:(id)a3;
- (void)_processReceivedWiFiDeviceLinkScore:(unsigned int)a3;
- (void)_registerForEventsNotification;
- (void)_registerForLinkChangedNotifications;
- (void)_registerForLqmScoreNotifications;
- (void)_registerForWowChangeNotifications;
- (void)_scheduleWifiArtifactsAllocation:(const char *)a3;
- (void)_setup;
- (void)_setupMonitoringEvent;
- (void)_submitWifiAvailabilityEventToBiome;
- (void)_submitWowChangeEventToBiome;
- (void)_unregisterForEventsNotification;
- (void)_unregisterForLinkChangedNotifications;
- (void)_unregisterForLqmScoreNotifications;
- (void)_unregisterForWowChangeNotifications;
- (void)dealloc;
- (void)processReceivedWiFiDeviceLinkScore:(unsigned int)a3;
- (void)registerForEventsNotification;
- (void)setup;
- (void)submitWifiAvailabilityEventToBiome;
- (void)submitWowChangeEventToBiome;
- (void)unregisterForEventsNotification;
@end

@implementation CLEmergencyWifiAvailability

- (CLEmergencyWifiAvailability)initWithUniverse:(id)a3
{
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v5 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[CLEmergencyWifiAvailability initWithUniverse:]";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101883FE0();
  }

  v13.receiver = self;
  v13.super_class = CLEmergencyWifiAvailability;
  v6 = [(CLEmergencyWifiAvailability *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->fUniverse = a3;
    v6->fQueue = [objc_msgSend(a3 "silo")];
    v8 = [objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")];
    v7->fWifiAvailabilityBMSource = v8;
    v9 = v8;
    v10 = [objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")];
    v7->fWakeOnWifiBMSource = v10;
    v11 = v10;
    [(CLEmergencyWifiAvailability *)v7 setup];
  }

  return v7;
}

- (void)setup
{
  fQueue = self->fQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10046118C;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(fQueue, block);
}

- (void)_setup
{
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CLEmergencyWifiAvailability _setup]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018840D4();
  }

  dispatch_assert_queue_V2(self->fQueue);
  v4 = objc_alloc_init(CWFInterface);
  self->fCoreWiFiInterface = v4;
  if (v4)
  {
    [(CWFInterface *)v4 activate];
    self->fWifiDevice = 0;
    self->fWifiManager = 0;
    self->fReceivedCallBacks = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->fReceivedCallBacks setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], @"isWoWEnabledKey"];
    [(CLEmergencyWifiAvailability *)self submitWowChangeEventToBiome];
    [(CLEmergencyWifiAvailability *)self registerForEventsNotification];
  }
}

- (void)dealloc
{
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[CLEmergencyWifiAvailability dealloc]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018841C8();
  }

  if (self->fCoreWiFiInterface)
  {
    [(CLEmergencyWifiAvailability *)self _unregisterForEventsNotification];
    [(CWFInterface *)self->fCoreWiFiInterface invalidate];
  }

  if (self->fWifiDevice)
  {
    [(CLEmergencyWifiAvailability *)self _unregisterForLqmScoreNotifications];
  }

  v4.receiver = self;
  v4.super_class = CLEmergencyWifiAvailability;
  [(CLEmergencyWifiAvailability *)&v4 dealloc];
}

- (void)registerForEventsNotification
{
  fQueue = self->fQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100461480;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(fQueue, block);
}

- (void)_registerForEventsNotification
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[CLEmergencyWifiAvailability _registerForEventsNotification]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018842BC();
  }

  [(CLEmergencyWifiAvailability *)self _setupMonitoringEvent];
  [(CLEmergencyWifiAvailability *)self _registerForLinkChangedNotifications];
  [(CLEmergencyWifiAvailability *)self _registerForWowChangeNotifications];
  [(CLEmergencyWifiAvailability *)self _registerForLqmScoreNotifications];
}

- (void)unregisterForEventsNotification
{
  fQueue = self->fQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004615FC;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(fQueue, block);
}

- (void)_unregisterForEventsNotification
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[CLEmergencyWifiAvailability _unregisterForEventsNotification]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018843B0();
  }

  [(CLEmergencyWifiAvailability *)self _unregisterForLinkChangedNotifications];
  [(CLEmergencyWifiAvailability *)self _unregisterForWowChangeNotifications];
  [(CLEmergencyWifiAvailability *)self _unregisterForLqmScoreNotifications];
}

- (void)_scheduleWifiArtifactsAllocation:(const char *)a3
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v5 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[CLEmergencyWifiAvailability _scheduleWifiArtifactsAllocation:]";
    v9 = 2080;
    v10 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, reason, %s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018844A4(a3);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100461864;
  block[3] = &unk_102447418;
  block[4] = self;
  if (qword_1026562E8 != -1)
  {
    dispatch_once(&qword_1026562E8, block);
  }
}

- (void)_registerForLqmScoreNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315138;
    *&__p[4] = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101884798();
  }

  p_fWifiDevice = &self->fWifiDevice;
  if (self->fWifiDevice)
  {
    WiFiDeviceClientRegisterLQMCallback();
    CFRelease(self->fWifiDevice);
    self->fWifiDevice = 0;
  }

  if (self->fWifiManager)
  {
    goto LABEL_12;
  }

  v5 = WiFiManagerClientCreate();
  self->fWifiManager = v5;
  if (v5)
  {
    sub_100107858();
    WiFiManagerClientScheduleWithRunLoop();
LABEL_12:
    v6 = WiFiManagerClientCopyDevices();
    v7 = v6;
    if (v6)
    {
      if (!CFArrayGetCount(v6))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101884894();
        }

        v8 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315138;
          *&__p[4] = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, wifi zero devices", __p, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018848BC();
        }

        [(CLEmergencyWifiAvailability *)self _scheduleWifiArtifactsAllocation:"DevicesZero"];
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      *p_fWifiDevice = ValueAtIndex;
      if (ValueAtIndex && (v10 = CFGetTypeID(ValueAtIndex), v10 == WiFiDeviceClientGetTypeID()))
      {
        CFRetain(*p_fWifiDevice);
        if (qword_1025D4660 != -1)
        {
          sub_101884894();
        }

        v11 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          InterfaceName = WiFiDeviceClientGetInterfaceName();
          sub_1000238CC(InterfaceName, __p);
          v13 = v18 >= 0 ? __p : *__p;
          *buf = 136315394;
          v20 = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
          v21 = 2080;
          v22 = v13;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s, wifi interface, %s", buf, 0x16u);
          if (v18 < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018849B4();
        }

        WiFiDeviceClientRegisterLQMCallback();
        CFRelease(v7);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101884894();
        }

        v14 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315138;
          *&__p[4] = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "%s, wifi device failure", __p, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101884B20();
        }

        [(CLEmergencyWifiAvailability *)self _scheduleWifiArtifactsAllocation:"DeviceFail"];
        self->fWifiDevice = 0;
        CFRelease(v7);
      }
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101884894();
      }

      v15 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315138;
        *&__p[4] = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "%s, wifi devices failure", __p, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101884C18();
      }

      [(CLEmergencyWifiAvailability *)self _scheduleWifiArtifactsAllocation:"DevicesNull"];
    }

    return;
  }

  if (qword_1025D4660 != -1)
  {
    sub_101884894();
  }

  v16 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
  {
    *__p = 136315138;
    *&__p[4] = "[CLEmergencyWifiAvailability _registerForLqmScoreNotifications]";
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "%s, WiFiManagerClientCreate failed", __p, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101884D10();
  }

  [(CLEmergencyWifiAvailability *)self _scheduleWifiArtifactsAllocation:"ManagerNull"];
}

- (void)_unregisterForLqmScoreNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[CLEmergencyWifiAvailability _unregisterForLqmScoreNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101884F10();
  }

  if (self->fWifiDevice)
  {
    WiFiDeviceClientRegisterLQMCallback();
    CFRelease(self->fWifiDevice);
    self->fWifiDevice = 0;
  }
}

- (void)_registerForLinkChangedNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[CLEmergencyWifiAvailability _registerForLinkChangedNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101885004();
  }

  v13 = 0;
  [(CWFInterface *)self->fCoreWiFiInterface startMonitoringEventType:6 error:&v13];
  if (v13)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101884894();
    }

    v4 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v13 description];
      *buf = 136315394;
      v15 = "[CLEmergencyWifiAvailability _registerForLinkChangedNotifications]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s, error, %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018850F8(&v13, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)_unregisterForLinkChangedNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[CLEmergencyWifiAvailability _unregisterForLinkChangedNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188520C();
  }

  [(CWFInterface *)self->fCoreWiFiInterface stopMonitoringEventType:6];
}

- (void)_registerForWowChangeNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[CLEmergencyWifiAvailability _registerForWowChangeNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101885300();
  }

  v13 = 0;
  [(CWFInterface *)self->fCoreWiFiInterface startMonitoringEventType:9 error:&v13];
  if (v13)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101884894();
    }

    v4 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v13 description];
      *buf = 136315394;
      v15 = "[CLEmergencyWifiAvailability _registerForWowChangeNotifications]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s, error, %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018853F4(&v13, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)_unregisterForWowChangeNotifications
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[CLEmergencyWifiAvailability _unregisterForWowChangeNotifications]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101885508();
  }

  [(CWFInterface *)self->fCoreWiFiInterface stopMonitoringEventType:9];
}

- (void)_setupMonitoringEvent
{
  dispatch_assert_queue_V2(self->fQueue);
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[CLEmergencyWifiAvailability _setupMonitoringEvent]";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018855FC();
  }

  fCoreWiFiInterface = self->fCoreWiFiInterface;
  if (fCoreWiFiInterface)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004626F8;
    v6[3] = &unk_102455800;
    v6[4] = self;
    [(CWFInterface *)fCoreWiFiInterface setEventHandler:v6];
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101884894();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v8 = "[CLEmergencyWifiAvailability _setupMonitoringEvent]";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, fCoreWiFiInterface is nill", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018856F0();
    }
  }
}

- (void)submitWifiAvailabilityEventToBiome
{
  fQueue = self->fQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100462B4C;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(fQueue, block);
}

- (void)_submitWifiAvailabilityEventToBiome
{
  dispatch_assert_queue_V2(self->fQueue);
  fReceivedCallBacks = self->fReceivedCallBacks;
  if (fReceivedCallBacks)
  {
    if ([(NSMutableDictionary *)fReceivedCallBacks objectForKey:@"isWiFiStartingKey"]&& [(NSMutableDictionary *)self->fReceivedCallBacks objectForKey:@"isWiFiSwitchOnKey"]&& [(NSMutableDictionary *)self->fReceivedCallBacks objectForKey:@"lqmKey"])
    {
      [(NSMutableDictionary *)self->fReceivedCallBacks enumerateKeysAndObjectsUsingBlock:&stru_102455840];
      v4 = [[BMDeviceWiFiAvailabilityStatus alloc] initWithStarting:-[NSMutableDictionary objectForKey:](self->fReceivedCallBacks isWiFiSwitchOn:"objectForKey:" quality:{@"isWiFiStartingKey", -[NSMutableDictionary objectForKey:](self->fReceivedCallBacks, "objectForKey:", @"isWiFiSwitchOnKey", -[NSMutableDictionary objectForKey:](self->fReceivedCallBacks, "objectForKey:", @"lqmKey"}];
      fWifiAvailabilityBMSource = self->fWifiAvailabilityBMSource;

      [fWifiAvailabilityBMSource sendEvent:v4];
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v6 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315138;
        v9 = "[CLEmergencyWifiAvailability _submitWifiAvailabilityEventToBiome]";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "%s, skipping, did not receive all the parameters", &v8, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101885B38();
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v7 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[CLEmergencyWifiAvailability _submitWifiAvailabilityEventToBiome]";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%s, skipping, callbacks nil", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101885C2C();
    }
  }
}

- (void)submitWowChangeEventToBiome
{
  fQueue = self->fQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100462F28;
  block[3] = &unk_102447418;
  block[4] = self;
  dispatch_async(fQueue, block);
}

- (void)_submitWowChangeEventToBiome
{
  dispatch_assert_queue_V2(self->fQueue);
  fReceivedCallBacks = self->fReceivedCallBacks;
  if (fReceivedCallBacks)
  {
    if ([(NSMutableDictionary *)fReceivedCallBacks objectForKey:@"isWoWEnabledKey"])
    {
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v4 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v5 = [-[NSMutableDictionary objectForKey:](self->fReceivedCallBacks objectForKey:{@"isWoWEnabledKey", "BOOLValue"}];
        v6 = @"NO";
        if (v5)
        {
          v6 = @"YES";
        }

        v16 = 136315394;
        v17 = "[CLEmergencyWifiAvailability _submitWowChangeEventToBiome]";
        v18 = 2112;
        v19 = v6;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s, fIsWowEnabled, %@", &v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101885E4C(&self->fReceivedCallBacks, v7, v8, v9, v10, v11, v12, v13);
      }

      -[BMSource sendEvent:](self->fWakeOnWifiBMSource, "sendEvent:", [[BMDeviceWakeOnWiFiStatus alloc] initWithStarting:{-[NSMutableDictionary objectForKey:](self->fReceivedCallBacks, "objectForKey:", @"isWoWEnabledKey"}]);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v15 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = "[CLEmergencyWifiAvailability _submitWowChangeEventToBiome]";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "%s, skipping, no WoW available", &v16, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101885F9C();
      }
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v14 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "[CLEmergencyWifiAvailability _submitWowChangeEventToBiome]";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "%s, skipping, callbacks nil", &v16, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886090();
    }
  }
}

- (void)processReceivedWiFiDeviceLinkScore:(unsigned int)a3
{
  fQueue = self->fQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100463224;
  v4[3] = &unk_102455868;
  v4[4] = self;
  v5 = a3;
  dispatch_async(fQueue, v4);
}

- (void)_processReceivedWiFiDeviceLinkScore:(unsigned int)a3
{
  v3 = *&a3;
  dispatch_assert_queue_V2(self->fQueue);
  fReceivedCallBacks = self->fReceivedCallBacks;
  if (fReceivedCallBacks)
  {
    if (!-[NSMutableDictionary objectForKey:](fReceivedCallBacks, "objectForKey:", @"lqmKey") || -[NSMutableDictionary objectForKey:](self->fReceivedCallBacks, "objectForKey:", @"lqmKey") && [-[NSMutableDictionary objectForKey:](self->fReceivedCallBacks objectForKey:{@"lqmKey", "unsignedIntValue"}] != v3)
    {
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v6 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315394;
        v9 = "[CLEmergencyWifiAvailability _processReceivedWiFiDeviceLinkScore:]";
        v10 = 1024;
        v11 = v3;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "%s, linkScore, %u", &v8, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101886184(v3);
      }

      [(NSMutableDictionary *)self->fReceivedCallBacks setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v3], @"lqmKey"];
      [(CLEmergencyWifiAvailability *)self submitWifiAvailabilityEventToBiome];
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v7 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[CLEmergencyWifiAvailability _processReceivedWiFiDeviceLinkScore:]";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%s, skipping, callbacks nil", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886290();
    }
  }
}

@end