@interface NESMIKEv2VPNFallbackSession
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (id)copyExtendedStatus;
- (void)dropServer;
- (void)handleChangeEventForFallback:(BOOL)fallback;
- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleInitializeState;
- (void)handleNetworkConfigurationChange:(int64_t)change;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleSleepTime:(double)time;
- (void)handleStartMessage:(id)message;
- (void)handleStopMessageWithReason:(int)reason;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)installPended;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setStatus:(int)status;
- (void)uninstall;
@end

@implementation NESMIKEv2VPNFallbackSession

- (void)dropServer
{
  server = [(NESMSession *)self server];
  [server removeObserver:self forKeyPath:@"primaryCellularInterface"];

  v4.receiver = self;
  v4.super_class = NESMIKEv2VPNFallbackSession;
  [(NESMSession *)&v4 dropServer];
}

- (void)handleNetworkConfigurationChange:(int64_t)change
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094E64;
  block[3] = &unk_1000EB0D8;
  block[4] = selfCopy;
  block[5] = change;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v10 = objc_getProperty(selfCopy, v9, 360, 1);
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

  queue2 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100094EE0;
  v15[3] = &unk_1000EB0D8;
  v15[4] = selfCopy;
  v15[5] = change;
  dispatch_async(queue2, v15);
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
    selfCopy = "[NESMIKEv2VPNFallbackSession uninstall]";
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000952B8;
  block[3] = &unk_1000EB1C0;
  v11 = v7;
  v28 = v11;
  dispatch_async(queue, block);

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_getProperty(v11, v13, 24, 1);
    *buf = 138412546;
    selfCopy = self;
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
    selfCopy = "[NESMIKEv2VPNFallbackSession installPended]";
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096198;
  block[3] = &unk_1000EB1C0;
  v11 = v7;
  v28 = v11;
  dispatch_async(queue, block);

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_getProperty(v11, v13, 24, 1);
    *buf = 138412546;
    selfCopy = self;
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

        queue = [Property queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009675C;
        block[3] = &unk_1000EB1C0;
        v12 = v8;
        v42 = v12;
        dispatch_async(queue, block);

        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_getProperty(v12, v14, 24, 1);
          *buf = 138412546;
          selfCopy2 = self;
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

          queue2 = [v31 queue];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1000966E4;
          v43[3] = &unk_1000EB0D8;
          v43[4] = self;
          v43[5] = v26;
          dispatch_async(queue2, v43);

          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [objc_getProperty(self v36];
            *buf = v40;
            selfCopy2 = self;
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
      selfCopy2 = "[NESMIKEv2VPNFallbackSession install]";
      _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "%s called with null self.configurationOperationArray", buf, 0xCu);
    }
  }
}

- (void)setStatus:(int)status
{
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy2 = self;
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
  v15 = sub_1000969CC(self, status, v14);
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = ne_session_status_to_string();
    *buf = 138412802;
    selfCopy2 = self;
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

- (void)handleNetworkDetectionNotification:(int)notification
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096BCC;
  block[3] = &unk_1000EB338;
  block[4] = selfCopy;
  notificationCopy = notification;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v10 = objc_getProperty(selfCopy, v9, 360, 1);
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

  queue2 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096C48;
  v15[3] = &unk_1000EB338;
  v15[4] = selfCopy;
  notificationCopy2 = notification;
  dispatch_async(queue2, v15);
}

- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags
{
  interfaceCopy = interface;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    selfCopy = self;
    v23 = 2080;
    v24 = "[NESMIKEv2VPNFallbackSession handleChangeEventForInterface:newFlags:previousFlags:]";
    v25 = 2112;
    v26 = interfaceCopy;
    v27 = 1024;
    flagsCopy = flags;
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

  queue = [v12 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100096E7C;
  v17[3] = &unk_1000EABF0;
  v17[4] = self;
  v18 = interfaceCopy;
  flagsCopy2 = flags;
  previousFlagsCopy = previousFlags;
  v16 = interfaceCopy;
  dispatch_async(queue, v17);
}

- (id)copyExtendedStatus
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 360, 1);
  }

  v3 = [(NESMIKEv2VPNFallbackSession *)self objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3 && *(v3 + 8) == 3 || (!selfCopy ? (v7 = 0) : (v7 = objc_getProperty(selfCopy, v4, 360, 1)), [v7 objectAtIndexedSubscript:1], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_13:
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v6, 360, 1);
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

  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v6, 360, 1);
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

  copyExtendedStatus = [v12 copyExtendedStatus];

  if (!copyExtendedStatus)
  {
    v16 = 0;
    goto LABEL_41;
  }

  v16 = [copyExtendedStatus mutableCopy];
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

  if ([(NESMSession *)selfCopy status]== 3)
  {
    v21 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)selfCopy connectTime]];
    v22 = @"ConnectTime";
