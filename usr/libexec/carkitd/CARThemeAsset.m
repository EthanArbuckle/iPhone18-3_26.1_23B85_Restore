@interface CARThemeAsset
+ (id)themeAssetFromAsset:(id)a3;
@end

@implementation CARThemeAsset

+ (id)themeAssetFromAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 cr_assetVersion];
  v5 = [v3 getLocalFileUrl];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[CARThemeAsset alloc] initWithBaseURL:v5 version:v4];
  }

  else
  {
    v8 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100089184(v3);
    }

    v7 = 0;
  }

  return v7;
}

@end