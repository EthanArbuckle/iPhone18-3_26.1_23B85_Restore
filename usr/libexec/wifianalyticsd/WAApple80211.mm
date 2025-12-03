@interface WAApple80211
- (BOOL)currentChannelInfo:(apple80211_channel *)info;
- (BOOL)everAssociated;
- (BOOL)grabAndSubmitFWTrapInfo;
- (BOOL)grabAndSubmitLqmMetrics;
- (BOOL)hasAWDLInterfaceListed;
- (BOOL)hasIRInterfaceListed;
- (BOOL)hasNANInterfaceListed;
- (BOOL)hasSoftAPInterfaceListed;
- (BOOL)isAXAssociatoin;
- (BOOL)isAssociated;
- (BOOL)triggerDpsReset:(id)reset metaData:(id)data;
- (BOOL)triggerFastDpsReset;
- (BOOL)triggerReassociation:(id)reassociation;
- (WAApple80211)init;
- (WAApple80211)initWithInterfaceName:(id)name;
- (id)currentBSSIDandSSID;
- (id)getChipSet;
- (id)getIOReportLegendItemsGroupBeginsWith:(id)with groupContains:(id)contains groupEndsWith:(id)endsWith groupEquals:(id)equals subgroupBeginsWith:(id)beginsWith subgroupContains:(id)subgroupContains subgroupEndsWith:(id)subgroupEndsWith subgroupEquals:(id)self0 channelEquals:(id)self1 retErr:(char *)self2;
- (id)getIOReportLegendItemsMatching:(id *)matching retErr:(char *)err;
- (id)getIOReportingClassPath;
- (id)getIOReportingDriverName;
- (id)initByFindingInterfaceName;
- (int)currentPHYMode;
- (int64_t)getDriverType;
- (unint64_t)getIOReportingDriverID;
- (unint64_t)getPhyMode;
- (unsigned)getIOReportingService;
- (void)_storeAttemptedRecovery:(id)recovery reason:(id)reason fromSSID:(id)d fromBSSID:(id)iD commandResult:(int)result;
- (void)dealloc;
- (void)submitLqmMetrics:(id)metrics;
@end

@implementation WAApple80211

- (WAApple80211)init
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Please use the init defined in the header for this class" userInfo:0];
  objc_exception_throw(v2);
}

- (id)initByFindingInterfaceName
{
  obj = 0;
  theArray = 0;
  v30.receiver = self;
  v30.super_class = WAApple80211;
  v2 = [(WAApple80211 *)&v30 init];
  if (!v2)
  {
    IfListCopy = 0;
LABEL_30:
    v28 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v34 = "[WAApple80211 initByFindingInterfaceName]";
      *&v34[8] = 1024;
      *&v34[10] = 126;
      v35 = 1024;
      LODWORD(v36) = IfListCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to init WAApple80211 err is: %d", buf, 0x18u);
    }

    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *v34 = IfListCopy;
      *&v34[4] = 2112;
      *&v34[6] = obj;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to init WAApple80211 err is: %d, interface %@", buf, 0x12u);
    }

    v16 = 0;
    if (obj)
    {
      CFRelease(obj);
    }

    dummyWAMessage = v2;
    v2 = 0;
    goto LABEL_11;
  }

  IfListCopy = Apple80211Open();
  if (IfListCopy)
  {
    v22 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    *v34 = "[WAApple80211 initByFindingInterfaceName]";
    *&v34[8] = 1024;
    *&v34[10] = 80;
    v35 = 1024;
    LODWORD(v36) = IfListCopy;
    v23 = "%{public}s::%d:Apple80211Open failed with: %d";
    goto LABEL_20;
  }

  apple80211Ref = v2->_apple80211Ref;
  IfListCopy = Apple80211GetIfListCopy();
  if (IfListCopy)
  {
    v22 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    *v34 = "[WAApple80211 initByFindingInterfaceName]";
    *&v34[8] = 1024;
    *&v34[10] = 83;
    v35 = 1024;
    LODWORD(v36) = IfListCopy;
    v23 = "%{public}s::%d:Apple80211GetIfListCopy failed with: %d";
LABEL_20:
    v24 = v22;
    v25 = 24;
    goto LABEL_28;
  }

  if (!CFArrayGetCount(theArray))
  {
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *v34 = "[WAApple80211 initByFindingInterfaceName]";
      *&v34[8] = 1024;
      *&v34[10] = 85;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211GetIfListCopy returned 0 interfaces", buf, 0x12u);
    }

    IfListCopy = 0;
    goto LABEL_29;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    *v34 = "[WAApple80211 initByFindingInterfaceName]";
    *&v34[8] = 1024;
    *&v34[10] = 89;
    v35 = 2112;
    v36 = ValueAtIndex;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found WiFi interface %@\n", buf, 0x1Cu);
  }

  objc_storeStrong(&v2->_ifName, ValueAtIndex);
  v7 = v2->_apple80211Ref;
  ifName = v2->_ifName;
  IfListCopy = Apple80211BindToInterface();
  if (IfListCopy)
  {
    v22 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v26 = v2->_ifName;
    v27 = Apple80211ErrToStr();
    *buf = 136447234;
    *v34 = "[WAApple80211 initByFindingInterfaceName]";
    *&v34[8] = 1024;
    *&v34[10] = 95;
    v35 = 2112;
    v36 = v26;
    v37 = 1024;
    v38 = IfListCopy;
    v39 = 2080;
    v40 = v27;
    v23 = "%{public}s::%d:Apple80211BindToInterface (for interface with name: %@) failed with: %d - %s";
    v24 = v22;
    v25 = 44;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    goto LABEL_29;
  }

  v9 = v2->_apple80211Ref;
  IfListCopy = Apple80211GetInterfaceNameCopy();
  objc_storeStrong(&v2->_ifName, obj);
  if (!v2->_ifName)
  {
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *v34 = "[WAApple80211 initByFindingInterfaceName]";
      *&v34[8] = 1024;
      *&v34[10] = 102;
      v23 = "%{public}s::%d:No interface name to use with Apple80211";
      v24 = v22;
      v25 = 18;
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  v10 = +[NSDate distantPast];
  lastDateChannelQueried = v2->_lastDateChannelQueried;
  v2->_lastDateChannelQueried = v10;

  dword_10010DE10 = 0;
  qword_10010DE08 = 0;
  v12 = +[NSDate distantPast];
  lastDateBSSIDQueried = v2->_lastDateBSSIDQueried;
  v2->_lastDateBSSIDQueried = v12;

  v14 = qword_10010DDE8;
  qword_10010DDE8 = @"00:00:00:00:00:00";

  v15 = qword_10010DDF0;
  qword_10010DDF0 = @"Uninit lastSSID";

  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v17 = dispatch_queue_create("com.apple.wifi.recoveryMO.queue", v16);
  analyticsMOCQueue = v2->analyticsMOCQueue;
  v2->analyticsMOCQueue = v17;

  byte_10010DDE0 = 0;
  if (v2->_dummyWAMessage)
  {
    goto LABEL_12;
  }

  v19 = objc_alloc_init(WAMessage);
  dummyWAMessage = v2->_dummyWAMessage;
  v2->_dummyWAMessage = v19;
LABEL_11:

LABEL_12:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v2;
}

