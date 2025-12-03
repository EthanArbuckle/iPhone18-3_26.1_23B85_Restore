@interface MAAsset
+ (id)cr_highestContentVersionAssetInAssets:(id)assets;
+ (id)cr_installedAssetsInAssets:(id)assets;
+ (id)cr_themeAsset_filteredAssets:(id)assets matchingAssetIdentifier:(id)identifier maximumSDKVersion:(id)version maximumCompatibilityVersion:(id)compatibilityVersion;
+ (id)cr_themeAsset_highestVersionAssetInAssets:(id)assets;
- (id)cr_assetVersion;
- (id)cr_numberForAttributesKey:(id)key;
- (id)cr_stringForAttributesKey:(id)key;
- (id)cr_themeAsset_accessoryContentVersion;
- (id)cr_themeAsset_iOSContentVersion;
- (int64_t)cr_contentVersionCompare:(id)compare;
- (int64_t)cr_themeAsset_versionCompare:(id)compare;
@end

@implementation MAAsset

+ (id)cr_highestContentVersionAssetInAssets:(id)assets
{
  v3 = [self cr_contentVersionSortedAssetsFromAssets:assets];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (int64_t)cr_contentVersionCompare:(id)compare
{
  compareCopy = compare;
  cr_contentVersion = [(MAAsset *)self cr_contentVersion];
  cr_contentVersion2 = [compareCopy cr_contentVersion];

  if (cr_contentVersion && cr_contentVersion2)
  {
    v7 = [cr_contentVersion compare:cr_contentVersion2];
  }

  else if (cr_contentVersion2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cr_installedAssetsInAssets:(id)assets
{
  assetsCopy = assets;
  v4 = [NSPredicate predicateWithBlock:&stru_1000DFD88];
  v5 = [assetsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)cr_stringForAttributesKey:(id)key
{
  keyCopy = key;
  attributes = [(MAAsset *)self attributes];
  v6 = [attributes objectForKey:keyCopy];

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

- (id)cr_numberForAttributesKey:(id)key
{
  keyCopy = key;
  attributes = [(MAAsset *)self attributes];
  v6 = [attributes objectForKey:keyCopy];

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
  cr_themeAsset_assetIdentifier = [(MAAsset *)self cr_themeAsset_assetIdentifier];
  if (cr_themeAsset_assetIdentifier)
  {
    cr_themeAsset_iOSContentVersion = [(MAAsset *)self cr_themeAsset_iOSContentVersion];
    if (!cr_themeAsset_iOSContentVersion)
    {
      v5 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100089D40(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      cr_themeAsset_iOSContentVersion = @"0";
    }

    cr_themeAsset_accessoryContentVersion = [(MAAsset *)self cr_themeAsset_accessoryContentVersion];
    if (!cr_themeAsset_accessoryContentVersion)
    {
      v14 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100089D78(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      cr_themeAsset_accessoryContentVersion = &off_1000E8230;
    }

    v22 = [[CARThemeAssetVersion alloc] initWithIdentifier:cr_themeAsset_assetIdentifier iOSContentVersion:cr_themeAsset_iOSContentVersion accessoryContentVersion:cr_themeAsset_accessoryContentVersion];
  }

  else
  {
    cr_themeAsset_iOSContentVersion = CarThemeAssetsLogging();
    if (os_log_type_enabled(cr_themeAsset_iOSContentVersion, OS_LOG_TYPE_ERROR))
    {
      sub_100089DB0(cr_themeAsset_iOSContentVersion, v23, v24, v25, v26, v27, v28, v29);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)cr_themeAsset_highestVersionAssetInAssets:(id)assets
{
  v3 = [self cr_themeAsset_versionSortedAssetsFromAssets:assets];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (int64_t)cr_themeAsset_versionCompare:(id)compare
{
  compareCopy = compare;
  cr_assetVersion = [(MAAsset *)self cr_assetVersion];
  cr_assetVersion2 = [compareCopy cr_assetVersion];

  v7 = [cr_assetVersion compare:cr_assetVersion2];
  return v7;
}

+ (id)cr_themeAsset_filteredAssets:(id)assets matchingAssetIdentifier:(id)identifier maximumSDKVersion:(id)version maximumCompatibilityVersion:(id)compatibilityVersion
{
  identifierCopy = identifier;
  versionCopy = version;
  compatibilityVersionCopy = compatibilityVersion;
  v12 = &__NSArray0__struct;
  if (assets && identifierCopy)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007565C;
    v16[3] = &unk_1000E01D8;
    v17 = identifierCopy;
    v18 = versionCopy;
    v19 = compatibilityVersionCopy;
    assetsCopy = assets;
    v14 = [NSPredicate predicateWithBlock:v16];
    v12 = [assetsCopy filteredArrayUsingPredicate:v14];
  }

  return v12;
}

@end