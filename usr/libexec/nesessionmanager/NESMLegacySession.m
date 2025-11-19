@interface NESMLegacySession
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)a3;
- (int)type;
- (void)dealloc;
- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5;
- (void)handleDeviceLock;
- (void)handleDeviceUnlock;
- (void)handleGetInfoMessage:(id)a3 withType:(int)a4;
- (void)handleInitializeState;
- (void)handleInstalledAppsChanged;
- (void)handleSecuritySessionInfoRequest:(id)a3;
- (void)handleSleepTime:(double)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)uninstall;
@end

@implementation NESMLegacySession

- (void)handleInitializeState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NESMSession *)v2 configuration];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@:%d", v5, [(NESMLegacySession *)v2 type]];
  [(NESMSession *)v2 setAuxiliaryDataKey:v6];

  [(NESMSession *)v2 setupFromAuxiliaryData];
  v7 = [(NESMSession *)v2 lastDisconnectError];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 domain];
    v10 = [v9 isEqualToString:@"NEVPNConnectionErrorDomainIPSec"];

    if (v10)
    {
      v16 = @"LastCause";
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10006EEDC;
      v14[3] = &unk_1000EB198;
      v14[4] = v2;
      v13 = v12;
      v15 = v13;
      sub_10006EF70(v2, v14);
    }
  }

  objc_sync_exit(v2);
}

- (void)handleInstalledAppsChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100070E40;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleDeviceUnlock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10007165C;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleDeviceLock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071758;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleUserSwitch
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071854;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleUserLogout
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071950;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 VPN];
      *buf = 138412546;
      v16 = self;
      v17 = 1024;
      v18 = [v6 isEnabled];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: enabled = %d", buf, 0x12u);
    }

    v14.receiver = self;
    v14.super_class = NESMLegacySession;
    if ([(NESMSession *)&v14 handleUpdateConfiguration:v4])
    {
      if (self && self->_sessionType == 2)
      {
        v7 = [(NESMSession *)self configuration];
        v8 = [v7 appVPN];
        v10 = [v8 protocol];
      }

      else
      {
        v7 = [(NESMSession *)self configuration];
        v8 = [v7 VPN];
        v10 = [v8 protocol];
        if (!self)
        {
LABEL_11:

          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100071BE0;
          v13[3] = &unk_1000EB1C0;
          v13[4] = self;
          sub_10006EF70(self, v13);
          v11 = 1;
          goto LABEL_12;
        }
      }

      objc_setProperty_atomic(self, v9, v10, 360);
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)uninstall
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071CDC;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)install
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071EDC;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleGetInfoMessage:(id)a3 withType:(int)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007369C;
  v6[3] = &unk_1000EB360;
  v9 = a4;
  v7 = a3;
  v8 = self;
  v5 = v7;
  sub_10006EF70(self, v6);
}

- (void)handleSecuritySessionInfoRequest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100073A60;
  v5[3] = &unk_1000EB198;
  v6 = a3;
  v7 = self;
  v4 = v6;
  sub_10006EF70(self, v5);
}

- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = NESMLegacySession;
  [(NESMSession *)&v13 handleChangeEventForInterface:v8 newFlags:a4 previousFlags:a5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100073C28;
  v10[3] = &unk_1000EABA0;
  v10[4] = self;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  sub_10006EF70(self, v10);
}

- (void)handleWakeup
{
  v3 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074148;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074154;
  v4[3] = &unk_1000EB1C0;
  v4[4] = self;
  sub_10006EF70(self, v4);
}

- (void)handleSleepTime:(double)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100074244;
  v3[3] = &unk_1000EB0D8;
  v3[4] = self;
  *&v3[5] = a3;
  sub_10006EF70(self, v3);
}

- (BOOL)handleSleep
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100074338;
  v3[3] = &unk_1000EB1C0;
  v3[4] = self;
  sub_10006EF70(self, v3);
  return 1;
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_value(v4, "SessionOptions");
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v65.receiver = self;
  v65.super_class = NESMLegacySession;
  [(NESMSession *)&v65 handleStartMessage:v4, qword_1000FD548];
  v6 = CTBundle_ptr;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    if (isa_nsdictionary())
    {
      v8 = [[NSMutableDictionary alloc] initWithDictionary:v7];

      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to convert the XPC options dictionary to a CFDictionary", buf, 2u);
      }
    }
  }

  v8 = objc_alloc_init(NSMutableDictionary);
LABEL_12:
  v58 = v5;
  v10 = [v8 objectForKeyedSubscript:@"OutgoingInterface"];
  if ((isa_nsstring() & 1) == 0)
  {
    v11 = [(NESMSession *)self server];
    v12 = [v11 primaryPhysicalInterface];

    if (!v12)
    {
      goto LABEL_16;
    }

    v10 = [(NESMSession *)self server];
    v13 = [v10 primaryPhysicalInterface];
    v14 = [v13 interfaceName];
    [v8 setObject:v14 forKeyedSubscript:@"OutgoingInterface"];
  }

