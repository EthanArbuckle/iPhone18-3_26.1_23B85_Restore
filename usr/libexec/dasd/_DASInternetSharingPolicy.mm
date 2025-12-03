@interface _DASInternetSharingPolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)hasStateForNetworkType:(__CFString *)type interfaceName:(__CFString *)name;
- (_DASInternetSharingPolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)handleWirelessModemDynamicStoreChanged;
@end

@implementation _DASInternetSharingPolicy

+ (id)policyInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BC2C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B108 != -1)
  {
    dispatch_once(&qword_10020B108, block);
  }

  v2 = qword_10020B110;

  return v2;
}

- (_DASInternetSharingPolicy)init
{
  v12.receiver = self;
  v12.super_class = _DASInternetSharingPolicy;
  v2 = [(_DASInternetSharingPolicy *)&v12 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Internet Sharing Policy";

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.dasd.wirelessModemDynamicStoreQueue", v5);
    wirelessModemDynamicStoreQueue = v3->_wirelessModemDynamicStoreQueue;
    v3->_wirelessModemDynamicStoreQueue = v6;

    v8 = v3->_wirelessModemDynamicStoreQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B9D4;
    block[3] = &unk_1001B5668;
    v11 = v3;
    dispatch_async(v8, block);
  }

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority < _DASSchedulingPriorityUtility && ([activityCopy requiresNetwork] & 1) != 0)
  {
    requiresDeviceInactivity = 1;
  }

  else
  {
    requiresDeviceInactivity = [activityCopy requiresDeviceInactivity];
  }

  return requiresDeviceInactivity;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  v5 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:@"Internet Sharing Policy"];
  if ([(_DASInternetSharingPolicy *)self enabled])
  {
    v6 = [NSPredicate predicateWithFormat:@"InternetSharingActive = %@", &off_1001C9928];
    [(_DASPolicyResponseRationale *)v5 addRationaleWithCondition:v6];

    v7 = 33;
  }

  else
  {
    v7 = 0;
  }

  v8 = [_DASPolicyResponse policyResponseWithDecision:v7 validityDuration:v5 rationale:0x384uLL];

  return v8;
}

- (void)handleWirelessModemDynamicStoreChanged
{
  dispatch_assert_queue_V2(self->_wirelessModemDynamicStoreQueue);
  v3 = SCDynamicStoreCopyValue(self->_wirelessModemDynamicStore, self->_wirelessModemDynamicStoreSharingKey);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v4, @"InternalInterfaces")) != 0 && (v7 = Value, CFArrayGetCount(Value)) && ((ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), [(_DASInternetSharingPolicy *)self hasStateForNetworkType:kSCEntNetIPv4 interfaceName:ValueAtIndex]) || [(_DASInternetSharingPolicy *)self hasStateForNetworkType:kSCEntNetIPv6 interfaceName:ValueAtIndex]) && (v9 = CFDictionaryGetValue(v4, @"Hosts")) != 0 && (v10 = v9, CFDictionaryGetCount(v9)))
    {
      v11 = CFDictionaryGetValue(v10, @"Current");
      v12 = v11;
      if (v11)
      {
        v13 = [v11 intValue] > 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == [(_DASInternetSharingPolicy *)self enabled])
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (![(_DASInternetSharingPolicy *)self enabled])
      {
LABEL_16:
        CFRelease(v4);
        return;
      }

      v13 = 0;
    }

    [(_DASInternetSharingPolicy *)self setEnabled:v13];
    v14 = [_DASDaemonLogger logForCategory:@"InternetSharingPolicy"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109120;
      v15[1] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "InternetSharing in use: %d", v15, 8u);
    }

    goto LABEL_16;
  }
}

- (BOOL)hasStateForNetworkType:(__CFString *)type interfaceName:(__CFString *)name
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, name, type);
  if (!NetworkInterfaceEntity)
  {
    return 0;
  }

  v6 = NetworkInterfaceEntity;
  v7 = SCDynamicStoreCopyValue(self->_wirelessModemDynamicStore, NetworkInterfaceEntity);
  v8 = v7 != 0;
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v6);
  return v8;
}

@end