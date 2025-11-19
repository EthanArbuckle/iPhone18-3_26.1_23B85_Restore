@interface CBAccessoryDaemon
- (id)descriptionWithLevel:(int)a3;
- (id)diagnosticAccessoryFakeWithIdentifier:(id)a3 leftPercent:(int)a4 leftState:(unsigned __int8)a5 rightPercent:(int)a6 rightState:(unsigned __int8)a7 casePercent:(int)a8 caseState:(unsigned __int8)a9 lidClosed:(BOOL)a10 obcMinutes:(int)a11 error:(id *)a12;
- (id)diagnosticControl:(id)a3 error:(id *)a4;
- (id)findPrimaryCBDevice:(id)a3;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_accessoryDiscoveryFoundDevice:(id)a3;
- (void)_connectionMonitorEnsureStarted;
- (void)_connectionMonitorEnsureStopped;
- (void)_connectionMonitorFoundDevice:(id)a3;
- (void)_connectionMonitorUpdate;
- (void)_screenOnChanged;
- (void)_update;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
@end

@implementation CBAccessoryDaemon

- (void)_screenOnChanged
{
  [(CUSystemMonitor *)self->_systemMonitor screenOn];
  [(CUSystemMonitor *)self->_systemMonitor screenLocked];
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A33BC();
  }

  [(CBAccessoryDaemon *)self _update];
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(CBDaemonServer *)self->_daemonServer stackController];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 getDevicesWithFlags:1 error:0];
  if (!v5)
  {
LABEL_12:

LABEL_15:
    [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStopped];
    goto LABEL_16;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
LABEL_11:

    goto LABEL_12;
  }

  v8 = v7;
  v9 = *v15;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [*(*(&v14 + 1) + 8 * v10) productID]);
    v12 = [v11 flags];

    if ((v12 & 0x100000) != 0)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v13 = [(CUSystemMonitor *)self->_systemMonitor screenOn];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStarted];
LABEL_16:
  if (self->_prefAccessoryDaemonConnectionMonitor)
  {
    [(CBAccessoryDaemon *)self _connectionMonitorEnsureStarted];
  }

  else
  {
    [(CBAccessoryDaemon *)self _connectionMonitorEnsureStopped];
  }

  [(CBAccessoryDaemon *)self _connectionMonitorUpdate];
}

- (void)_accessoryDiscoveryEnsureStopped
{
  if (self->_accessoryDiscovery && dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100800FDC();
  }

  [(CBDiscovery *)self->_accessoryDiscovery invalidate];
  accessoryDiscovery = self->_accessoryDiscovery;
  self->_accessoryDiscovery = 0;

  accessoryFakeDevice = self->_accessoryFakeDevice;
  self->_accessoryFakeDevice = 0;

  [(NSMutableDictionary *)self->_accessoryInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100ADFE60];
  accessoryInfoMap = self->_accessoryInfoMap;
  self->_accessoryInfoMap = 0;
}

- (void)_connectionMonitorEnsureStarted
{
  if (!self->_connectionMonitor)
  {
    v13[6] = v5;
    v13[7] = v4;
    v13[12] = v2;
    v13[13] = v3;
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100800FF8();
    }

    v7 = objc_alloc_init(CBDiscovery);
    connectionMonitor = self->_connectionMonitor;
    self->_connectionMonitor = v7;
    v9 = v7;

    v10 = [(CBAccessoryDaemon *)self description];
    [(CBDiscovery *)v9 setAppID:v10];

    [(CBDiscovery *)v9 setDiscoveryFlags:0x80000A00000];
    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F46AC;
    v13[3] = &unk_100ADF718;
    v13[4] = v9;
    v13[5] = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F4774;
    v12[3] = &unk_100ADF718;
    v12[4] = v9;
    v12[5] = self;
    [(CBDiscovery *)v9 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F4834;
    v11[3] = &unk_100ADF740;
    v11[4] = v9;
    v11[5] = self;
    [(CBDiscovery *)v9 activateWithCompletion:v11];
  }
}

