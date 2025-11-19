@interface OTDeviceInformationActualAdapter
- (BOOL)isMachineIDOverridden;
- (BOOL)longerTimeout;
- (id)deviceName;
- (id)modelID;
- (id)osVersion;
- (id)serialNumber;
- (void)dealloc;
- (void)registerForDeviceNameUpdates:(id)a3;
- (void)setupDeviceNameListener;
@end

@implementation OTDeviceInformationActualAdapter

- (BOOL)longerTimeout
{
  if ([(OTDeviceInformationActualAdapter *)self isWatch]|| [(OTDeviceInformationActualAdapter *)self isAppleTV])
  {
    return 1;
  }

  return [(OTDeviceInformationActualAdapter *)self isHomePod];
}

- (void)setupDeviceNameListener
{
  v3 = [(OTDeviceInformationActualAdapter *)self deviceNameUpdateListeners];

  if (!v3)
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
      [(OTDeviceInformationActualAdapter *)self setStore:SCDynamicStoreCreate(0, @"OTDeviceInformationActualAdapter", sub_1000A51AC, &v10)];
      if ([(OTDeviceInformationActualAdapter *)self store])
      {
        SCDynamicStoreSetNotificationKeys([(OTDeviceInformationActualAdapter *)self store], v7, 0);
        v8 = [(OTDeviceInformationActualAdapter *)self store];
        v9 = dispatch_get_global_queue(0, 0);
        SCDynamicStoreSetDispatchQueue(v8, v9);
      }
    }
  }
}

- (id)serialNumber
{
  v2 = MGCopyAnswerWithError();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = sub_100006274("octagon");
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

- (void)registerForDeviceNameUpdates:(id)a3
{
  v6 = a3;
  if (SecIsInternalRelease())
  {
    v4 = self;
    objc_sync_enter(v4);
    [(OTDeviceInformationActualAdapter *)v4 setupDeviceNameListener];
    v5 = [(OTDeviceInformationActualAdapter *)v4 deviceNameUpdateListeners];
    [v5 registerListener:v6];

    objc_sync_exit(v4);
  }
}

- (id)deviceName
{
  if (SecIsInternalRelease())
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
  if (qword_10039DDD0 != -1)
  {
    dispatch_once(&qword_10039DDD0, &stru_100336448);
  }

  v3 = qword_10039DDC8;

  return v3;
}

- (BOOL)isMachineIDOverridden
{
  v2 = [(OTDeviceInformationActualAdapter *)self overriddenMachineID];
  v3 = v2 != 0;

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

- (id)osVersion
{
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[14] = v0;
  v13 = v0;
  v12[12] = v0;
  v12[13] = v0;
  v12[10] = v0;
  v12[11] = v0;
  v12[8] = v0;
  v12[9] = v0;
  v12[6] = v0;
  v12[7] = v0;
  v12[4] = v0;
  v12[5] = v0;
  v12[2] = v0;
  v12[3] = v0;
  v12[0] = v0;
  v12[1] = v0;
  v9 = 256;
  v1 = sysctlbyname("kern.osrelease", v12, &v9, 0, 0);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[14] = v2;
  v11 = v2;
  v10[12] = v2;
  v10[13] = v2;
  v10[10] = v2;
  v10[11] = v2;
  v10[8] = v2;
  v10[9] = v2;
  v10[6] = v2;
  v10[7] = v2;
  v10[4] = v2;
  v10[5] = v2;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  v8 = 256;
  if (sysctlbyname("kern.osversion", v10, &v8, 0, 0) | v1 || (HIBYTE(v13) = 0, HIBYTE(v11) = 0, [NSString stringWithFormat:@"%s (%s)", v12, v10], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[NSProcessInfo processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"Version" withString:&stru_100348050];
  }

  v6 = [NSString stringWithFormat:@"%@ %@", @"iphone", v5];

  return v6;
}

@end