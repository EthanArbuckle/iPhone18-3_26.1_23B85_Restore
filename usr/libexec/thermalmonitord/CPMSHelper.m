@interface CPMSHelper
+ (id)sharedInstance;
- (BOOL)isCPMSSupportedClient:(int)a3;
- (CPMSHelper)init;
- (int)getMitigationTypeForClientID:(unsigned __int8)a3;
- (unsigned)getMaxPowerForComponent:(int)a3;
- (unsigned)getMinPowerForComponent:(int)a3;
- (void)dealloc;
- (void)publishDetailedMitigationArrayToCPMS;
- (void)requestCurrentPowerCallbackForComponent:(int)a3;
- (void)setPowerBudget:(unsigned int)a3 withDetails:(unint64_t)a4 forCPMSClient:(unsigned __int8)a5 atIdx:(int)a6;
- (void)updateCPMSClientState:(int)a3;
@end

@implementation CPMSHelper

+ (id)sharedInstance
{
  if (qword_1000A24E8 != -1)
  {
    sub_100051E84();
  }

  return qword_1000A24F0;
}

- (void)publishDetailedMitigationArrayToCPMS
{
  count = self->detailMitigationArray.count;
  if (count >= 1)
  {
    if (byte_1000AB2F8 == 1)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = count;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Publishing detailed mitigation array to CPMS with mitigation count: %d", v5, 8u);
      }
    }

    if (IOConnectCallStructMethod(self->connect, 0x23u, &self->detailMitigationArray, 0x218uLL, 0, 0))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100052070();
      }
    }

    self->detailMitigationArray.count = 0;
  }
}

- (CPMSHelper)init
{
  v14.receiver = self;
  v14.super_class = CPMSHelper;
  v2 = [(CPMSHelper *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->detailMitigationArray.count = 0;
    v4 = IOServiceMatching("ApplePPM");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v3->cpmsService = MatchingService;
    if (MatchingService)
    {
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &v3->connect))
      {
        v6 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> CPMSHelper: Could not open connection to PPM service", v13, 2u);
        }
      }

      if (byte_1000AB2F8 == 1)
      {
        v7 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> CPMS Helper, creating peak pressure token", v13, 2u);
        }
      }

      if (notify_register_check("com.apple.system.peakpowerpressurelevel", &v3->_peakPowerPressureNotificationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051E98();
      }

      v8 = dispatch_queue_create("com.apple.ThermalMonitor.CPMSHelper", 0);
      v3->_cpmsHelperQueue = v8;
      if (!v8 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051ED8();
      }

      [(CPMSHelper *)v3 setNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
      IOServiceAddInterestNotification(v3->notificationPort, v3->cpmsService, "IOGeneralInterest", sub_1000051A4, v3, &v3->_notification);
      Current = CFRunLoopGetCurrent();
      RunLoopSource = IONotificationPortGetRunLoopSource([(CPMSHelper *)v3 notificationPort]);
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    }

    else
    {
      v11 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> CPMSHelper: Could not find PPM service", v13, 2u);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  ioIterator = self->_ioIterator;
  if (ioIterator)
  {
    IOObjectRelease(ioIterator);
  }

  if ([(CPMSHelper *)self notificationPort])
  {
    IONotificationPortDestroy([(CPMSHelper *)self notificationPort]);
  }

  v5.receiver = self;
  v5.super_class = CPMSHelper;
  [(CPMSHelper *)&v5 dealloc];
}

- (BOOL)isCPMSSupportedClient:(int)a3
{
  if (byte_100085740[24 * a3] == 255)
  {
    return 0;
  }

  else
  {
    return byte_1000A24F8[1568 * byte_100085740[24 * a3] + 280];
  }
}

- (void)setPowerBudget:(unsigned int)a3 withDetails:(unint64_t)a4 forCPMSClient:(unsigned __int8)a5 atIdx:(int)a6
{
  v6 = self + 16 * a6;
  v6[16] = a5;
  *(v6 + 5) = a3;
  *(v6 + 3) = a4;
  ++self->detailMitigationArray.count;
}

- (unsigned)getMaxPowerForComponent:(int)a3
{
  v3 = &byte_100085740[24 * a3];
  if (*v3 == 255)
  {
    goto LABEL_10;
  }

  v4 = &byte_1000A24F8[1568 * *v3];
  if (v4[280] != 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v3 + 1);
      v11 = 136315138;
      v12[0] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Client:%s is not currently registered.", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = *(v4 + 76);
  if (byte_1000AB2F8 == 1)
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 1);
      v11 = 67109378;
      LODWORD(v12[0]) = v5;
      WORD2(v12[0]) = 2080;
      *(v12 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> Got maxPower of %dmW for client:%s", &v11, 0x12u);
    }
  }

  if (!v5)
  {
LABEL_10:
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000520E4(v3);
    }

    return 0;
  }

  return v5;
}