- (void)_connectionMonitorUpdate
{
  Current = CFAbsoluteTimeGetCurrent();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(NSMutableDictionary *)self->_connectionMap allKeys];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_connectionMap objectForKeyedSubscript:v9];
        [v10 connectedTime];
        if (v11 != 0.0 && Current - v11 >= self->_prefAccessoryDaemonStayConnectedSeconds)
        {
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
          {
            sub_100801490();
          }

          [(NSMutableDictionary *)self->_connectionMap setObject:0 forKeyedSubscript:v9];
          [v10 invalidate];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v12 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v6 = v12;
    }

    while (v12);
  }

  CFDictionaryGetTypeID();
  v13 = CFPrefs_CopyTypedValue();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = [v13 allKeys];
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_38;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v35;
  do
  {
    v19 = 0;
    do
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      CFDictionaryGetDouble();
      if (Current - v21 >= self->_prefAccessoryDaemonConnectSeconds)
      {
        if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
        {
          sub_1008014D0();
          if (!v17)
          {
LABEL_26:
            v22 = [v13 mutableCopy];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = objc_alloc_init(NSMutableDictionary);
            }

            v17 = v24;
          }
        }

        else if (!v17)
        {
          goto LABEL_26;
        }

        [v17 setObject:0 forKeyedSubscript:v20];
      }

      v19 = v19 + 1;
    }

    while (v16 != v19);
    v25 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    v16 = v25;
  }

  while (v25);
LABEL_38:

  if ([v17 count])
  {
    CFPrefs_SetValue();
  }

  else if (v17)
  {
    CFPrefs_RemoveValue();
  }

  if (![v17 count] && !-[NSMutableDictionary count](self->_connectionMap, "count"))
  {
    periodicTimer = self->_periodicTimer;
    if (!periodicTimer)
    {
      goto LABEL_51;
    }

    if (dword_100B50958 >= 31)
    {
      v26 = periodicTimer;
    }

    else
    {
      if (dword_100B50958 != -1 || _LogCategory_Initialize())
      {
        sub_100801544();
      }

      v26 = self->_periodicTimer;
      if (!v26)
      {
        goto LABEL_51;
      }
    }

    dispatch_source_cancel(v26);
    v29 = self->_periodicTimer;
    self->_periodicTimer = 0;
    goto LABEL_49;
  }

  v26 = self->_periodicTimer;
  if (!v26)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100801510();
    }

    v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v28 = self->_periodicTimer;
    self->_periodicTimer = v27;

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000F4D34;
    v31[3] = &unk_100ADF590;
    v26 = v27;
    v32 = v26;
    v33 = self;
    dispatch_source_set_event_handler(v26, v31);
    CUDispatchTimerSet();
    dispatch_activate(v26);
    v29 = v32;
LABEL_49:
  }

LABEL_51:
}

