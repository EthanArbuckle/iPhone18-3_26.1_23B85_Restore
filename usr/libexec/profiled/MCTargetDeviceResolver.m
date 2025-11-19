@interface MCTargetDeviceResolver
+ (id)stringForWatchAvailability:(unint64_t)a3;
+ (unint64_t)watchAvailability;
+ (void)_showPromptForHomePodAndWatchWithCompletionBlock:(id)a3;
+ (void)_showPromptForHomePodWithCompletionBlock:(id)a3;
+ (void)_showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:(id)a3;
+ (void)_showPromptForWatchWithCompletionBlock:(id)a3;
+ (void)showResolutionPromptWithWatchOption:(BOOL)a3 homePodOption:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation MCTargetDeviceResolver

+ (unint64_t)watchAvailability
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
    v8 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      v13 = NRDevicePropertyIsAltAccount;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) valueForProperty:{v13, v18}];
          v16 = [v15 BOOLValue];

          if (v16)
          {

            v6 = 1;
            goto LABEL_15;
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([v9 count])
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

LABEL_15:
  }

  return v6;
}

+ (void)showResolutionPromptWithWatchOption:(BOOL)a3 homePodOption:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [a1 watchAvailability];
  v10 = [a1 isHomePodAvailable];
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [MCTargetDeviceResolver stringForWatchAvailability:v9];
    v17[0] = 67240962;
    v17[1] = v6;
    v18 = 2114;
    v19 = v13;
    v20 = 1026;
    v21 = v5;
    v22 = 1026;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver state: Watch Valid? %{public}d | Watch State? %{public}@ | HomePod Valid? %{public}d | HomePod Available? %{public}d", v17, 0x1Eu);
  }

  if (v9 >= 2)
  {
    v6 = 0;
  }

  v14 = v10 & v5;
  v15 = _MCLogObjects[0];
  v16 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (v6 && v14)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone, Watch, and HomePod", v17, 2u);
    }

    [a1 _showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:v8];
  }

  else if (v14)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone and HomePod", v17, 2u);
    }

    [a1 _showPromptForHomePodWithCompletionBlock:v8];
  }

  else if (v6)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone and Watch", v17, 2u);
    }

    [a1 _showPromptForWatchWithCompletionBlock:v8];
  }

  else
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver skipping prompt because only this device is available", v17, 2u);
    }

    v8[2](v8, +[MCProfile thisDeviceType]);
  }
}

+ (void)_showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[MCUserNotificationManager sharedManager];
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedString();
  v9 = MCLocalizedStringByDevice();
  v10 = MCLocalizedString();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F5B0;
  v13[3] = &unk_10011C1E8;
  v14 = v4;
  v15 = a1;
  v11 = v4;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:v9 otherButtonText:v10 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForHomePodAndWatchWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[MCUserNotificationManager sharedManager];
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedString();
  v9 = [a1 _homepodText];
  v10 = MCLocalizedString();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F7C8;
  v13[3] = &unk_10011C210;
  v14 = v4;
  v11 = v4;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:v9 otherButtonText:v10 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForHomePodWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[MCUserNotificationManager sharedManager];
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedString();
  v9 = MCLocalizedStringByDevice();
  v10 = [a1 _homepodText];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F964;
  v13[3] = &unk_10011C210;
  v14 = v4;
  v11 = v4;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:v9 otherButtonText:v10 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForWatchWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = +[MCUserNotificationManager sharedManager];
  v5 = MCLocalizedString();
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedStringByDevice();
  v9 = MCLocalizedString();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001FB60;
  v12[3] = &unk_10011C210;
  v13 = v3;
  v10 = v3;
  BYTE2(v11) = 1;
  LOWORD(v11) = 0;
  [v4 displayUserNotificationWithIdentifier:0 title:v5 message:v6 defaultButtonText:v7 alternateButtonText:v8 otherButtonText:v9 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v11 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v12 assertion:? completionBlock:?];
}

+ (id)stringForWatchAvailability:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_10011C230[a3];
  }
}

@end