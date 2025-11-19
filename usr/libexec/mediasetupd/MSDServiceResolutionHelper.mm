@interface MSDServiceResolutionHelper
+ (id)createMSResolutionInfoObject:(id)a3 homeUserID:(id)a4 sharedUserID:(id)a5;
@end

@implementation MSDServiceResolutionHelper

+ (id)createMSResolutionInfoObject:(id)a3 homeUserID:(id)a4 sharedUserID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [MSDPublicDBManager getCachedPublicInfoForBundleID:v9];
  v11 = [MSServiceAppInfo alloc];
  v12 = [v10 serviceName];
  v13 = [v11 initWithServiceName:v12 serviceBundleID:v9];

  v14 = [v10 bundleIDS];
  v15 = [v14 copy];
  [v13 setAlternateBundleIDS:v15];

  v16 = [[MSUserAccountInfo alloc] initWithHomeUserID:v8 sharedUserID:v7];
  v17 = [[MSServiceResolutionInfo alloc] initWithServiceAppInfo:v13 userAccountInfo:v16];

  return v17;
}

@end