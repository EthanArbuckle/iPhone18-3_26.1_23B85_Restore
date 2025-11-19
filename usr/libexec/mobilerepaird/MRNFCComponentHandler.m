@interface MRNFCComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRNFCComponentHandler)init;
- (id)_init;
@end

@implementation MRNFCComponentHandler

- (MRNFCComponentHandler)init
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
  v8.super_class = MRNFCComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v8 initWithComponentName:@"NFC"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"NFC"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:6];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"NFC_FOLLOWUP_TITLE"];
    if ([(MRBaseComponentHandler *)v3 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"NFC_FOLLOWUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"NFC_POPUP_INFO_IPAD"];
      v5 = objc_opt_new();
      v6 = [v5 isSupportedIPad];

      if ((v6 & 1) == 0)
      {
        [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
        [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
        [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
        [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
      }
    }

    else
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"NFC_FOLLOWUP_INFO"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"NFC_POPUP_INFO"];
    }
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D8F0;
  block[3] = &unk_100018610;
  block[4] = a1;
  if (qword_10001EB80 != -1)
  {
    dispatch_once(&qword_10001EB80, block);
  }

  v2 = qword_10001EB78;

  return v2;
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [a1 handleComponentSUCase:@"hasDisplayedFollowupForSHCNFC" lastAUthCheckBuildVersion:@"LastNFCAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.NFCRepair" queryString:@"NFC" suCasekey:@"SUcaseForNFC" startBuildVersion:@"19F1" componentAuth:v3];
}

@end