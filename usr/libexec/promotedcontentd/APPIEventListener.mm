@interface APPIEventListener
+ (void)start;
+ (void)stop;
@end

@implementation APPIEventListener

+ (void)start
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100375F08;
  v13[3] = &unk_100480578;
  v13[4] = self;
  v3 = objc_retainBlock(v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100376030;
  block[3] = &unk_10047E780;
  block[4] = self;
  if (qword_1004EA1A0 != -1)
  {
    dispatch_once(&qword_1004EA1A0, block);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [&off_100494890 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(&off_100494890);
        }

        (v3[2])(v3, *(*(&v8 + 1) + 8 * i));
      }

      v5 = [&off_100494890 countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (void)stop
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registrationTokens = [self registrationTokens];
  v4 = [registrationTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(registrationTokens);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = +[MetricsModule storage];
        notificationRegistrar = [v9 notificationRegistrar];
        [notificationRegistrar removeHandlerWithIdentifier:{objc_msgSend(v8, "longValue")}];

        registrationTokens2 = [self registrationTokens];
        [registrationTokens2 removeObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [registrationTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

@end