@interface MSDPushNotificationHandler
+ (id)sharedInstance;
- (MSDPushNotificationHandler)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)enablePushNotifications;
@end

@implementation MSDPushNotificationHandler

+ (id)sharedInstance
{
  if (qword_1001A5680 != -1)
  {
    sub_1000CD044();
  }

  v3 = qword_1001A5678;

  return v3;
}

- (MSDPushNotificationHandler)init
{
  v6.receiver = self;
  v6.super_class = MSDPushNotificationHandler;
  v2 = [(MSDPushNotificationHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDPushNotificationHandler *)v2 setApsConnection:0];
    [(MSDPushNotificationHandler *)v3 setApsToken:0];
    v4 = v3;
  }

  return v3;
}

- (void)enablePushNotifications
{
  v3 = [(MSDPushNotificationHandler *)self apsConnection];

  if (!v3)
  {
    v4 = [APSConnection alloc];
    v5 = APSEnvironmentProduction;
    v6 = +[MSDWorkQueueSet sharedInstance];
    v7 = [v6 pollingQueue];
    v8 = [v4 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.aps.mobilestoredemoport" queue:v7];
    [(MSDPushNotificationHandler *)self setApsConnection:v8];

    v9 = [(MSDPushNotificationHandler *)self apsConnection];
    [v9 setDelegate:self];

    v10 = [(MSDPushNotificationHandler *)self apsConnection];
    [v10 requestTokenForTopic:@"com.apple.ist.demounit.demodevicenotifications" identifier:&stru_10016D9D8];

    v12 = [(MSDPushNotificationHandler *)self apsConnection];
    v11 = [NSArray arrayWithObject:@"com.apple.ist.demounit.demodevicenotifications"];
    [v12 setEnabledTopics:v11];
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v4 = a4;
  v5 = [v4 topic];
  if ([v5 isEqualToString:@"com.apple.ist.demounit.demodevicenotifications"])
  {
    v6 = [v4 userInfo];
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CD058(v6, v7);
    }

    v8 = [v6 objectForKey:@"action"];
    v9 = [v8 isEqualToString:@"ping_hub"];

    if (v9)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received request to ping the hub.", buf, 2u);
      }

      v11 = +[MSDMailProcessor sharedInstance];
      [v11 sendPushNotificationPing];
      goto LABEL_27;
    }

    v12 = [v6 objectForKey:@"action"];
    v13 = [v12 isEqualToString:@"collect_logs"];

    if (v13)
    {
      v14 = [v6 objectForKey:@"parameters"];
      v15 = +[MSDTargetDevice sharedInstance];
      v11 = [v14 objectForKey:@"url"];
      v16 = [v15 hubSuppliedSettings];
      v17 = [v16 objectForKey:@"LogS3BucketUrl"];

      if (v17 && ([v11 hasPrefix:v17]& 1) != 0)
      {
        v18 = [v14 objectForKey:@"retryAttempts"];
        v19 = [v18 integerValue];

        v20 = [v14 objectForKey:@"logType"];
        v30 = [v20 unsignedIntegerValue];

        v21 = [v14 objectForKey:@"headers"];
        v22 = sub_100063A54();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v32 = v11;
          v33 = 2048;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received request to collect MobileStoreDemo logs. Upload url: %{public}@, retry attempts: %ld", buf, 0x16u);
        }

        v23 = +[MSDS3UploadHandler sharedInstance];
        [v23 uploadDemoLogsTo:v11 HttpHeaders:v21 andMaxAttempts:v19 ofType:v30];

        goto LABEL_27;
      }

      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Provided S3 URL does not match stored URL pre-fix. Abandoning log upload", buf, 2u);
      }
    }

    else
    {
      v24 = [v6 objectForKey:@"action"];
      v25 = [v24 isEqualToString:@"demo_device_lock"];

      if (v25)
      {
        if (!os_variant_has_internal_content())
        {
LABEL_28:

          goto LABEL_29;
        }

        v11 = +[MSDTargetDevice sharedInstance];
        if ([v11 isDDLDevice]&& [v11 isContentFrozen])
        {
          if (([v11 unenrollWithObliteration:0 preserveESim:1 callUnregister:0 preserveDDLFlag:1]& 1) != 0)
          {
LABEL_27:

            goto LABEL_28;
          }

          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000CD198(v14);
          }
        }

        else
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000CD154(v14);
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      v27 = [v6 objectForKey:@"action"];
      v28 = [v27 isEqualToString:@"discover"];

      v11 = sub_100063A54();
      v29 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (!v28)
      {
        if (!v29)
        {
          goto LABEL_27;
        }

        v14 = [v6 objectForKey:@"action"];
        *buf = 138543362;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received invalid command from DU. %{public}@", buf, 0xCu);
        goto LABEL_26;
      }

      if (v29)
      {
        *buf = 136315138;
        v32 = "[MSDPushNotificationHandler connection:didReceiveIncomingMessage:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - INFO - Received request to flash the device.", buf, 0xCu);
      }

      v11 = +[MSDAVFlashlight sharedInstance];
      v14 = [v6 objectForKey:@"parameters"];
      v15 = [v14 objectForKey:@"flashDeviceDuration"];
      if (-[NSObject flash:](v11, "flash:", [v15 unsignedIntegerValue]))
      {
LABEL_25:

        goto LABEL_26;
      }

      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD0D0(v17);
      }
    }

    goto LABEL_25;
  }

LABEL_29:
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v7 = [a4 hexStringRepresentation];
  [(MSDPushNotificationHandler *)self setApsToken:v7];

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CD1DC(self, v8);
  }
}

@end