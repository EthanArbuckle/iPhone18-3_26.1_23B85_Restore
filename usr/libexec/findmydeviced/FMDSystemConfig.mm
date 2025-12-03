@interface FMDSystemConfig
+ (id)sharedInstance;
- (NSString)bootSessionUUID;
- (NSString)idsDeviceID;
- (id)fetchBaUUIDWithTimeout:(double)timeout;
- (id)initSingleton;
- (id)stringForConnectionStatus:(int64_t)status;
- (int)processIdentifier;
- (unint64_t)baRegistrationStatus;
- (void)baUUIDMayHaveChanged;
@end

@implementation FMDSystemConfig

- (unint64_t)baRegistrationStatus
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 1;
  systemInfoQueue = [(FMDSystemConfig *)self systemInfoQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000095A4;
  v6[3] = &unk_1002CE5F0;
  v6[4] = self;
  v6[5] = v7;
  dispatch_sync(systemInfoQueue, v6);

  internalBAStatus = self->_internalBAStatus;
  _Block_object_dispose(v7, 8);
  return internalBAStatus;
}

- (int)processIdentifier
{
  v2 = +[NSProcessInfo processInfo];
  processIdentifier = [v2 processIdentifier];

  return processIdentifier;
}

+ (id)sharedInstance
{
  if (qword_1003145F8 != -1)
  {
    sub_100227CE4();
  }

  v3 = qword_1003145F0;

  return v3;
}

- (id)initSingleton
{
  v7.receiver = self;
  v7.super_class = FMDSystemConfig;
  v2 = [(FMDSystemConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(FMDSystemConfig *)v2 initializeSystemConfig];
    v4 = dispatch_queue_create("com.apple.icloud.findmydevice-system-info", 0);
    [(FMDSystemConfig *)v3 setSystemInfoQueue:v4];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"baUUIDMayHaveChanged" name:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
  }

  return v3;
}

- (void)baUUIDMayHaveChanged
{
  systemInfoQueue = [(FMDSystemConfig *)self systemInfoQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151FC8;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(systemInfoQueue, block);
}

- (NSString)idsDeviceID
{
  v2 = qword_100314600;
  if (!qword_100314600)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    v4 = qword_100314600;
    qword_100314600 = v3;

    v2 = qword_100314600;
    if (!qword_100314600)
    {
      v5 = sub_100002880();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100227CF8(v5);
      }

      v2 = qword_100314600;
    }
  }

  return v2;
}

- (NSString)bootSessionUUID
{
  size = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    NSLog(@"Error getting boot session UUID size");
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v2 = malloc_type_malloc(size, 0xA6A652B9uLL);
  if (sysctlbyname("kern.bootsessionuuid", v2, &size, 0, 0))
  {
    NSLog(@"Error getting boot session UUID");
    free(v2);
    goto LABEL_5;
  }

  v3 = [NSString stringWithUTF8String:v2];
  free(v2);
LABEL_6:

  return v3;
}

- (id)fetchBaUUIDWithTimeout:(double)timeout
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000AA04;
  v13 = sub_100002ACC;
  v14 = &stru_1002DCE08;
  systemInfoQueue = [(FMDSystemConfig *)self systemInfoQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015236C;
  block[3] = &unk_1002CE5A0;
  block[4] = self;
  block[5] = &v9;
  *&block[6] = timeout;
  dispatch_sync(systemInfoQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)stringForConnectionStatus:(int64_t)status
{
  if ((status - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002CE610 + status - 1);
  }
}

@end