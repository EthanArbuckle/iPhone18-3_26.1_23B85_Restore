@interface CARThemeAsset
+ (id)themeAssetFromAsset:(id)asset;
@end

@implementation CARThemeAsset

+ (id)themeAssetFromAsset:(id)asset
{
  assetCopy = asset;
  cr_assetVersion = [assetCopy cr_assetVersion];
  getLocalFileUrl = [assetCopy getLocalFileUrl];
  v6 = getLocalFileUrl;
  if (cr_assetVersion && getLocalFileUrl)
  {
    v7 = [[CARThemeAsset alloc] initWithBaseURL:getLocalFileUrl version:cr_assetVersion];
  }

  else
  {
    v8 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100089184(assetCopy);
    }

    v7 = 0;
  }

  return v7;
}

@end