@interface RPClientBuildHelper
+ (void)addOrUpdateIdentityWithClient:(id)a3 identity:(id)a4 completion:(id)a5;
@end

@implementation RPClientBuildHelper

+ (void)addOrUpdateIdentityWithClient:(id)a3 identity:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BC7CC;
  v8[3] = &unk_1008CDE10;
  v9 = a5;
  v7 = v9;
  [a3 addOrUpdateIdentity:a4 source:3 completion:v8];
}

@end