- (id)descriptionWithLevel:(int)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000421A4;
  v30 = sub_100042564;
  v31 = 0;
  v25 = 12;
  obj = 0;
  v5 = a3;
  v16 = objc_opt_class();
  CUAppendF();
  objc_storeStrong(&v31, 0);
  v6 = v27 + 5;
  v23 = v27[5];
  v7 = [(NSMutableDictionary *)self->_accessoryInfoMap count];
  if (self->_connectionMonitor)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v17 = v7;
  v18 = v8;
  CUAppendF();
  objc_storeStrong(v6, v23);
  if (v5 <= 0x14)
  {
    v9 = v27;
    v22 = v27[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v9 + 5, v22);
    connectionMonitor = self->_connectionMonitor;
    if (connectionMonitor)
    {
      v11 = v27;
      v21 = v27[5];
      v17 = connectionMonitor;
      NSAppendPrintF_safe();
      objc_storeStrong(v11 + 5, v21);
    }

    accessoryInfoMap = self->_accessoryInfoMap;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F335C;
    v19[3] = &unk_100ADFE00;
    v19[4] = &v26;
    v20 = a3;
    [(NSMutableDictionary *)accessoryInfoMap enumerateKeysAndObjectsUsingBlock:v19, v17, v18];
  }

  v13 = v27[5];
  if (!v13)
  {
    v13 = &stru_100B0F9E0;
  }

  v14 = v13;
  _Block_object_dispose(&v26, 8);

  return v14;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100800E50();
  }

  v3 = self->_systemMonitor;
  if (!v3)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)v3 setDispatchQueue:self->_dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A31F4;
    v6[3] = &unk_100ADF5B8;
    v6[4] = self;
    [(CUSystemMonitor *)v3 setScreenOnChangedHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F3530;
    v5[3] = &unk_100ADF5B8;
    v5[4] = self;
    [(CUSystemMonitor *)v3 setScreenLockedChangedHandler:v5];
    [(CUSystemMonitor *)v3 activateWithCompletion:&stru_100ADFE20];
  }

  [(CBAccessoryDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100800E6C();
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStopped];
  [(CBAccessoryDaemon *)self _connectionMonitorEnsureStopped];
  periodicTimer = self->_periodicTimer;
  if (periodicTimer)
  {
    v4 = periodicTimer;
    dispatch_source_cancel(v4);
    v5 = self->_periodicTimer;
    self->_periodicTimer = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;
}

- (id)diagnosticControl:(id)a3 error:(id *)a4
{
  v6 = a3;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = [v7 UTF8String];
  if (v8)
  {
    v9 = v8;
    if (!strcasecmp(v8, "accessory-help"))
    {
      v10 = @"accessory-fake-add[,paramKey1=paramValue1][,paramKey2=paramValue2][,etc.] -- Add/update fake accessory.\n    id=accessoryID\n    leftPercent=0-100\n    leftState=unknown/charging/discharging\n    rightPercent=0-100\n    rightState=unknown/charging/discharging\n    casePercent=0-100\n    caseState=unknown/charging/discharging\n    lidClosed=yes/no\n    obc=yes/no\naccessory-fake-remove -- Remove fake accessory\n\nExample: accessory-fake-add,casePercent=54,lidClosed=yes\n\n";
    }

    else if (!strcasecmp(v9, "accessory-fake-remove"))
    {
      v11 = self->_accessoryFakeDevice;
      if (v11)
      {
        if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
        {
          sub_100800E88();
        }

        v12 = [(CBDevice *)v11 identifier];
        v13 = [(NSMutableDictionary *)self->_accessoryInfoMap objectForKeyedSubscript:v12];
        [v13 invalidate];
        [(NSMutableDictionary *)self->_accessoryInfoMap setObject:0 forKeyedSubscript:v12];
        accessoryFakeDevice = self->_accessoryFakeDevice;
        self->_accessoryFakeDevice = 0;

        v10 = @"Removed accessory\n";
      }

      else
      {
        v10 = @"No fake accessory\n";
      }
    }

    else
    {
      if (stricmp_prefix())
      {
        v10 = [[NSString alloc] initWithFormat:@"error: unsupported command '%s'. See accessory-help\n", v9];
        goto LABEL_77;
      }

      v33 = a4;
      v34 = self;
      v38 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = [NSString stringWithUTF8String:v9 + 18];
      v16 = [v15 componentsSeparatedByString:{@", "}];

      v17 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = 0;
        v19 = @"FakeAccessoryID";
        v20 = *v45;
        v35 = 0;
        v36 = 2;
        v41 = 82;
        v42 = 1;
        v43 = 78;
        v39 = 43;
        v40 = 1;
LABEL_14:
        v21 = 0;
        while (1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v44 + 1) + 8 * v21);
          if (![v22 length])
          {
            goto LABEL_67;
          }

          v23 = [v22 componentsSeparatedByString:@"="];
          if ([v23 count] <= 1)
          {
            v10 = [[NSString alloc] initWithFormat:@"error: bad parameter format '%@'. See accessory-help\n", v22];
LABEL_73:

            goto LABEL_76;
          }

          v24 = [v23 objectAtIndexedSubscript:0];
          v25 = [v23 objectAtIndexedSubscript:1];
          [v25 UTF8String];
          if ([v24 caseInsensitiveCompare:@"id"])
          {
            if ([v24 caseInsensitiveCompare:@"leftPercent"])
            {
              if (![v24 caseInsensitiveCompare:@"leftState"])
              {
                v27 = v25;
                if ([v27 caseInsensitiveCompare:@"Charging"])
                {
                  if ([v27 caseInsensitiveCompare:@"Discharging"])
                  {
                    if ([v27 caseInsensitiveCompare:@"FullyCharged"])
                    {
                      if ([v27 caseInsensitiveCompare:@"OBC"])
                      {
                        if ([v27 caseInsensitiveCompare:@"DEOC"])
                        {
                          v28 = 0;
                        }

                        else
                        {
                          v28 = 5;
                        }
                      }

                      else
                      {
                        v28 = 4;
                      }
                    }

                    else
                    {
                      v28 = 3;
                    }
                  }

                  else
                  {
                    v28 = 2;
                  }
                }

                else
                {
                  v28 = 1;
                }

                v42 = v28;
LABEL_65:

                goto LABEL_66;
              }

              if ([v24 caseInsensitiveCompare:@"rightPercent"])
              {
                if ([v24 caseInsensitiveCompare:@"rightState"])
                {
                  if ([v24 caseInsensitiveCompare:@"casePercent"])
                  {
                    if ([v24 caseInsensitiveCompare:@"caseState"])
                    {
                      if ([v24 caseInsensitiveCompare:@"lidClosed"])
                      {
                        if ([v24 caseInsensitiveCompare:@"obcMinutes"])
                        {
                          v10 = [[NSString alloc] initWithFormat:@"error: bad parameter key '%@'. See accessory-help\n", v24];

                          goto LABEL_73;
                        }

                        v37 = [v25 intValue];
                      }

                      else
                      {
                        v30 = !strnicmpx() || !strnicmpx() || !strnicmpx() || !strnicmpx() || strnicmpx() == 0;
                        v35 = v30;
                      }
                    }

                    else
                    {
                      v36 = sub_1000F3D20(v25);
                    }
                  }

                  else
                  {
                    v39 = [v25 intValue];
                  }

                  goto LABEL_66;
                }

                v27 = v25;
                if ([v27 caseInsensitiveCompare:@"Charging"])
                {
                  if ([v27 caseInsensitiveCompare:@"Discharging"])
                  {
                    if ([v27 caseInsensitiveCompare:@"FullyCharged"])
                    {
                      if ([v27 caseInsensitiveCompare:@"OBC"])
                      {
                        if ([v27 caseInsensitiveCompare:@"DEOC"])
                        {
                          v29 = 0;
                        }

                        else
                        {
                          v29 = 5;
                        }
                      }

                      else
                      {
                        v29 = 4;
                      }
                    }

                    else
                    {
                      v29 = 3;
                    }
                  }

                  else
                  {
                    v29 = 2;
                  }
                }

                else
                {
                  v29 = 1;
                }

                v40 = v29;
                goto LABEL_65;
              }

              v41 = [v25 intValue];
            }

            else
            {
              v43 = [v25 intValue];
            }
          }

          else
          {
            v26 = v25;

            v19 = v26;
          }

LABEL_66:

LABEL_67:
          if (v18 == ++v21)
          {
            v18 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v18)
            {
              goto LABEL_14;
            }

            goto LABEL_75;
          }
        }
      }

      v37 = 0;
      v35 = 0;
      v36 = 2;
      v41 = 82;
      v42 = 1;
      v43 = 78;
      v39 = 43;
      v40 = 1;
      v19 = @"FakeAccessoryID";
