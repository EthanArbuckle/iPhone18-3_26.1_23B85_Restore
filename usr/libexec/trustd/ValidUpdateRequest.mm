@interface ValidUpdateRequest
- (BOOL)scheduleUpdateFromServer:(id)a3 forVersion:(int64_t)a4 withQueue:(id)a5;
- (BOOL)updateNowFromServer:(id)a3 version:(int64_t)a4 queue:(id)a5;
- (id)validUpdateConfiguration:(BOOL)a3;
- (void)createSessions:(id)a3 forServer:(id)a4;
@end

@implementation ValidUpdateRequest

- (BOOL)updateNowFromServer:(id)a3 version:(int64_t)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
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

  if (!v9)
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

  v11 = [(ValidUpdateRequest *)self ephemeralSession];

  if (v11)
  {
    v12 = [(ValidUpdateRequest *)self ephemeralSession];
    v13 = [v12 delegate];

    v14 = [v8 copy];
    [v13 setCurrentUpdateServer:v14];
  }

  else
  {
    [(ValidUpdateRequest *)self createSessions:v10 forServer:v8];
  }

  v18 = [NSString stringWithFormat:@"https://%@/g%ld/v%ld", v8, sub_1000511C0(), a4];
  v15 = [NSURL URLWithString:v18];

  v19 = [(ValidUpdateRequest *)self ephemeralSession];
  v20 = [v19 dataTaskWithURL:v15];

  v21 = [NSString stringWithFormat:@"%ld", a4];
  [v20 setTaskDescription:v21];

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

- (BOOL)scheduleUpdateFromServer:(id)a3 forVersion:(int64_t)a4 withQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
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

  if (!v9)
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
  v16 = v9;
  v17 = v8;
  v18 = a4;
  dispatch_async(v16, v15);

  v11 = 1;
LABEL_10:

  return v11;
}

- (void)createSessions:(id)a3 forServer:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(ValidUpdateRequest *)self createSession:0 queue:v14 forServer:v6];
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
        v12 = [(ValidUpdateRequest *)self ephemeralSession];
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  v12 = [(ValidUpdateRequest *)self createSession:1 queue:v14 forServer:v6];
LABEL_7:
  v13 = v12;
  [(ValidUpdateRequest *)self setBackgroundSession:v12];
}

- (id)validUpdateConfiguration:(BOOL)a3
{
  if (a3)
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