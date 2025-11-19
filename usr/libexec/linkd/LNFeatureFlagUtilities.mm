@interface LNFeatureFlagUtilities
+ (BOOL)featureEnabledWithDomain:(id)a3 feature:(id)a4;
+ (BOOL)featureEnabledWithDomainFeaturePair:(id)a3;
@end

@implementation LNFeatureFlagUtilities

+ (BOOL)featureEnabledWithDomainFeaturePair:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  v4 = [v3 firstObject];
  v5 = [v3 lastObject];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [LNFeatureFlagUtilities featureEnabledWithDomain:v4 feature:v5];
  }

  return v8;
}

+ (BOOL)featureEnabledWithDomain:(id)a3 feature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  return __os_feature_enabled_impl(v8, v9);
}

@end