LABEL_75:

      HIDWORD(v32) = v37;
      BYTE1(v32) = v35;
      LOBYTE(v32) = v36;
      v10 = [CBAccessoryDaemon diagnosticAccessoryFakeWithIdentifier:v34 leftPercent:"diagnosticAccessoryFakeWithIdentifier:leftPercent:leftState:rightPercent:rightState:casePercent:caseState:lidClosed:obcMinutes:error:" leftState:v19 rightPercent:v43 rightState:v42 casePercent:v41 caseState:v40 lidClosed:v39 obcMinutes:v32 error:v33];
LABEL_76:
      v6 = v38;
    }
  }

  else if (a4)
  {
    CBErrorF();
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_77:

  return v10;
}

- (id)diagnosticAccessoryFakeWithIdentifier:(id)a3 leftPercent:(int)a4 leftState:(unsigned __int8)a5 rightPercent:(int)a6 rightState:(unsigned __int8)a7 casePercent:(int)a8 caseState:(unsigned __int8)a9 lidClosed:(BOOL)a10 obcMinutes:(int)a11 error:(id *)a12
{
  v27 = a7;
  v14 = a5;
  v17 = a3;
  v18 = self->_accessoryFakeDevice;
  v19 = v18;
  if (!v18)
  {
    v19 = objc_alloc_init(CBDevice);
    accessoryFakeDevice = self->_accessoryFakeDevice;
    self->_accessoryFakeDevice = v19;
  }

  [(CBDevice *)v19 setAccessoryStatusFlags:a10];
  [(CBDevice *)v19 setAccessoryStatusOBCTime:(60 * a11)];
  if (a4 >= 100)
  {
    v21 = 100;
  }

  else
  {
    v21 = a4;
  }

  [(CBDevice *)v19 setBatteryInfoLeft:v21 & ~(v21 >> 31) | (v14 << 8)];
  if (a6 >= 100)
  {
    v22 = 100;
  }

  else
  {
    v22 = a6;
  }

  [(CBDevice *)v19 setBatteryInfoRight:v22 & ~(v22 >> 31) | (v27 << 8)];
  if (a8 >= 100)
  {
    v23 = 100;
  }

  else
  {
    v23 = a8;
  }

  [(CBDevice *)v19 setBatteryInfoCase:v23 & ~(v23 >> 31) | (a9 << 8)];
  [(CBDevice *)v19 setIdentifier:v17];
  [(CBDevice *)v19 setName:@"Fake Accessory"];
  [(CBDevice *)v19 setProductID:8206];
  [(CBDevice *)v19 setVendorID:76];
  [(CBDevice *)v19 setVendorIDSource:1];
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100800EC8();
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryFoundDevice:v19];
  if (v18)
  {
    v24 = @"Updated accessory\n";
  }

  else
  {
    v24 = @"Added accessory\n";
  }

  v25 = v24;

  return v24;
}

