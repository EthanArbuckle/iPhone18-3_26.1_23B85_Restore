@interface NESMIKEv2VPNFallbackSession
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)a3;
- (id)copyExtendedStatus;
- (void)dropServer;
- (void)handleChangeEventForFallback:(BOOL)a3;
- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5;
- (void)handleGetInfoMessage:(id)a3 withType:(int)a4;
- (void)handleInitializeState;
- (void)handleNetworkConfigurationChange:(int64_t)a3;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleSleepTime:(double)a3;
- (void)handleStartMessage:(id)a3;
- (void)handleStopMessageWithReason:(int)a3;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)installPended;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setStatus:(int)a3;
- (void)uninstall;
@end

@implementation NESMIKEv2VPNFallbackSession

- (void)dropServer
{
  v3 = [(NESMSession *)self server];
  [v3 removeObserver:self forKeyPath:@"primaryCellularInterface"];

  v4.receiver = self;
  v4.super_class = NESMIKEv2VPNFallbackSession;
  [(NESMSession *)&v4 dropServer];
}

- (void)handleNetworkConfigurationChange:(int64_t)a3
{
  v4 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v7 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 24, 1);
  }

  v8 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094E64;
  block[3] = &unk_1000EB0D8;
  block[4] = v4;
  block[5] = a3;
  dispatch_async(v8, block);

  if (v4)
  {
    v10 = objc_getProperty(v4, v9, 360, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  v13 = v11;
  if (v11)
  {
    v11 = objc_getProperty(v11, v12, 24, 1);
  }

  v14 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100094EE0;
  v15[3] = &unk_1000EB0D8;
  v15[4] = v4;
  v15[5] = a3;
  dispatch_async(v14, v15);
}

- (void)uninstall
{
  if (!self || !objc_getProperty(self, a2, 408, 1))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v30 = "[NESMIKEv2VPNFallbackSession uninstall]";
    v24 = "%s called with null self.configurationOperationArray";
    v25 = v11;
    v26 = 12;
LABEL_26:
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v24, buf, v26);
    goto LABEL_23;
  }

  if (![objc_getProperty(self v3])
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "request uninstall configuration operation array is empty";
    v25 = v11;
    v26 = 2;
    goto LABEL_26;
  }

  v5 = [objc_getProperty(self v4];
  v7 = v5;
  if (!v5 || v5[2].isa != 2)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "bad operation request state", buf, 2u);
    }

    goto LABEL_21;
  }

  Property = objc_getProperty(v5, v6, 24, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 24, 1);
  }

  v10 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000952B8;
  block[3] = &unk_1000EB1C0;
  v11 = v7;
  v28 = v11;
  dispatch_async(v10, block);

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_getProperty(v11, v13, 24, 1);
    *buf = 138412546;
    v30 = self;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ uninstalling session %@", buf, 0x16u);
  }

  v16 = objc_getProperty(v11, v15, 24, 1);
  if (v16)
  {
    v16[4] = 1;
  }

  [objc_getProperty(self v17];

  self->_installState = 1;
  if ([objc_getProperty(self v18])
  {
    v20 = [objc_getProperty(self v19];
    v22 = v20;
    if (v20)
    {
      v23 = *(v20 + 16);
      if (v23 == 2)
      {
        sub_100095850(self, v21);
      }

      else if (v23 == 3)
      {
        sub_100095324(self, v21);
      }
    }

LABEL_21:

    v11 = v7;
  }

LABEL_23:
}

- (void)installPended
{
  if (!self || !objc_getProperty(self, a2, 408, 1))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    *buf = 136315138;
    v30 = "[NESMIKEv2VPNFallbackSession installPended]";
    v24 = "%s called with null self.configurationOperationArray";
    v25 = v11;
    v26 = 12;
LABEL_21:
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v24, buf, v26);
    goto LABEL_25;
  }

  if (![objc_getProperty(self v3])
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v24 = "request install configuration operation array is empty";
    v25 = v11;
    v26 = 2;
    goto LABEL_21;
  }

  v5 = [objc_getProperty(self v4];
  v7 = v5;
  if (!v5 || v5[2].isa != 3)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "bad operation request state", buf, 2u);
    }

    goto LABEL_24;
  }

  Property = objc_getProperty(v5, v6, 24, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 24, 1);
  }

  v10 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096198;
  block[3] = &unk_1000EB1C0;
  v11 = v7;
  v28 = v11;
  dispatch_async(v10, block);

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_getProperty(v11, v13, 24, 1);
    *buf = 138412546;
    v30 = self;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@, pending session %@", buf, 0x16u);
  }

  v16 = objc_getProperty(v11, v15, 24, 1);
  if (v16)
  {
    v16[4] = 4;
  }

  [objc_getProperty(self v17];

  self->_installState = 4;
  if ([objc_getProperty(self v18])
  {
    v20 = [objc_getProperty(self v19];
    v22 = v20;
    if (v20)
    {
      v23 = *(v20 + 16);
      if (v23 == 2)
      {
        sub_100095850(self, v21);
      }

      else if (v23 == 3)
      {
        sub_100095324(self, v21);
      }
    }

LABEL_24:

    v11 = v7;
  }

LABEL_25:
}

- (void)install
{
  if (self && objc_getProperty(self, a2, 408, 1))
  {
    if ([objc_getProperty(self v3])
    {
      v6 = [objc_getProperty(self v4];
      v8 = v6;
      if (v6 && v6[2] == 3)
      {
        Property = objc_getProperty(v6, v7, 24, 1);
        if (Property)
        {
          Property = objc_getProperty(Property, v10, 24, 1);
        }

        v11 = [Property queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009675C;
        block[3] = &unk_1000EB1C0;
        v12 = v8;
        v42 = v12;
        dispatch_async(v11, block);

        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_getProperty(v12, v14, 24, 1);
          *buf = 138412546;
          v45 = self;
          v46 = 2112;
          v47 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@, installed session %@", buf, 0x16u);
        }

        v17 = objc_getProperty(v12, v16, 24, 1);
        if (v17)
        {
          v17[4] = 5;
        }

        [objc_getProperty(self v18];

        self->_installState = 5;
        if (![objc_getProperty(self v19])
        {
          goto LABEL_23;
        }

        v21 = [objc_getProperty(self v20];
        v23 = v21;
        if (v21)
        {
          v24 = *(v21 + 16);
          if (v24 == 2)
          {
            sub_100095850(self, v22);
          }

          else if (v24 == 3)
          {
            sub_100095324(self, v22);
          }
        }
      }

      else
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "bad operation request state", buf, 2u);
        }
      }

LABEL_23:
      return;
    }

    v26 = 0;
    v27 = 1;
    *&v5 = 138412546;
    v40 = v5;
    do
    {
      v28 = v27;
      v29 = [objc_getProperty(self v4];
      if (v29)
      {
        v30 = v29[4];

        if (v30 == 4)
        {
          v31 = [objc_getProperty(self v4];
          v33 = v31;
          if (v31)
          {
            v31 = objc_getProperty(v31, v32, 24, 1);
          }

          v34 = [v31 queue];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1000966E4;
          v43[3] = &unk_1000EB0D8;
          v43[4] = self;
          v43[5] = v26;
          dispatch_async(v34, v43);

          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [objc_getProperty(self v36];
            *buf = v40;
            v45 = self;
            v46 = 2112;
            v47 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ installing pending session %@", buf, 0x16u);
          }

          v39 = [objc_getProperty(self v38];
          if (v39)
          {
            v39[4] = 5;
          }
        }
      }

      v27 = 0;
      v26 = 1;
    }

    while ((v28 & 1) != 0);
    self->_installState = 5;
  }

  else
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v45 = "[NESMIKEv2VPNFallbackSession install]";
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "%s called with null self.configurationOperationArray", buf, 0xCu);
    }
  }
}

- (void)setStatus:(int)a3
{
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v20 = self;
    v21 = 2080;
    v22 = "[NESMIKEv2VPNFallbackSession setStatus:]";
    v23 = 2080;
    v24 = ne_session_status_to_string();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@:%s: Enter (new status %s)", buf, 0x20u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [Property objectAtIndexedSubscript:0];
  if (v8)
  {
    v9 = v8[2];
  }

  else
  {
    v9 = 0;
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 360, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectAtIndexedSubscript:1];
  if (v12)
  {
    v13 = v12[2];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1000969CC(self, v9, v13);
  v15 = sub_1000969CC(self, a3, v14);
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = ne_session_status_to_string();
    *buf = 138412802;
    v20 = self;
    v21 = 2080;
    v22 = "[NESMIKEv2VPNFallbackSession setStatus:]";
    v23 = 2080;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@:%s: Status to Client: %s", buf, 0x20u);
  }

  v18.receiver = self;
  v18.super_class = NESMIKEv2VPNFallbackSession;
  [(NESMSession *)&v18 setStatus:v15];
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  v4 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v7 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 24, 1);
  }

  v8 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096BCC;
  block[3] = &unk_1000EB338;
  block[4] = v4;
  v18 = a3;
  dispatch_async(v8, block);

  if (v4)
  {
    v10 = objc_getProperty(v4, v9, 360, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  v13 = v11;
  if (v11)
  {
    v11 = objc_getProperty(v11, v12, 24, 1);
  }

  v14 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096C48;
  v15[3] = &unk_1000EB338;
  v15[4] = v4;
  v16 = a3;
  dispatch_async(v14, v15);
}

- (void)handleChangeEventForInterface:(id)a3 newFlags:(unint64_t)a4 previousFlags:(unint64_t)a5
{
  v8 = a3;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v22 = self;
    v23 = 2080;
    v24 = "[NESMIKEv2VPNFallbackSession handleChangeEventForInterface:newFlags:previousFlags:]";
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@:%s: Enter (ifName %@, flags %X)", buf, 0x26u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v10, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = [Property objectAtIndexedSubscript:0];
  v14 = v12;
  if (v12)
  {
    v12 = objc_getProperty(v12, v13, 24, 1);
  }

  v15 = [v12 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100096E7C;
  v17[3] = &unk_1000EABF0;
  v17[4] = self;
  v18 = v8;
  v19 = a4;
  v20 = a5;
  v16 = v8;
  dispatch_async(v15, v17);
}

- (id)copyExtendedStatus
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  v3 = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3 && *(v3 + 8) == 3 || (!v2 ? (v7 = 0) : (v7 = objc_getProperty(v2, v4, 360, 1)), [v7 objectAtIndexedSubscript:1], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_13:
    if (v2)
    {
      Property = objc_getProperty(v2, v6, 360, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = 0;
    goto LABEL_16;
  }

  v9 = v8[2];

  if (v9 != 3)
  {
    goto LABEL_13;
  }

  if (v2)
  {
    Property = objc_getProperty(v2, v6, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = 1;
LABEL_16:
  v12 = [Property objectAtIndexedSubscript:v11];
  v14 = v12;
  if (v12)
  {
    v12 = objc_getProperty(v12, v13, 24, 1);
  }

  v15 = [v12 copyExtendedStatus];

  if (!v15)
  {
    v16 = 0;
    goto LABEL_41;
  }

  v16 = [v15 mutableCopy];
  v17 = [v16 objectForKeyedSubscript:@"VPN"];
  v18 = isa_nsdictionary();

  if (v18)
  {
    v19 = [v16 objectForKeyedSubscript:@"VPN"];
    v20 = [v19 mutableCopy];
  }

  else
  {
    v20 = objc_alloc_init(NSMutableDictionary);
  }

  if ([(NESMSession *)v2 status]== 3)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)v2 connectTime]];
    v22 = @"ConnectTime";
LABEL_27:
    [v20 setObject:v21 forKeyedSubscript:v22];

    goto LABEL_28;
  }

  if ([(NESMSession *)v2 status]!= 2)
  {
    v21 = [NSNumber numberWithInt:[(NESMSession *)v2 lastStopReason]];
    v22 = @"LastCause";
    goto LABEL_27;
  }

LABEL_28:
  [v16 setObject:v20 forKeyedSubscript:@"VPN"];
  v23 = [v16 objectForKeyedSubscript:@"ConnectionStatistics"];
  v24 = isa_nsdictionary();

  if (v24)
  {
    v25 = [v16 objectForKeyedSubscript:@"ConnectionStatistics"];
    v26 = [v25 mutableCopy];
  }

  else
  {
    v26 = objc_alloc_init(NSMutableDictionary);
  }

  v27 = [NSNumber numberWithInteger:[(NESMSession *)v2 connectCount]];
  [v26 setObject:v27 forKeyedSubscript:@"ConnectCount"];

  v28 = [NSNumber numberWithInteger:[(NESMSession *)v2 connectedCount]];
  [v26 setObject:v28 forKeyedSubscript:@"ConnectedCount"];

  v29 = [NSNumber numberWithInteger:[(NESMSession *)v2 disconnectedCount]];
  [v26 setObject:v29 forKeyedSubscript:@"DisconnectedCount"];

  v30 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)v2 maxConnectTime]];
  [v26 setObject:v30 forKeyedSubscript:@"MaxConnectTime"];

  [v16 setObject:v26 forKeyedSubscript:@"ConnectionStatistics"];
  v31 = [NSNumber numberWithInt:[(NESMSession *)v2 status]];
  [v16 setObject:v31 forKeyedSubscript:@"NEStatus"];

  v32 = [NSNumber numberWithInt:[(NESMSession *)v2 SCNCStatus]];
  [v16 setObject:v32 forKeyedSubscript:@"Status"];

  v33 = [(NESMSession *)v2 lastDisconnectError];
  if (v33)
  {
    v40 = 0;
    v34 = [NSKeyedArchiver archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v40];
    v35 = v40;
    if (v34)
    {
      [v16 setObject:v34 forKeyedSubscript:@"LastDisconnectError"];
    }

    else
    {
      v36 = ne_log_obj();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v35;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to serialize the last disconnect error: %@", buf, 0xCu);
      }
    }
  }

  v37 = [(NESMSession *)v2 lastStatusChangeTime];

  if (v37)
  {
    v38 = [(NESMSession *)v2 lastStatusChangeTime];
    [v16 setObject:v38 forKeyedSubscript:@"LastStatusChangeTime"];
  }

LABEL_41:
  return v16;
}

