@interface MRDisplayComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRDisplayComponentHandler)init;
- (id)_init;
@end

@implementation MRDisplayComponentHandler

- (MRDisplayComponentHandler)init
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
  v20.receiver = self;
  v20.super_class = MRDisplayComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v20 init];
  if (v2)
  {
    v3 = +[NSUserDefaults groupStandardUserDefaults];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v2, "setIsSUCaseForComponent:", [v3 BOOLForKey:@"SUcaseForDisplay"]);

    [(MRBaseComponentHandler *)v2 setComponentName:@"TouchController"];
    [(MRBaseComponentHandler *)v2 setComponentFollowupClientID:@"com.apple.mobilerepair.DisplayRepair"];
    [(MRBaseComponentHandler *)v2 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_DISPLAY_NOTIF_TEXT"];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationTitle:@"IMPORTANT_DISPLAY_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_DISPLAY_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setComponentSUCaseKey:@"SUcaseForDisplay"];
    [(MRBaseComponentHandler *)v2 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v2 setDisplayModalPopup:[(MRBaseComponentHandler *)v2 isSUCaseForComponent]^ 1];
    v4 = [NSString stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/TouchController"];
    v5 = [NSURL URLWithString:v4];
    [(MRBaseComponentHandler *)v2 setLinkedSensitiveURL:v5];

    [(MRBaseComponentHandler *)v2 setFinishRepairTitle:@"FINISH_DISPLAY_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_DISPLAY_REPAIR_DESC"];
    componentFollowupClientID = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v7 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v2 setFinishRepairKey:v7];

    [(MRBaseComponentHandler *)v2 setComponentUnLockCheckCountKey:@"unlockCheckCountForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentRetriggerCountKey:@"retriggerCheckCountForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentLastCheckTimeKey:@"lastCheckTimeForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentHasDisplayedFollowUpKey:@"hasDisplayedFollowupForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentUnlockCheckerActivityName:@"com.apple.mobilerepair.displayunlockchecker"];
    [(MRBaseComponentHandler *)v2 setComponentNtwkActivityName:@"com.apple.mobilerepair.displaynotifyServer"];
    [(MRBaseComponentHandler *)v2 setComponentId:1];
    [(MRBaseComponentHandler *)v2 setComponentHasNotifiedServerKey:@"hasNotifiedServerForDisplay"];
    v8 = objc_opt_new();
    -[MRBaseComponentHandler setNotifyServer:](v2, "setNotifyServer:", [v8 deviceSupportsRepairBootIntent] ^ 1);

    [(MRBaseComponentHandler *)v2 setComponentNtwkActivityName:@"com.apple.mobilerepair.displaynotifyServer"];
    [(MRBaseComponentHandler *)v2 setComponentDataCollectionPresentedKey:@"dataCollectionNoticePresentedForPartsAndService"];
    [(MRBaseComponentHandler *)v2 setComponentFirstUIDisplayedTimeKey:@"firstUIDisplayedTimeForDisplay"];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierKey:@"lastKnownIDForDisplay"];
    componentName = [(MRBaseComponentHandler *)v2 componentName];
    v10 = [CRFDRBaseDeviceHandler copySealingManifestDataInstanceForComponent:componentName];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierValue:v10];

    v11 = objc_opt_new();
    [(MRBaseComponentHandler *)v2 setComponentAuthHandler:v11];

    componentFollowupClientID2 = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v13 = [@"/var/mobile/Library/Preferences/" stringByAppendingString:componentFollowupClientID2];
    v14 = [v13 stringByAppendingString:@".plist"];
    [(MRBaseComponentHandler *)v2 setStateFilePath:v14];

    [(MRBaseComponentHandler *)v2 setComponentForceKey:@"ForceDisplayStatus"];
    v19.receiver = v2;
    v19.super_class = MRDisplayComponentHandler;
    if ([(MRBaseComponentHandler *)&v19 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_DISPLAY_REPAIR_DESC_IPAD"];
      [(MRBaseComponentHandler *)v2 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_DISPLAY_MESSAGE_IPAD"];
      [(MRBaseComponentHandler *)v2 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_DISPLAY_NOTIF_TEXT"];
      v15 = objc_opt_new();
      isSupportedIPad = [v15 isSupportedIPad];

      if ((isSupportedIPad & 1) == 0)
      {
        [(MRBaseComponentHandler *)v2 setUnlockCheckActivityRequired:0];
        [(MRBaseComponentHandler *)v2 setDisplayNotification:0];
        [(MRBaseComponentHandler *)v2 setDisplayModalPopup:0];
        [(MRBaseComponentHandler *)v2 setDisplayFollowup:0];
      }
    }

    else
    {
      v18.receiver = v2;
      v18.super_class = MRDisplayComponentHandler;
      [(MRBaseComponentHandler *)&v18 deviceClass];
    }
  }

  return v2;
}

+ (void)handleSUCase
{
  if ([CRDeviceMap isStrongComponent:1025])
  {
    v3 = objc_opt_new();
    [self handleComponentSUCase:@"hasDisplayedFollowupForDisplay" lastAUthCheckBuildVersion:@"LastDisplayAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.DisplayRepair" queryString:@"TouchController" suCasekey:@"SUcaseForDisplay" startBuildVersion:@"17A800" componentAuth:v3];
  }
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E14;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EAC8 != -1)
  {
    dispatch_once(&qword_10001EAC8, block);
  }

  v2 = qword_10001EAC0;

  return v2;
}

@end