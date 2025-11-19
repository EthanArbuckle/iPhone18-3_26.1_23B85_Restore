@interface CBStackClassicScannerBTStack
- (CBStackClassicScannerBTStack)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_deviceFound:(void *)a3 deviceUUID:(id)a4;
- (void)_deviceLost:(id)a3;
- (void)_discoveryEvent:(int)a3 device:(BTDeviceImpl *)a4 attributes:(unsigned int)a5;
- (void)_invalidated;
- (void)_statusEvent:(int)a3 device:(BTDeviceImpl *)a4 result:(int)a5;
- (void)activate;
- (void)invalidate;
@end

@implementation CBStackClassicScannerBTStack

- (CBStackClassicScannerBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackClassicScannerBTStack;
  v2 = [(CBStackClassicScannerBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    v5 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  if (v4 < 0x15)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000421F4;
    v26 = sub_10004258C;
    v27 = 0;
    v21 = 0;
    v12 = [objc_opt_class() description];
    NSAppendPrintF_safe();
    objc_storeStrong(&v27, 0);

    v7 = v23;
    obj = v23[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v7 + 5, obj);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    deviceMap = self->_deviceMap;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100115D20;
    v14[3] = &unk_100ADF7F8;
    v14[4] = &v22;
    v14[5] = &v16;
    v15 = v4;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v14, v12, v5];
    if (v5 > v17[3])
    {
      v9 = v23;
      v13 = v23[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v9 + 5, v13);
    }

    _Block_object_dispose(&v16, 8);
    v6 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = [objc_opt_class() description];
    v6 = NSPrintF_safe();
  }

  return v6;
}

- (void)activate
{
  if (!self->_deviceFoundHandler)
  {
    sub_100806B10();
    goto LABEL_54;
  }

  v2 = self;
  if (!self->_deviceLostHandler)
  {
LABEL_54:
    sub_100806AF0();
    goto LABEL_55;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_55:
    sub_100806AD0();
    goto LABEL_56;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (v2->_invalidateCalled)
  {
LABEL_56:
    sub_100806AB0();
LABEL_57:
    sub_100806A74();
    goto LABEL_12;
  }

  v7 = sub_10000E92C();
  v2->_logPrivateData = (*(*v7 + 160))(v7);
  os_unfair_lock_lock(&unk_100B552F8);
  v8 = qword_100B552F0;
  if (!qword_100B552F0)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_100B552F0;
    qword_100B552F0 = v9;

    v8 = qword_100B552F0;
  }

  v11 = [NSNumber numberWithLong:v2];
  [v8 setObject:v2 forKeyedSubscript:v11];

  os_unfair_lock_unlock(&unk_100B552F8);
  p_btSession = &v2->_btSession;
  if (v2->_btSession)
  {
    goto LABEL_27;
  }

  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806A58();
  }

  v4 = [[NSString alloc] initWithFormat:@"CBDaemon-0x%X", CBXPCGetNextClientID()];
  if (qword_100B50B88 != -1)
  {
    goto LABEL_57;
  }

LABEL_12:
  v12 = qword_100B50B80;
  v13 = [v4 UTF8String];
  v14 = strlen(v13);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  v31 = v14;
  if (v14)
  {
    memmove(&__dst, v13, v14);
  }

  *(&__dst + v15) = 0;
  v16 = sub_100044414(v12, &__dst);
  v17 = v16;
  if (v31 < 0)
  {
    operator delete(__dst);
    if (!v17)
    {
      goto LABEL_26;
    }
  }

  else if (!v16)
  {
    goto LABEL_26;
  }

  v18 = *(p_info + 824);
  if (v18 <= 90 && (v18 != -1 || _LogCategory_Initialize()))
  {
    v23 = CUPrintErrorCode();
    LogPrintF_safe();
  }

LABEL_26:

  if (!*p_btSession)
  {
    goto LABEL_49;
  }

