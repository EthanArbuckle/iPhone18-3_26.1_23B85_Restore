@interface MOEventBundleSourceTypes
+ (id)all;
@end

@implementation MOEventBundleSourceTypes

+ (id)all
{
  if (all_onceToken != -1)
  {
    +[MOEventBundleSourceTypes all];
  }

  v3 = all_allowableSourceTypes;

  return v3;
}

void __31__MOEventBundleSourceTypes_all__block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = MOEventBundleSourceTypeContact[0];
  v5[1] = MOEventBundleSourceTypeMedia[0];
  v5[2] = MOEventBundleSourceTypePeopleContext[0];
  v5[3] = MOEventBundleSourceTypePhoto[0];
  v5[4] = MOEventBundleSourceTypeStateOfMind[0];
  v5[5] = MOEventBundleSourceTypeReflectionPrompt[0];
  v5[6] = MOEventBundleSourceTypeThirdPartyMedia[0];
  v5[7] = MOEventBundleSourceTypeVisitLocation[0];
  v5[8] = MOEventBundleSourceTypeActivity;
  v2 = [NSArray arrayWithObjects:v5 count:9];
  v3 = [v1 initWithArray:v2];
  v4 = all_allowableSourceTypes;
  all_allowableSourceTypes = v3;
}

@end