@interface CRAlert
- (BOOL)dismissAlert;
- (BOOL)presentAlertWithCompletion:(id)a3;
- (id)_alertContents;
- (id)iconImagePath;
- (void)_setAlert:(__CFUserNotification *)a3;
@end

@implementation CRAlert

- (void)_setAlert:(__CFUserNotification *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  alert = self->_alert;
  if (alert)
  {
    CFRelease(alert);
  }

  self->_alert = a3;
}

- (id)iconImagePath
{
  v2 = CRFrameworkBundle();
  v3 = [v2 bundlePath];

  v4 = [v3 stringByAppendingPathComponent:@"CarPlayNotificationIcon.png"];

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

  v6 = [(CRAlert *)self alertTitle];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  v7 = [(CRAlert *)self alertMessage];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  v8 = [(CRAlert *)self alertAcceptButtonTitle];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  v9 = [(CRAlert *)self alertDeclineButtonTitle];
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  v10 = [(CRAlert *)self alertOtherButtonTitle];
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  }

  v11 = [(CRAlert *)self lockscreenMessage];
  v12 = v11 != 0;
  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:SBUserNotificationLockScreenAlertMessageKey];
  }

  v13 = [(CRAlert *)self lockscreenTitle];
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:SBUserNotificationLockScreenAlertHeaderKey];
    v12 = 1;
  }

  v14 = [(CRAlert *)self iconImagePath];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:SBUserNotificationIconImagePath];
  }

  else if (!v12)
  {
    goto LABEL_19;
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
LABEL_19:

  return v3;
}

- (BOOL)presentAlertWithCompletion:(id)a3
{
  v4 = a3;
  error = 0;
  [(CRAlert *)self setAlertAutoDismissed:0];
  v5 = [(CRAlert *)self _alertContents];
  if (v5 && (v6 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v5)) != 0)
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
    v17 = v4;
    dispatch_async(v8, block);

    [(CRAlert *)self alertDismissal];
    if (v9 > 0.0)
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [(CRAlert *)self alertDismissal];
        *buf = 138412546;
        v21 = self;
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