@interface misCTClientSharedInstance
+ (id)sharedInstance;
- (BOOL)registerCellularDataStatusNotification:(BOOL)a3 callback:(void *)a4 callbackArg:(void *)a5;
- (__CTServerConnection)ctServerConnection;
- (int)activateTethering:(BOOL)a3;
- (int)getTetheringInterfaceName:(char *)a3;
- (int)getTetheringStatus:(mis_ctinterface_tethering_status *)a3;
- (int)isDataPlanEnabled:(BOOL *)a3;
- (misCTClientSharedInstance)init;
- (void)_setupCTServerConnection;
- (void)_updateDualSimStatus;
- (void)convertConnectionStatus:(id)a3 ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)a4;
- (void)convertTetheringStatus:(mis_ctinterface_tethering_status *)a3 CTStatus:(id)a4;
- (void)dealloc;
- (void)handleCTNotification:(__CFString *)a3 notificationInfo:(__CFDictionary *)a4;
- (void)processCTConnectionActivationError;
- (void)processCTConnectionStateChangeNotification:(id)a3 connection:(int)a4 connectionStatus:(id)a5 ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)a6;
- (void)processCTTetheringStatusChangeNotification:(id)a3;
@end

@implementation misCTClientSharedInstance

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E0DC;
  block[3] = &unk_1000310D8;
  block[4] = a1;
  if (qword_1000351D8 != -1)
  {
    dispatch_once(&qword_1000351D8, block);
  }

  return qword_1000351E0;
}

- (__CTServerConnection)ctServerConnection
{
  result = self->_ctServerConnection;
  if (!result)
  {
    [(misCTClientSharedInstance *)self _setupCTServerConnection];
    return self->_ctServerConnection;
  }

  return result;
}

- (misCTClientSharedInstance)init
{
  v5.receiver = self;
  v5.super_class = misCTClientSharedInstance;
  v2 = [(misCTClientSharedInstance *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(misCTClientSharedInstance *)v2 _setupCTServerConnection];
    v3->_CTAssertion = 0;
  }

  return v3;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  CTAssertion = self->_CTAssertion;
  if (CTAssertion)
  {
    CFRelease(CTAssertion);
    self->_CTAssertion = 0;
  }

  [(CoreTelephonyClient *)self->_ctClient setDelegate:0];
  sub_100001108();
  v5.receiver = self;
  v5.super_class = misCTClientSharedInstance;
  [(misCTClientSharedInstance *)&v5 dealloc];
}

- (void)_setupCTServerConnection
{
  if (!self->_ctServerConnection)
  {
    v3 = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = v3;
    if (!v3 || (sub_100001108(), v4 = [CoreTelephonyClient alloc], self->_ctClient = [v4 initWithQueue:qword_100034BD8], self->_ctClientDelegates = objc_alloc_init(misCTClientDelegates), ctServerConnection = self->_ctServerConnection, _CTServerConnectionRegisterForNotification() >> 32) || (v6 = self->_ctServerConnection, _CTServerConnectionRegisterForNotification() >> 32))
    {
      sub_100001108();
      if (self->_ctServerConnection)
      {
        sub_100001108();
        CFRelease(self->_ctServerConnection);
        self->_ctServerConnection = 0;
      }
    }
  }
}

- (BOOL)registerCellularDataStatusNotification:(BOOL)a3 callback:(void *)a4 callbackArg:(void *)a5
{
  v7 = a3;
  v9 = "NO";
  if (a3)
  {
    v9 = "YES";
  }

  v11 = v9;
  sub_100001108();
  if (!v7)
  {
    [(CoreTelephonyClient *)self->_ctClient setDelegate:0, v11];
    self->_eventCallback = 0;
    self->_eventCallbackArg = 0;
    return 1;
  }

  if (self->_ctServerConnection)
  {
    [(CoreTelephonyClient *)self->_ctClient setDelegate:self->_ctClientDelegates, v11];
    self->_eventCallback = a4;
    self->_eventCallbackArg = a5;
    return 1;
  }

  sub_100001108();
  return 0;
}

- (void)_updateDualSimStatus
{
  v6 = 0;
  self->_isDualSim = 0;
  ctClient = self->_ctClient;
  if (ctClient)
  {
    v4 = [(CoreTelephonyClient *)ctClient getSubscriptionInfoWithError:&v6];
    if (!v6)
    {
      v5 = v4;
      if (v4)
      {
        if ([v4 subscriptionsInUse])
        {
          if ([objc_msgSend(v5 "subscriptionsInUse")] <= 1)
          {
            self->_isDualSim;
          }

          else
          {
            self->_isDualSim = 1;
          }
        }
      }
    }
  }

  sub_100001108();
}

- (int)activateTethering:(BOOL)a3
{
  if (!self->_ctClient)
  {
    sub_100001108();
    return -1;
  }

  v3 = a3;
  if (![(misCTClientSharedInstance *)self ctServerConnection])
  {
    sub_1000219C4();
  }

  if (v3)
  {
    v9 = 0;
    sub_100001108();
    ctClient = self->_ctClient;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E680;
    v8[3] = &unk_100031128;
    v8[4] = self;
    self->_CTAssertion = [(CoreTelephonyClient *)ctClient createAssertionForConnectionType:4 allocator:0 error:&v9 onReAssertError:v8, "[misCTClientSharedInstance activateTethering:]"];
    result = v9;
    if (v9)
    {
      v7 = [objc_msgSend(v9 "description")];
      sub_100001108();
      [(misCTClientSharedInstance *)self activateTethering:0, "[misCTClientSharedInstance activateTethering:]", v7];
      return -1;
    }
  }

  else if (self->_CTAssertion)
  {
    sub_100001108();
    CFRelease(self->_CTAssertion);
    result = 0;
    self->_CTAssertion = 0;
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)convertConnectionStatus:(id)a3 ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)a4
{
  v6 = [NSMutableString stringWithCapacity:20];
  v7 = [a3 state];
  if (v7 >= 4)
  {
    [a3 state];
    sub_100001108();
  }

  else
  {
    v8 = v7 + 1;
    [(NSMutableString *)v6 setString:*(&off_100031148 + v7)];
    a4->var0 = v8;
    v9 = [(NSMutableString *)v6 UTF8String];
    v10 = [objc_msgSend(a3 "interfaceName")];
    v11 = [objc_msgSend(a3 "pdp")];
    sub_100001108();
    if ([a3 interfaceName])
    {
      strncpy(a4->var2, [objc_msgSend(a3 "interfaceName")], 0xFuLL);
      a4->var1 = [objc_msgSend(a3 "pdp")];
    }

    else
    {
      a4->var2[0] = 0;
      a4->var1 = -1;
    }
  }
}