LABEL_27:
    [v20 setObject:v21 forKeyedSubscript:v22];

    goto LABEL_28;
  }

  if ([(NESMSession *)selfCopy status]!= 2)
  {
    v21 = [NSNumber numberWithInt:[(NESMSession *)selfCopy lastStopReason]];
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

  v27 = [NSNumber numberWithInteger:[(NESMSession *)selfCopy connectCount]];
  [v26 setObject:v27 forKeyedSubscript:@"ConnectCount"];

  v28 = [NSNumber numberWithInteger:[(NESMSession *)selfCopy connectedCount]];
  [v26 setObject:v28 forKeyedSubscript:@"ConnectedCount"];

  v29 = [NSNumber numberWithInteger:[(NESMSession *)selfCopy disconnectedCount]];
  [v26 setObject:v29 forKeyedSubscript:@"DisconnectedCount"];

  v30 = [NSNumber numberWithUnsignedLongLong:[(NESMSession *)selfCopy maxConnectTime]];
  [v26 setObject:v30 forKeyedSubscript:@"MaxConnectTime"];

  [v16 setObject:v26 forKeyedSubscript:@"ConnectionStatistics"];
  v31 = [NSNumber numberWithInt:[(NESMSession *)selfCopy status]];
  [v16 setObject:v31 forKeyedSubscript:@"NEStatus"];

  v32 = [NSNumber numberWithInt:[(NESMSession *)selfCopy SCNCStatus]];
  [v16 setObject:v32 forKeyedSubscript:@"Status"];

  lastDisconnectError = [(NESMSession *)selfCopy lastDisconnectError];
  if (lastDisconnectError)
  {
    v40 = 0;
    v34 = [NSKeyedArchiver archivedDataWithRootObject:lastDisconnectError requiringSecureCoding:1 error:&v40];
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

  lastStatusChangeTime = [(NESMSession *)selfCopy lastStatusChangeTime];

  if (lastStatusChangeTime)
  {
    lastStatusChangeTime2 = [(NESMSession *)selfCopy lastStatusChangeTime];
    [v16 setObject:lastStatusChangeTime2 forKeyedSubscript:@"LastStatusChangeTime"];
  }

LABEL_41:
  return v16;
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  xdict = message;
  reply = xpc_dictionary_create_reply(xdict);
  if (type != 2)
  {
    v8 = xdict;
    if (type != 1)
    {
      goto LABEL_23;
    }

    v53 = reply;
    if (!self)
    {
      copyExtendedStatus = 0;
LABEL_21:
      reply = v53;
      v8 = xdict;
      if (!copyExtendedStatus)
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

    copyStatistics = [Property copyStatistics];

    if (copyStatistics)
    {
      v15 = [copyStatistics objectForKeyedSubscript:@"VPN"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"BytesIn"];
        unsignedLongLongValue = [v17 unsignedLongLongValue];

        v19 = [v16 objectForKeyedSubscript:@"BytesOut"];
        unsignedLongLongValue2 = [v19 unsignedLongLongValue];

        v21 = [v16 objectForKeyedSubscript:@"PacketsIn"];
        unsignedLongLongValue3 = [v21 unsignedLongLongValue];

        v22 = [v16 objectForKeyedSubscript:@"PacketsOut"];
        unsignedLongLongValue4 = [v22 unsignedLongLongValue];

        v24 = [v16 objectForKeyedSubscript:@"ErrorsIn"];
        unsignedLongLongValue5 = [v24 unsignedLongLongValue];

        v26 = [v16 objectForKeyedSubscript:@"ErrorsOut"];
        unsignedLongLongValue6 = [v26 unsignedLongLongValue];

        v9 = &selRef_temporaryAllowMulticastNetworkName;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
    }

    unsignedLongLongValue = 0;
    unsignedLongLongValue2 = 0;
    unsignedLongLongValue3 = 0;
    unsignedLongLongValue4 = 0;
    unsignedLongLongValue5 = 0;
    unsignedLongLongValue6 = 0;
LABEL_13:
    v29 = [objc_getProperty(self v14];
    v31 = v29;
    if (v29)
    {
      v29 = objc_getProperty(v29, v30, 24, 1);
    }

    copyStatistics2 = [v29 copyStatistics];

    v50 = copyStatistics2;
    if (copyStatistics2)
    {
      v33 = [copyStatistics2 objectForKeyedSubscript:{@"VPN", copyStatistics2}];

      if (v33)
      {
        v34 = [v33 objectForKeyedSubscript:@"BytesIn"];
        unsignedLongLongValue = &unsignedLongLongValue[[v34 unsignedLongLongValue]];

        v35 = [v33 objectForKeyedSubscript:@"BytesOut"];
        unsignedLongLongValue2 = &unsignedLongLongValue2[[v35 unsignedLongLongValue]];

        v36 = [v33 objectForKeyedSubscript:@"PacketsIn"];
        v37 = &unsignedLongLongValue3[[v36 unsignedLongLongValue]];

        v38 = [v33 objectForKeyedSubscript:@"PacketsOut"];
        unsignedLongLongValue4 = &unsignedLongLongValue4[[v38 unsignedLongLongValue]];

        v39 = [v33 objectForKeyedSubscript:@"ErrorsIn"];
        unsignedLongLongValue5 = &unsignedLongLongValue5[[v39 unsignedLongLongValue]];

        v40 = [v33 objectForKeyedSubscript:@"ErrorsOut"];
        unsignedLongLongValue6 = &unsignedLongLongValue6[[v40 unsignedLongLongValue]];

        v16 = v33;
LABEL_20:
        v57 = kSCEntNetVPN;
        v55[0] = @"BytesIn";
        v41 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue, v50];
        v56[0] = v41;
        v55[1] = @"BytesOut";
        v42 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue2];
        v56[1] = v42;
        v55[2] = @"PacketsIn";
        v43 = [NSNumber numberWithUnsignedLongLong:v37];
        v56[2] = v43;
        v55[3] = @"PacketsOut";
        v44 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue4];
        v56[3] = v44;
        v55[4] = @"ErrorsIn";
        v45 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue5];
        v56[4] = v45;
        v55[5] = @"ErrorsOut";
        v46 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue6];
        v56[5] = v46;
        v47 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:6];
        v58 = v47;
        copyExtendedStatus = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];

        goto LABEL_21;
      }

      v16 = 0;
    }

    v37 = unsignedLongLongValue3;
    goto LABEL_20;
  }

  copyExtendedStatus = [(NESMIKEv2VPNFallbackSession *)self copyExtendedStatus];
  v8 = xdict;
  if (copyExtendedStatus)
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

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v38.receiver = self;
    v38.super_class = NESMIKEv2VPNFallbackSession;
    if (![(NESMSession *)&v38 handleUpdateConfiguration:configurationCopy])
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

    queue = [v8 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100097F2C;
    block[3] = &unk_1000EB198;
    v12 = configurationCopy;
    v36 = v12;
    selfCopy = self;
    dispatch_async(queue, block);

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

    queue2 = [v15 queue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100098018;
    v32[3] = &unk_1000EB198;
    v33 = v12;
    selfCopy2 = self;
    dispatch_async(queue2, v32);
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

    queue3 = [v20 queue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100097CA4;
    v40[3] = &unk_1000EB1C0;
    v40[4] = self;
    dispatch_async(queue3, v40);

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

    queue4 = [v26 queue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100097DE8;
    v39[3] = &unk_1000EB1C0;
    v39[4] = self;
    dispatch_async(queue4, v39);
  }

  v30 = 1;
LABEL_23:

  return v30;
}

- (void)handleUserSwitch
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098278;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v8 = objc_getProperty(selfCopy, v7, 360, 1);
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

  queue2 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000982E4;
  v13[3] = &unk_1000EB1C0;
  v13[4] = selfCopy;
  dispatch_async(queue2, v13);
}

- (void)handleUserLogout
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000984C4;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v8 = objc_getProperty(selfCopy, v7, 360, 1);
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

  queue2 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100098530;
  v13[3] = &unk_1000EB1C0;
  v13[4] = selfCopy;
  dispatch_async(queue2, v13);
}