- (id)findPrimaryCBDevice:(id)a3
{
  v3 = a3;
  v4 = 1;
  while ((v4 & 1) != 0)
  {
    v5 = [(CBDaemonServer *)self->_daemonServer stackController];
    v6 = 1;
    v27 = v5;
    do
    {
      v7 = (v5 != 0) & v6;
      if (v7 != 1)
      {
        break;
      }

      v8 = [v5 getDevicesWithFlags:2 error:0];
      v9 = v8;
      if (v8)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = [v15 findMyCaseIdentifier];
              v17 = v3;
              v18 = v16;
              v19 = v18;
              if (v18 == v17)
              {

LABEL_21:
                if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
                {
                  v23 = v17;
                  v24 = v15;
                  LogPrintF_safe();
                }

                v26 = v15;
                v21 = 1;
                v9 = v10;
                goto LABEL_27;
              }

              if ((v3 != 0) != (v18 == 0))
              {
                v20 = [v17 isEqual:v18];

                if (v20)
                {
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v21 = 0;
LABEL_27:
          v5 = v27;
          v7 = 1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v6 = 0;
    }

    while (!v21);

    v4 = 0;
    if (v7)
    {
      goto LABEL_33;
    }
  }

  v26 = 0;
LABEL_33:

  return v26;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAccessoryDaemonConnectionMonitor != v3)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100800F08();
    }

    self->_prefAccessoryDaemonConnectionMonitor = v3;
  }

  CFPrefs_GetDouble();
  v5 = v4;
  if (v4 != self->_prefAccessoryDaemonConnectSeconds)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintDurationDouble();
      CUPrintDurationDouble();
      v11 = v10 = v6;
      LogPrintF_safe();
    }

    self->_prefAccessoryDaemonConnectSeconds = v5;
  }

  CFPrefs_GetDouble();
  v8 = v7;
  if (v7 != self->_prefAccessoryDaemonStayConnectedSeconds)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      v9 = CUPrintDurationDouble();
      CUPrintDurationDouble();
      v11 = v10 = v9;
      LogPrintF_safe();
    }

    self->_prefAccessoryDaemonStayConnectedSeconds = v8;
  }

  [(CBAccessoryDaemon *)self _update:v10];
}

- (void)_accessoryDiscoveryEnsureStarted
{
  if (!self->_accessoryDiscovery)
  {
    v12[6] = v5;
    v12[7] = v4;
    v12[12] = v2;
    v12[13] = v3;
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100800F64();
    }

    v7 = objc_alloc_init(CBDiscovery);
    accessoryDiscovery = self->_accessoryDiscovery;
    self->_accessoryDiscovery = v7;
    v9 = v7;

    v10 = [(CBAccessoryDaemon *)self description];
    [(CBDiscovery *)v9 setAppID:v10];

    [(CBDiscovery *)v9 setDiscoveryFlags:0x180000000080];
    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F45E0;
    v12[3] = &unk_100ADF718;
    v12[4] = v9;
    v12[5] = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F45FC;
    v11[3] = &unk_100ADF740;
    v11[4] = v9;
    v11[5] = self;
    [(CBDiscovery *)v9 activateWithCompletion:v11];
  }
}