- (WAApple80211)initWithInterfaceName:(id)name
{
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = WAApple80211;
  v6 = [(WAApple80211 *)&v31 init];
  v7 = v6;
  if (!v6)
  {
    v8 = 0;
LABEL_19:
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v33 = "[WAApple80211 initWithInterfaceName:]";
      *&v33[8] = 1024;
      *&v33[10] = 184;
      v34 = 1024;
      LODWORD(v35) = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to init WAApple80211 err is: %d", buf, 0x18u);
    }

    v30 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *v33 = v8;
      *&v33[4] = 2112;
      *&v33[6] = nameCopy;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Failed to init WAApple80211 err is: %d, interface %@", buf, 0x12u);
    }

    v17 = 0;
    dummyWAMessage = v7;
    v7 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_ifName, name);
  if (!v7->_ifName)
  {
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *v33 = "[WAApple80211 initWithInterfaceName:]";
      *&v33[8] = 1024;
      *&v33[10] = 153;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:No interface name to use with Apple80211", buf, 0x12u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  v8 = Apple80211Open();
  if (v8)
  {
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v33 = "[WAApple80211 initWithInterfaceName:]";
      *&v33[8] = 1024;
      *&v33[10] = 156;
      v34 = 1024;
      LODWORD(v35) = v8;
      v24 = "%{public}s::%d:Apple80211Open failed with: %d";
      v25 = v23;
      v26 = 24;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    }

LABEL_18:

    goto LABEL_19;
  }

  apple80211Ref = v7->_apple80211Ref;
  ifName = v7->_ifName;
  v8 = Apple80211BindToInterface();
  if (v8)
  {
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = v7->_ifName;
      v28 = Apple80211ErrToStr();
      *buf = 136447234;
      *v33 = "[WAApple80211 initWithInterfaceName:]";
      *&v33[8] = 1024;
      *&v33[10] = 159;
      v34 = 2112;
      v35 = v27;
      v36 = 1024;
      v37 = v8;
      v38 = 2080;
      v39 = v28;
      v24 = "%{public}s::%d:Apple80211BindToInterface (for interface with name: %@) failed with: %d - %s";
      v25 = v23;
      v26 = 44;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v11 = +[NSDate distantPast];
  lastDateChannelQueried = v7->_lastDateChannelQueried;
  v7->_lastDateChannelQueried = v11;

  dword_10010DE10 = 0;
  qword_10010DE08 = 0;
  v13 = +[NSDate distantPast];
  lastDateBSSIDQueried = v7->_lastDateBSSIDQueried;
  v7->_lastDateBSSIDQueried = v13;

  v15 = qword_10010DDE8;
  qword_10010DDE8 = @"00:00:00:00:00:00";

  v16 = qword_10010DDF0;
  qword_10010DDF0 = @"Uninit lastSSID";

  v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v18 = dispatch_queue_create("com.apple.wifi.recoveryMO.queue", v17);
  analyticsMOCQueue = v7->analyticsMOCQueue;
  v7->analyticsMOCQueue = v18;

  byte_10010DDE0 = 0;
  if (!v7->_dummyWAMessage)
  {
    v20 = objc_alloc_init(WAMessage);
    dummyWAMessage = v7->_dummyWAMessage;
    v7->_dummyWAMessage = v20;
LABEL_7:
  }

  return v7;
}

- (void)dealloc
{
  if ([(WAApple80211 *)self apple80211Ref])
  {
    apple80211Ref = self->_apple80211Ref;
    Apple80211Close();
  }

  v4.receiver = self;
  v4.super_class = WAApple80211;
  [(WAApple80211 *)&v4 dealloc];
}

- (BOOL)hasSoftAPInterfaceListed
{
  apple80211Ref = self->_apple80211Ref;
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[WAApple80211 hasSoftAPInterfaceListed]";
      v18 = 1024;
      v19 = 206;
      v20 = 1024;
      v21 = VirtualIfListCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211GetVirtualIfListCopy failed with: %d", buf, 0x18u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = 0;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v12 + 1) + 8 * i) containsString:@"ap"];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v5 & 1;
}

- (BOOL)hasNANInterfaceListed
{
  apple80211Ref = self->_apple80211Ref;
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[WAApple80211 hasNANInterfaceListed]";
      v18 = 1024;
      v19 = 231;
      v20 = 1024;
      v21 = VirtualIfListCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211GetVirtualIfListCopy failed with: %d", buf, 0x18u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = 0;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v12 + 1) + 8 * i) containsString:@"nan"];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v5 & 1;
}

- (BOOL)hasIRInterfaceListed
{
  apple80211Ref = self->_apple80211Ref;
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[WAApple80211 hasIRInterfaceListed]";
      v18 = 1024;
      v19 = 256;
      v20 = 1024;
      v21 = VirtualIfListCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211GetVirtualIfListCopy failed with: %d", buf, 0x18u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = 0;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v12 + 1) + 8 * i) containsString:@"ir"];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v5 & 1;
}

- (BOOL)hasAWDLInterfaceListed
{
  apple80211Ref = self->_apple80211Ref;
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[WAApple80211 hasAWDLInterfaceListed]";
      v18 = 1024;
      v19 = 281;
      v20 = 1024;
      v21 = VirtualIfListCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211GetVirtualIfListCopy failed with: %d", buf, 0x18u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = 0;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v12 + 1) + 8 * i) containsString:@"awdl"];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v5 & 1;
}

- (int)currentPHYMode
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v5 = Apple80211Get();
    v6 = v5;
    if (v5 <= 15)
    {
      if (v5 != -3905)
      {
        break;
      }
    }

    else if (v5 != 61 && v5 != 16)
    {
      goto LABEL_12;
    }

    if (!--v4)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!v5)
  {
    v7 = [v3 objectForKeyedSubscript:@"PHYMODE_ACTIVE"];
    intValue = [v7 intValue];
    goto LABEL_11;
  }

LABEL_12:
  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136446722;
    v12 = "[WAApple80211 currentPHYMode]";
    v13 = 1024;
    v14 = 307;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211Get(APPLE80211_IOC_PHY_MODE) failed: %d", &v11, 0x18u);
  }

  v7 = 0;
  intValue = 0;
LABEL_11:

  return intValue;
}

