@interface NESMAlwaysOnSession
+ (BOOL)hasRequiredFrameworks;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (NESMAlwaysOnSession)initWithConfiguration:(id)configuration andServer:(id)server;
- (id)copyExtendedStatus;
- (void)carrierBundleChange:(id)change;
- (void)dealloc;
- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleInitializeState;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)change;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleStartMessage:(id)message;
- (void)handleWakeup;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setStatus:(int)status;
@end

@implementation NESMAlwaysOnSession

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed: %@", &v6, 0xCu);
  }

  sub_1000075C4(self);
  [(NESMAlwaysOnSession *)self handleNetworkDetectionNotification:1];
}

- (void)handleInstalledAppsChanged
{
  [(NESMAlwaysOnSession *)self handleNetworkDetectionNotification:2];
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A38;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if (notification <= 5 && ((1 << notification) & 0x27) != 0)
  {
    block[7] = v3;
    block[8] = v4;
    queue = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007ED4;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self)
  {
    Property = objc_getProperty(self, v11, 360, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == objectCopy && [pathCopy isEqualToString:@"path"])
  {
    if (self)
    {
      v15 = objc_getProperty(self, v14, 360, 1);
    }

    else
    {
      v15 = 0;
    }

    path = [v15 path];
    if ([path status] == 1)
    {
      if (self)
      {
        IDSNexusIfIndex = self->_IDSNexusIfIndex;
      }

      else
      {
        IDSNexusIfIndex = 0;
      }

      interface = [path interface];
      interfaceIndex = [interface interfaceIndex];

      if (IDSNexusIfIndex == interfaceIndex)
      {
        goto LABEL_28;
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v21 = self->_IDSNexusIfIndex;
        }

        else
        {
          v21 = 0;
        }

        interface2 = [path interface];
        v36 = 134218240;
        v37 = v21;
        v38 = 2048;
        interfaceIndex2 = [interface2 interfaceIndex];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "IDS Nexus interface changed %ld -> %ld", &v36, 0x16u);
      }

      interface3 = [path interface];
      interfaceIndex3 = [interface3 interfaceIndex];
      if (self)
      {
        self->_IDSNexusIfIndex = interfaceIndex3;
      }

      policySession = [(NESMSession *)self policySession];
      interface4 = [path interface];
      interfaceName = [interface4 interfaceName];
      v28 = sub_100048604(policySession, interfaceName);

      if (v28)
      {
        goto LABEL_28;
      }

      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        interface5 = [path interface];
        interfaceName2 = [interface5 interfaceName];
        v36 = 138412290;
        v37 = interfaceName2;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to add IDS Nexus policy for %@", &v36, 0xCu);
      }
    }

    else
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v36) = 0;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "IDS Nexus interface unusable", &v36, 2u);
      }

      if (self)
      {
        self->_IDSNexusIfIndex = 0;
      }

      policySession2 = [(NESMSession *)self policySession];
      v35 = sub_100034538(policySession2, v34);

      if (v35)
      {
        goto LABEL_28;
      }

      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v36) = 0;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to clear Nexus policy", &v36, 2u);
      }
    }

LABEL_28:
  }
}

- (void)handleNetworkConfigurationChange:(int64_t)change
{
  queue = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000088D8;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  v6[5] = change;
  dispatch_async(queue, v6);
}