- (void)handleGetInfoMessage:(id)a3 withType:(int)a4
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  if (a4 != 2)
  {
    v8 = xdict;
    if (a4 != 1)
    {
      goto LABEL_23;
    }

    v53 = reply;
    if (!self)
    {
      v28 = 0;
LABEL_21:
      reply = v53;
      v8 = xdict;
      if (!v28)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = &selRef_temporaryAllowMulticastNetworkName;
    Property = [objc_getProperty(self v6];
    v12 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 24, 1);
    }

    v13 = [Property copyStatistics];

    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"VPN"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"BytesIn"];
        v18 = [v17 unsignedLongLongValue];

        v19 = [v16 objectForKeyedSubscript:@"BytesOut"];
        v20 = [v19 unsignedLongLongValue];

        v21 = [v16 objectForKeyedSubscript:@"PacketsIn"];
        v52 = [v21 unsignedLongLongValue];

        v22 = [v16 objectForKeyedSubscript:@"PacketsOut"];
        v23 = [v22 unsignedLongLongValue];

        v24 = [v16 objectForKeyedSubscript:@"ErrorsIn"];
        v25 = [v24 unsignedLongLongValue];

        v26 = [v16 objectForKeyedSubscript:@"ErrorsOut"];
        v27 = [v26 unsignedLongLongValue];

        v9 = &selRef_temporaryAllowMulticastNetworkName;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
    v20 = 0;
    v52 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
