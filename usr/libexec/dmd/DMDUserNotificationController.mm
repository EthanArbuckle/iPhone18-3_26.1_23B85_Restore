@interface DMDUserNotificationController
+ (DMDUserNotificationController)sharedController;
- (id)_dictFromNotification:(id)notification;
- (id)initPrivate;
- (void)_completeNotification:(id)notification response:(unint64_t)response;
- (void)_notificationRef:(__CFUserNotification *)ref wasDismissedWithFlags:(unint64_t)flags;
- (void)_showNextNotification;
- (void)showNotification:(id)notification completion:(id)completion;
@end

@implementation DMDUserNotificationController

+ (DMDUserNotificationController)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000765A0;
  block[3] = &unk_1000CE018;
  block[4] = self;
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

- (void)showNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  if (!notificationCopy)
  {
    sub_100087DD0(a2, self);
  }

  v9 = +[DMDDeviceController shared];
  isInSingleAppMode = [v9 isInSingleAppMode];
  bOOLValue = [isInSingleAppMode BOOLValue];

  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not displaying notification in limited app mode", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 4);
    }
  }

  else
  {
    if (v12)
    {
      identifier = [notificationCopy identifier];
      *buf = 138543362;
      v21 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Start user notification: %{public}@", buf, 0xCu);
    }

    queue = [(DMDUserNotificationController *)self queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000768A4;
    v16[3] = &unk_1000CE910;
    v17 = notificationCopy;
    selfCopy = self;
    v19 = completionCopy;
    v15 = [DMDBlockOperation blockOperationWithBlock:v16];
    [queue addOperation:v15];
  }
}

- (id)_dictFromNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_opt_new();
  header = [notificationCopy header];
  [v4 setObject:header forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  message = [notificationCopy message];
  [v4 setObject:message forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  defaultButtonTitle = [notificationCopy defaultButtonTitle];
  [v4 setObject:defaultButtonTitle forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  alternateButtonTitle = [notificationCopy alternateButtonTitle];
  [v4 setObject:alternateButtonTitle forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

  otherButtonTitle = [notificationCopy otherButtonTitle];
  [v4 setObject:otherButtonTitle forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

  displayWhenLocked = [notificationCopy displayWhenLocked];
  v11 = [NSNumber numberWithBool:displayWhenLocked];
  [v4 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertTopMostKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  v12 = [v4 copy];

  return v12;
}

- (void)_showNextNotification
{
  queue = [(DMDUserNotificationController *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100076C3C;
  v5[3] = &unk_1000CE5A0;
  v5[4] = self;
  v4 = [DMDBlockOperation blockOperationWithBlock:v5];
  [queue addOperation:v4];
}

- (void)_completeNotification:(id)notification response:(unint64_t)response
{
  notificationCopy = notification;
  identifier = [notificationCopy identifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing user notification: %{public}@", &v12, 0xCu);
  }

  completionsByIdentifier = [(DMDUserNotificationController *)self completionsByIdentifier];
  v9 = [completionsByIdentifier objectForKeyedSubscript:identifier];

  if (v9)
  {
    v9[2](v9, response);
  }

  notifications = [(DMDUserNotificationController *)self notifications];
  [notifications removeObject:notificationCopy];

  completionsByIdentifier2 = [(DMDUserNotificationController *)self completionsByIdentifier];
  [completionsByIdentifier2 setObject:0 forKeyedSubscript:identifier];

  [(DMDUserNotificationController *)self _showNextNotification];
}

- (void)_notificationRef:(__CFUserNotification *)ref wasDismissedWithFlags:(unint64_t)flags
{
  queue = [(DMDUserNotificationController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100077100;
  v9[3] = &unk_1000CFFC0;
  v9[4] = self;
  v9[5] = ref;
  v9[6] = flags;
  v8 = [DMDBlockOperation blockOperationWithBlock:v9];
  [queue addOperation:v8];
}

@end