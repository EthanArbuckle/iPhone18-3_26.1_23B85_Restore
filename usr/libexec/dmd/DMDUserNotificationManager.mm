@interface DMDUserNotificationManager
+ (DMDUserNotificationManager)sharedManager;
- (DMDUserNotificationManager)init;
- (void)cancelNotificationEntriesMatchingPredicate:(id)predicate completionBlock:(id)block;
- (void)dealloc;
- (void)displayUserNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonText:(id)text alternateButtonText:(id)buttonText otherButtonText:(id)otherButtonText displayOnLockScreen:(BOOL)screen displayInAppWhitelistModes:(BOOL)self0 dismissAfterTimeInterval:(double)self1 assertion:(id)self2 completionBlock:(id)self3;
- (void)mainQueueDidReceiveAppWhitelistChangedNotification;
- (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
@end

@implementation DMDUserNotificationManager

+ (DMDUserNotificationManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077504;
  block[3] = &unk_1000CE018;
  block[4] = self;
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

- (void)cancelNotificationEntriesMatchingPredicate:(id)predicate completionBlock:(id)block
{
  predicateCopy = predicate;
  blockCopy = block;
  if (predicateCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100077CD8;
    v7[3] = &unk_1000D0098;
    v8 = predicateCopy;
    v9 = blockCopy;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)displayUserNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonText:(id)text alternateButtonText:(id)buttonText otherButtonText:(id)otherButtonText displayOnLockScreen:(BOOL)screen displayInAppWhitelistModes:(BOOL)self0 dismissAfterTimeInterval:(double)self1 assertion:(id)self2 completionBlock:(id)self3
{
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  textCopy = text;
  buttonTextCopy = buttonText;
  otherButtonTextCopy = otherButtonText;
  assertionCopy = assertion;
  blockCopy = block;
  v24 = +[MCProfileConnection sharedConnection];
  appWhitelistState = [v24 appWhitelistState];

  if (modes || !appWhitelistState || appWhitelistState == 6)
  {
    v26 = objc_opt_new();
    [v26 setTitle:titleCopy];
    [v26 setMessage:messageCopy];
    v37 = assertionCopy;
    v27 = otherButtonTextCopy;
    [v26 setDefaultButtonText:textCopy];
    [v26 setAlternateButtonText:buttonTextCopy];
    [v26 setOtherButtonText:otherButtonTextCopy];
    [v26 setDisplayOnLockScreen:screen];
    [v26 setDisplayInAppWhitelistModes:modes];
    [v26 setDismissAfterTimeInterval:interval];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000783D0;
    v43[3] = &unk_1000CF948;
    v28 = assertionCopy;
    v44 = v28;
    v45 = blockCopy;
    [v26 setCompletionBlock:v43];
    v29 = blockCopy;
    v30 = titleCopy;
    v31 = identifierCopy;
    [v26 setIdentifier:identifierCopy];
    [v28 park];
    v32 = sub_100077780();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007842C;
    block[3] = &unk_1000CE5A0;
    v42 = v26;
    v33 = v26;
    dispatch_barrier_async(v32, block);

    v34 = messageCopy;
    v35 = v30;
    v36 = textCopy;
    assertionCopy = v37;
  }

  else
  {
    v29 = blockCopy;
    v27 = otherButtonTextCopy;
    v34 = messageCopy;
    v36 = textCopy;
    v35 = titleCopy;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not displaying notification in limited apps mode.", buf, 2u);
    }

    v31 = identifierCopy;
    if (v29)
    {
      v29[2](v29, 3);
    }
  }
}

- (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  v13 = sub_100077780();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100078B30;
  v18[3] = &unk_1000CF5C8;
  v19 = titleCopy;
  v20 = messageCopy;
  v21 = assertionCopy;
  v22 = blockCopy;
  v14 = assertionCopy;
  v15 = messageCopy;
  v16 = titleCopy;
  v17 = blockCopy;
  dispatch_async(v13, v18);
}

@end