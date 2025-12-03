@interface SESViewInformation
+ (id)withViewName:(id)name currentTLK:(id)k tlkShares:(id)shares previousTLKs:(id)ks;
- (NSDictionary)dumpState;
@end

@implementation SESViewInformation

+ (id)withViewName:(id)name currentTLK:(id)k tlkShares:(id)shares previousTLKs:(id)ks
{
  nameCopy = name;
  kCopy = k;
  sharesCopy = shares;
  ksCopy = ks;
  v14 = objc_opt_new();
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 8), name);
    objc_storeStrong(v15 + 2, k);
    objc_storeStrong(v15 + 3, shares);
    objc_storeStrong(v15 + 4, ks);
  }

  return v15;
}

- (NSDictionary)dumpState
{
  selfCopy = self;
  v3 = sub_100289300();

  return v3;
}

@end