- (unsigned)getMinPowerForComponent:(int)a3
{
  v3 = &byte_100085740[24 * a3];
  if (*v3 == 255)
  {
    goto LABEL_10;
  }

  v4 = &byte_1000A24F8[1568 * *v3];
  if (v4[280] != 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v3 + 1);
      v11 = 136315138;
      v12[0] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Client:%s is not currently registered.", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = *(v4 + 73);
  if (byte_1000AB2F8 == 1)
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 1);
      v11 = 67109378;
      LODWORD(v12[0]) = v5;
      WORD2(v12[0]) = 2080;
      *(v12 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> Got minPower of %dmW for client:%s", &v11, 0x12u);
    }
  }

  if (v5 == -1)
  {
LABEL_10:
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100052158(v3);
    }

    return -1;
  }

  return v5;
}

- (void)requestCurrentPowerCallbackForComponent:(int)a3
{
  if ((a3 - 15) >= 3)
  {
    v3 = &byte_100085740[24 * a3];
    input = *v3;
    if (input == 255)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000521CC(v3);
      }
    }

    else
    {
      reference[0] = 0;
      v19 = 0u;
      v20 = 0u;
      reference[1] = sub_100018FCC;
      v18 = self;
      connect = self->connect;
      MachPort = IONotificationPortGetMachPort([(CPMSHelper *)self notificationPort]);
      v6 = IOConnectCallAsyncScalarMethod(connect, 0x20u, MachPort, reference, 8u, &input, 1u, 0, 0);
      if (v6)
      {
        v7 = v6;
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          v9 = *(v3 + 1);
          *buf = 67109634;
          v12 = v7;
          v13 = 2048;
          v14 = input;
          v15 = 2080;
          v16 = v9;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<Error> IOConnect call to kAppleCPMSPPMGetCurrentPowerConsumption returned 0x%08x for clientID: %llu %s\n", buf, 0x1Cu);
        }
      }
    }
  }
}

- (void)updateCPMSClientState:(int)a3
{
  v3 = &byte_100085740[24 * a3];
  v4 = *v3;
  input = v4;
  if (v4 != 255)
  {
    v9 = 1568;
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v3 + 1);
        *buf = 67109634;
        v12 = a3;
        v13 = 2080;
        v14 = v8;
        v15 = 2048;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Updating client state for mitigationType:%d, ClientName:%s PPMClientId:%llu", buf, 0x1Cu);
      }
    }

    if (IOConnectCallMethod(self->connect, 0x1Du, &input, 1u, 0, 0, 0, 0, &byte_1000A24F8[1568 * v4], &v9))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005234C(v3);
      }
    }
  }
}

- (int)getMitigationTypeForClientID:(unsigned __int8)a3
{
  v3 = 0;
  v4 = byte_100085740;
  while (1)
  {
    v5 = *v4;
    v4 += 24;
    if (v5 == a3)
    {
      break;
    }

    if (++v3 == 18)
    {
      LODWORD(v3) = -1;
      return v3;
    }
  }

  return v3;
}

@end