- (void)_connectionMonitorEnsureStopped
{
  if (self->_connectionMonitor && dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100801070();
  }

  [(CBDiscovery *)self->_connectionMonitor invalidate];
  connectionMonitor = self->_connectionMonitor;
  self->_connectionMonitor = 0;
}

- (void)_connectionMonitorFoundDevice:(id)a3
{
  v4 = a3;
  v5 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [v4 productID]);
  if (([v5 flags] & 0x100000) != 0)
  {
    if (([v4 deviceFlags] & 0x40) != 0)
    {
      if (([v4 deviceFlags] & 0x8000000000) != 0)
      {
        sub_10080108C();
      }

      else
      {
        v6 = [v4 findMyCaseIdentifier];
        if (v6)
        {
          v7 = [(NSMutableDictionary *)self->_connectionMap objectForKeyedSubscript:v6];
          if (v7)
          {
            sub_100801104();
          }

          else
          {
            CFDictionaryGetTypeID();
            v8 = CFPrefs_CopyTypedValue();
            CFDictionaryGetDouble();
            v10 = v9;
            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v10 < self->_prefAccessoryDaemonConnectSeconds)
            {
              sub_1008011BC();
            }

            else
            {
              v12 = objc_alloc_init(CBDevice);
              [v12 setIdentifier:v6];
              if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
              {
                sub_10080117C();
              }

              v13 = objc_alloc_init(CBConnection);
              [v13 setConnectionFlags:256];
              [v13 setConnectionScanDutyCycle:6];
              [v13 setDispatchQueue:self->_dispatchQueue];
              [v13 setPeerDevice:v12];
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3221225472;
              v17[2] = sub_1000F4BE0;
              v17[3] = &unk_100ADFE88;
              v17[4] = v12;
              v17[5] = v13;
              v17[6] = self;
              v17[7] = v6;
              v17[8] = v8;
              *&v17[9] = Current;
              [v13 activateWithCompletion:v17];
              connectionMap = self->_connectionMap;
              if (!connectionMap)
              {
                v15 = objc_alloc_init(NSMutableDictionary);
                v16 = self->_connectionMap;
                self->_connectionMap = v15;

                connectionMap = self->_connectionMap;
              }

              [(NSMutableDictionary *)connectionMap setObject:v13 forKeyedSubscript:v6];
            }
          }
        }

        else
        {
          sub_100801274();
        }
      }
    }

    else
    {
      sub_1008012EC();
    }
  }

  else
  {
    sub_100801364();
  }
}

- (void)_accessoryDiscoveryFoundDevice:(id)a3
{
  v24 = a3;
  v4 = [v24 identifier];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = [(NSMutableDictionary *)self->_accessoryInfoMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(CBAccessoryInfo);
    accessoryInfoMap = self->_accessoryInfoMap;
    if (!accessoryInfoMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_accessoryInfoMap;
      self->_accessoryInfoMap = v7;

      accessoryInfoMap = self->_accessoryInfoMap;
    }

    [(NSMutableDictionary *)accessoryInfoMap setObject:v5 forKeyedSubscript:v4];
  }

  [(CBAccessoryInfo *)v5 setCbDevice:v24];
  v9 = [(CBAccessoryInfo *)v5 primaryCBDevice];
  v10 = [(CBAccessoryInfo *)v5 primaryCBDevice];
  if (!v10 || (v11 = v10, v12 = [v24 changeFlags], v11, (v12 & 0x80000000000) != 0))
  {
    v13 = [v24 identifier];
    v14 = [(CBAccessoryDaemon *)self findPrimaryCBDevice:v13];

    [(CBAccessoryInfo *)v5 setPrimaryCBDevice:v14];
    v9 = v14;
  }

  v15 = [v9 findMyGroupIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = [v9 findMyGroupIdentifier];
    v18 = [(CBAccessoryInfo *)v5 cbDevice];
    v19 = [v18 findMyGroupIdentifier];
    v20 = v17;
    v21 = v19;
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      if ((v20 != 0) == (v21 == 0))
      {
      }

      else
      {
        v23 = [v20 isEqual:v21];

        if (v23)
        {
          goto LABEL_18;
        }
      }

      v16 = [v9 findMyGroupIdentifier];
      v20 = [(CBAccessoryInfo *)v5 cbDevice];
      [v20 setFindMyGroupIdentifier:v16];
    }
  }

LABEL_18:
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(CBAccessoryInfo *)v5 powerSourceUpdate];
  }

LABEL_25:
}

@end