- (void)setStatus:(int)status
{
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy5 = self;
    v78 = 2080;
    v79 = "[NESMAlwaysOnSession setStatus:]";
    v80 = 2080;
    v81 = ne_session_status_to_string();
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@:%s: Enter (new status %s)", buf, 0x20u);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v7 = &selRef_temporaryAllowMulticastNetworkName;
  statusCopy = status;
  if (self)
  {
    Property = objc_getProperty(self, v6, 400, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = [v9 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v70;
    do
    {
      v14 = 0;
      do
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v69 + 1) + 8 * v14);
        if (self)
        {
          v16 = objc_getProperty(self, v11, *(v7 + 342), 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = [v16 objectForKeyedSubscript:v15];
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          interfaceName = [v17 interfaceName];
          connectCount = [v17 connectCount];
          connectedCount = [v17 connectedCount];
          disconnectedCount = [v17 disconnectedCount];
          *buf = 138413058;
          selfCopy5 = interfaceName;
          v78 = 2048;
          v79 = connectCount;
          v80 = 2048;
          v81 = connectedCount;
          v82 = 2048;
          v83 = disconnectedCount;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "AlwaysOn Stats [%@]: connect %ld, connected %ld, disconnected %ld", buf, 0x2Au);

          v7 = &selRef_temporaryAllowMulticastNetworkName;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v23 = [v9 countByEnumeratingWithState:&v69 objects:v84 count:16];
      v12 = v23;
    }

    while (v23);
  }

  v75[1] = 0;
  v75[0] = 0;
  configuration = [(NESMSession *)self configuration];
  identifier = [configuration identifier];
  [identifier getUUIDBytes:v75];

  if (statusCopy > 3)
  {
    if ((statusCopy - 4) >= 2)
    {
      return;
    }

LABEL_26:
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    if (self)
    {
      v28 = objc_getProperty(self, v26, *(v7 + 342), 1);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v58 objects:v73 count:16];
    if (v30)
    {
      v32 = v30;
      v33 = *v59;
      do
      {
        v34 = 0;
        do
        {
          if (*v59 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v58 + 1) + 8 * v34);
          if (self)
          {
            v36 = objc_getProperty(self, v31, *(v7 + 342), 1);
          }

          else
          {
            v36 = 0;
          }

          v37 = [v36 objectForKeyedSubscript:v35];
          status = [v37 status];

          if (status == 3)
          {

            return;
          }

          v34 = v34 + 1;
        }

        while (v32 != v34);
        v39 = [v29 countByEnumeratingWithState:&v58 objects:v73 count:16];
        v32 = v39;
      }

      while (v39);
    }

    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v55 = ne_session_status_to_string();
      *buf = 138412802;
      selfCopy5 = self;
      v78 = 2080;
      v79 = "[NESMAlwaysOnSession setStatus:]";
      v80 = 2080;
      v81 = v55;
      _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%@:%s: Status to Client: %s", buf, 0x20u);
    }

    v57.receiver = self;
    v57.super_class = NESMAlwaysOnSession;
    [(NESMSession *)&v57 setStatus:statusCopy];
    return;
  }

  if (statusCopy != 1)
  {
    if (statusCopy != 2)
    {
      if (statusCopy == 3)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          selfCopy5 = self;
          v78 = 2080;
          v79 = "[NESMAlwaysOnSession setStatus:]";
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@:%s: Status to Client: CONNECTED", buf, 0x16u);
        }

        v68.receiver = self;
        v68.super_class = NESMAlwaysOnSession;
        [(NESMSession *)&v68 setStatus:3];
      }

      return;
    }

    goto LABEL_26;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  if (self)
  {
    v41 = objc_getProperty(self, v26, *(v7 + 342), 1);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = [v42 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v43)
  {
    v45 = v43;
    v46 = *v65;
    do
    {
      v47 = 0;
      do
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v64 + 1) + 8 * v47);
        if (self)
        {
          v49 = objc_getProperty(self, v44, *(v7 + 342), 1);
        }

        else
        {
          v49 = 0;
        }

        v50 = [v49 objectForKeyedSubscript:v48];
        status2 = [v50 status];

        if (status2 != 1)
        {

          return;
        }

        v47 = v47 + 1;
      }

      while (v45 != v47);
      v52 = [v42 countByEnumeratingWithState:&v64 objects:v74 count:16];
      v45 = v52;
    }

    while (v52);
  }

  if (self && self->_stopped)
  {
    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy5 = self;
      v78 = 2080;
      v79 = "[NESMAlwaysOnSession setStatus:]";
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "%@:%s: Status to Client: DISCONNECTED", buf, 0x16u);
    }

    v63.receiver = self;
    v63.super_class = NESMAlwaysOnSession;
    [(NESMSession *)&v63 setStatus:1];
  }

  else
  {
    v54 = ne_log_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy5 = self;
      v78 = 2080;
      v79 = "[NESMAlwaysOnSession setStatus:]";
      _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "%@:%s: Status to Client: REASSERTING", buf, 0x16u);
    }

    v62.receiver = self;
    v62.super_class = NESMAlwaysOnSession;
    [(NESMSession *)&v62 setStatus:4];
  }
}

- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags
{
  interfaceCopy = interface;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    selfCopy = self;
    v19 = 2080;
    v20 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]";
    v21 = 2112;
    v22 = interfaceCopy;
    v23 = 1024;
    flagsCopy = flags;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@:%s: Enter (ifName %@, flags %X)", buf, 0x26u);
  }

  v16.receiver = self;
  v16.super_class = NESMAlwaysOnSession;
  [(NESMSession *)&v16 handleChangeEventForInterface:interfaceCopy newFlags:flags previousFlags:previousFlags];
  queue = [(NESMSession *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000092C8;
  v12[3] = &unk_1000EABF0;
  v12[4] = self;
  v13 = interfaceCopy;
  flagsCopy2 = flags;
  previousFlagsCopy = previousFlags;
  v11 = interfaceCopy;
  dispatch_async(queue, v12);
}

- (id)copyExtendedStatus
{
  v4 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v3, 400, 1);
    }

    else
    {
      Property = 0;
    }

    obj = Property;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * v10);
          if (self)
          {
            v12 = objc_getProperty(self, v7, 400, 1);
          }

          else
          {
            v12 = 0;
          }

          v13 = [v12 objectForKeyedSubscript:v11];
          queue = [v13 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000AC34;
          block[3] = &unk_1000EABC8;
          v20 = v13;
          v21 = v4;
          v22 = v11;
          v15 = v13;
          dispatch_sync(queue, block);

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v8 = v16;
      }

      while (v16);
    }
  }

  return v4;
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  messageCopy = message;
  xdict = xpc_dictionary_create_reply(messageCopy);
  if (type == 2)
  {
    self = [(NESMAlwaysOnSession *)self copyExtendedStatus];
    if (self)
    {
LABEL_13:
      v25 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(xdict, "SessionInfo", v25);
    }
  }

  else if (type == 1)
  {
    if (self)
    {
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = sub_10000B21C;
      v71 = sub_10000B22C;
      v72 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = objc_getProperty(self, v6, 400, 1);
      v8 = [obj countByEnumeratingWithState:&v39 objects:v77 count:16];
      if (v8)
      {
        v9 = *v40;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v40 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v39 + 1) + 8 * i);
            v12 = objc_getProperty(self, v7, 400, 1);
            v13 = [v12 objectForKeyedSubscript:v11];

            queue = [v13 queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000B234;
            block[3] = &unk_1000E96D8;
            v31 = v13;
            v32 = &v67;
            v33 = &v63;
            v34 = &v59;
            v35 = &v55;
            v36 = &v51;
            v37 = &v47;
            v38 = &v43;
            v15 = v13;
            dispatch_sync(queue, block);
          }

          v8 = [obj countByEnumeratingWithState:&v39 objects:v77 count:16];
        }

        while (v8);
      }

      v75 = kSCEntNetVPN;
      v73[0] = @"BytesIn";
      v16 = [NSNumber numberWithUnsignedLongLong:v64[3]];
      v74[0] = v16;
      v73[1] = @"BytesOut";
      v17 = [NSNumber numberWithUnsignedLongLong:v60[3]];
      v74[1] = v17;
      v73[2] = @"PacketsIn";
      v18 = [NSNumber numberWithUnsignedLongLong:v56[3]];
      v74[2] = v18;
      v73[3] = @"PacketsOut";
      v19 = [NSNumber numberWithUnsignedLongLong:v52[3]];
      v74[3] = v19;
      v73[4] = @"ErrorsIn";
      v20 = [NSNumber numberWithUnsignedLongLong:v48[3]];
      v74[4] = v20;
      v73[5] = @"ErrorsOut";
      v21 = [NSNumber numberWithUnsignedLongLong:v44[3]];
      v74[5] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:6];
      v76 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v24 = v68[5];
      v68[5] = v23;

      self = v68[5];
      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
    }

    if (self)
    {
      goto LABEL_13;
    }
  }

  v26 = xpc_dictionary_get_remote_connection(messageCopy);
  xpc_connection_send_message(v26, xdict);
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [(NESMSession *)self setConfiguration:0];
    [(NESMSession *)self setConfigurationSignature:0];
    sub_100007F18(self);
    goto LABEL_15;
  }

  status = [(NESMSession *)self status];
  if (self && status == 4 && self->_stopped)
  {
    configuration = [(NESMSession *)self configuration];
    if (![configuration isEnabled])
    {
      isEnabled = [configurationCopy isEnabled];

      if (!isEnabled)
      {
        goto LABEL_10;
      }

      self->_stopped = 0;
      configuration = ne_log_obj();
      if (os_log_type_enabled(configuration, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy = self;
        v18 = 2080;
        v19 = "[NESMAlwaysOnSession handleUpdateConfiguration:]";
        _os_log_debug_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_DEBUG, "%@:%s: Enabling config in Reasserting state, clearing STOPPED", buf, 0x16u);
      }
    }
  }

