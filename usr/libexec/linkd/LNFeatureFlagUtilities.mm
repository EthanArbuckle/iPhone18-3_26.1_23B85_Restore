@interface LNFeatureFlagUtilities
+ (BOOL)featureEnabledWithDomain:(id)domain feature:(id)feature;
+ (BOOL)featureEnabledWithDomainFeaturePair:(id)pair;
@end

@implementation LNFeatureFlagUtilities

+ (BOOL)featureEnabledWithDomainFeaturePair:(id)pair
{
  v3 = [pair componentsSeparatedByString:@"/"];
  firstObject = [v3 firstObject];
  lastObject = [v3 lastObject];
  v6 = lastObject;
  if (firstObject)
  {
    v7 = lastObject == 0;
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
    v8 = [LNFeatureFlagUtilities featureEnabledWithDomain:firstObject feature:lastObject];
  }

  return v8;
}

+ (BOOL)featureEnabledWithDomain:(id)domain feature:(id)feature
{
  domainCopy = domain;
  featureCopy = feature;
  uTF8String = [domain UTF8String];
  uTF8String2 = [featureCopy UTF8String];

  return __os_feature_enabled_impl(uTF8String, uTF8String2);
}

@end