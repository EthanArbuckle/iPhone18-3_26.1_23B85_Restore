@interface APSTokenWatcher
+ (id)sharedInstance;
- (APSTokenWatcher)init;
- (NSArray)tokenList;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation APSTokenWatcher

+ (id)sharedInstance
{
  if (qword_100070368 != -1)
  {
    sub_100038EA0();
  }

  v2 = qword_100070360;
  if (!qword_100070360)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The APSTokenWatcher singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_100070360;
  }

  return v2;
}

- (APSTokenWatcher)init
{
  v10.receiver = self;
  v10.super_class = APSTokenWatcher;
  v2 = [(APSTokenWatcher *)&v10 init];
  if (v2)
  {
    v3 = [APSConnection alloc];
    v4 = [v3 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.icloud.fmflocatord.APSTokenWatcher.prod" queue:&_dispatch_main_q];
    [(APSTokenWatcher *)v2 setProdConnection:v4];

    v5 = [(APSTokenWatcher *)v2 prodConnection];
    [v5 setDelegate:v2];

    v6 = [APSConnection alloc];
    v7 = [v6 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.icloud.fmflocatord.APSTokenWatcher.dev" queue:&_dispatch_main_q];
    [(APSTokenWatcher *)v2 setDevConnection:v7];

    v8 = [(APSTokenWatcher *)v2 devConnection];
    [v8 setDelegate:v2];
  }

  return v2;
}

- (NSArray)tokenList
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(APSTokenWatcher *)self prodToken];

  if (v4)
  {
    v5 = [(APSTokenWatcher *)self prodToken];
    [v3 addObject:v5];
  }

  v6 = [(APSTokenWatcher *)self devToken];

  if (v6)
  {
    v7 = [(APSTokenWatcher *)self devToken];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSTokenWatcher *)self prodConnection];

  if (v8 == v6)
  {
    v11 = [v7 fm_hexString];
    v12 = [(APSTokenWatcher *)self prodToken];
    if (v12)
    {
      v13 = v12;
      v14 = [(APSTokenWatcher *)self prodToken];
      v15 = [v14 isEqualToString:v11];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    [(APSTokenWatcher *)self setProdToken:v11];
LABEL_12:

    v10 = [NSNotification notificationWithName:@"kAPSTokenWatcherUpdatedNotification" object:self userInfo:0];
    v20 = +[NSNotificationQueue defaultQueue];
    [v20 enqueueNotification:v10 postingStyle:2 coalesceMask:3 forModes:0];

LABEL_13:
    goto LABEL_14;
  }

  v9 = [(APSTokenWatcher *)self devConnection];

  if (v9 != v6)
  {
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038EF8(v6, v10);
    }

    goto LABEL_13;
  }

  v11 = [v7 fm_hexString];
  v16 = [(APSTokenWatcher *)self devToken];
  if (!v16 || (v17 = v16, -[APSTokenWatcher devToken](self, "devToken"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:v11], v18, v17, (v19 & 1) == 0))
  {
    [(APSTokenWatcher *)self setDevToken:v11];
    goto LABEL_12;
  }

LABEL_10:

LABEL_14:
}

@end