- (void)convertTetheringStatus:(mis_ctinterface_tethering_status *)a3 CTStatus:(id)a4
{
  if (![a4 carrierEnabled] || !objc_msgSend(objc_msgSend(a4, "carrierEnabled"), "intValue"))
  {
    a3->var0 = 0;
LABEL_9:
    a3->var1 = 0;
    goto LABEL_10;
  }

  a3->var0 = 1;
  if (![a4 userAuthenticated] || !objc_msgSend(objc_msgSend(a4, "userAuthenticated"), "intValue"))
  {
    goto LABEL_9;
  }

  a3->var1 = 1;
  if ([a4 connectionAvailabilityStatus] && (objc_msgSend(objc_msgSend(a4, "connectionAvailabilityStatus"), "available") & 1) != 0)
  {
    v7 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  a3->var2 = v7;
  if ([a4 misPdpMaxHosts])
  {
    v8 = [objc_msgSend(a4 "misPdpMaxHosts")];
  }

  else
  {
    v8 = 3;
  }

  a3->var3 = v8;
  v9 = [a4 connectionStatus];

  [(misCTClientSharedInstance *)self convertConnectionStatus:v9 ctInterfaceConnStatus:&a3->var4];
}

- (int)getTetheringStatus:(mis_ctinterface_tethering_status *)a3
{
  v9 = 0;
  ctClient = self->_ctClient;
  if (!ctClient)
  {
    goto LABEL_4;
  }

  v6 = [(CoreTelephonyClient *)ctClient getTetheringStatusSync:&v9 connectionType:4];
  if (v9)
  {
    [objc_msgSend(v9 "domain")];
    [v9 code];
    [objc_msgSend(v9 "description")];
LABEL_4:
    sub_100001108();
    return -1;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  [(misCTClientSharedInstance *)self convertTetheringStatus:a3 CTStatus:v6];
  a3->var0;
  a3->var1;
  a3->var2;
  var3 = a3->var3;
  [objc_msgSend(objc_msgSend(v6 "connectionStatus")];
  sub_100001108();
  return 0;
}

- (int)getTetheringInterfaceName:(char *)a3
{
  v6 = 0u;
  *v7 = 0u;
  v4 = [(misCTClientSharedInstance *)self getTetheringStatus:&v6];
  result = -1;
  if (!v4)
  {
    if (v7[0])
    {
      strncpy(a3, v7, 0xFuLL);
      return 0;
    }
  }

  return result;
}

- (int)isDataPlanEnabled:(BOOL *)a3
{
  *a3 = 0;
  [(misCTClientSharedInstance *)self ctServerConnection];
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v4 = 0;
  if (HIDWORD(IsEnabled))
  {
    sub_100001108();
    return 12;
  }

  return v4;
}

- (void)processCTTetheringStatusChangeNotification:(id)a3
{
  if (a3)
  {
    memset(v5, 0, sizeof(v5));
    [(misCTClientSharedInstance *)self convertTetheringStatus:v5 CTStatus:a3];
    eventCallback = self->_eventCallback;
    if (eventCallback)
    {
      eventCallback(1, v5, self->_eventCallbackArg);
    }
  }

  else
  {

    sub_100001108();
  }
}

- (void)processCTConnectionStateChangeNotification:(id)a3 connection:(int)a4 connectionStatus:(id)a5 ctInterfaceConnStatus:(mis_ctinterface_ct_conn_status *)a6
{
  if (a4 == 4)
  {
    [(misCTClientSharedInstance *)self convertConnectionStatus:a5 ctInterfaceConnStatus:a6];
    eventCallback = self->_eventCallback;
    if (eventCallback)
    {
      eventCallbackArg = self->_eventCallbackArg;

      eventCallback(2, a6, eventCallbackArg);
    }
  }

  else
  {
    sub_100001108();
  }
}

- (void)processCTConnectionActivationError
{
  eventCallback = self->_eventCallback;
  if (eventCallback)
  {
    eventCallback(3, 0, self->_eventCallbackArg);
  }
}

- (void)handleCTNotification:(__CFString *)a3 notificationInfo:(__CFDictionary *)a4
{
  if (!self->_eventCallback)
  {
    goto LABEL_4;
  }

  if (!CFEqual(a3, kCTConnectionInvalidatedNotification))
  {
    if (CFEqual(a3, kCTDaemonReadyNotification))
    {
      v7 = 5;
      goto LABEL_7;
    }

    CFStringGetCStringPtr(a3, 0x8000100u);
LABEL_4:
    sub_100001108();
    return;
  }

  v7 = 4;
LABEL_7:
  eventCallback = self->_eventCallback;
  eventCallbackArg = self->_eventCallbackArg;

  eventCallback(v7, a4, eventCallbackArg);
}

@end