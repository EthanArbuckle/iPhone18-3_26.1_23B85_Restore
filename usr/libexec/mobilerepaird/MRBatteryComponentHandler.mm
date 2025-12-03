@interface MRBatteryComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRBatteryComponentHandler)init;
- (id)_init;
@end

@implementation MRBatteryComponentHandler

- (MRBatteryComponentHandler)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("sharedSingleton");
  v7 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of -%@.", v5, v6, v7);

  return 0;
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = MRBatteryComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v23 init];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Battery"];
    [(MRBaseComponentHandler *)v3 setComponentFollowupClientID:@"com.apple.mobilerepair.BatteryRepair"];
    v4 = +[NSUserDefaults groupStandardUserDefaults];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v3, "setIsSUCaseForComponent:", [v4 BOOLForKey:@"SUcaseForBattery"]);

    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_BATTERY_NOTIF_TEXT"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"IMPORTANT_BATTERY_MESSAGE"];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_BATTERY_MESSAGE"];
    [(MRBaseComponentHandler *)v3 setComponentSUCaseKey:@"SUcaseForBattery"];
    v5 = objc_opt_new();
    -[MRBaseComponentHandler setNotifyServer:](v3, "setNotifyServer:", [v5 deviceSupportsRepairBootIntent] ^ 1);

    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_BATTERY_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_BATTERY_REPAIR_DESC"];
    componentFollowupClientID = [(MRBaseComponentHandler *)v3 componentFollowupClientID];
    v7 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v3 setFinishRepairKey:v7];

    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:[(MRBaseComponentHandler *)v3 isSUCaseForComponent]^ 1];
    v8 = [NSString stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/Battery"];
    v9 = [NSURL URLWithString:v8];
    [(MRBaseComponentHandler *)v3 setLinkedSensitiveURL:v9];

    [(MRBaseComponentHandler *)v3 setComponentUnLockCheckCountKey:@"unlockCheckCountForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentRetriggerCountKey:@"retriggerCheckCountForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentLastCheckTimeKey:@"lastCheckTimeForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentHasDisplayedFollowUpKey:@"hasDisplayedFollowupForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentHasNotifiedServerKey:@"hasNotifiedServerForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentUnlockCheckerActivityName:@"com.apple.mobilerepair.batteryunlockchecker"];
    [(MRBaseComponentHandler *)v3 setComponentNtwkActivityName:@"com.apple.mobilerepair.batterynotifyserver"];
    [(MRBaseComponentHandler *)v3 setComponentId:0];
    [(MRBaseComponentHandler *)v3 setComponentDataCollectionPresentedKey:@"dataCollectionNoticePresentedForPartsAndService"];
    [(MRBaseComponentHandler *)v3 setComponentFirstUIDisplayedTimeKey:@"firstUIDisplayedTimeForBattery"];
    [(MRBaseComponentHandler *)v3 setLastKnownComponentIdentifierKey:@"lastKnownIDForBattery"];
    componentName = [(MRBaseComponentHandler *)v3 componentName];
    v11 = [CRFDRBaseDeviceHandler copySealingManifestDataInstanceForComponent:componentName];
    [(MRBaseComponentHandler *)v3 setLastKnownComponentIdentifierValue:v11];

    v12 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v12];

    v13 = +[NSUserDefaults groupStandardUserDefaults];
    v14 = [v13 BOOLForKey:@"overrideDisableUIForBattery"];

    componentFollowupClientID2 = [(MRBaseComponentHandler *)v3 componentFollowupClientID];
    v16 = [@"/var/mobile/Library/Preferences/" stringByAppendingString:componentFollowupClientID2];
    v17 = [v16 stringByAppendingString:@".plist"];
    [(MRBaseComponentHandler *)v3 setStateFilePath:v17];

    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceBatteryStatus"];
    if (MGGetProductType() == 2159747553)
    {
      v18 = +[(MRBaseComponentHandler *)MRBatteryComponentHandler];
      v19 = [v18 containsString:@"EVT"];

      if (!(v14 & 1 | ((v19 & 1) == 0)))
      {
        v20 = handleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Disabling UI for D79 EVT", v22, 2u);
        }

        [(MRBaseComponentHandler *)v3 setDisableUIForComponent:1];
      }
    }
  }

  return v3;
}

+ (void)handleSUCase
{
  if ([CRDeviceMap supportRepair:1024])
  {
    v3 = objc_opt_new();
    [self handleComponentSUCase:@"hasDisplayedFollowupForBattery" lastAUthCheckBuildVersion:@"LastBatteryAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.BatteryRepair" queryString:@"Battery" suCasekey:@"SUcaseForBattery" startBuildVersion:@"17A800" componentAuth:v3];
  }
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009440;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EB58 != -1)
  {
    dispatch_once(&qword_10001EB58, block);
  }

  v2 = qword_10001EB50;

  return v2;
}

@end