@interface MRFaceIDComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (id)_init;
@end

@implementation MRFaceIDComponentHandler

- (id)_init
{
  v12.receiver = self;
  v12.super_class = MRFaceIDComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v12 initWithComponentName:@"FaceID"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"FaceID"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:10];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    v5 = objc_opt_new();
    v6 = [v5 locKeyWithFormat:@"FINISH_%@_REPAIR_TITLE" component:1027];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:v6];

    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"FACEID_FOLLOWUP_TITLE"];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:1];
    if ([(MRBaseComponentHandler *)v3 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_FACEID_REPAIR_DESC_IPAD"];
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"FACEID_FOLLOWUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"FACEID_POPUP_INFO_IPAD"];
      v7 = objc_opt_new();
      isSupportedIPad = [v7 isSupportedIPad];

      if ((isSupportedIPad & 1) == 0)
      {
        [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
        [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
        [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
        [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
      }
    }

    else
    {
      v9 = objc_opt_new();
      v10 = [v9 locKeyWithFormat:@"FINISH_%@_REPAIR_DESC" component:1027];
      [(MRBaseComponentHandler *)v3 setFinishRepairMessage:v10];

      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"FACEID_FOLLOWUP_INFO"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"FACEID_POPUP_INFO"];
    }

    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceFaceIDStatus"];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E004;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EB90 != -1)
  {
    dispatch_once(&qword_10001EB90, block);
  }

  v2 = qword_10001EB88;

  return v2;
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [self handleComponentSUCase:@"hasDisplayedFollowupForSHCFaceID" lastAUthCheckBuildVersion:@"LastFaceIDAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.FaceIDRepair" queryString:@"FaceID" suCasekey:@"SUcaseForFaceID" startBuildVersion:@"19F1" componentAuth:v3];
}

@end