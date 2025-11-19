@interface MRBackGlassComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MRBackGlassComponentHandler

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MRBackGlassComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v6 initWithComponentName:@"BackGlass"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"BackGlass"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:13];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_BG_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_BG_REPAIR_DESC"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"BG_FOLLOWUP_TITLE"];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"BG_FOLLOWUP_INFO"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"BG_POPUP_INFO"];
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceBackGlassStatus"];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:1];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007BFC;
  block[3] = &unk_100018610;
  block[4] = a1;
  if (qword_10001EB18 != -1)
  {
    dispatch_once(&qword_10001EB18, block);
  }

  v2 = qword_10001EB10;

  return v2;
}

@end