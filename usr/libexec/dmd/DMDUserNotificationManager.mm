@interface DMDUserNotificationManager
+ (DMDUserNotificationManager)sharedManager;
- (DMDUserNotificationManager)init;
- (void)cancelNotificationEntriesMatchingPredicate:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)displayUserNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButtonText:(id)a6 alternateButtonText:(id)a7 otherButtonText:(id)a8 displayOnLockScreen:(BOOL)a9 displayInAppWhitelistModes:(BOOL)a10 dismissAfterTimeInterval:(double)a11 assertion:(id)a12 completionBlock:(id)a13;
- (void)mainQueueDidReceiveAppWhitelistChangedNotification;
- (void)promptUserToLogIntoiTunesWithTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6;
@end

@implementation DMDUserNotificationManager

+ (DMDUserNotificationManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077504;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF328 != -1)
  {
    dispatch_once(&qword_1000FF328, block);
  }

  v2 = qword_1000FF320;

  return v2;
}

- (DMDUserNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = DMDUserNotificationManager;
  v2 = [(DMDUserNotificationManager *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = MCAppWhitelistDidChangeNotification;
    v5 = objc_opt_new();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007763C;
    v8[3] = &unk_1000CFFE8;
    v9 = v2;
    v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v8];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(DMDUserNotificationManager *)self cancelAllNotificationsWithCompletionBlock:0];
  v4.receiver = self;
  v4.super_class = DMDUserNotificationManager;
  [(DMDUserNotificationManager *)&v4 dealloc];
}

- (void)mainQueueDidReceiveAppWhitelistChangedNotification
{
  v2 = sub_100077780();
  dispatch_barrier_sync(v2, &stru_1000D0008);
}

- (void)cancelNotificationEntriesMatchingPredicate:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100077CD8;
    v7[3] = &unk_1000D0098;
    v8 = v5;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)displayUserNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButtonText:(id)a6 alternateButtonText:(id)a7 otherButtonText:(id)a8 displayOnLockScreen:(BOOL)a9 displayInAppWhitelistModes:(BOOL)a10 dismissAfterTimeInterval:(double)a11 assertion:(id)a12 completionBlock:(id)a13
{
  v40 = a3;
  v19 = a4;
  v38 = a5;
  v39 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a12;
  v23 = a13;
  v24 = +[MCProfileConnection sharedConnection];
  v25 = [v24 appWhitelistState];

  if (a10 || !v25 || v25 == 6)
  {
    v26 = objc_opt_new();
    [v26 setTitle:v19];
    [v26 setMessage:v38];
    v37 = v22;
    v27 = v21;
    [v26 setDefaultButtonText:v39];
    [v26 setAlternateButtonText:v20];
    [v26 setOtherButtonText:v21];
    [v26 setDisplayOnLockScreen:a9];
    [v26 setDisplayInAppWhitelistModes:a10];
    [v26 setDismissAfterTimeInterval:a11];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000783D0;
    v43[3] = &unk_1000CF948;
    v28 = v22;
    v44 = v28;
    v45 = v23;
    [v26 setCompletionBlock:v43];
    v29 = v23;
    v30 = v19;
    v31 = v40;
    [v26 setIdentifier:v40];
    [v28 park];
    v32 = sub_100077780();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007842C;
    block[3] = &unk_1000CE5A0;
    v42 = v26;
    v33 = v26;
    dispatch_barrier_async(v32, block);

    v34 = v38;
    v35 = v30;
    v36 = v39;
    v22 = v37;
  }

  else
  {
    v29 = v23;
    v27 = v21;
    v34 = v38;
    v36 = v39;
    v35 = v19;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not displaying notification in limited apps mode.", buf, 2u);
    }

    v31 = v40;
    if (v29)
    {
      v29[2](v29, 3);
    }
  }
}

- (void)promptUserToLogIntoiTunesWithTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100077780();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100078B30;
  v18[3] = &unk_1000CF5C8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  dispatch_async(v13, v18);
}

@end