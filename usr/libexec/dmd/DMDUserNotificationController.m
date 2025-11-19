@interface DMDUserNotificationController
+ (DMDUserNotificationController)sharedController;
- (id)_dictFromNotification:(id)a3;
- (id)initPrivate;
- (void)_completeNotification:(id)a3 response:(unint64_t)a4;
- (void)_notificationRef:(__CFUserNotification *)a3 wasDismissedWithFlags:(unint64_t)a4;
- (void)_showNextNotification;
- (void)showNotification:(id)a3 completion:(id)a4;
@end

@implementation DMDUserNotificationController

+ (DMDUserNotificationController)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000765A0;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF318 != -1)
  {
    dispatch_once(&qword_1000FF318, block);
  }

  v2 = qword_1000FF310;

  return v2;
}

- (id)initPrivate
{
  v10.receiver = self;
  v10.super_class = DMDUserNotificationController;
  v2 = [(DMDUserNotificationController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    queue = v2->_queue;
    v2->_queue = v3;

    [(CATOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    [(CATOperationQueue *)v2->_queue setSuspended:0];
    v5 = objc_opt_new();
    notifications = v2->_notifications;
    v2->_notifications = v5;

    v7 = objc_opt_new();
    completionsByIdentifier = v2->_completionsByIdentifier;
    v2->_completionsByIdentifier = v7;
  }

  return v2;
}

- (void)showNotification:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_100087DD0(a2, self);
  }

  v9 = +[DMDDeviceController shared];
  v10 = [v9 isInSingleAppMode];
  v11 = [v10 BOOLValue];

  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not displaying notification in limited app mode", buf, 2u);
    }

    if (v8)
    {
      v8[2](v8, 4);
    }
  }

  else
  {
    if (v12)
    {
      v13 = [v7 identifier];
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Start user notification: %{public}@", buf, 0xCu);
    }

    v14 = [(DMDUserNotificationController *)self queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000768A4;
    v16[3] = &unk_1000CE910;
    v17 = v7;
    v18 = self;
    v19 = v8;
    v15 = [DMDBlockOperation blockOperationWithBlock:v16];
    [v14 addOperation:v15];
  }
}

- (id)_dictFromNotification:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 header];
  [v4 setObject:v5 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v6 = [v3 message];
  [v4 setObject:v6 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v7 = [v3 defaultButtonTitle];
  [v4 setObject:v7 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v8 = [v3 alternateButtonTitle];
  [v4 setObject:v8 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

  v9 = [v3 otherButtonTitle];
  [v4 setObject:v9 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

  v10 = [v3 displayWhenLocked];
  v11 = [NSNumber numberWithBool:v10];
  [v4 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertTopMostKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  v12 = [v4 copy];

  return v12;
}

- (void)_showNextNotification
{
  v3 = [(DMDUserNotificationController *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100076C3C;
  v5[3] = &unk_1000CE5A0;
  v5[4] = self;
  v4 = [DMDBlockOperation blockOperationWithBlock:v5];
  [v3 addOperation:v4];
}

- (void)_completeNotification:(id)a3 response:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing user notification: %{public}@", &v12, 0xCu);
  }

  v8 = [(DMDUserNotificationController *)self completionsByIdentifier];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v9[2](v9, a4);
  }

  v10 = [(DMDUserNotificationController *)self notifications];
  [v10 removeObject:v6];

  v11 = [(DMDUserNotificationController *)self completionsByIdentifier];
  [v11 setObject:0 forKeyedSubscript:v7];

  [(DMDUserNotificationController *)self _showNextNotification];
}

- (void)_notificationRef:(__CFUserNotification *)a3 wasDismissedWithFlags:(unint64_t)a4
{
  v7 = [(DMDUserNotificationController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100077100;
  v9[3] = &unk_1000CFFC0;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  v8 = [DMDBlockOperation blockOperationWithBlock:v9];
  [v7 addOperation:v8];
}

@end