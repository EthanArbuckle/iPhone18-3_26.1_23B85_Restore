@interface RPClientBuildHelper
+ (void)addOrUpdateIdentityWithClient:(id)client identity:(id)identity completion:(id)completion;
@end

@implementation RPClientBuildHelper

+ (void)addOrUpdateIdentityWithClient:(id)client identity:(id)identity completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BC7CC;
  v8[3] = &unk_1008CDE10;
  completionCopy = completion;
  v7 = completionCopy;
  [client addOrUpdateIdentity:identity source:3 completion:v8];
}

@end