- (BOOL)grabAndSubmitFWTrapInfo
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(WAApple80211 *)self apple80211Ref])
  {
    v4 = 7;
    while (1)
    {
      [(WAApple80211 *)self apple80211Ref];
      v5 = Apple80211Get();
      v6 = v5;
      if (v5 <= 15)
      {
        if (v5 != -3905)
        {
          break;
        }
      }

      else if (v5 != 61 && v5 != 16)
      {
        goto LABEL_22;
      }

      if (!--v4)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (v5)
    {
LABEL_22:
      v16 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v27 = 136446722;
      v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
      v29 = 1024;
      v30 = 324;
      v31 = 1024;
      LODWORD(v32) = v6;
      v23 = "%{public}s::%d:Apple80211Get(APPLE80211_IOC_TRAP_CRASHTRACER_MINI_DUMP) failed: %d";
      v24 = v16;
      v25 = 24;
      goto LABEL_24;
    }

    v7 = [v3 objectForKeyedSubscript:&off_100102D58];
    v8 = v7;
    if (v7)
    {
      bytes = [v7 bytes];
      [v8 length];
      CCSubmitLogToCrashTracer(bytes);
      v10 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_15:

        v15 = [v3 objectForKeyedSubscript:&off_100102D70];
        v16 = v15;
        if (v8)
        {
          v17 = v15;
          bytes2 = [v16 bytes];
          [v16 length];
          CCSubmitBinaryToCrashTracer(bytes2);
          v19 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v16 length];
            v27 = 136446978;
            v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
            v29 = 1024;
            v30 = 336;
            v31 = 2048;
            v32 = v20;
            v33 = 2112;
            v34 = v16;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Did pass binary readable to CCSubmitBinaryToCrashTracer() of length(%ld): %@", &v27, 0x26u);
          }

          v21 = 1;
          v16 = v8;
          goto LABEL_19;
        }

        v26 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = 136446466;
          v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
          v29 = 1024;
          v30 = 334;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s::%d:No bainry tag represented in dictionary, skipping.", &v27, 0x12u);
        }

        goto LABEL_30;
      }

      v27 = 136446978;
      v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
      v29 = 1024;
      v30 = 330;
      v31 = 2048;
      v32 = [v8 length];
      v33 = 2112;
      v34 = v8;
      v11 = "%{public}s::%d:Did pass human readable to CCSubmitLogToCrashTracer() of length(%ld): %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 38;
    }

    else
    {
      v10 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v27 = 136446466;
      v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
      v29 = 1024;
      v30 = 328;
      v11 = "%{public}s::%d:No human readable tag represented in dictionary, skipping.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 18;
    }

    _os_log_impl(&_mh_execute_header, v12, v13, v11, &v27, v14);
    goto LABEL_15;
  }

  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446466;
    v28 = "[WAApple80211 grabAndSubmitFWTrapInfo]";
    v29 = 1024;
    v30 = 321;
    v23 = "%{public}s::%d:Failure as Apple80211Ref is NULL";
    v24 = v16;
    v25 = 18;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, &v27, v25);
  }

LABEL_30:
  v21 = 0;
LABEL_19:

  return v21;
}

- (BOOL)grabAndSubmitLqmMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(WAApple80211 *)self apple80211Ref])
  {
    v4 = 7;
    while (1)
    {
      [(WAApple80211 *)self apple80211Ref];
      v5 = Apple80211Get();
      v6 = v5;
      if (v5 <= 15)
      {
        if (v5 != -3905)
        {
          break;
        }
      }

      else if (v5 != 61 && v5 != 16)
      {
        goto LABEL_18;
      }

      if (!--v4)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (v5)
    {
LABEL_18:
      v8 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v16 = 136446722;
      v17 = "[WAApple80211 grabAndSubmitLqmMetrics]";
      v18 = 1024;
      v19 = 352;
      v20 = 1024;
      LODWORD(v21) = v6;
      v13 = "%{public}s::%d:Apple80211Get(APPLE80211_IOC_LQM_METRICS_CRASHTRACER_DATA) failed: %d";
      v14 = v8;
      v15 = 24;
      goto LABEL_23;
    }

    v7 = [v3 objectForKeyedSubscript:&off_100102D88];
    v8 = v7;
    if (v7)
    {
      bytes = [v7 bytes];
      [v8 length];
      CCSubmitLqmMetricsTLVBlockToCrashTracer(bytes);
      v10 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446978;
        v17 = "[WAApple80211 grabAndSubmitLqmMetrics]";
        v18 = 1024;
        v19 = 357;
        v20 = 2048;
        v21 = [v8 length];
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CCSubmitLqmMetricsTLVBlockToCrashTracer() length(%ld): %@", &v16, 0x26u);
      }

      v11 = 1;
      goto LABEL_15;
    }

    v8 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v16 = 136446466;
    v17 = "[WAApple80211 grabAndSubmitLqmMetrics]";
    v18 = 1024;
    v19 = 355;
    v13 = "%{public}s::%d:No LQM bainry tag represented in dictionary, skipping.";
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v16 = 136446466;
    v17 = "[WAApple80211 grabAndSubmitLqmMetrics]";
    v18 = 1024;
    v19 = 349;
    v13 = "%{public}s::%d:Failure as Apple80211Ref is NULL";
  }

  v14 = v8;
  v15 = 18;
LABEL_23:
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, &v16, v15);
LABEL_24:
  v11 = 0;
LABEL_15:

  return v11;
}

- (void)submitLqmMetrics:(id)metrics
{
  metricsCopy = metrics;
  bytes = [metricsCopy bytes];
  [metricsCopy length];
  CCSubmitLqmMetricsTLVBlockToCrashTracer(bytes);
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446978;
    v7 = "[WAApple80211 submitLqmMetrics:]";
    v8 = 1024;
    v9 = 367;
    v10 = 2048;
    v11 = [metricsCopy length];
    v12 = 2112;
    v13 = metricsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CCSubmitLqmMetricsTLVBlockToCrashTracer() length(%ld): %@", &v6, 0x26u);
  }
}

- (void)_storeAttemptedRecovery:(id)recovery reason:(id)reason fromSSID:(id)d fromBSSID:(id)iD commandResult:(int)result
{
  recoveryCopy = recovery;
  reasonCopy = reason;
  iDCopy = iD;
  v13 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v14 = +[NSDate date];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003E3A4;
  v17[3] = &unk_1000EDAA0;
  v15 = recoveryCopy;
  v18 = v15;
  v16 = reasonCopy;
  v19 = v16;
  resultCopy = result;
  [v13 recoveryEventOnBssid:iDCopy at:v14 with:v17];
}

