@interface RPHIDDaemon
- (BOOL)_setupHIDGCDeviceWithOptions:(id)options andReturnError:(id *)error;
- (BOOL)_setupHIDTouchDeviceAndReturnError:(id *)error;
- (BOOL)activateAndReturnError:(id *)error;
- (void)_activateScreenSaverWithResponseHandler:(id)handler;
- (void)_handleCommand:(id)command responseHandler:(id)handler;
- (void)_handleGameControllerAuxEvent:(int64_t)event pressed:(int64_t)pressed;
- (void)_handleGameControllerEvent:(id)event;
- (void)_handleGameControllerStart:(id)start responseHandler:(id)handler;
- (void)_handleGameControllerStop:(id)stop responseHandler:(id)handler;
- (void)_handleTouchEvent:(id)event;
- (void)_handleTouchStart:(id)start responseHandler:(id)handler;
- (void)_handleTouchStop:(id)stop responseHandler:(id)handler;
- (void)_setupHIDGCSenderIDIfNeeded;
- (void)_setupHIDSenderIDIfNeeded;
- (void)_sleepSystemWithResponseHandler:(id)handler;
- (void)_wakeSystemWithResponseHandler:(id)handler;
- (void)invalidate;
@end

@implementation RPHIDDaemon

- (BOOL)activateAndReturnError:(id *)error
{
  v5 = self->_messenger;
  if (!v5)
  {
    v10 = RPErrorF();
    if (dword_1001D3948 > 90 || dword_1001D3948 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_10011796C();
  }

  self->_epochResetTicks = SecondsToUpTicksF();
  if (!self->_hidClient)
  {
    v6 = IOHIDEventSystemClientCreate();
    self->_hidClient = v6;
    if (!v6)
    {
      v10 = RPErrorF();
      if (dword_1001D3948 > 90 || dword_1001D3948 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  if (self->_hidGCClient || (v7 = IOHIDEventSystemClientCreate(), (self->_hidGCClient = v7) != 0))
  {
    v20 = @"statusFlags";
    v21 = &off_1001B7E58;
    v8 = 1;
    v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000558F0;
    v19[3] = &unk_1001AB798;
    v19[4] = self;
    [(RPMessageable *)v5 registerRequestID:@"_hidC" options:v9 handler:v19];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000558FC;
    v18[3] = &unk_1001AB798;
    v18[4] = self;
    [(RPMessageable *)v5 registerRequestID:@"_touchStart" options:v9 handler:v18];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100055908;
    v17[3] = &unk_1001AB798;
    v17[4] = self;
    [(RPMessageable *)v5 registerRequestID:@"_touchStop" options:v9 handler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100055914;
    v16[3] = &unk_1001AC870;
    v16[4] = self;
    [(RPMessageable *)v5 registerEventID:@"_hidT" options:v9 handler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100055920;
    v15[3] = &unk_1001AB798;
    v15[4] = self;
    [(RPMessageable *)v5 registerRequestID:@"_gcStart" options:v9 handler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005592C;
    v14[3] = &unk_1001AB798;
    v14[4] = self;
    [(RPMessageable *)v5 registerRequestID:@"_gcStop" options:v9 handler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100055938;
    v13[3] = &unk_1001AC870;
    v13[4] = self;
    [(RPMessageable *)v5 registerEventID:@"_hidGC" options:v9 handler:v13];

    goto LABEL_16;
  }

  v10 = RPErrorF();
  if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
LABEL_20:
    sub_100117988();
  }

LABEL_13:
  if (error)
  {
    v11 = v10;
    *error = v10;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (void)invalidate
{
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_1001179C8();
  }

  [(RPMessageable *)self->_messenger deregisterRequestID:@"_hidC"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_touchStart"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_touchStop"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_hidT"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_gcStart"];
  [(RPMessageable *)self->_messenger deregisterRequestID:@"_gcStop"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_hidGC"];
  messenger = self->_messenger;
  self->_messenger = 0;

  hidClient = self->_hidClient;
  if (hidClient)
  {
    CFRelease(hidClient);
    self->_hidClient = 0;
  }

  hidGCClient = self->_hidGCClient;
  if (hidGCClient)
  {
    CFRelease(hidGCClient);
    self->_hidGCClient = 0;
  }
}

- (void)_handleCommand:(id)command responseHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = CFDictionaryGetInt64Ranged();
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    if (Int64Ranged > 0x13)
    {
      v9 = "?";
    }

    else
    {
      v9 = (&off_1001AC8B8)[Int64Ranged & 0x1F];
    }

    if (v8 > 2)
    {
      v10 = "?";
    }

    else
    {
      v10 = (&off_1001AC958)[v8 & 3];
    }

    v16 = v10;
    v17 = commandCopy;
    v15 = v9;
    LogPrintF();
  }

  switch(Int64Ranged)
  {
    case 1u:
      selfCopy15 = self;
      v12 = 1;
      v13 = 140;
      goto LABEL_33;
    case 2u:
      selfCopy15 = self;
      v12 = 1;
      goto LABEL_25;
    case 3u:
      selfCopy15 = self;
      v12 = 1;
      v13 = 139;
      goto LABEL_33;
    case 4u:
      selfCopy15 = self;
      v12 = 1;
      v13 = 138;
      goto LABEL_33;
    case 5u:
      selfCopy15 = self;
      v12 = 1;
      v13 = 134;
      goto LABEL_33;
    case 6u:
      [(RPHIDDaemon *)self _handleSelectWithButtonState:v8];
      goto LABEL_34;
    case 7u:
      selfCopy15 = self;
      v12 = 12;
      v13 = 96;
      goto LABEL_33;
    case 8u:
      selfCopy15 = self;
      v12 = 12;
      v13 = 233;
      goto LABEL_33;
    case 9u:
      selfCopy15 = self;
      v12 = 12;
      v13 = 234;
      goto LABEL_33;
    case 0xAu:
      selfCopy15 = self;
      v12 = 12;
      v13 = 4;
      goto LABEL_33;
    case 0xBu:
      [(RPHIDDaemon *)self _activateScreenSaverWithResponseHandler:handlerCopy];
      break;
    case 0xCu:
      [(RPHIDDaemon *)self _sleepSystemWithResponseHandler:handlerCopy];
      break;
    case 0xDu:
      [(RPHIDDaemon *)self _wakeSystemWithResponseHandler:handlerCopy];
      break;
    case 0xEu:
      selfCopy15 = self;
      v12 = 12;
      v13 = 205;
      goto LABEL_33;
    case 0xFu:
      selfCopy15 = self;
      v12 = 7;
      v13 = 75;
      goto LABEL_33;
    case 0x10u:
      selfCopy15 = self;
      v12 = 7;
      v13 = 78;
      goto LABEL_33;
    case 0x11u:
      selfCopy15 = self;
      v12 = 12;
LABEL_25:
      v13 = 141;
      goto LABEL_33;
    case 0x12u:
      selfCopy15 = self;
      v12 = 12;
      v13 = 226;
      goto LABEL_33;
    case 0x13u:
      selfCopy15 = self;
      v12 = 12;
      v13 = 48;
LABEL_33:
      [(RPHIDDaemon *)selfCopy15 _injectKeyboardEventUsagePage:v12 usageCode:v13 buttonState:v8, v15, v16, v17];
LABEL_34:
      (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
      break;
    default:
      v14 = RPErrorF();
      if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
      {
        sub_1001179E4();
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);

      break;
  }
}

- (void)_activateScreenSaverWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v3 = RPErrorF();
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117A24();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v3);
}

- (void)_sleepSystemWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v3 = RPErrorF();
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117B20();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v3);
}

- (void)_wakeSystemWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v3 = RPErrorF();
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117B60();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v3);
}

- (void)_handleGameControllerStart:(id)start responseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  [(RPHIDDaemon *)self _setupHIDGCDeviceWithOptions:start andReturnError:&v8];
  v7 = v8;
  if (v7)
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117BA0();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
  }
}

