@interface WCDRadarUserNotification
+ (BOOL)showUserNotificationWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle withCompletionBlock:(id)block;
+ (void)showTapToRadarAlertWithMessage:(id)message forRadarIdentifier:(id)identifier oncePerBuild:(BOOL)build;
@end

@implementation WCDRadarUserNotification

+ (void)showTapToRadarAlertWithMessage:(id)message forRadarIdentifier:(id)identifier oncePerBuild:(BOOL)build
{
  buildCopy = build;
  messageCopy = message;
  identifierCopy = identifier;
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = MGCopyAnswer();
  identifierCopy = [NSString stringWithFormat:@"rdar_%@", identifierCopy];
  if (!buildCopy || ([v10 objectForKey:identifierCopy], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqual:", v11), v13, (v14 & 1) == 0))
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001B154;
    v17[3] = &unk_1000491B0;
    v18 = identifierCopy;
    if ([self showUserNotificationWithTitle:@"WatchConnectivity Detected A Problem" message:messageCopy defaultButtonTitle:@"File a bug" cancelButtonTitle:@"Dismiss" withCompletionBlock:v17])
    {
      v15 = +[NSUserDefaults standardUserDefaults];
      [v15 setObject:v11 forKey:identifierCopy];

      v16 = +[NSUserDefaults standardUserDefaults];
      [v16 synchronize];
    }
  }
}

+ (BOOL)showUserNotificationWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle withCompletionBlock:(id)block
{
  v22[0] = kCFUserNotificationAlertHeaderKey;
  v22[1] = kCFUserNotificationAlertMessageKey;
  v23[0] = title;
  v23[1] = message;
  v22[2] = kCFUserNotificationDefaultButtonTitleKey;
  v22[3] = kCFUserNotificationAlternateButtonTitleKey;
  v23[2] = buttonTitle;
  v23[3] = cancelButtonTitle;
  v22[4] = kCFUserNotificationAlertTopMostKey;
  v22[5] = @"SBUserNotificationDismissOnLock";
  v23[4] = &__kCFBooleanTrue;
  v23[5] = &__kCFBooleanFalse;
  v22[6] = @"SBUserNotificationDontDismissOnUnlock";
  v22[7] = @"SBUserNotificationAllowLockscreenDismissalKey";
  v23[6] = &__kCFBooleanTrue;
  v23[7] = &__kCFBooleanFalse;
  blockCopy = block;
  cancelButtonTitleCopy = cancelButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:8];

  v17 = [blockCopy copy];
  v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v16);
  v19 = v18;
  if (v18)
  {
    v21 = 0;
    CFUserNotificationReceiveResponse(v18, 0.0, &v21);
    if (v17)
    {
      v17[2](v17, v19, v21);
    }

    CFRelease(v19);
  }

  return v19 != 0;
}

@end