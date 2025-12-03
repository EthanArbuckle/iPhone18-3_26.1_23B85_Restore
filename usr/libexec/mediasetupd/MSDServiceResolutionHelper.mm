@interface MSDServiceResolutionHelper
+ (id)createMSResolutionInfoObject:(id)object homeUserID:(id)d sharedUserID:(id)iD;
@end

@implementation MSDServiceResolutionHelper

+ (id)createMSResolutionInfoObject:(id)object homeUserID:(id)d sharedUserID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  objectCopy = object;
  v10 = [MSDPublicDBManager getCachedPublicInfoForBundleID:objectCopy];
  v11 = [MSServiceAppInfo alloc];
  serviceName = [v10 serviceName];
  v13 = [v11 initWithServiceName:serviceName serviceBundleID:objectCopy];

  bundleIDS = [v10 bundleIDS];
  v15 = [bundleIDS copy];
  [v13 setAlternateBundleIDS:v15];

  v16 = [[MSUserAccountInfo alloc] initWithHomeUserID:dCopy sharedUserID:iDCopy];
  v17 = [[MSServiceResolutionInfo alloc] initWithServiceAppInfo:v13 userAccountInfo:v16];

  return v17;
}

@end