LABEL_13:
    v29 = [objc_getProperty(self v14];
    v31 = v29;
    if (v29)
    {
      v29 = objc_getProperty(v29, v30, 24, 1);
    }

    v32 = [v29 copyStatistics];

    v50 = v32;
    if (v32)
    {
      v33 = [v32 objectForKeyedSubscript:{@"VPN", v32}];

      if (v33)
      {
        v34 = [v33 objectForKeyedSubscript:@"BytesIn"];
        v18 = &v18[[v34 unsignedLongLongValue]];

        v35 = [v33 objectForKeyedSubscript:@"BytesOut"];
        v20 = &v20[[v35 unsignedLongLongValue]];

        v36 = [v33 objectForKeyedSubscript:@"PacketsIn"];
        v37 = &v52[[v36 unsignedLongLongValue]];

        v38 = [v33 objectForKeyedSubscript:@"PacketsOut"];
        v23 = &v23[[v38 unsignedLongLongValue]];

        v39 = [v33 objectForKeyedSubscript:@"ErrorsIn"];
        v25 = &v25[[v39 unsignedLongLongValue]];

        v40 = [v33 objectForKeyedSubscript:@"ErrorsOut"];
        v27 = &v27[[v40 unsignedLongLongValue]];

        v16 = v33;
LABEL_20:
        v57 = kSCEntNetVPN;
        v55[0] = @"BytesIn";
        v41 = [NSNumber numberWithUnsignedLongLong:v18, v50];
        v56[0] = v41;
        v55[1] = @"BytesOut";
        v42 = [NSNumber numberWithUnsignedLongLong:v20];
        v56[1] = v42;
        v55[2] = @"PacketsIn";
        v43 = [NSNumber numberWithUnsignedLongLong:v37];
        v56[2] = v43;
        v55[3] = @"PacketsOut";
        v44 = [NSNumber numberWithUnsignedLongLong:v23];
        v56[3] = v44;
        v55[4] = @"ErrorsIn";
        v45 = [NSNumber numberWithUnsignedLongLong:v25];
        v56[4] = v45;
        v55[5] = @"ErrorsOut";
        v46 = [NSNumber numberWithUnsignedLongLong:v27];
        v56[5] = v46;
        v47 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:6];
        v58 = v47;
        v28 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];

        goto LABEL_21;
      }

      v16 = 0;
    }

    v37 = v52;
    goto LABEL_20;
  }

  v28 = [(NESMIKEv2VPNFallbackSession *)self copyExtendedStatus];
  v8 = xdict;
  if (v28)
  {
LABEL_22:
    v48 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "SessionInfo", v48);

    v8 = xdict;
  }