- (void)handleSleepTime:(double)time
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009871C;
  block[3] = &unk_1000EB0D8;
  block[4] = selfCopy;
  *&block[5] = time;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v10 = objc_getProperty(selfCopy, v9, 360, 1);
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

  queue2 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100098798;
  v15[3] = &unk_1000EB0D8;
  v15[4] = selfCopy;
  *&v15[5] = time;
  dispatch_async(queue2, v15);
}

- (BOOL)handleSleep
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000989B4;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    ++selfCopy->_sleepAckCount;
    v8 = objc_getProperty(selfCopy, v7, 360, 1);
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

  queue2 = [v9 queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100098A20;
  v14[3] = &unk_1000EB1C0;
  v14[4] = selfCopy;
  dispatch_async(queue2, v14);

  if (selfCopy)
  {
    ++selfCopy->_sleepAckCount;
  }

  return 1;
}

- (void)handleWakeup
{
  selfCopy = self;
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

  queue = [Property queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098C00;
  block[3] = &unk_1000EB1C0;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  if (selfCopy)
  {
    v8 = objc_getProperty(selfCopy, v7, 360, 1);
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

  queue2 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100098C6C;
  v13[3] = &unk_1000EB1C0;
  v13[4] = selfCopy;
  dispatch_async(queue2, v13);
}

- (void)handleStopMessageWithReason:(int)reason
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

  queue = [v7 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098E7C;
  block[3] = &unk_1000EB338;
  block[4] = self;
  reasonCopy = reason;
  dispatch_async(queue, block);

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

  queue2 = [v13 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098EF8;
  v17[3] = &unk_1000EB338;
  v17[4] = self;
  reasonCopy2 = reason;
  dispatch_async(queue2, v17);
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
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

  state = [v7 state];

  if (state == 1)
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

    queue = [v13 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000990C8;
    v17[3] = &unk_1000EB198;
    v17[4] = self;
    v18 = messageCopy;
    dispatch_async(queue, v17);
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

  queue = [v5 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000992DC;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);

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

  queue2 = [v11 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100099348;
  v15[3] = &unk_1000EB1C0;
  v15[4] = self;
  dispatch_async(queue2, v15);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099494;
  block[3] = &unk_1000EABC8;
  v14 = objectCopy;
  selfCopy = self;
  v16 = pathCopy;
  v11 = pathCopy;
  v12 = objectCopy;
  dispatch_async(queue, block);
}

- (void)handleChangeEventForFallback:(BOOL)fallback
{
  queue = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100099EBC;
  v6[3] = &unk_1000EB298;
  v6[4] = self;
  fallbackCopy = fallback;
  dispatch_async(queue, v6);
}

@end