LABEL_27:
  if (v2->_btDiscoveryAgent)
  {
LABEL_49:
    if (v2->_profileChangedToken == -1)
    {
      v22 = v2->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001166BC;
      handler[3] = &unk_100ADF848;
      handler[4] = v2;
      notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &v2->_profileChangedToken, v22, handler);
    }

    return;
  }

  __dst = 0;
  v30 = 0;
  if (qword_100B50DB8 != -1)
  {
    sub_100806A88();
  }

  sub_1005C635C(off_100B50DB0, *p_btSession, &v2->_btDiscoveryAgent, &__dst);
  v19 = __dst;
  if (__dst)
  {
    *v28 = *off_100AE0BA8;
    sub_1005C1D20(__dst, v2->_btDiscoveryAgent, v28, v2);
    if (qword_100B50DB8 != -1)
    {
      sub_100806A88();
    }

    v20 = off_100B50DB0;
    v26 = __dst;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = sub_1005C6EBC(v20, &v26, 0, -1);
    if (v27)
    {
      sub_100117644(v27);
    }

    if (v21)
    {
      if (dword_100B50CE0 > 90)
      {
        goto LABEL_46;
      }

      if (dword_100B50CE0 != -1 || _LogCategory_Initialize())
      {
        v24 = CUPrintErrorCode();
        LogPrintF_safe();
      }
    }

    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_46:
  if (v30)
  {
    sub_100117644(v30);
  }

  if (v19)
  {
    goto LABEL_49;
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      sub_100806B30();
    }

    os_unfair_lock_lock(&unk_100B552F8);
    v3 = qword_100B552F0;
    v4 = [NSNumber numberWithLong:self];
    [v3 setObject:0 forKeyedSubscript:v4];

    os_unfair_lock_unlock(&unk_100B552F8);
    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    if (self->_btDiscoveryAgent)
    {
      if (qword_100B50DB8 != -1)
      {
        sub_100806B4C();
      }

      sub_1005C6734(off_100B50DB0, self->_btDiscoveryAgent);
      self->_btDiscoveryAgent = 0;
      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        sub_100806B60();
      }
    }

    if (self->_btSession)
    {
      if (qword_100B50B88 != -1)
      {
        sub_100806A74();
      }

      sub_100079604(qword_100B50B80, self->_btSession);
      self->_btSession = 0;
    }

    [(CBStackClassicScannerBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    v6 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (v6)
    {
      v6[2]();
    }

    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_deviceFound:(void *)a3 deviceUUID:(id)a4
{
  v6 = a4;
  if (!self->_invalidateCalled)
  {
    v20 = v6;
    v7 = [v6 UUIDString];
    v8 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = objc_alloc_init(CBDevice);
      [v10 setIdentifier:v7];
      [v10 setInternalFlags:128];
      v9 = 0x4000000;
      v8 = v10;
    }

    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | 0x4000000000000}];
    [v8 setChangeFlags:0];
    logPrivateData = self->_logPrivateData;
    v12 = [v8 internalFlags];
    if (logPrivateData)
    {
      v13 = 0x20000;
    }

    else
    {
      v13 = 0;
    }

    [v8 setInternalFlags:v13 | v12];
    v14 = [v8 updateWithClassicDevice:a3 deviceUUID:v20] | v9;
    [v8 setChangeFlags:{objc_msgSend(v8, "changeFlags") | v14}];
    [v8 setLastSeenTicks:mach_absolute_time()];
    if ((v14 & 0x4000000) != 0)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = self->_deviceMap;
        self->_deviceMap = v16;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v8 forKeyedSubscript:v7];
      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v18 = objc_retainBlock(self->_deviceFoundHandler);
      v19 = v18;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v18 = objc_retainBlock(self->_deviceFoundHandler);
      v19 = v18;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    (*(v18 + 2))(v18, v8);
LABEL_23:

    v6 = v20;
  }
}

- (void)_deviceLost:(id)a3
{
  v11 = a3;
  v4 = [v11 UUIDString];
  v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v4];
  logPrivateData = self->_logPrivateData;
  v7 = [v5 internalFlags];
  if (logPrivateData)
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0;
  }

  [v5 setInternalFlags:v8 | v7];
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v4];
    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v9 = objc_retainBlock(self->_deviceLostHandler);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v5);
    }
  }

  else if (dword_100B50CE0 <= 20 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_discoveryEvent:(int)a3 device:(BTDeviceImpl *)a4 attributes:(unsigned int)a5
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v5 = *&a5;
  if (qword_100B508F0 != -1)
  {
    sub_100806B7C();
  }

  v9 = sub_1000E41C0(off_100B508E8, a4);
  if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    if (a3 > 2)
    {
      v10 = "?";
      if (v9)
      {
LABEL_8:
        sub_1000E5A58(v9, __p);
        if (v23 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

LABEL_15:
        v20 = v11;
        v21 = v5;
        v19 = v10;
        LogPrintF_safe();
        if (v9 && v23 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v10 = off_100AE0C60[a3];
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

LABEL_18:
  v12 = v9[128];
  v13 = v9[129];
  v14 = v9[130];
  v15 = v9[131];
  v16 = v9[132];
  v17 = v9[133];
  v24[0] = 0;
  v24[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100806BBC();
  }

  sub_1000498D4(off_100B508C8, (v12 << 40) | (v13 << 32) | (v14 << 24) | (v15 << 16) | (v16 << 8) | v17, 1u, 1u, 0, 0, v24);
  v18 = sub_10004DF60(v24);
  if (v18)
  {
    if (!a3 || a3 == 2)
    {
      [(CBStackClassicScannerBTStack *)self _deviceFound:v9 deviceUUID:v18, v19, v20, v21];
    }

    else if (a3 == 1)
    {
      [(CBStackClassicScannerBTStack *)self _deviceLost:v18];
    }
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_statusEvent:(int)a3 device:(BTDeviceImpl *)a4 result:(int)a5
{
  if (!self->_invalidateCalled && self->_btDiscoveryAgent)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100806B7C();
    }

    v8 = sub_1000E41C0(off_100B508E8, a4);
    if (dword_100B50CE0 > 30 || (v9 = v8, dword_100B50CE0 == -1) && !_LogCategory_Initialize())
    {
LABEL_16:
      if (a3 != 1)
      {
        return;
      }

      v16 = 0;
      v17 = 0;
      if (qword_100B50DB8 != -1)
      {
        sub_100806A88();
      }

      sub_1005C6590(off_100B50DB0, self->_btDiscoveryAgent, &v16);
      if (!v16)
      {
        if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        goto LABEL_35;
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100806A88();
      }

      v10 = off_100B50DB0;
      v14 = v16;
      v15 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_1005C6EBC(v10, &v14, 0, -1);
      if (v15)
      {
        sub_100117644(v15);
      }

      if (v11)
      {
        if (dword_100B50CE0 > 90)
        {
LABEL_35:
          if (v17)
          {
            sub_100117644(v17);
          }

          return;
        }

        if (dword_100B50CE0 != -1 || _LogCategory_Initialize())
        {
          v12 = CUPrintErrorCode();
          LogPrintF_safe();
        }
      }

      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_35;
    }

    if (a3 > 3)
    {
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v9)
    {
LABEL_13:
      v13 = CUPrintErrorCode();
      LogPrintF_safe();

      if (v9 && v19 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_16;
    }

    sub_1000E5A58(v9, &__p);
    goto LABEL_13;
  }
}

@end