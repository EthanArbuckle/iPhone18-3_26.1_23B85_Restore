@interface SESViewInformation
+ (id)withViewName:(id)a3 currentTLK:(id)a4 tlkShares:(id)a5 previousTLKs:(id)a6;
- (NSDictionary)dumpState;
@end

@implementation SESViewInformation

+ (id)withViewName:(id)a3 currentTLK:(id)a4 tlkShares:(id)a5 previousTLKs:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 8), a3);
    objc_storeStrong(v15 + 2, a4);
    objc_storeStrong(v15 + 3, a5);
    objc_storeStrong(v15 + 4, a6);
  }

  return v15;
}

- (NSDictionary)dumpState
{
  v2 = self;
  v3 = sub_100289300();

  return v3;
}

@end