LABEL_16:
  v15 = v8;
  v17 = v15;
  v59 = v4;
  if (!self)
  {

    v51 = 0;
    Property = 0;
    goto LABEL_73;
  }

  v18 = [objc_getProperty(self v16];
  v20 = [objc_getProperty(self v19];
  v61 = [objc_getProperty(self v21];
  if (v17)
  {
    v22 = [v17 objectForKeyedSubscript:kSCEntNetIPSec];
    if (isa_nsdictionary())
    {
      v23 = [v22 mutableCopy];
    }

    else
    {
      v23 = 0;
    }

    v25 = [v17 objectForKeyedSubscript:kSCEntNetPPP];

    if (isa_nsdictionary())
    {
      v24 = [v25 mutableCopy];
    }

    else
    {
      v24 = 0;
    }

    v6 = CTBundle_ptr;
    if (v23)
    {
      if (v24)
      {
        goto LABEL_27;
      }

LABEL_30:
      v24 = objc_alloc_init(v6[181]);
      if (v20)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v24 = 0;
  }

  v23 = objc_alloc_init(v6[181]);
  if (!v24)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v20)
  {
LABEL_28:
    v60 = [v20 copyPassword];
    goto LABEL_32;
  }

LABEL_31:
  v60 = 0;
LABEL_32:
  if ((v18 - 1) <= 1)
  {
    v27 = [objc_getProperty(self v26];

    v20 = v27;
  }

  if (v20)
  {
    v28 = [v20 copyPassword];
  }

  else
  {
    v28 = 0;
  }

  if (v61)
  {
    if (v18 == 1)
    {
      v29 = kSCPropNetIPSecXAuthName;
      v30 = [v23 objectForKeyedSubscript:kSCPropNetIPSecXAuthName];
      v31 = isa_nsstring();

      if (v31)
      {
        goto LABEL_45;
      }

      v32 = v23;
      goto LABEL_44;
    }

    if (v18 == 2)
    {
      v29 = kSCPropNetPPPAuthName;
      v33 = [v24 objectForKeyedSubscript:kSCPropNetPPPAuthName];
      v34 = isa_nsstring();

      if ((v34 & 1) == 0)
      {
        v32 = v24;
LABEL_44:
        [v32 setObject:v61 forKeyedSubscript:v29];
      }
    }
  }

LABEL_45:
  if (v60)
  {
    if (v18 == 1)
    {
      v35 = kSCPropNetIPSecXAuthPassword;
      v36 = [v23 objectForKeyedSubscript:kSCPropNetIPSecXAuthPassword];
      v37 = isa_nsstring();

      if ((v37 & 1) == 0)
      {
        v38 = v23;
LABEL_52:
        [v38 setObject:v60 forKeyedSubscript:v35];
      }
    }

    else if (v18 == 2)
    {
      v35 = kSCPropNetPPPAuthPassword;
      v39 = [v24 objectForKeyedSubscript:kSCPropNetPPPAuthPassword];
      v40 = isa_nsstring();

      if ((v40 & 1) == 0)
      {
        v38 = v24;
        goto LABEL_52;
      }
    }
  }

  if (v28)
  {
    v41 = [v23 objectForKeyedSubscript:kSCPropNetIPSecSharedSecret];
    v42 = isa_nsstring();

    if ((v42 & 1) == 0)
    {
      [v23 setObject:v28 forKeyedSubscript:kSCPropNetIPSecSharedSecret];
    }
  }

  if (v17 && v18 == 1)
  {
    if (!v23)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
    }

    v43 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
    v44 = isa_nsstring();

    if (v44)
    {
      v45 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
      [v23 setObject:v45 forKeyedSubscript:kSCPropNetIPSecXAuthName];
    }

    v46 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
    v47 = isa_nsstring();

    if (v47)
    {
      v48 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
      [v23 setObject:v48 forKeyedSubscript:kSCPropNetIPSecXAuthName];
    }

    *buf = NEVPNConnectionStartOptionPassword;
    v67 = NEVPNConnectionStartOptionUsername;
    v49 = [NSArray arrayWithObjects:buf count:2];
    [v17 removeObjectsForKeys:v49];
  }

  else if (!v17)
  {
    if ([v23 count] || objc_msgSend(v24, "count"))
    {
      v50 = objc_alloc_init(NSMutableDictionary);
    }

    else
    {
      v50 = 0;
    }

    goto LABEL_67;
  }

  v50 = v17;
LABEL_67:
  if ([v24 count])
  {
    [v50 setObject:v24 forKeyedSubscript:kSCEntNetPPP];
  }

  if (v23 && [v23 count])
  {
    [v50 setObject:v23 forKeyedSubscript:kSCEntNetIPSec];
  }

  v51 = v50;

  Property = objc_getProperty(self, v52, 360, 1);
LABEL_73:
  if ([Property type] == 2)
  {
    v55 = xpc_dictionary_copy_mach_send();
    v56 = xpc_dictionary_copy_mach_send();
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  if (self)
  {
    objc_setProperty_atomic(self, v54, v51, 384);
  }

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100074CE4;
  v62[3] = &unk_1000EA5A8;
  v62[4] = self;
  v62[5] = v57;
  v63 = v55;
  v64 = v56;
  sub_10006EF70(self, v62);
}

- (void)dealloc
{
  if (self && self->_bridge)
  {
    if (qword_1000FD550 != -1)
    {
      dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
    }

    (*(qword_1000FD548 + 8))(self->_bridge);
    self->_bridge = 0;
  }

  v3.receiver = self;
  v3.super_class = NESMLegacySession;
  [(NESMSession *)&v3 dealloc];
}

- (int)type
{
  if (self)
  {
    LODWORD(self) = self->_sessionType;
  }

  return self;
}

@end