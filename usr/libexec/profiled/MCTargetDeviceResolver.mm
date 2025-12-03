@interface MCTargetDeviceResolver
+ (id)stringForWatchAvailability:(unint64_t)availability;
+ (unint64_t)watchAvailability;
+ (void)_showPromptForHomePodAndWatchWithCompletionBlock:(id)block;
+ (void)_showPromptForHomePodWithCompletionBlock:(id)block;
+ (void)_showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:(id)block;
+ (void)_showPromptForWatchWithCompletionBlock:(id)block;
+ (void)showResolutionPromptWithWatchOption:(BOOL)option homePodOption:(BOOL)podOption completionBlock:(id)block;
@end

@implementation MCTargetDeviceResolver

+ (unint64_t)watchAvailability
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  if (firstObject)
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
          bOOLValue = [v15 BOOLValue];

          if (bOOLValue)
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

+ (void)showResolutionPromptWithWatchOption:(BOOL)option homePodOption:(BOOL)podOption completionBlock:(id)block
{
  podOptionCopy = podOption;
  optionCopy = option;
  blockCopy = block;
  watchAvailability = [self watchAvailability];
  isHomePodAvailable = [self isHomePodAvailable];
  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [MCTargetDeviceResolver stringForWatchAvailability:watchAvailability];
    v17[0] = 67240962;
    v17[1] = optionCopy;
    v18 = 2114;
    v19 = v13;
    v20 = 1026;
    v21 = podOptionCopy;
    v22 = 1026;
    v23 = isHomePodAvailable;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver state: Watch Valid? %{public}d | Watch State? %{public}@ | HomePod Valid? %{public}d | HomePod Available? %{public}d", v17, 0x1Eu);
  }

  if (watchAvailability >= 2)
  {
    optionCopy = 0;
  }

  v14 = isHomePodAvailable & podOptionCopy;
  v15 = _MCLogObjects[0];
  v16 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (optionCopy && v14)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone, Watch, and HomePod", v17, 2u);
    }

    [self _showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:blockCopy];
  }

  else if (v14)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone and HomePod", v17, 2u);
    }

    [self _showPromptForHomePodWithCompletionBlock:blockCopy];
  }

  else if (optionCopy)
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver displaying prompt for iPhone and Watch", v17, 2u);
    }

    [self _showPromptForWatchWithCompletionBlock:blockCopy];
  }

  else
  {
    if (v16)
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TargetDeviceResolver skipping prompt because only this device is available", v17, 2u);
    }

    blockCopy[2](blockCopy, +[MCProfile thisDeviceType]);
  }
}

+ (void)_showPromptForThisDeviceAndOtherDevicesWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  v14 = blockCopy;
  selfCopy = self;
  v11 = blockCopy;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:v9 otherButtonText:v10 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForHomePodAndWatchWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[MCUserNotificationManager sharedManager];
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedString();
  _homepodText = [self _homepodText];
  v10 = MCLocalizedString();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F7C8;
  v13[3] = &unk_10011C210;
  v14 = blockCopy;
  v11 = blockCopy;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:_homepodText otherButtonText:v10 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForHomePodWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[MCUserNotificationManager sharedManager];
  v6 = MCLocalizedString();
  v7 = MCLocalizedString();
  v8 = MCLocalizedString();
  v9 = MCLocalizedStringByDevice();
  _homepodText = [self _homepodText];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F964;
  v13[3] = &unk_10011C210;
  v14 = blockCopy;
  v11 = blockCopy;
  BYTE2(v12) = 1;
  LOWORD(v12) = 0;
  [v5 displayUserNotificationWithIdentifier:0 title:v6 message:v7 defaultButtonText:v8 alternateButtonText:v9 otherButtonText:_homepodText textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v12 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v13 assertion:? completionBlock:?];
}

+ (void)_showPromptForWatchWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  v13 = blockCopy;
  v10 = blockCopy;
  BYTE2(v11) = 1;
  LOWORD(v11) = 0;
  [v4 displayUserNotificationWithIdentifier:0 title:v5 message:v6 defaultButtonText:v7 alternateButtonText:v8 otherButtonText:v9 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v11 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v12 assertion:? completionBlock:?];
}

+ (id)stringForWatchAvailability:(unint64_t)availability
{
  if (availability > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_10011C230[availability];
  }
}

@end