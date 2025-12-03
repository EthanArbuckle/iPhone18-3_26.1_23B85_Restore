@interface ValidUpdateRequest
- (BOOL)scheduleUpdateFromServer:(id)server forVersion:(int64_t)version withQueue:(id)queue;
- (BOOL)updateNowFromServer:(id)server version:(int64_t)version queue:(id)queue;
- (id)validUpdateConfiguration:(BOOL)configuration;
- (void)createSessions:(id)sessions forServer:(id)server;
@end

@implementation ValidUpdateRequest

- (BOOL)updateNowFromServer:(id)server version:(int64_t)version queue:(id)queue
{
  serverCopy = server;
  queueCopy = queue;
  v10 = queueCopy;
  if (!serverCopy)
  {
    v15 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "invalid update request";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }

LABEL_10:
    v17 = 0;
    goto LABEL_15;
  }

  if (!queueCopy)
  {
    v15 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "missing update queue, skipping update";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  ephemeralSession = [(ValidUpdateRequest *)self ephemeralSession];

  if (ephemeralSession)
  {
    ephemeralSession2 = [(ValidUpdateRequest *)self ephemeralSession];
    delegate = [ephemeralSession2 delegate];

    v14 = [serverCopy copy];
    [delegate setCurrentUpdateServer:v14];
  }

  else
  {
    [(ValidUpdateRequest *)self createSessions:v10 forServer:serverCopy];
  }

  version = [NSString stringWithFormat:@"https://%@/g%ld/v%ld", serverCopy, sub_1000511C0(), version];
  v15 = [NSURL URLWithString:version];

  ephemeralSession3 = [(ValidUpdateRequest *)self ephemeralSession];
  v20 = [ephemeralSession3 dataTaskWithURL:v15];

  version2 = [NSString stringWithFormat:@"%ld", version];
  [v20 setTaskDescription:version2];

  [v20 resume];
  v22 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v20;
    v26 = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "running foreground data task %@ at %f URL:%@", buf, 0x20u);
  }

  v17 = 1;
LABEL_15:

  return v17;
}

- (BOOL)scheduleUpdateFromServer:(id)server forVersion:(int64_t)version withQueue:(id)queue
{
  serverCopy = server;
  queueCopy = queue;
  v10 = queueCopy;
  if (!serverCopy)
  {
    v12 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "invalid update request";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  if (!queueCopy)
  {
    v12 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "missing update queue, skipping update";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003C90C;
  v15[3] = &unk_1000836E8;
  v15[4] = self;
  v16 = queueCopy;
  v17 = serverCopy;
  versionCopy = version;
  dispatch_async(v16, v15);

  v11 = 1;
LABEL_10:

  return v11;
}

- (void)createSessions:(id)sessions forServer:(id)server
{
  sessionsCopy = sessions;
  serverCopy = server;
  v7 = [(ValidUpdateRequest *)self createSession:0 queue:sessionsCopy forServer:serverCopy];
  [(ValidUpdateRequest *)self setEphemeralSession:v7];

  v8 = CFPreferencesCopyValue(@"ValidUpdateBackground", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v9);
      CFRelease(v9);
      if (!Value)
      {
        ephemeralSession = [(ValidUpdateRequest *)self ephemeralSession];
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  ephemeralSession = [(ValidUpdateRequest *)self createSession:1 queue:sessionsCopy forServer:serverCopy];
LABEL_7:
  v13 = ephemeralSession;
  [(ValidUpdateRequest *)self setBackgroundSession:ephemeralSession];
}

- (id)validUpdateConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    v3 = CFPreferencesCopyValue(@"ValidUpdateWiFiOnly", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) == 0;
      CFRelease(v4);
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.trustd.networking.background"];
    [v7 setNetworkServiceType:3];
    [v7 setDiscretionary:1];
    [v7 set_requiresPowerPluggedIn:1];
    [v7 setAllowsCellularAccess:v6];
  }

  else
  {
    v7 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v7 setNetworkServiceType:0];
    [v7 setDiscretionary:0];
  }

  v10[0] = @"User-Agent";
  v10[1] = @"Accept";
  v11[0] = @"com.apple.trustd/3.0";
@end