- (BOOL)triggerFastDpsReset
{
  v3 = +[NSMutableDictionary dictionary];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10003E84C;
  v33 = sub_10003E85C;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10003E84C;
  v27 = sub_10003E85C;
  v28 = 0;
  if ([(WAApple80211 *)self isAssociated])
  {
    currentBSSIDandSSID = [(WAApple80211 *)self currentBSSIDandSSID];
    v5 = currentBSSIDandSSID;
    if (currentBSSIDandSSID)
    {
      v6 = [currentBSSIDandSSID objectForKeyedSubscript:@"bssid"];
      v7 = v6 == 0;

      if (!v7)
      {
        v8 = [v5 objectForKeyedSubscript:@"bssid"];
        v9 = v30[5];
        v30[5] = v8;
      }

      v10 = [v5 objectForKeyedSubscript:@"ssid"];
      v11 = v10 == 0;

      if (!v11)
      {
        v12 = [v5 objectForKeyedSubscript:@"ssid"];
        v13 = v24[5];
        v24[5] = v12;
      }
    }
  }

  else
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "[WAApple80211 triggerFastDpsReset]";
      v37 = 1024;
      v38 = 389;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error Apple80211Set(APPLE80211_IOC_RESET_CHIP) for triggerFastDpsReset when not associated", buf, 0x12u);
    }
  }

  [v3 setValue:@"DPSQuickTriggeredChipReset" forKeyPath:@"CHIP_RESET_TRIGGER"];
  v14 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v15 = Apple80211Set();
    v16 = v15;
    if (v15 != -3905 && v15 != 61 && v15 != 16)
    {
      break;
    }

    if (!--v14)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v15)
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v36 = "[WAApple80211 triggerFastDpsReset]";
      v37 = 1024;
      v38 = 404;
      v39 = 1024;
      v40 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211Set(APPLE80211_IOC_RESET_CHIP) failed: %d", buf, 0x18u);
    }

    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = v16;
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Failed to triggerFastDpsReset err %d", buf, 8u);
    }
  }

  analyticsMOCQueue = self->analyticsMOCQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003E864;
  v21[3] = &unk_1000EDAC8;
  v21[4] = self;
  v21[5] = &v23;
  v21[6] = &v29;
  v22 = v16;
  dispatch_async(analyticsMOCQueue, v21);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v16 == 0;
}

- (BOOL)triggerDpsReset:(id)reset metaData:(id)data
{
  resetCopy = reset;
  dataCopy = data;
  v8 = &stru_1000F04E0;
  if (resetCopy)
  {
    v9 = resetCopy;
  }

  else
  {
    v9 = &stru_1000F04E0;
  }

  if (dataCopy)
  {
    v8 = dataCopy;
  }

  v10 = [NSString stringWithFormat:@"%@%@", v9, v8];
  v11 = +[NSMutableDictionary dictionary];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10003E84C;
  v46 = sub_10003E85C;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10003E84C;
  v40 = sub_10003E85C;
  v41 = 0;
  if ([(WAApple80211 *)self isAssociated])
  {
    currentBSSIDandSSID = [(WAApple80211 *)self currentBSSIDandSSID];
    v13 = currentBSSIDandSSID;
    if (currentBSSIDandSSID)
    {
      v14 = [currentBSSIDandSSID objectForKeyedSubscript:@"bssid"];
      v15 = v14 == 0;

      if (!v15)
      {
        v16 = [v13 objectForKeyedSubscript:@"bssid"];
        v17 = v43[5];
        v43[5] = v16;
      }

      v18 = [v13 objectForKeyedSubscript:@"ssid"];
      v19 = v18 == 0;

      if (!v19)
      {
        v20 = [v13 objectForKeyedSubscript:@"ssid"];
        v21 = v37[5];
        v37[5] = v20;
      }
    }
  }

  else
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v49 = "[WAApple80211 triggerDpsReset:metaData:]";
      v50 = 1024;
      v51 = 430;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error Apple80211Set(APPLE80211_IOC_RESET_CHIP) for triggerFastDpsReset when not associated", buf, 0x12u);
    }
  }

  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v49 = "[WAApple80211 triggerDpsReset:metaData:]";
    v50 = 1024;
    v51 = 443;
    v52 = 2112;
    v53 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Triggering Trap(CHIP_RESET_TRIGGER) with reason String::%@\n", buf, 0x1Cu);
  }

  [v11 setValue:v10 forKeyPath:@"CHIP_RESET_TRIGGER"];
  v23 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v24 = Apple80211Set();
    v25 = v24;
    if (v24 != -3905 && v24 != 61 && v24 != 16)
    {
      break;
    }

    if (!--v23)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v24)
  {
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v49 = "[WAApple80211 triggerDpsReset:metaData:]";
      v50 = 1024;
      v51 = 446;
      v52 = 1024;
      LODWORD(v53) = v25;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211Set(APPLE80211_IOC_RESET_CHIP) failed: %d", buf, 0x18u);
    }

    v30 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v49 = resetCopy;
      v50 = 1024;
      v51 = v25;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Failed to triggerDpsReset: %@, err %d", buf, 0x12u);
    }
  }

  analyticsMOCQueue = self->analyticsMOCQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EDDC;
  block[3] = &unk_1000EDAF0;
  block[4] = self;
  v32 = v10;
  v33 = &v36;
  v34 = &v42;
  v35 = v25;
  v27 = v10;
  dispatch_async(analyticsMOCQueue, block);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25 == 0;
}

- (BOOL)triggerReassociation:(id)reassociation
{
  reassociationCopy = reassociation;
  v5 = +[NSMutableDictionary dictionary];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10003E84C;
  v39 = sub_10003E85C;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10003E84C;
  v33 = sub_10003E85C;
  v34 = 0;
  if ([(WAApple80211 *)self isAssociated])
  {
    currentBSSIDandSSID = [(WAApple80211 *)self currentBSSIDandSSID];
    v7 = currentBSSIDandSSID;
    if (currentBSSIDandSSID)
    {
      v8 = [currentBSSIDandSSID objectForKeyedSubscript:@"bssid"];
      v9 = v8 == 0;

      if (!v9)
      {
        v10 = [v7 objectForKeyedSubscript:@"bssid"];
        v11 = v36[5];
        v36[5] = v10;
      }

      v12 = [v7 objectForKeyedSubscript:@"ssid"];
      v13 = v12 == 0;

      if (!v13)
      {
        v14 = [v7 objectForKeyedSubscript:@"ssid"];
        v15 = v30[5];
        v30[5] = v14;
      }
    }
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WAApple80211 triggerReassociation:]";
      v43 = 1024;
      v44 = 470;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error Apple80211Set(APPLE80211_IOC_RESET_CHIP) for triggerFastDpsReset when not associated", buf, 0x12u);
    }
  }

  [v5 setValue:reassociationCopy forKeyPath:@"REASSOC_CC_TRIGGER"];
  v16 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v17 = Apple80211Set();
    v18 = v17;
    if (v17 != -3905 && v17 != 61 && v17 != 16)
    {
      break;
    }

    if (!--v16)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v17)
  {
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "[WAApple80211 triggerReassociation:]";
      v43 = 1024;
      v44 = 485;
      v45 = 1024;
      v46 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211Set(APPLE80211_IOC_REASSOCIATE_WITH_CORECAPTURE) failed: %d", buf, 0x18u);
    }

    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v42 = reassociationCopy;
      v43 = 1024;
      v44 = v18;
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Failed to triggerReassociation: %@, err %d", buf, 0x12u);
    }
  }

  analyticsMOCQueue = self->analyticsMOCQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F274;
  block[3] = &unk_1000EDAF0;
  block[4] = self;
  v25 = reassociationCopy;
  v26 = &v29;
  v27 = &v35;
  v28 = v18;
  v20 = reassociationCopy;
  dispatch_async(analyticsMOCQueue, block);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v18 == 0;
}