LABEL_10:
  v15.receiver = self;
  v15.super_class = NESMAlwaysOnSession;
  if (![(NESMSession *)&v15 handleUpdateConfiguration:configurationCopy])
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  sub_100007F18(self);
  alwaysOnVPN = [configurationCopy alwaysOnVPN];
  isEnabled2 = [alwaysOnVPN isEnabled];

  if (isEnabled2)
  {
    queue = [(NESMSession *)self queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B62C;
    v13[3] = &unk_1000EB198;
    v13[4] = self;
    v14 = configurationCopy;
    dispatch_async(queue, v13);
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (void)handleWakeup
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B9AC;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    objc_setProperty_atomic(self, v4, messageCopy, 392);
    self->_stopped = 0;
    v26.receiver = self;
    v26.super_class = NESMAlwaysOnSession;
    [(NESMSession *)&v26 handleStartMessage:messageCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    Property = objc_getProperty(self, v6, 400, 1);
  }

  else
  {
    v26.receiver = 0;
    v26.super_class = NESMAlwaysOnSession;
    [(NESMSession *)&v26 handleStartMessage:messageCopy];
    Property = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        if (self)
        {
          v15 = objc_getProperty(self, v10, 400, 1);
        }

        else
        {
          v15 = 0;
        }

        v16 = [v15 objectForKeyedSubscript:v14];
        if ([v16 state] == 1)
        {
          queue = [v16 queue];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10000C06C;
          v19[3] = &unk_1000EB198;
          v20 = v16;
          v21 = messageCopy;
          dispatch_async(queue, v19);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v18 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v11 = v18;
    }

    while (v18);
  }
}

- (void)handleInitializeState
{
  v23.receiver = self;
  v23.super_class = NESMAlwaysOnSession;
  [(NESMSession *)&v23 handleInitializeState];
  sub_1000075C4(self);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v3, 400, 1);
  }

  else
  {
    Property = 0;
  }

  obj = Property;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if (self)
        {
          v11 = objc_getProperty(self, v6, 400, 1);
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 objectForKeyedSubscript:v10];
        queue = [v12 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C270;
        block[3] = &unk_1000EB1C0;
        v18 = v12;
        v14 = v12;
        dispatch_async(queue, block);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v7 = v15;
    }

    while (v15);
  }
}

- (void)dealloc
{
  if (self)
  {
    if (objc_getProperty(self, a2, 360, 1))
    {
      [objc_getProperty(self v3];
      objc_setProperty_atomic(self, v4, 0, 360);
    }

    self->_IDSNexusIfIndex = 0;
    policySession = [(NESMSession *)self policySession];
    v7 = sub_100034538(policySession, v6);

    if ((v7 & 1) == 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to clear Nexus policy", buf, 2u);
      }
    }

    objc_setProperty_atomic(self, v8, 0, 376);
  }

  v10.receiver = self;
  v10.super_class = NESMAlwaysOnSession;
  [(NESMSession *)&v10 dealloc];
}

- (NESMAlwaysOnSession)initWithConfiguration:(id)configuration andServer:(id)server
{
  configurationCopy = configuration;
  serverCopy = server;
  v54.receiver = self;
  v54.super_class = NESMAlwaysOnSession;
  v8 = [(NESMSession *)&v54 initWithConfiguration:configurationCopy andServer:serverCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_41;
  }

  v8->_retryIntervalMin = 5;
  v8->_retryIntervalMax = 600;
  v8->_retryIntervalMultipler = 2;
  v8->_retriesMax = 3;
  VPNSessions = v8->_VPNSessions;
  v8->_VPNSessions = 0;

  v9->_stopped = 1;
  v11 = [NESMPolicySession alloc];
  identifier = [configurationCopy identifier];
  grade = [configurationCopy grade];
  if (v11)
  {
    v11 = sub_100033D18(&v11->super.isa, identifier, 3, grade, 1, 1);
  }

  [(NESMSession *)v9 setPolicySession:v11];

  sub_10008E79C(v9);
  v14 = ne_log_large_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v56 = v9;
    v57 = 2080;
    v58 = "[NESMAlwaysOnSession initWithConfiguration:andServer:]";
    v59 = 2112;
    v60 = configurationCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@:%s: Configuration %@", buf, 0x20u);
  }

  v15 = [[NSMutableDictionary alloc] initWithCapacity:0];
  if (!v15)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = v9;
      v57 = 2080;
      v58 = "[NESMAlwaysOnSession initWithConfiguration:andServer:]";
      v32 = "%@:%s: Failed to allocate VPN sessions";
LABEL_32:
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
    }

