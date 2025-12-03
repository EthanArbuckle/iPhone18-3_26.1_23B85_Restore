@interface MRBasebandComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRBasebandComponentHandler)init;
- (id)_init;
@end

@implementation MRBasebandComponentHandler

- (MRBasebandComponentHandler)init
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
  v9.receiver = self;
  v9.super_class = MRBasebandComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v9 initWithComponentName:@"Baseband"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Baseband"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:5];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"CELLULAR_FOLLOWUP_TITLE"];
    deviceClass = [(MRBaseComponentHandler *)v3 deviceClass];
    if (deviceClass == 3)
    {
      v6 = @"BASEBAND_POPUP_INFO_IPAD";
    }

    else
    {
      v6 = @"BASEBAND_POPUP_INFO";
    }

    if (deviceClass == 3)
    {
      v7 = @"BASEBAND_FOLLOWUP_INFO_IPAD";
    }

    else
    {
      v7 = @"BASEBAND_FOLLOWUP_INFO";
    }

    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:v6];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:v7];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
    [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008AE8;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EB38 != -1)
  {
    dispatch_once(&qword_10001EB38, block);
  }

  v2 = qword_10001EB30;

  return v2;
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [self handleComponentSUCase:@"hasDisplayedFollowupForSHCBaseband" lastAUthCheckBuildVersion:@"LastBasebandAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.BasebandRepair" queryString:@"Baseband" suCasekey:@"SUcaseForBaseband" startBuildVersion:@"19F1" componentAuth:v3];
}

@end