- (BOOL)currentChannelInfo:(apple80211_channel *)info
{
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = +[NSDate date];
  v7 = v6;
  if (self->_lastDateChannelQueried)
  {
    [v6 timeIntervalSinceDate:?];
    if (v8 <= 2.0)
    {
      v14 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136446466;
        v21 = "[WAApple80211 currentChannelInfo:]";
        v22 = 1024;
        v23 = 509;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Using Cached instead of new query", &v20, 0x12u);
      }

      v15 = qword_10010DE08;
      info->var2 = dword_10010DE10;
      *&info->var0 = v15;
LABEL_16:
      v16 = 1;
      goto LABEL_17;
    }
  }

  objc_storeStrong(&self->_lastDateChannelQueried, v7);
  v9 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v10 = Apple80211Get();
    if (v10 > 15)
    {
      break;
    }

    if (v10 != -3905)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (!--v9)
    {
LABEL_11:
      if (!v10)
      {
        v11 = [v5 objectForKey:@"CHANNEL"];
        info->var1 = [v11 unsignedIntValue];

        v12 = [v5 objectForKey:@"CHANNEL_FLAGS"];
        info->var2 = [v12 unsignedIntValue];

        v13 = *&info->var0;
        dword_10010DE10 = info->var2;
        qword_10010DE08 = v13;
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    usleep(0x7A120u);
  }

  if (v10 == 16 || v10 == 61)
  {
    goto LABEL_9;
  }

  if (v10 == 82)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[WAApple80211 currentChannelInfo:]";
      v22 = 1024;
      v23 = 529;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Failed to call APPLE80211_IOC_CHANNEL due to EPWROFF", &v20, 0x12u);
    }

    goto LABEL_24;
  }

LABEL_22:
  v19 = v10;
  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v20 = 67109120;
    LODWORD(v21) = v19;
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Failed to currentChannelInfo error %d", &v20, 8u);
  }

LABEL_24:

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)currentBSSIDandSSID
{
  v3 = objc_opt_new();
  v4 = [NSMutableString stringWithCapacity:0];
  v5 = [NSMutableData dataWithCapacity:32];
  v6 = +[NSDate date];
  v7 = v6;
  p_lastDateBSSIDQueried = &self->_lastDateBSSIDQueried;
  if (!self->_lastDateBSSIDQueried || ([v6 timeIntervalSinceDate:?], v9 > 2.0))
  {
    objc_storeStrong(&self->_lastDateBSSIDQueried, v7);
    v10 = 7;
    while (1)
    {
      [(WAApple80211 *)self apple80211Ref];
      v11 = Apple80211Get();
      v12 = v11;
      if (v11 <= 15)
      {
        if (v11 != -3905)
        {
          break;
        }
      }

      else if (v11 != 61 && v11 != 16)
      {
        goto LABEL_41;
      }

      if (!--v10)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (!v11)
    {
      if (!v4)
      {
        v25 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = 136446722;
          v30 = "[WAApple80211 currentBSSIDandSSID]";
          v31 = 1024;
          v32 = 559;
          v33 = 2112;
          v34 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find APPLE80211KEY_BSSID in currentBSSID curBSSID %@", &v29, 0x1Cu);
        }

        v26 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v29 = 138412290;
          v30 = 0;
          _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to find APPLE80211KEY_BSSID in currentBSSID curBSSID %@", &v29, 0xCu);
        }

LABEL_37:

        v24 = 0;
        goto LABEL_38;
      }

      v13 = [NSString stringWithString:v4];
      v14 = qword_10010DDE8;
      qword_10010DDE8 = v13;

      v15 = 7;
      while (1)
      {
        [(WAApple80211 *)self apple80211Ref];
        v16 = Apple80211Get();
        v12 = v16;
        if (v16 <= 15)
        {
          if (v16 != -3905)
          {
            break;
          }
        }

        else if (v16 != 61 && v16 != 16)
        {
          goto LABEL_41;
        }

        if (!--v15)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v16)
      {
        if (v5)
        {
          v17 = [[NSString alloc] initWithData:v5 encoding:4];
          v18 = qword_10010DDF0;
          qword_10010DDF0 = v17;

          goto LABEL_27;
        }

        v27 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = 136446466;
          v30 = "[WAApple80211 currentBSSIDandSSID]";
          v31 = 1024;
          v32 = 570;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch APPLE80211_IOC_SSID", &v29, 0x12u);
        }

        v26 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v29) = 0;
          _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to fetch APPLE80211_IOC_SSID", &v29, 2u);
        }

        goto LABEL_37;
      }
    }

LABEL_41:
    v26 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = 136446722;
      v30 = "[WAApple80211 currentBSSIDandSSID]";
      v31 = 1024;
      v32 = 581;
      v33 = 1024;
      LODWORD(v34) = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch currentBSSID or SSID with error %d", &v29, 0x18u);
    }

    goto LABEL_37;
  }

  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = qword_10010DDE8;
    v20 = qword_10010DDF0;
    v22 = *p_lastDateBSSIDQueried;
    [v7 timeIntervalSinceDate:*p_lastDateBSSIDQueried];
    v29 = 136447746;
    v30 = "[WAApple80211 currentBSSIDandSSID]";
    v31 = 1024;
    v32 = 547;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Using Cached instead of new query %@,%@ last %@ now %@ diff %f", &v29, 0x44u);
  }

LABEL_27:
  [v3 setObject:qword_10010DDE8 forKeyedSubscript:@"bssid"];
  [v3 setObject:qword_10010DDF0 forKeyedSubscript:@"ssid"];
  v24 = v3;
LABEL_38:

  return v24;
}