LABEL_46:

    v46 = 0;
    goto LABEL_47;
  }

  v16 = [[NSMutableDictionary alloc] initWithCapacity:0];
  if (!v16)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = v9;
      v57 = 2080;
      v58 = "[NESMAlwaysOnSession initWithConfiguration:andServer:]";
      v32 = "%@:%s: Failed to allocate VPN session retry counters";
      goto LABEL_32;
    }

    goto LABEL_46;
  }

  v17 = v16;
  objc_storeStrong(&v9->_VPNSessionRetryCounters, v16);
  if (nwi_state_copy())
  {
    interface_names = nwi_state_get_interface_names();
    if (interface_names && (v19 = malloc_type_calloc(interface_names, 8uLL, 0x50040EE9192B6uLL)) != 0)
    {
      v20 = v19;
      v52 = v17;
      v53 = v15;
      v21 = nwi_state_get_interface_names();
      v51 = v20;
      if (v21)
      {
        v23 = v20;
        v24 = 0;
        v25 = v21;
        *&v22 = 138412802;
        v50 = v22;
        do
        {
          v26 = *v23;
          if (*v23 && (v27 = *v23, nwi_state_get_ifstate()) && !nwi_ifstate_get_vpn_server() && (nwi_ifstate_get_flags() & 3) != 0 && (nwi_ifstate_get_flags() & 4) != 0)
          {
            v29 = [NSString stringWithUTF8String:v26];
            v28 = sub_100009DCC(v9, v29);

            if (v28)
            {
              if ([v53 count])
              {
                [v28 setIsSecondaryInterface:1];
                [v28 setIsSecondaryConnection:1];
              }

              v30 = v29;
              [v53 setObject:v28 forKeyedSubscript:{v29, v50}];
              v31 = ne_log_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = v50;
                v56 = v9;
                v57 = 2080;
                v58 = "[NESMAlwaysOnSession initWithConfiguration:andServer:]";
                v59 = 2112;
                v60 = v30;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@:%s: Set up VPN Session over %@", buf, 0x20u);
              }

              v29 = v30;
            }
          }

          else
          {
            v28 = v24;
          }

          ++v23;
          v24 = v28;
          --v25;
        }

        while (v25);
      }

      else
      {
        v28 = 0;
      }

      free(v51);
      v17 = v52;
      v15 = v53;
    }

    else
    {
      v28 = 0;
    }

    nwi_state_release();
  }

  else
  {
    v28 = 0;
  }

  objc_storeStrong(&v9->_VPNSessions, v15);
  sub_10000A028(v9, v33);
  v34 = [[NEPolicySession alloc] initWithSessionName:@"AOVPN control"];
  [(NESMSession *)v9 setControlPolicySession:v34];

  controlPolicySession = [(NESMSession *)v9 controlPolicySession];

  if (!controlPolicySession)
  {
    v47 = ne_log_obj();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
LABEL_45:

      goto LABEL_46;
    }

    *buf = 0;
    v48 = "Failed to create the control policy session";
LABEL_49:
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_45;
  }

  controlPolicySession2 = [(NESMSession *)v9 controlPolicySession];
  [controlPolicySession2 setPriority:100];

  controlPolicySession3 = [(NESMSession *)v9 controlPolicySession];
  [controlPolicySession3 lockSessionToCurrentProcess];

  v38 = [[NEPolicySession alloc] initWithSessionName:@"AOVPN high"];
  [(NESMSession *)v9 setHighPolicySession:v38];

  highPolicySession = [(NESMSession *)v9 highPolicySession];

  if (!highPolicySession)
  {
    v47 = ne_log_obj();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v48 = "Failed to create AOVPN high policy session";
    goto LABEL_49;
  }

  highPolicySession2 = [(NESMSession *)v9 highPolicySession];
  [highPolicySession2 setPriority:400];

  highPolicySession3 = [(NESMSession *)v9 highPolicySession];
  [highPolicySession3 lockSessionToCurrentProcess];

  v9->_carrierBundleIMSUseIPSec = 0;
  v9->_carrierBundleNATKeepAliveIntervalOverCell = 110;
  v42 = [CoreTelephonyClient alloc];
  queue = [(NESMSession *)v9 queue];
  v44 = [v42 initWithQueue:queue];
  CTClient = v9->_CTClient;
  v9->_CTClient = v44;

  [(CoreTelephonyClient *)v9->_CTClient setDelegate:v9];
LABEL_41:
  v46 = v9;
LABEL_47:

  return v46;
}

+ (BOOL)hasRequiredFrameworks
{
  if (objc_opt_class())
  {
    v2 = sub_10005750C();
    if (v2)
    {
      v3 = v2[8];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

@end