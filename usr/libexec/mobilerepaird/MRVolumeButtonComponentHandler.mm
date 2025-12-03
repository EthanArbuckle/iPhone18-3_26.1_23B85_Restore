@interface MRVolumeButtonComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MRVolumeButtonComponentHandler

- (id)_init
{
  v7.receiver = self;
  v7.super_class = MRVolumeButtonComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v7 initWithComponentName:@"VolumeButton"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"VolumeButton"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:14];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_VB_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_VB_REPAIR_DESC"];
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceVolumeButtonStatus"];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:1];
    v5 = ZhuGeCopyValue();
    [(MRBaseComponentHandler *)v3 setLastKnownComponentIdentifierValue:v5];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032AC;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EAE8 != -1)
  {
    dispatch_once(&qword_10001EAE8, block);
  }

  v2 = qword_10001EAE0;

  return v2;
}

@end