- (id)getChipSet
{
  v23 = [NSMutableString stringWithCapacity:0];
  v3 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v4 = Apple80211Get();
    v5 = v4;
    if (v4 <= 15)
    {
      if (v4 != -3905)
      {
        break;
      }
    }

    else if (v4 != 61 && v4 != 16)
    {
      goto LABEL_10;
    }

    if (!--v3)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v4)
  {
LABEL_10:
    obj = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = v5;
      _os_log_fault_impl(&_mh_execute_header, obj, OS_LOG_TYPE_FAULT, "Failed to get APPLE80211_IOC_HARDWARE_VERSION error %d", buf, 8u);
    }

    v6 = &stru_1000F04E0;
    goto LABEL_32;
  }

  v7 = +[NSCharacterSet newlineCharacterSet];
  v8 = [v23 componentsSeparatedByCharactersInSet:v7];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v9)
  {
    v25 = &stru_1000F04E0;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = +[NSCharacterSet whitespaceCharacterSet];
        v14 = [v12 componentsSeparatedByCharactersInSet:v13];

        if ([v12 rangeOfString:@"chipnum"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = [v14 objectAtIndex:1];
          v16 = [v15 substringFromIndex:2];

          v26 = 0;
          v17 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
          if ([(__CFString *)v16 rangeOfCharacterFromSet:v17]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v28 = "[WAApple80211 getChipSet]";
              v29 = 1024;
              v30 = 609;
              v31 = 2112;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Chipset number is %@", buf, 0x1Cu);
            }

            v19 = v16;
            v20 = v25;
          }

          else
          {
            v20 = [NSScanner scannerWithString:v16];
            [v20 scanHexInt:&v26];
            v19 = [NSString stringWithFormat:@"%d", v26];
            v21 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v28 = "[WAApple80211 getChipSet]";
              v29 = 1024;
              v30 = 606;
              v31 = 2112;
              v32 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Chipset number is %@", buf, 0x1Cu);
            }
          }

          v25 = v19;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v25 = &stru_1000F04E0;
  }

  v6 = v25;
LABEL_32:

  return v6;
}

- (BOOL)everAssociated
{
  v3 = [NSMutableString stringWithCapacity:0];
  if (!v3)
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = "[WAApple80211 everAssociated]";
      v15 = 1024;
      v16 = 620;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to make curBSSID", &v13, 0x12u);
    }

    v7 = 0;
LABEL_26:
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "[WAApple80211 everAssociated]";
      v15 = 1024;
      v16 = 641;
      v17 = 1024;
      LODWORD(v18) = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to currentBSSID error %d", &v13, 0x18u);
    }

LABEL_21:

    v4 = 0;
    goto LABEL_22;
  }

  if (byte_10010DDE0)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v5 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v6 = Apple80211Get();
    v7 = v6;
    if (v6 <= 15)
    {
      if (v6 != -3905)
      {
        break;
      }
    }

    else if (v6 != 61 && v6 != 16)
    {
      goto LABEL_26;
    }

    if (!--v5)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v6)
  {
    goto LABEL_26;
  }

  if (![v3 length])
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "[WAApple80211 everAssociated]";
      v15 = 1024;
      v16 = 633;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find APPLE80211KEY_BSSID in currentBSSID curBSSID %@", &v13, 0x1Cu);
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to find APPLE80211KEY_BSSID in currentBSSID curBSSID %@", &v13, 0xCu);
    }

    goto LABEL_21;
  }

  byte_10010DDE0 = 1;
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446722;
    v14 = "[WAApple80211 everAssociated]";
    v15 = 1024;
    v16 = 631;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:everAssociated curBSSID %@", &v13, 0x1Cu);
  }

  v4 = byte_10010DDE0;
LABEL_22:

  return v4;
}

- (BOOL)isAssociated
{
  v3 = [NSMutableString stringWithCapacity:0];
  v4 = v3 != 0;
  if (v3)
  {
    v5 = 7;
    while (1)
    {
      [(WAApple80211 *)self apple80211Ref];
      v6 = Apple80211Get();
      if (v6 <= 15)
      {
        if (v6 != -3905)
        {
          break;
        }
      }

      else if (v6 != 61 && v6 != 16)
      {
        goto LABEL_16;
      }

      if (!--v5)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (v6 || ![v3 length])
    {
LABEL_16:
      v4 = 0;
      goto LABEL_17;
    }

    byte_10010DDE0 = 1;
    v7 = [NSString stringWithString:v3];
    v8 = qword_10010DDE8;
    qword_10010DDE8 = v7;

    v9 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v15 = 136446722;
    v16 = "[WAApple80211 isAssociated]";
    v17 = 1024;
    v18 = 659;
    v19 = 2112;
    v20 = v3;
    v10 = "%{public}s::%d:everAssociated curBSSID %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 28;
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v15 = 136446466;
    v16 = "[WAApple80211 isAssociated]";
    v17 = 1024;
    v18 = 650;
    v10 = "%{public}s::%d:Failed to make curBSSID";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 18;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, v10, &v15, v13);
LABEL_15:

LABEL_17:
  return v4;
}

- (BOOL)isAXAssociatoin
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (!v3)
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "[WAApple80211 isAXAssociatoin]";
      v22 = 1024;
      v23 = 677;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to make dict", &v20, 0x12u);
    }

    v6 = 0;
LABEL_29:
    v10 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v20 = 136446722;
    v21 = "[WAApple80211 isAXAssociatoin]";
    v22 = 1024;
    v23 = 700;
    v24 = 1024;
    LODWORD(v25) = v6;
    v15 = "%{public}s::%d:Failed to isAXAssociatoin error %d";
    v16 = v10;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 24;
    goto LABEL_25;
  }

  v4 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v5 = Apple80211Get();
    v6 = v5;
    if (v5 <= 15)
    {
      if (v5 != -3905)
      {
        break;
      }
    }

    else if (v5 != 61 && v5 != 16)
    {
      goto LABEL_29;
    }

    if (!--v4)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v5)
  {
    goto LABEL_29;
  }

  if (![v3 count] || (objc_msgSend(v3, "objectForKey:", @"PHYMODE_ACTIVE"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "[WAApple80211 isAXAssociatoin]";
      v22 = 1024;
      v23 = 692;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find APPLE80211KEY_PHYMODE_ACTIVE in APPLE80211_IOC_PHY_MODE dict %@", &v20, 0x1Cu);
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v20 = 138412290;
      v21 = v3;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to find APPLE80211KEY_PHYMODE_ACTIVE in APPLE80211_IOC_PHY_MODE dict %@", &v20, 0xCu);
    }

    goto LABEL_21;
  }

  v8 = [v3 objectForKey:@"PHYMODE_ACTIVE"];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = WALogCategoryDefaultHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (unsignedIntValue != 256)
  {
    if (!v11)
    {
LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }

    v20 = 136446466;
    v21 = "[WAApple80211 isAXAssociatoin]";
    v22 = 1024;
    v23 = 687;
    v15 = "%{public}s::%d:PHYMODE is not APPLE80211_MODE_11AX";
    v16 = v10;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 18;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v16, v17, v15, &v20, v18);
    goto LABEL_21;
  }

  if (v11)
  {
    v20 = 136446466;
    v21 = "[WAApple80211 isAXAssociatoin]";
    v22 = 1024;
    v23 = 684;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:PHYMODE is APPLE80211_MODE_11AX", &v20, 0x12u);
  }

  v12 = 1;
LABEL_22:

  return v12;
}

- (unint64_t)getPhyMode
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (!v3)
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "[WAApple80211 getPhyMode]";
      v16 = 1024;
      v17 = 710;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to make dict", &v14, 0x12u);
    }

    v6 = 0;
