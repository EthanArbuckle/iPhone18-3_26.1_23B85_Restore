@interface APSTokenWatcher
+ (id)sharedInstance;
- (APSTokenWatcher)init;
- (NSArray)tokenList;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
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

    prodConnection = [(APSTokenWatcher *)v2 prodConnection];
    [prodConnection setDelegate:v2];

    v6 = [APSConnection alloc];
    v7 = [v6 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.icloud.fmflocatord.APSTokenWatcher.dev" queue:&_dispatch_main_q];
    [(APSTokenWatcher *)v2 setDevConnection:v7];

    devConnection = [(APSTokenWatcher *)v2 devConnection];
    [devConnection setDelegate:v2];
  }

  return v2;
}

- (NSArray)tokenList
{
  v3 = objc_alloc_init(NSMutableArray);
  prodToken = [(APSTokenWatcher *)self prodToken];

  if (prodToken)
  {
    prodToken2 = [(APSTokenWatcher *)self prodToken];
    [v3 addObject:prodToken2];
  }

  devToken = [(APSTokenWatcher *)self devToken];

  if (devToken)
  {
    devToken2 = [(APSTokenWatcher *)self devToken];
    [v3 addObject:devToken2];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  prodConnection = [(APSTokenWatcher *)self prodConnection];

  if (prodConnection == connectionCopy)
  {
    fm_hexString = [tokenCopy fm_hexString];
    prodToken = [(APSTokenWatcher *)self prodToken];
    if (prodToken)
    {
      v13 = prodToken;
      prodToken2 = [(APSTokenWatcher *)self prodToken];
      v15 = [prodToken2 isEqualToString:fm_hexString];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    [(APSTokenWatcher *)self setProdToken:fm_hexString];
LABEL_12:

    v10 = [NSNotification notificationWithName:@"kAPSTokenWatcherUpdatedNotification" object:self userInfo:0];
    v20 = +[NSNotificationQueue defaultQueue];
    [v20 enqueueNotification:v10 postingStyle:2 coalesceMask:3 forModes:0];

LABEL_13:
    goto LABEL_14;
  }

  devConnection = [(APSTokenWatcher *)self devConnection];

  if (devConnection != connectionCopy)
  {
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038EF8(connectionCopy, v10);
    }

    goto LABEL_13;
  }

  fm_hexString = [tokenCopy fm_hexString];
  devToken = [(APSTokenWatcher *)self devToken];
  if (!devToken || (v17 = devToken, -[APSTokenWatcher devToken](self, "devToken"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:fm_hexString], v18, v17, (v19 & 1) == 0))
  {
    [(APSTokenWatcher *)self setDevToken:fm_hexString];
    goto LABEL_12;
  }

LABEL_10:

LABEL_14:
}

@end