LABEL_23:
  v49 = xpc_dictionary_get_remote_connection(v8);
  xpc_connection_send_message(v49, reply);
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v38.receiver = self;
    v38.super_class = NESMIKEv2VPNFallbackSession;
    if (![(NESMSession *)&v38 handleUpdateConfiguration:v5])
    {
      v30 = 0;
      goto LABEL_23;
    }

    if (self)
    {
      Property = objc_getProperty(self, v6, 360, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = [Property objectAtIndexedSubscript:0];
    v10 = v8;
    if (v8)
    {
      v8 = objc_getProperty(v8, v9, 24, 1);
    }

    v11 = [v8 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100097F2C;
    block[3] = &unk_1000EB198;
    v12 = v5;
    v36 = v12;
    v37 = self;
    dispatch_async(v11, block);

    if (self)
    {
      v14 = objc_getProperty(self, v13, 360, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 objectAtIndexedSubscript:1];
    v17 = v15;
    if (v15)
    {
      v15 = objc_getProperty(v15, v16, 24, 1);
    }

    v18 = [v15 queue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100098018;
    v32[3] = &unk_1000EB198;
    v33 = v12;
    v34 = self;
    dispatch_async(v18, v32);
  }

  else
  {
    if (self)
    {
      v19 = objc_getProperty(self, v4, 360, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 objectAtIndexedSubscript:0];
    v22 = v20;
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 24, 1);
    }

    v23 = [v20 queue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100097CA4;
    v40[3] = &unk_1000EB1C0;
    v40[4] = self;
    dispatch_async(v23, v40);

    if (self)
    {
      v25 = objc_getProperty(self, v24, 360, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v25 objectAtIndexedSubscript:1];
    v28 = v26;
    if (v26)
    {
      v26 = objc_getProperty(v26, v27, 24, 1);
    }

    v29 = [v26 queue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100097DE8;
    v39[3] = &unk_1000EB1C0;
    v39[4] = self;
    dispatch_async(v29, v39);
  }

  v30 = 1;
LABEL_23:

  return v30;
}

- (void)handleUserSwitch
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 24, 1);
  }

  v6 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098278;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(v6, block);

  if (v2)
  {
    v8 = objc_getProperty(v2, v7, 360, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  v12 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000982E4;
  v13[3] = &unk_1000EB1C0;
  v13[4] = v2;
  dispatch_async(v12, v13);
}

- (void)handleUserLogout
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 24, 1);
  }

  v6 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000984C4;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(v6, block);

  if (v2)
  {
    v8 = objc_getProperty(v2, v7, 360, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  v12 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100098530;
  v13[3] = &unk_1000EB1C0;
  v13[4] = v2;
  dispatch_async(v12, v13);
}

- (void)handleSleepTime:(double)a3
{
  v4 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v7 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 24, 1);
  }

  v8 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009871C;
  block[3] = &unk_1000EB0D8;
  block[4] = v4;
  *&block[5] = a3;
  dispatch_async(v8, block);

  if (v4)
  {
    v10 = objc_getProperty(v4, v9, 360, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  v13 = v11;
  if (v11)
  {
    v11 = objc_getProperty(v11, v12, 24, 1);
  }

  v14 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100098798;
  v15[3] = &unk_1000EB0D8;
  v15[4] = v4;
  *&v15[5] = a3;
  dispatch_async(v14, v15);
}

- (BOOL)handleSleep
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 24, 1);
  }

  v6 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000989B4;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(v6, block);

  if (v2)
  {
    ++v2->_sleepAckCount;
    v8 = objc_getProperty(v2, v7, 360, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  v12 = [v9 queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100098A20;
  v14[3] = &unk_1000EB1C0;
  v14[4] = v2;
  dispatch_async(v12, v14);

  if (v2)
  {
    ++v2->_sleepAckCount;
  }

  return 1;
}

- (void)handleWakeup
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  Property = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 24, 1);
  }

  v6 = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098C00;
  block[3] = &unk_1000EB1C0;
  block[4] = v2;
  dispatch_async(v6, block);

  if (v2)
  {
    v8 = objc_getProperty(v2, v7, 360, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  v12 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100098C6C;
  v13[3] = &unk_1000EB1C0;
  v13[4] = v2;
  dispatch_async(v12, v13);
}

- (void)handleStopMessageWithReason:(int)a3
{
  v21.receiver = self;
  v21.super_class = NESMIKEv2VPNFallbackSession;
  [(NESMSession *)&v21 handleStopMessageWithReason:?];
  if (self)
  {
    Property = objc_getProperty(self, v5, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectAtIndexedSubscript:0];
  v9 = v7;
  if (v7)
  {
    v7 = objc_getProperty(v7, v8, 24, 1);
  }

  v10 = [v7 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098E7C;
  block[3] = &unk_1000EB338;
  block[4] = self;
  v20 = a3;
  dispatch_async(v10, block);

  if (self)
  {
    v12 = objc_getProperty(self, v11, 360, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 objectAtIndexedSubscript:1];
  v15 = v13;
  if (v13)
  {
    v13 = objc_getProperty(v13, v14, 24, 1);
  }

  v16 = [v13 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098EF8;
  v17[3] = &unk_1000EB338;
  v17[4] = self;
  v18 = a3;
  dispatch_async(v16, v17);
}

- (void)handleStartMessage:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectAtIndexedSubscript:0];
  v9 = v7;
  if (v7)
  {
    v7 = objc_getProperty(v7, v8, 24, 1);
  }

  v10 = [v7 state];

  if (v10 == 1)
  {
    if (self)
    {
      v12 = objc_getProperty(self, v11, 360, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 objectAtIndexedSubscript:0];
    v15 = v13;
    if (v13)
    {
      v13 = objc_getProperty(v13, v14, 24, 1);
    }

    v16 = [v13 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000990C8;
    v17[3] = &unk_1000EB198;
    v17[4] = self;
    v18 = v5;
    dispatch_async(v16, v17);
  }
}

- (void)handleInitializeState
{
  v17.receiver = self;
  v17.super_class = NESMIKEv2VPNFallbackSession;
  [(NESMSession *)&v17 handleInitializeState];
  if (self)
  {
    Property = objc_getProperty(self, v3, 360, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = [Property objectAtIndexedSubscript:0];
  v7 = v5;
  if (v5)
  {
    v5 = objc_getProperty(v5, v6, 24, 1);
  }

  v8 = [v5 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000992DC;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v8, block);

  if (self)
  {
    v10 = objc_getProperty(self, v9, 360, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  v13 = v11;
  if (v11)
  {
    v11 = objc_getProperty(v11, v12, 24, 1);
  }

  v14 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100099348;
  v15[3] = &unk_1000EB1C0;
  v15[4] = self;
  dispatch_async(v14, v15);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099494;
  block[3] = &unk_1000EABC8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, block);
}

- (void)handleChangeEventForFallback:(BOOL)a3
{
  v5 = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100099EBC;
  v6[3] = &unk_1000EB298;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

@end