LABEL_23:
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "[WAApple80211 getPhyMode]";
      v16 = 1024;
      v17 = 727;
      v18 = 1024;
      LODWORD(v19) = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to isAXAssociatoin error %d", &v14, 0x18u);
    }

LABEL_18:

    unsignedIntValue = 0;
    goto LABEL_19;
  }

  v4 = 7;
  while (1)
  {
    [(WAApple80211 *)self apple80211Ref];
    v5 = Apple80211Get();
    v6 = v5;
    if (v5 <= 15)
    {
      if (v5 != -3905)
      {
        break;
      }
    }

    else if (v5 != 61 && v5 != 16)
    {
      goto LABEL_23;
    }

    if (!--v4)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v5)
  {
    goto LABEL_23;
  }

  if (![v3 count] || (objc_msgSend(v3, "objectForKey:", @"PHYMODE_ACTIVE"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "[WAApple80211 getPhyMode]";
      v16 = 1024;
      v17 = 719;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find APPLE80211KEY_PHYMODE_ACTIVE in APPLE80211_IOC_PHY_MODE dict %@", &v14, 0x1Cu);
    }

    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to find APPLE80211KEY_PHYMODE_ACTIVE in APPLE80211_IOC_PHY_MODE dict %@", &v14, 0xCu);
    }

    goto LABEL_18;
  }

  v8 = [v3 objectForKey:@"PHYMODE_ACTIVE"];
  unsignedIntValue = [v8 unsignedIntValue];

LABEL_19:
  return unsignedIntValue;
}

- (id)getIOReportLegendItemsGroupBeginsWith:(id)with groupContains:(id)contains groupEndsWith:(id)endsWith groupEquals:(id)equals subgroupBeginsWith:(id)beginsWith subgroupContains:(id)subgroupContains subgroupEndsWith:(id)subgroupEndsWith subgroupEquals:(id)self0 channelEquals:(id)self1 retErr:(char *)self2
{
  withCopy = with;
  containsCopy = contains;
  endsWithCopy = endsWith;
  equalsCopy = equals;
  beginsWithCopy = beginsWith;
  subgroupContainsCopy = subgroupContains;
  subgroupEndsWithCopy = subgroupEndsWith;
  subgroupEqualsCopy = subgroupEquals;
  channelEqualsCopy = channelEquals;
  v39 = withCopy;
  v45 = v39;
  v40 = containsCopy;
  v46 = v40;
  v41 = endsWithCopy;
  v47 = v41;
  v26 = equalsCopy;
  v48 = v26;
  v27 = beginsWithCopy;
  v49 = v27;
  v28 = subgroupContainsCopy;
  v50 = v28;
  v29 = subgroupEndsWithCopy;
  v51 = v29;
  v30 = subgroupEqualsCopy;
  v52 = v30;
  v31 = [(WAApple80211 *)self getIOReportLegendItemsMatching:&v45 retErr:err];
  v32 = v31;
  v33 = channelEqualsCopy;
  if (channelEqualsCopy)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100040FF0;
    v43[3] = &unk_1000EDB18;
    v34 = channelEqualsCopy;
    v44 = v34;
    v35 = [NSPredicate predicateWithBlock:v43, v39, v40, v41];
    v36 = [v32 filteredArrayUsingPredicate:v35];

    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v54 = "[WAApple80211 getIOReportLegendItemsGroupBeginsWith:groupContains:groupEndsWith:groupEquals:subgroupBeginsWith:subgroupContains:subgroupEndsWith:subgroupEquals:channelEquals:retErr:]";
      v55 = 1024;
      v56 = 781;
      v57 = 2112;
      v58 = v34;
      v59 = 2112;
      v60 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:channelEquals %@ result %@", buf, 0x26u);
    }
  }

  else
  {
    v36 = v31;
  }

  return v36;
}

- (id)getIOReportLegendItemsMatching:(id *)matching retErr:(char *)err
{
  errorString = 0;
  if (qword_10010DDF8 != -1)
  {
    dispatch_once(&qword_10010DDF8, &stru_1000EDB38);
  }

  v7 = qword_10010DE00;
  bzero(qword_10010DE00, 0x3988uLL);
  if (matching->var0)
  {
    snprintf((v7 + 8), 0x30uLL, "%s", [matching->var0 UTF8String]);
  }

  var1 = matching->var1;
  if (var1)
  {
    snprintf((qword_10010DE00 + 56), 0x30uLL, "%s", [var1 UTF8String]);
  }

  var2 = matching->var2;
  if (var2)
  {
    snprintf((qword_10010DE00 + 104), 0x30uLL, "%s", [var2 UTF8String]);
  }

  var3 = matching->var3;
  if (var3)
  {
    snprintf((qword_10010DE00 + 152), 0x30uLL, "%s", [var3 UTF8String]);
  }

  var4 = matching->var4;
  if (var4)
  {
    snprintf((qword_10010DE00 + 200), 0x30uLL, "%s", [var4 UTF8String]);
  }

  var5 = matching->var5;
  if (var5)
  {
    snprintf((qword_10010DE00 + 248), 0x30uLL, "%s", [var5 UTF8String]);
  }

  var6 = matching->var6;
  if (var6)
  {
    snprintf((qword_10010DE00 + 296), 0x30uLL, "%s", [var6 UTF8String]);
  }

  var7 = matching->var7;
  if (var7)
  {
    snprintf((qword_10010DE00 + 344), 0x30uLL, "%s", [var7 UTF8String]);
  }

  for (i = 6; ; --i)
  {
    [(WAApple80211 *)self apple80211Ref];
    v16 = Apple80211Get();
    v17 = v16;
    if (v16 < 0)
    {
      break;
    }

    if (v16 != 16 && v16 != 61)
    {
LABEL_28:
      if (v16)
      {
        goto LABEL_49;
      }

      v18 = *(qword_10010DE00 + 4);
      if (v18)
      {
        v19 = IOCFUnserializeWithSize((qword_10010DE00 + 392), v18, kCFAllocatorDefault, 0, &errorString);
        if (v19)
        {
          v20 = 1;
        }

        else
        {
          v20 = errorString == 0;
        }

        if (v20)
        {
          if (v19)
          {
            v21 = v19;
            *err = 0;

            goto LABEL_52;
          }
        }

        else
        {
          v40 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v42 = *(qword_10010DE00 + 4);
            *buf = 136446978;
            v51 = "[WAApple80211 getIOReportLegendItemsMatching:retErr:]";
            v52 = 1024;
            *v53 = 861;
            *&v53[4] = 1024;
            *&v53[6] = v42;
            *&v53[10] = 2112;
            *&v53[12] = errorString;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:IOCFUnserializeWithSize error len %u, errorString: %@, exiting\n", buf, 0x22u);
          }
        }

        v31 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v43 = *(qword_10010DE00 + 4);
          *buf = 136446978;
          v51 = "[WAApple80211 getIOReportLegendItemsMatching:retErr:]";
          v52 = 1024;
          *v53 = 864;
          *&v53[4] = 1024;
          *&v53[6] = v43;
          *&v53[10] = 2112;
          *&v53[12] = errorString;
          v44 = "%{public}s::%d:IOCFUnserializeWithSize error len %u, errorString: %@, exiting\n";
          v45 = v31;
          v46 = 34;
          goto LABEL_46;
        }
      }

      else
      {
        v31 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v51 = "[WAApple80211 getIOReportLegendItemsMatching:retErr:]";
          v52 = 1024;
          *v53 = 855;
          v44 = "%{public}s::%d:No APPLE80211KEY_IOR_RESPONSE";
          v45 = v31;
          v46 = 18;
LABEL_46:
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
        }
      }

      v17 = 0;
      goto LABEL_48;
    }

