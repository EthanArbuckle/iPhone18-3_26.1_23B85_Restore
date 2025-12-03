@interface OTDeviceInformationActualAdapter
- (BOOL)isMachineIDOverridden;
- (BOOL)longerTimeout;
- (id)deviceName;
- (id)modelID;
- (id)osVersion;
- (id)serialNumber;
- (void)dealloc;
- (void)registerForDeviceNameUpdates:(id)updates;
- (void)setupDeviceNameListener;
@end

@implementation OTDeviceInformationActualAdapter

- (void)setupDeviceNameListener
{
  deviceNameUpdateListeners = [(OTDeviceInformationActualAdapter *)self deviceNameUpdateListeners];

  if (!deviceNameUpdateListeners)
  {
    v4 = [[CKKSListenerCollection alloc] initWithName:@"OTDeviceInformationActualAdapter"];
    [(OTDeviceInformationActualAdapter *)self setDeviceNameUpdateListeners:v4];

    ComputerName = SCDynamicStoreKeyCreateComputerName(0);
    if (ComputerName)
    {
      v6 = ComputerName;
      v11 = ComputerName;
      v7 = [NSArray arrayWithObjects:&v11 count:1];
      CFRelease(v6);
      v10.version = 0;
      memset(&v10.retain, 0, 24);
      v10.info = self;
      [(OTDeviceInformationActualAdapter *)self setStore:SCDynamicStoreCreate(0, @"OTDeviceInformationActualAdapter", sub_100003958, &v10)];
      if ([(OTDeviceInformationActualAdapter *)self store])
      {
        SCDynamicStoreSetNotificationKeys([(OTDeviceInformationActualAdapter *)self store], v7, 0);
        store = [(OTDeviceInformationActualAdapter *)self store];
        v9 = dispatch_get_global_queue(0, 0);
        SCDynamicStoreSetDispatchQueue(store, v9);
      }
    }
  }
}

- (BOOL)longerTimeout
{
  if ([(OTDeviceInformationActualAdapter *)self isWatch]|| [(OTDeviceInformationActualAdapter *)self isAppleTV])
  {
    return 1;
  }

  return [(OTDeviceInformationActualAdapter *)self isHomePod];
}

- (id)serialNumber
{
  v2 = MGCopyAnswerWithError();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = secLogObjForScope();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed getting serial number: %d", buf, 8u);
    }

    v2 = 0;
  }

  return v2;
}

- (id)osVersion
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[14] = v2;
  v15 = v2;
  v14[12] = v2;
  v14[13] = v2;
  v14[10] = v2;
  v14[11] = v2;
  v14[8] = v2;
  v14[9] = v2;
  v14[6] = v2;
  v14[7] = v2;
  v14[4] = v2;
  v14[5] = v2;
  v14[2] = v2;
  v14[3] = v2;
  v14[0] = v2;
  v14[1] = v2;
  v11 = 256;
  v3 = sysctlbyname("kern.osrelease", v14, &v11, 0, 0);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[14] = v4;
  v13 = v4;
  v12[12] = v4;
  v12[13] = v4;
  v12[10] = v4;
  v12[11] = v4;
  v12[8] = v4;
  v12[9] = v4;
  v12[6] = v4;
  v12[7] = v4;
  v12[4] = v4;
  v12[5] = v4;
  v12[2] = v4;
  v12[3] = v4;
  v12[0] = v4;
  v12[1] = v4;
  v10 = 256;
  if (sysctlbyname("kern.osversion", v12, &v10, 0, 0) | v3 || (HIBYTE(v15) = 0, HIBYTE(v13) = 0, [NSString stringWithFormat:@"%s (%s)", v14, v12], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[NSProcessInfo processInfo];
    operatingSystemVersionString = [v5 operatingSystemVersionString];

    v7 = [operatingSystemVersionString stringByReplacingOccurrencesOfString:@"Version" withString:&stru_10000C830];
  }

  v8 = [NSString stringWithFormat:@"%@ %@", @"iphone", v7];

  return v8;
}

- (void)registerForDeviceNameUpdates:(id)updates
{
  updatesCopy = updates;
  if (os_variant_allows_internal_security_policies())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(OTDeviceInformationActualAdapter *)selfCopy setupDeviceNameListener];
    deviceNameUpdateListeners = [(OTDeviceInformationActualAdapter *)selfCopy deviceNameUpdateListeners];
    [deviceNameUpdateListeners registerListener:updatesCopy];

    objc_sync_exit(selfCopy);
  }
}

- (id)deviceName
{
  if (os_variant_allows_internal_security_policies())
  {
    v2 = SCDynamicStoreCopyComputerName(0, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)modelID
{
  if (qword_1000113D0 != -1)
  {
    dispatch_once(&qword_1000113D0, &stru_10000C548);
  }

  v3 = qword_1000113C8;

  return v3;
}

- (BOOL)isMachineIDOverridden
{
  overriddenMachineID = [(OTDeviceInformationActualAdapter *)self overriddenMachineID];
  v3 = overriddenMachineID != 0;

  return v3;
}

- (void)dealloc
{
  if ([(OTDeviceInformationActualAdapter *)self store])
  {
    CFRelease([(OTDeviceInformationActualAdapter *)self store]);
    [(OTDeviceInformationActualAdapter *)self setStore:0];
  }

  v3.receiver = self;
  v3.super_class = OTDeviceInformationActualAdapter;
  [(OTDeviceInformationActualAdapter *)&v3 dealloc];
}

@end