@interface MRCoverGlassComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MRCoverGlassComponentHandler

- (id)_init
{
  v7.receiver = self;
  v7.super_class = MRCoverGlassComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v7 initWithComponentName:@"CoverGlass"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"CoverGlass"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:15];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_CG_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_CG_REPAIR_DESC"];
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceCoverGlassStatus"];
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
  block[2] = sub_1000034B8;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EAF8 != -1)
  {
    dispatch_once(&qword_10001EAF8, block);
  }

  v2 = qword_10001EAF0;

  return v2;
}

@end