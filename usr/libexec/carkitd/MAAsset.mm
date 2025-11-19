@interface MAAsset
+ (id)cr_highestContentVersionAssetInAssets:(id)a3;
+ (id)cr_installedAssetsInAssets:(id)a3;
+ (id)cr_themeAsset_filteredAssets:(id)a3 matchingAssetIdentifier:(id)a4 maximumSDKVersion:(id)a5 maximumCompatibilityVersion:(id)a6;
+ (id)cr_themeAsset_highestVersionAssetInAssets:(id)a3;
- (id)cr_assetVersion;
- (id)cr_numberForAttributesKey:(id)a3;
- (id)cr_stringForAttributesKey:(id)a3;
- (id)cr_themeAsset_accessoryContentVersion;
- (id)cr_themeAsset_iOSContentVersion;
- (int64_t)cr_contentVersionCompare:(id)a3;
- (int64_t)cr_themeAsset_versionCompare:(id)a3;
@end

@implementation MAAsset

+ (id)cr_highestContentVersionAssetInAssets:(id)a3
{
  v3 = [a1 cr_contentVersionSortedAssetsFromAssets:a3];
  v4 = [v3 lastObject];

  return v4;
}

- (int64_t)cr_contentVersionCompare:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self cr_contentVersion];
  v6 = [v4 cr_contentVersion];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cr_installedAssetsInAssets:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&stru_1000DFD88];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)cr_stringForAttributesKey:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self attributes];
  v6 = [v5 objectForKey:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cr_numberForAttributesKey:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self attributes];
  v6 = [v5 objectForKey:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cr_themeAsset_iOSContentVersion
{
  v2 = [(MAAsset *)self cr_stringForAttributesKey:@"iOSContentVersion"];
  if (!v2)
  {
    v2 = @"0";
  }

  return v2;
}

- (id)cr_themeAsset_accessoryContentVersion
{
  v3 = [(MAAsset *)self cr_numberForAttributesKey:@"AccessoryContentVersion"];
  if (!v3)
  {
    v4 = [(MAAsset *)self cr_numberForAttributesKey:@"_ContentVersion"];
    v3 = v4;
    if (v4)
    {
      v5 = v4;
    }
  }

  return v3;
}

- (id)cr_assetVersion
{
  v3 = [(MAAsset *)self cr_themeAsset_assetIdentifier];
  if (v3)
  {
    v4 = [(MAAsset *)self cr_themeAsset_iOSContentVersion];
    if (!v4)
    {
      v5 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100089D40(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v4 = @"0";
    }

    v13 = [(MAAsset *)self cr_themeAsset_accessoryContentVersion];
    if (!v13)
    {
      v14 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100089D78(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v13 = &off_1000E8230;
    }

    v22 = [[CARThemeAssetVersion alloc] initWithIdentifier:v3 iOSContentVersion:v4 accessoryContentVersion:v13];
  }

  else
  {
    v4 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100089DB0(v4, v23, v24, v25, v26, v27, v28, v29);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)cr_themeAsset_highestVersionAssetInAssets:(id)a3
{
  v3 = [a1 cr_themeAsset_versionSortedAssetsFromAssets:a3];
  v4 = [v3 lastObject];

  return v4;
}

- (int64_t)cr_themeAsset_versionCompare:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self cr_assetVersion];
  v6 = [v4 cr_assetVersion];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)cr_themeAsset_filteredAssets:(id)a3 matchingAssetIdentifier:(id)a4 maximumSDKVersion:(id)a5 maximumCompatibilityVersion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = &__NSArray0__struct;
  if (a3 && v9)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007565C;
    v16[3] = &unk_1000E01D8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v13 = a3;
    v14 = [NSPredicate predicateWithBlock:v16];
    v12 = [v13 filteredArrayUsingPredicate:v14];
  }

  return v12;
}

@end