- (void)_handleGameControllerStop:(id)stop responseHandler:(id)handler
{
  handlerCopy = handler;
  hidGCDevice = self->_hidGCDevice;
  if (hidGCDevice)
  {
    CFRelease(hidGCDevice);
    self->_hidGCDevice = 0;
  }

  self->_hidGCSenderID = 0;
  self->_hidGCSenderIDInitialized = 0;
  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleGameControllerAuxEvent:(int64_t)event pressed:(int64_t)pressed
{
  mach_absolute_time();
  v5 = IOHIDEventCreate();
  if (v5)
  {
    v6 = v5;
    IOHIDEventSetEventFlags();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    hidGCSenderID = self->_hidGCSenderID;
    IOHIDEventSetSenderID();
    hidGCClient = self->_hidGCClient;
    IOHIDEventSystemClientDispatchEvent();

    CFRelease(v6);
  }

  else
  {
    sub_100117BE0();
  }
}

- (void)_handleGameControllerEvent:(id)event
{
  eventCopy = event;
  v12 = eventCopy;
  if (self->_hidGCClient && eventCopy && ([(RPHIDDaemon *)self _setupHIDGCSenderIDIfNeeded], self->_hidGCSenderID) && (mach_absolute_time(), (v5 = IOHIDEventCreate()) != 0))
  {
    v6 = v5;
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetInt64Ranged();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetInt64Ranged();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetIntegerValue();
    hidGCSenderID = self->_hidGCSenderID;
    IOHIDEventSetSenderID();
    hidGCClient = self->_hidGCClient;
    IOHIDEventSystemClientDispatchEvent();
    CFRelease(v6);
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v10 = CFDictionaryGetInt64Ranged();
    v11 = CFDictionaryGetInt64Ranged();
    if ((Int64Ranged & 0xFFFFFF00) != 0)
    {
      [(RPHIDDaemon *)self _handleGameControllerAuxEvent:547 pressed:Int64Ranged & 1];
    }

    if ((v10 & 0xFFFFFF00) != 0)
    {
      [(RPHIDDaemon *)self _handleGameControllerAuxEvent:516 pressed:v10 & 1];
    }

    if ((v11 & 0xFFFFFF00) != 0)
    {
      [(RPHIDDaemon *)self _handleGameControllerAuxEvent:521 pressed:v11 & 1];
    }
  }

  else
  {
    sub_100117C54();
  }
}

- (BOOL)_setupHIDGCDeviceWithOptions:(id)options andReturnError:(id *)error
{
  if (self->_hidGCDevice)
  {
    return 1;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v21 = xmmword_1001485E8;
  v22[0] = unk_1001485F8;
  *(v22 + 9) = unk_100148601;
  v17 = xmmword_1001485A8;
  v18 = unk_1001485B8;
  v19 = xmmword_1001485C8;
  v20 = unk_1001485D8;
  v15 = xmmword_100148588;
  v16 = unk_100148598;
  v8 = [[NSData alloc] initWithBytes:&v15 length:137];
  [v7 setObject:v8 forKeyedSubscript:{@"ReportDescriptor", v15, v16, v17, v18, v19, v20, v21, v22[0], v22[1]}];

  [v7 setObject:&off_1001B7E70 forKeyedSubscript:@"VendorID"];
  [v7 setObject:&off_1001B7E88 forKeyedSubscript:@"ProductID"];
  [v7 setObject:@"Rapport" forKeyedSubscript:@"Transport"];
  [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"DisplayIntegrated"];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
  v9 = objc_alloc_init(NSUUID);
  uUIDString = [v9 UUIDString];
  [v7 setObject:uUIDString forKeyedSubscript:@"PhysicalDeviceUniqueID"];

  [v7 setObject:@"Generic Extended Controller" forKeyedSubscript:@"Product"];
  [v7 setObject:&off_1001B7EA0 forKeyedSubscript:@"DeviceUsagePage"];
  [v7 setObject:&off_1001B7EB8 forKeyedSubscript:@"DeviceUsage"];
  v11 = IOHIDUserDeviceCreate();
  self->_hidGCDevice = v11;
  v4 = v11 != 0;
  if (v11)
  {
    v12 = v11;
    v13 = CUMainQueue();
    IOHIDUserDeviceSetDispatchQueue(v12, v13);

    IOHIDUserDeviceActivate(self->_hidGCDevice);
  }

  else
  {
    sub_100117CD0(error);
  }

  return v4;
}

- (void)_setupHIDGCSenderIDIfNeeded
{
  if (!self->_hidGCSenderIDInitialized && self->_hidGCDevice)
  {
    self->_hidGCSenderID = 0;
    v3 = IOHIDUserDeviceCopyService();
    if (v3)
    {
      v4 = v3;
      child = 0;
      ChildEntry = IORegistryEntryGetChildEntry(v3, "IOService", &child);
      IOObjectRelease(v4);
      if (ChildEntry)
      {
        if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
        {
          sub_100117D14();
        }
      }

      else
      {
        entry = 0;
        v6 = IORegistryEntryGetChildEntry(child, "IOService", &entry);
        IOObjectRelease(child);
        if (v6)
        {
          if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100117D54();
          }
        }

        else
        {
          RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, &self->_hidGCSenderID);
          self->_hidGCSenderIDInitialized = 1;
          IOObjectRelease(entry);
          if (RegistryEntryID && dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100117D94();
          }
        }
      }
    }

    else if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117DD4();
    }
  }
}

