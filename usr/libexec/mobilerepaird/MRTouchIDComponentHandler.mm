@interface MRTouchIDComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MRTouchIDComponentHandler

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MRTouchIDComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v8 initWithComponentName:@"TouchID"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"TouchID"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:12];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"TOUCHID_FOLLOWUP_TITLE"];
    if ([(MRBaseComponentHandler *)v3 deviceClass]== 3 || [(MRBaseComponentHandler *)v3 deviceClass]== 9)
    {
      [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
      [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_TOUCHID_REPAIR_TITLE"];
      [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_TOUCHID_REPAIR_DESC_IPAD"];
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"TOUCHID_FOLLOWUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"TOUCHID_POPUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:1];
      if ([(MRBaseComponentHandler *)v3 deviceClass]== 9)
      {
        goto LABEL_10;
      }

      if ([(MRBaseComponentHandler *)v3 deviceClass]!= 3)
      {
        goto LABEL_10;
      }

      v5 = objc_opt_new();
      v6 = [v5 isSupportedIPad];

      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"TOUCHID_FOLLOWUP_INFO"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"TOUCHID_POPUP_INFO"];
    }

    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
    [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
LABEL_10:
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceTouchIDStatus"];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B8C;
  block[3] = &unk_100018610;
  block[4] = a1;
  if (qword_10001EA78 != -1)
  {
    dispatch_once(&qword_10001EA78, block);
  }

  v2 = qword_10001EA70;

  return v2;
}

@end