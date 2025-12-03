@interface CRAlert
- (BOOL)dismissAlert;
- (BOOL)presentAlertWithCompletion:(id)completion;
- (id)_alertContents;
- (id)iconImagePath;
- (void)_setAlert:(__CFUserNotification *)alert;
@end

@implementation CRAlert

- (void)_setAlert:(__CFUserNotification *)alert
{
  if (alert)
  {
    CFRetain(alert);
  }

  alert = self->_alert;
  if (alert)
  {
    CFRelease(alert);
  }

  self->_alert = alert;
}

- (id)iconImagePath
{
  v2 = CRFrameworkBundle();
  bundlePath = [v2 bundlePath];

  v4 = [bundlePath stringByAppendingPathComponent:@"CarPlayNotificationIcon.png"];

  return v4;
}

- (id)_alertContents
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  v4 = [NSNumber numberWithInt:[(CRAlert *)self dismissOnUnlock]^ 1];
  [v3 setObject:v4 forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];

  v5 = [NSNumber numberWithBool:[(CRAlert *)self allowInCar]];
  [v3 setObject:v5 forKeyedSubscript:SBUserNotificationAllowInCarKey];

  alertTitle = [(CRAlert *)self alertTitle];
  if (alertTitle)
  {
    [v3 setObject:alertTitle forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  alertMessage = [(CRAlert *)self alertMessage];
  if (alertMessage)
  {
    [v3 setObject:alertMessage forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  alertAcceptButtonTitle = [(CRAlert *)self alertAcceptButtonTitle];
  if (alertAcceptButtonTitle)
  {
    [v3 setObject:alertAcceptButtonTitle forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  alertDeclineButtonTitle = [(CRAlert *)self alertDeclineButtonTitle];
  if (alertDeclineButtonTitle)
  {
    [v3 setObject:alertDeclineButtonTitle forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  alertOtherButtonTitle = [(CRAlert *)self alertOtherButtonTitle];
  if (alertOtherButtonTitle)
  {
    [v3 setObject:alertOtherButtonTitle forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  lockscreenMessage = [(CRAlert *)self lockscreenMessage];
  v12 = lockscreenMessage != 0;
  if (lockscreenMessage)
  {
    [v3 setObject:lockscreenMessage forKeyedSubscript:SBUserNotificationLockScreenAlertMessageKey];
  }

  lockscreenTitle = [(CRAlert *)self lockscreenTitle];
  if (lockscreenTitle)
  {
    [v3 setObject:lockscreenTitle forKeyedSubscript:SBUserNotificationLockScreenAlertHeaderKey];
    v12 = 1;
  }

  iconImagePath = [(CRAlert *)self iconImagePath];
  if (iconImagePath)
  {
    [v3 setObject:iconImagePath forKeyedSubscript:SBUserNotificationIconImagePath];
  }

  else if (!v12)
  {
    goto LABEL_19;
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
LABEL_19:

  return v3;
}

- (BOOL)presentAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  error = 0;
  [(CRAlert *)self setAlertAutoDismissed:0];
  _alertContents = [(CRAlert *)self _alertContents];
  if (_alertContents && (v6 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, _alertContents)) != 0)
  {
    v7 = v6;
    [(CRAlert *)self _setAlert:v6];
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004BEC;
    block[3] = &unk_1000DD430;
    v18 = v7;
    block[4] = self;
    v17 = completionCopy;
    dispatch_async(v8, block);

    [(CRAlert *)self alertDismissal];
    if (v9 > 0.0)
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [(CRAlert *)self alertDismissal];
        *buf = 138412546;
        selfCopy = self;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Create dismiss timer for CRAlert: %@, dismissTime: %f", buf, 0x16u);
      }

      [(CRAlert *)self alertDismissal];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004DB4;
      v15[3] = &unk_1000DD458;
      v15[4] = self;
      v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v15 block:?];
      [(CRAlert *)self setAlertDismissTimer:v12];
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)dismissAlert
{
  alert = self->_alert;
  if (alert)
  {
    LOBYTE(alert) = CFUserNotificationCancel(alert) == 0;
  }

  return alert;
}

@end