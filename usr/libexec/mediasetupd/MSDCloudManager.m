@interface MSDCloudManager
+ (id)sharedManager;
+ (void)handlePushNotification:(id)a3;
- (MSDCloudManager)init;
- (void)_checkAccountStatus;
- (void)_handleAccountStatusUnsupported;
- (void)_handleCKAccountStatusChanged:(id)a3;
- (void)_handleDeviceSupportsEncryption:(id)a3;
- (void)_withAccountCheckLock:(id)a3;
- (void)addSubscriptionForDatabase:(id)a3;
- (void)dealloc;
- (void)isCloudKitAccessAvailable:(id)a3;
@end

@implementation MSDCloudManager

- (MSDCloudManager)init
{
  v11.receiver = self;
  v11.super_class = MSDCloudManager;
  v2 = [(MSDCloudManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    accountInfo = v2->_accountInfo;
    v2->_accountInfo = 0;

    v3->_subscriptionFailure = 0;
    v3->_isAccountCheckInProgress = 0;
    v3->_accountCheckLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.mediasetupd.CloudManager", v5);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_handleCKAccountStatusChanged:" name:CKAccountChangedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_handleCKAccountStatusChanged:" name:CKIdentityUpdateNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CKAccountChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CKIdentityUpdateNotification object:0];

  v5.receiver = self;
  v5.super_class = MSDCloudManager;
  [(MSDCloudManager *)&v5 dealloc];
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020248;
  block[3] = &unk_1000508C0;
  block[4] = a1;
  if (qword_100059A90 != -1)
  {
    dispatch_once(&qword_100059A90, block);
  }

  v2 = qword_100059A88;

  return v2;
}

- (void)addSubscriptionForDatabase:(id)a3
{
  v4 = a3;
  v5 = [v4 databaseScope];
  if (v5 == 2)
  {
    v6 = @"com.apple.msd.privateDatabaseSubscription";
    goto LABEL_5;
  }

  if (v5 == 3)
  {
    v6 = @"com.apple.msd.sharedDatabaseSubscription";
LABEL_5:
    objc_initWeak(&location, self);
    objc_initWeak(&from, v4);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002040C;
    v9[3] = &unk_100051DB0;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [v4 addSubscriptionForDatabaseWithIdentifier:v6 completion:v9];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100021830();
  }

  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10002186C(v4);
  }

LABEL_11:
}

- (void)isCloudKitAccessAvailable:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[CKContainer MSDCloudKitContainer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000208B8;
    v6[3] = &unk_100051DD8;
    v7 = v3;
    [v4 accountInfoWithCompletionHandler:v6];

    v5 = v7;
  }

  else
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[MSDCloudManager isCloudKitAccessAvailable:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, nil completion handler", buf, 0xCu);
    }
  }
}

+ (void)handlePushNotification:(id)a3
{
  v3 = a3;
  v4 = sub_100030FE4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling a CloudKit push notification", &v17, 2u);
  }

  v5 = [v3 userInfo];
  v6 = [CKNotification notificationFromRemoteNotificationDictionary:v5];

  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = sub_100030FE4();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000219A4();
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v9 databaseScope];
      v12 = CKDatabaseScopeString();
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "A CloudKit database changed in DatabaseScope = %@", &v17, 0xCu);
    }

    v13 = [v9 databaseScope];
    if (v13 == 1)
    {
      v11 = sub_100030FE4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100021968();
      }

      goto LABEL_22;
    }

    if (v13 == 3)
    {
      v11 = +[CKContainer MSDCloudKitContainer];
      v14 = [v11 sharedCloudDatabase];
      v15 = v14;
      v16 = &stru_100051E18;
      goto LABEL_19;
    }

    if (v13 == 2)
    {
      v11 = +[CKContainer MSDCloudKitContainer];
      v14 = [v11 privateCloudDatabase];
      v15 = v14;
      v16 = &stru_100051DF8;
LABEL_19:
      [v14 refreshDatabase:0 completion:v16];

LABEL_22:
    }
  }

  else
  {
    v9 = sub_100030FE4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000219E0(v3);
    }
  }
}

- (void)_checkAccountStatus
{
  objc_initWeak(&location, self);
  v2 = +[CKContainer MSDCloudKitContainer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020E80;
  v3[3] = &unk_100051E68;
  objc_copyWeak(&v4, &location);
  [v2 accountInfoWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_handleAccountStatusUnsupported
{
  [(MSDCloudManager *)self setAccountInfo:0];
  v2 = +[MSDDefaultsManager sharedManager];
  [v2 setObject:&__kCFBooleanFalse forDefault:@"CKAccountSupportsManatee"];

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 clearPrivateAndSharedLocalData];
}

- (void)_handleDeviceSupportsEncryption:(id)a3
{
  v4 = a3;
  if ([(CKAccountInfo *)self->_accountInfo isEqual:v4])
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "AccountInfo is the same, skipping update";
      v7 = buf;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if ([v4 hasValidCredentials])
  {
    [(MSDCloudManager *)self setAccountInfo:v4];
    v8 = +[MSDDefaultsManager sharedManager];
    v9 = [v8 objectForDefault:@"CKAccountSupportsManatee"];
    v10 = [v9 BOOLValue];

    if (!v10)
    {
      v11 = +[MSDDefaultsManager sharedManager];
      [v11 setObject:&__kCFBooleanTrue forDefault:@"CKAccountSupportsManatee"];

      v5 = +[MSDDataController sharedInstance];
      [v5 refreshDataForReason:6 completion:&stru_100051E88];
      goto LABEL_12;
    }

    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "Manatee enabled on device, skipping data refresh";
      v7 = &v12;
      goto LABEL_4;
    }
  }

  else
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100021C2C();
    }
  }

LABEL_12:
}

- (void)_handleCKAccountStatusChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002160C;
  block[3] = &unk_1000509C0;
  objc_copyWeak(&v9, buf);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_withAccountCheckLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accountCheckLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_accountCheckLock);
}

@end