LABEL_26:
    if (!i)
    {
      goto LABEL_28;
    }

    usleep(0x7A120u);
  }

  if (v16 != -536870175)
  {
    if (v16 != -3905)
    {
      goto LABEL_49;
    }

    goto LABEL_26;
  }

  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    var0 = matching->var0;
    v24 = matching->var1;
    v25 = matching->var2;
    v26 = matching->var3;
    v27 = matching->var4;
    v28 = matching->var5;
    v29 = matching->var6;
    v30 = matching->var7;
    *buf = 136448514;
    v51 = "[WAApple80211 getIOReportLegendItemsMatching:retErr:]";
    v52 = 1024;
    *v53 = 840;
    *&v53[4] = 2112;
    *&v53[6] = var0;
    *&v53[14] = 2112;
    *&v53[16] = v24;
    *&v53[24] = 2112;
    *&v53[26] = v25;
    *&v53[34] = 2112;
    *&v53[36] = v26;
    *&v53[44] = 2112;
    *&v53[46] = v27;
    *&v53[54] = 2112;
    *&v53[56] = v28;
    *&v53[64] = 2112;
    *&v53[66] = v29;
    v54 = 2112;
    v55 = v30;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Apple80211Get APPLE80211_IOR_LEGEND too large, query %@,%@,%@,%@ %@,%@,%@,%@", buf, 0x62u);
  }

  v17 = -536870175;
  v31 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    v32 = matching->var0;
    v33 = matching->var1;
    v34 = matching->var2;
    v35 = matching->var3;
    v36 = matching->var4;
    v37 = matching->var5;
    v38 = matching->var6;
    v39 = matching->var7;
    *buf = 138414082;
    v51 = v32;
    v52 = 2112;
    *v53 = v33;
    *&v53[8] = 2112;
    *&v53[10] = v34;
    *&v53[18] = 2112;
    *&v53[20] = v35;
    *&v53[28] = 2112;
    *&v53[30] = v36;
    *&v53[38] = 2112;
    *&v53[40] = v37;
    *&v53[48] = 2112;
    *&v53[50] = v38;
    *&v53[58] = 2112;
    *&v53[60] = v39;
    _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Apple80211Get APPLE80211_IOR_LEGEND too large, query %@,%@,%@,%@ %@,%@,%@,%@", buf, 0x52u);
  }

LABEL_48:

LABEL_49:
  v47 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v51 = "[WAApple80211 getIOReportLegendItemsMatching:retErr:]";
    v52 = 1024;
    *v53 = 873;
    *&v53[4] = 1024;
    *&v53[6] = v17;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to getIOReportLegendItemsMatching error %d", buf, 0x18u);
  }

  v21 = 0;
  *err = 1;
LABEL_52:

  return v21;
}

- (unsigned)getIOReportingService
{
  for (i = 6; ; --i)
  {
    IOReportingService = Apple80211GetIOReportingService();
    v4 = IOReportingService;
    if (IOReportingService <= 15)
    {
      if (IOReportingService != -3905)
      {
        break;
      }
    }

    else if (IOReportingService != 61 && IOReportingService != 16)
    {
      goto LABEL_11;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!IOReportingService)
  {
    return 0;
  }

LABEL_11:
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v8 = "[WAApple80211 getIOReportingService]";
    v9 = 1024;
    v10 = 891;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed Apple80211GetIOReportingService error %d", buf, 0x18u);
  }

  return 0;
}

- (id)getIOReportingClassPath
{
  memset(path, 0, 512);
  IORegistryEntryGetPath([(WAApple80211 *)self getIOReportingService], "IOService", path);
  v2 = [NSString stringWithUTF8String:path];
  if (!v2)
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446466;
      v6 = "[WAApple80211 getIOReportingClassPath]";
      v7 = 1024;
      v8 = 904;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to alloc IORegistryEntryGetPath NSString", &v5, 0x12u);
    }
  }

  return v2;
}

- (id)getIOReportingDriverName
{
  [(WAApple80211 *)self getIOReportingService];
  v2 = IOReportCopyDriverName();
  if (!v2)
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446466;
      v6 = "[WAApple80211 getIOReportingDriverName]";
      v7 = 1024;
      v8 = 918;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to driver name through IOReportCopyDriverName", &v5, 0x12u);
    }
  }

  return v2;
}

- (unint64_t)getIOReportingDriverID
{
  entryID = 0;
  if (!IORegistryEntryGetRegistryEntryID([(WAApple80211 *)self getIOReportingService], &entryID))
  {
    return entryID;
  }

  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v6 = "[WAApple80211 getIOReportingDriverID]";
    v7 = 1024;
    v8 = 928;
    v9 = 2048;
    v10 = entryID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to convert IORegistryEntryGetRegistryEntryID %llx", buf, 0x1Cu);
  }

  return 0;
}

- (int64_t)getDriverType
{
  getIOReportingDriverName = [(WAApple80211 *)self getIOReportingDriverName];
  getIOReportingClassPath = [(WAApple80211 *)self getIOReportingClassPath];
  if ([getIOReportingDriverName containsString:@"ACIWiFiDriver"])
  {
    v5 = 2;
  }

  else if ([getIOReportingClassPath containsString:@"AppleSunriseWLAN"] && (objc_msgSend(getIOReportingDriverName, "containsString:", @"IO80211ReporterProxy") & 1) != 0)
  {
    v5 = 4;
  }

  else if ([getIOReportingClassPath containsString:@"AppleWLANDriver"] && (objc_msgSend(getIOReportingDriverName, "containsString:", @"IO80211ReporterProxy") & 1) != 0)
  {
    v5 = 3;
  }

  else if ([getIOReportingClassPath containsString:@"BCM"] & 1) != 0 || (objc_msgSend(getIOReportingDriverName, "containsString:", @"IO80211ReporterProxy"))
  {
    v5 = 1;
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "[WAApple80211 getDriverType]";
      v10 = 1024;
      v11 = 953;
      v12 = 2112;
      v13 = getIOReportingDriverName;
      v14 = 2112;
      v15 = getIOReportingClassPath;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to determine WLAN driver type: drvName %@ drvPath %@", &v8, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

@end