- (void)_handleTouchStart:(id)start responseHandler:(id)handler
{
  startCopy = start;
  handlerCopy = handler;
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117DF0();
  }

  v10 = 0;
  [(RPHIDDaemon *)self _setupHIDTouchDeviceAndReturnError:&v10];
  v8 = v10;
  if (v8)
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117E30();
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }

  else
  {
    v11 = @"_i";
    v12 = &off_1001B7EA0;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    (*(handlerCopy + 2))(handlerCopy, v9, 0, 0);
  }
}

- (void)_handleTouchStop:(id)stop responseHandler:(id)handler
{
  stopCopy = stop;
  handlerCopy = handler;
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117E70();
  }

  activeTouchEventMap = self->_activeTouchEventMap;
  self->_activeTouchEventMap = 0;

  self->_lastEventTicks = 0;
  hidTouchDevice = self->_hidTouchDevice;
  if (hidTouchDevice)
  {
    CFRelease(hidTouchDevice);
    self->_hidTouchDevice = 0;
  }

  self->_hidSenderID = 0;
  self->_hidSenderIDInitialized = 0;
  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleTouchEvent:(id)event
{
  eventCopy = event;
  if (!self->_hidTouchDevice)
  {
    if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117EB0();
    }

    v39 = 0;
    [(RPHIDDaemon *)self _setupHIDTouchDeviceAndReturnError:&v39];
    v5 = v39;
    if (!self->_hidTouchDevice)
    {
      sub_100117FA4(v5);
      goto LABEL_41;
    }
  }

  v6 = mach_absolute_time();
  if (dword_1001D3948 <= 50 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117ECC();
  }

  v37 = 0;
  v38 = 0;
  v7 = NSDictionaryGetNSNumber();
  v8 = v7;
  v9 = &off_1001B7ED0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  LODWORD(v37) = [v10 intValue];
  LODWORD(v38) = CFDictionaryGetInt64Ranged();
  WORD2(v37) = CFDictionaryGetInt64Ranged();
  HIWORD(v37) = CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64();
  if (!self->_activeTouchEventMap)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    activeTouchEventMap = self->_activeTouchEventMap;
    self->_activeTouchEventMap = v11;
  }

  v13 = [[NSValue alloc] initWithBytes:&v37 objCType:"{?=iSSiB}"];
  [(NSMutableDictionary *)self->_activeTouchEventMap setObject:v13 forKeyedSubscript:v10];

  if (v38 == 1)
  {
    self->_remoteTouchBeganTicks = NanosecondsToUpTicks();
    self->_localTouchBeganTicks = v6;
    self->_lastEventTicks = v6;
    if (dword_1001D3948 <= 10)
    {
      if (dword_1001D3948 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        remoteTouchBeganTicks = self->_remoteTouchBeganTicks;
      }

      UpTicksToSecondsF();
      v15 = v14;
      localTouchBeganTicks = self->_localTouchBeganTicks;
      UpTicksToSecondsF();
      v27 = v15;
      v28 = v17;
      LogPrintF();
    }
  }

