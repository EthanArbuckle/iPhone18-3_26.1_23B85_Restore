@interface MREnclosureComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MREnclosureComponentHandler

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MREnclosureComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v6 initWithComponentName:@"Enclosure"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Enclosure"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:16];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_ECL_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_ECL_REPAIR_DESC"];
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceEnclosureStatus"];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000079EC;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EB08 != -1)
  {
    dispatch_once(&qword_10001EB08, block);
  }

  v2 = qword_10001EB00;

  return v2;
}

@end