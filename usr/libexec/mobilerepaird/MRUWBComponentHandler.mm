@interface MRUWBComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRUWBComponentHandler)init;
- (id)_init;
@end

@implementation MRUWBComponentHandler

- (MRUWBComponentHandler)init
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
  v8.receiver = self;
  v8.super_class = MRUWBComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v8 initWithComponentName:@"UWB"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"UWB"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:7];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"UWB_FOLLOWUP_TITLE"];
    if ([(MRBaseComponentHandler *)v3 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UWB_FOLLOWUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UWB_POPUP_INFO_IPAD"];
      v5 = objc_opt_new();
      isSupportedIPad = [v5 isSupportedIPad];

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
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UWB_FOLLOWUP_INFO"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UWB_POPUP_INFO"];
    }
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E9C;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EA88 != -1)
  {
    dispatch_once(&qword_10001EA88, block);
  }

  v2 = qword_10001EA80;

  return v2;
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [self handleComponentSUCase:@"hasDisplayedFollowupForSHCUWB" lastAUthCheckBuildVersion:@"LastUWBAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.UWBRepair" queryString:@"UWB" suCasekey:@"SUcaseForUWB" startBuildVersion:@"19F1" componentAuth:v3];
}

@end