LABEL_19:
  v18 = NanosecondsToUpTicks();
  v19 = self->_localTouchBeganTicks;
  if (v6 - self->_lastEventTicks >= self->_epochResetTicks)
  {
    v20 = v6 - v19;
  }

  else
  {
    v20 = v18 - self->_remoteTouchBeganTicks;
  }

  v21 = v19 + v20;
  if (v21 >= v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = v21;
  }

  if (dword_1001D3948 <= 10 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117F0C();
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3010000000;
  v35 = &unk_10017AC26;
  v36[0] = 0;
  *(v36 + 5) = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v23 = self->_activeTouchEventMap;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100057324;
  v29[3] = &unk_1001AC898;
  v29[4] = &v32;
  v29[5] = v30;
  [(NSMutableDictionary *)v23 enumerateKeysAndObjectsUsingBlock:v29, v27, v28];
  v24 = v38;
  v25 = v33;
  *(v33 + 44) = v38 == 5;
  if ((v24 - 1) >= 3)
  {
    [(NSMutableDictionary *)self->_activeTouchEventMap setObject:0 forKeyedSubscript:v10];
    v25 = v33;
  }

  if (IOHIDUserDeviceHandleReportWithTimeStamp(self->_hidTouchDevice, v22, v25 + 32, 13))
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (dword_1001D3948 <= 50 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSecondsF();
    LogPrintF();
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

LABEL_41:
}

- (BOOL)_setupHIDTouchDeviceAndReturnError:(id *)error
{
  if (self->_hidTouchDevice)
  {
    return 1;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_1001B7EE8 forKeyedSubscript:@"VendorID"];
  [v6 setObject:&off_1001B7F00 forKeyedSubscript:@"ProductID"];
  [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"DisplayIntegrated"];
  [v6 setObject:@"Rapport" forKeyedSubscript:@"Transport"];
  *v12 = xmmword_100148631;
  *&v12[16] = unk_100148641;
  v15 = xmmword_100148671;
  v16 = unk_100148681;
  v17 = xmmword_100148691;
  v13 = xmmword_100148651;
  v14 = unk_100148661;
  v10 = xmmword_100148611;
  v11 = unk_100148621;
  LODWORD(v18) = -1073638137;
  *&v12[15] = 1000;
  HIWORD(v15) = 1000;
  *&v12[28] = 1000;
  *(&v16 + 11) = 1000;
  v7 = [[NSData alloc] initWithBytes:&v10 length:148];
  [v6 setObject:v7 forKeyedSubscript:{@"ReportDescriptor", v10, v11, *v12, *&v12[16], v13, v14, v15, v16, v17, v18}];

  v8 = IOHIDUserDeviceCreate();
  self->_hidTouchDevice = v8;
  v3 = v8 != 0;
  if (!v8)
  {
    sub_100117CD0(error);
  }

  return v3;
}

- (void)_setupHIDSenderIDIfNeeded
{
  if (!self->_hidSenderIDInitialized && self->_hidTouchDevice)
  {
    self->_hidSenderID = 0;
    p_hidSenderID = &self->_hidSenderID;
    self->_hidSenderIDInitialized = 1;
    v3 = IOHIDUserDeviceCopyService();
    if (v3)
    {
      v4 = v3;
      child = 0;
      ChildEntry = IORegistryEntryGetChildEntry(v3, "IOService", &child);
      IOObjectRelease(v4);
      if (ChildEntry)
      {
        if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
        {
          sub_100118038();
        }
      }

      else
      {
        entry = 0;
        v6 = IORegistryEntryGetChildEntry(child, "IOService", &entry);
        IOObjectRelease(child);
        if (v6)
        {
          if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100118078();
          }
        }

        else
        {
          RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, p_hidSenderID);
          IOObjectRelease(entry);
          if (RegistryEntryID && dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_1001180B8();
          }
        }
      }
    }

    else if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_1001180F8();
    }
  }
}

@end