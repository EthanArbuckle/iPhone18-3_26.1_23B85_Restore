@interface MSDSignedManifestV7
+ (id)signedManifestFromManifestData:(id)data;
- (BOOL)checkPlatformTypeForAllComponents;
- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range;
- (BOOL)isItemDeviceSettings:(id)settings;
- (BOOL)isPathUnderNonContainerizedContentRoot:(id)root;
- (MSDSignedManifestV7)initWithManifestData:(id)data;
- (id)appIdentifierFromOrderItem:(id)item;
- (id)configurationProfileIdentifierFromOrderItem:(id)item;
- (id)getAppDependecies:(id)dependecies;
- (id)getAppFileSize:(id)size;
- (id)getAppList;
- (id)getAppManifest:(id)manifest;
- (id)getAppPrivacyPermissions:(id)permissions;
- (id)getAppRealSize:(id)size;
- (id)getBackupList;
- (id)getComponentDataList:(id)list;
- (id)getComponentVersion:(id)version;
- (id)getContainerTypeFromComponentName:(id)name;
- (id)getDataComponentRealSizeFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestDataFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestInfoFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsDataFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsInfoFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSharedDataList;
- (id)getStandAlonePackageFileSize:(id)size;
- (id)getStandAlonePackageList;
- (id)getStandAlonePackageRealSize:(id)size;
- (id)getStandAlonePackageVersion:(id)version;
- (id)getSystemAppDataList;
- (id)getSystemAppDependecies:(id)dependecies;
- (id)getSystemAppPrivacyPermissions:(id)permissions;
- (id)getUserDataList;
- (id)mergedBackupManifest:(_NSRange)manifest;
- (id)originServerForBackupManifest:(_NSRange)manifest;
- (id)parseAllFileHash;
- (id)parseSectionForContentRoot:(id)root;
- (id)standAlonePackageIdentifierFromOrderItem:(id)item;
- (int64_t)getAppType:(id)type;
- (void)parseLocaleCode;
- (void)parseNonContainerizedContentRootSet;
@end

@implementation MSDSignedManifestV7

+ (id)signedManifestFromManifestData:(id)data
{
  dataCopy = data;
  v4 = [[MSDSignedManifestV7 alloc] initWithManifestData:dataCopy];

  return v4;
}

- (BOOL)isItemDeviceSettings:(id)settings
{
  v3 = [(MSDSignedManifestV7 *)self getSettingsFromSection:@"BackupData" forIdentifier:settings];
  v4 = v3 != 0;

  return v4;
}

- (id)appIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemApp:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/Apps/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)standAlonePackageIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemStandAlonePackage:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/Packages/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)configurationProfileIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemConfigurationProfile:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/ConfigurationProfiles/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getBackupList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"BackupData"];

  return v3;
}

- (id)getAppDependecies:(id)dependecies
{
  dependeciesCopy = dependecies;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:dependeciesCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Dependencies"];

  return v9;
}

- (id)getSystemAppDependecies:(id)dependecies
{
  dependeciesCopy = dependecies;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"SystemApps"];

  v7 = [v6 objectForKey:dependeciesCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Dependencies"];

  return v9;
}

- (id)getAppPrivacyPermissions:(id)permissions
{
  permissionsCopy = permissions;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:permissionsCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"Info"];

  v9 = [v8 objectForKey:@"AppPrivacyPermissions"];

  return v9;
}

- (id)getSystemAppPrivacyPermissions:(id)permissions
{
  permissionsCopy = permissions;
  getSystemAppDataList = [(MSDSignedManifestV7 *)self getSystemAppDataList];
  v6 = [getSystemAppDataList objectForKeyedSubscript:permissionsCopy];

  v7 = [v6 objectForKeyedSubscript:@"Manifest"];
  v8 = [v7 objectForKeyedSubscript:@"Info"];
  v9 = [v8 objectForKeyedSubscript:@"AppPrivacyPermissions"];

  return v9;
}

- (int64_t)getAppType:(id)type
{
  typeCopy = type;
  v5 = +[MSDPlatform sharedInstance];
  macOS = [v5 macOS];

  if (macOS)
  {
    payload = [(MSDSignedManifest *)self payload];
    v8 = [payload objectForKey:@"Apps"];

    v9 = [v8 objectForKey:typeCopy];

    if (v9)
    {
      v10 = [v8 objectForKey:typeCopy];
      v11 = [v10 objectForKey:@"Manifest"];

      v12 = [v11 objectForKey:@"Info"];
      v13 = [v12 objectForKey:@"AppType"];

      if (v13)
      {
        v14 = [v11 objectForKey:@"Info"];
        v15 = [v14 objectForKey:@"AppType"];

        unsignedIntegerValue = [v15 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0;
      }
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  return unsignedIntegerValue;
}

- (id)getAppFileSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:sizeCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  v10 = [v9 objectForKey:@"Size"];

  return v10;
}

- (id)getAppRealSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:sizeCopy];
  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  if (!v9)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C78D8();
    }

    goto LABEL_12;
  }

  v10 = [v9 objectForKey:@"RealSize"];
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [v9 objectForKey:@"Size"];
  v12 = v11;
  if (!v11)
  {
    sub_1000C7834();
LABEL_12:
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:2 * [v11 unsignedLongLongValue]];
LABEL_5:

LABEL_6:

  return v10;
}

- (id)getStandAlonePackageFileSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Packages"];

  v7 = [v6 objectForKey:sizeCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  v10 = [v9 objectForKey:@"Size"];

  return v10;
}

- (id)getStandAlonePackageRealSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Packages"];

  v7 = [v6 objectForKey:sizeCopy];
  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  if (!v9)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C79F8();
    }

    goto LABEL_12;
  }

  v10 = [v9 objectForKey:@"RealSize"];
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [v9 objectForKey:@"Size"];
  v12 = v11;
  if (!v11)
  {
    sub_1000C7954();
LABEL_12:
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:2 * [v11 unsignedLongLongValue]];
LABEL_5:

LABEL_6:

  return v10;
}

- (id)getDataComponentRealSizeFromSection:(id)section forIdentifier:(id)identifier
{
  sectionCopy = section;
  identifierCopy = identifier;
  v8 = [(MSDSignedManifestV7 *)self getManifestDataFromSection:sectionCopy forIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v25 = identifierCopy;
    v26 = sectionCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [v10 objectForKey:v16];
          v19 = [v18 objectForKey:@"MSDManifestFileAttributes"];

          if (v19)
          {
            fileType = [v19 fileType];
            v21 = [fileType isEqualToString:NSFileTypeRegular];

            if (v21)
            {
              v13 += [v19 fileSize];
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v22 = [NSNumber numberWithUnsignedLongLong:v13];
    identifierCopy = v25;
    sectionCopy = v26;
    v9 = v24;
  }

  else
  {
    sub_1000C7A74();
    v22 = 0;
  }

  return v22;
}

- (id)mergedBackupManifest:(_NSRange)manifest
{
  length = manifest.length;
  location = manifest.location;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25.location = location;
    v25.length = length;
    v7 = NSStringFromRange(v25);
    *buf = 138543362;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Merging manifest item %{public}@", buf, 0xCu);
  }

  v21 = +[NSMutableDictionary dictionary];
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  if (location < location + length)
  {
    do
    {
      v9 = [installationOrder objectAtIndex:location];
      v10 = [v9 substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
      getBackupList = [(MSDSignedManifestV7 *)self getBackupList];
      v12 = [getBackupList objectForKey:v10];
      v13 = [v12 objectForKey:@"Manifest"];
      v14 = [v13 objectForKey:@"Data"];

      if ([(MSDSignedManifestV7 *)self isItemSystemContainerBackup:v10])
      {
        v15 = +[MSDPlatform sharedInstance];
        watchOS = [v15 watchOS];

        v17 = sub_100063A54();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (!watchOS)
        {
          if (v18)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "System container backup only allowed on Watch devices.", buf, 2u);
          }

          goto LABEL_13;
        }

        if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "System container backup found. Start restoring UUID paths...", buf, 2u);
        }

        v19 = [NSString restoreSystemContainerUUIDPathsInDict:v14];

        v14 = v19;
      }

      [v21 addEntriesFromDictionary:v14];
LABEL_13:

      ++location;
      --length;
    }

    while (length);
  }

  return v21;
}

- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    return 0;
  }

  v6 = +[MSDPlatform sharedInstance];
  watchOS = [v6 watchOS];

  if (!watchOS)
  {
    return 0;
  }

  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v9 = installationOrder;
  v10 = location + length;
  if (location >= location + length)
  {
    v13 = 0;
  }

  else
  {
    v11 = [installationOrder objectAtIndex:location];
    v12 = [v11 isEqualToString:@"/BackupData/systemContainer"];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = location + 1;
      v15 = length - 1;
      do
      {
        v16 = v14;
        if (!v15)
        {
          break;
        }

        v17 = [v9 objectAtIndex:v14];
        v18 = [v17 isEqualToString:@"/BackupData/systemContainer"];

        v14 = v16 + 1;
        --v15;
      }

      while (!v18);
      v13 = v16 < v10;
    }
  }

  return v13;
}

- (id)getComponentVersion:(id)version
{
  versionCopy = version;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:versionCopy];

  if (v6)
  {
    v7 = [v6 objectForKey:@"Manifest"];
    v8 = [v7 objectForKey:@"Info"];

    v9 = [v8 objectForKey:@"CFBundleShortVersionString"];
    v10 = sub_100063A54();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[MSDSignedManifestV7 getComponentVersion:]";
        v15 = 2114;
        v16 = versionCopy;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - appName:%{public}@ componentVersion:%{public}@", &v13, 0x20u);
      }

      v9 = v9;
      v8 = v9;
    }

    else
    {
      sub_1000C7B2C(v10);
    }
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C7BD0();
    }

    v9 = 0;
  }

  return v9;
}

- (id)getAppManifest:(id)manifest
{
  manifestCopy = manifest;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:manifestCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"Info"];

  return v8;
}

- (id)getStandAlonePackageVersion:(id)version
{
  versionCopy = version;
  getStandAlonePackageList = [(MSDSignedManifestV7 *)self getStandAlonePackageList];
  v6 = [getStandAlonePackageList objectForKey:versionCopy];

  if (v6)
  {
    v7 = [v6 objectForKey:@"Manifest"];
    v8 = [v7 objectForKey:@"Info"];

    v9 = [v8 objectForKey:@"Version"];
    v10 = sub_100063A54();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[MSDSignedManifestV7 getStandAlonePackageVersion:]";
        v15 = 2114;
        v16 = versionCopy;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - pkgName:%{public}@ pkgVersion:%{public}@", &v13, 0x20u);
      }

      v9 = v9;
      v8 = v9;
    }

    else
    {
      sub_1000C7C4C(v10);
    }
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C7CF0();
    }

    v9 = 0;
  }

  return v9;
}

- (id)getStandAlonePackageList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Packages"];

  return v3;
}

- (id)getAppList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Apps"];

  return v3;
}

- (BOOL)checkPlatformTypeForAllComponents
{
  if (+[MSDPlatform iOSHub])
  {
    return 1;
  }

  v4 = +[MSDPlatform sharedInstance];
  platformType = [v4 platformType];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = &IDSSendMessageOptionFireAndForgetKey_ptr;
    v9 = *v46;
    v39 = payload;
    v35 = *v46;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(payload);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        v12 = [(MSDSignedManifest *)self payload:v35];
        v13 = [v12 objectForKey:v11];
        v14 = v8[148];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v11 isEqualToString:@"Info"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"InstallationOrder"))
        {
          goto LABEL_11;
        }

        v15 = [v11 isEqualToString:@"Certificates"];

        if ((v15 & 1) == 0)
        {
          payload2 = [(MSDSignedManifest *)self payload];
          v38 = v11;
          v17 = [payload2 objectForKey:v11];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v13 = v17;
          v18 = [v13 countByEnumeratingWithState:&v41 objects:v57 count:16];
          if (!v18)
          {
            v12 = v13;
            goto LABEL_11;
          }

          v19 = v18;
          v37 = v7;
          v20 = *v42;
LABEL_17:
          v21 = 0;
          while (1)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v41 + 1) + 8 * v21);
            v23 = [v13 objectForKey:v22];
            v24 = @"Manifest";
            v25 = [v23 objectForKey:@"Manifest"];

            if (!v25)
            {
              v24 = @"Settings";
              v26 = [v23 objectForKey:@"Settings"];

              if (!v26)
              {
                break;
              }
            }

            v27 = [v23 objectForKey:v24];
            v28 = [v27 objectForKey:@"Info"];

            if (!v28)
            {
              break;
            }

            v29 = [v28 objectForKey:@"PlatformType"];
            v30 = [platformType isEqualToString:v29];

            if ((v30 & 1) == 0)
            {
              v33 = sub_100063A54();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = [v28 objectForKey:@"PlatformType"];
                *buf = 138544130;
                v50 = v34;
                v51 = 2114;
                v52 = platformType;
                v53 = 2114;
                v54 = v22;
                v55 = 2114;
                v56 = v38;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "PlatformType (%{public}@) in the manifest does not match the one that we are running on (%{public}@) for item: %{public}@ under component: %{public}@", buf, 0x2Au);
              }

LABEL_32:
              payload = v39;

              v3 = 0;
              goto LABEL_33;
            }

            if (v19 == ++v21)
            {
              v19 = [v13 countByEnumeratingWithState:&v41 objects:v57 count:16];
              if (v19)
              {
                goto LABEL_17;
              }

              v12 = v13;
              payload = v39;
              v9 = v35;
              self = selfCopy;
              v8 = &IDSSendMessageOptionFireAndForgetKey_ptr;
              v7 = v37;
LABEL_11:

              goto LABEL_12;
            }
          }

          v28 = sub_100063A54();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000C7D6C(v22, v38, v28);
          }

          goto LABEL_32;
        }

LABEL_12:
        v10 = v10 + 1;
      }

      while (v10 != v7);
      v31 = [payload countByEnumeratingWithState:&v45 objects:v58 count:16];
      v7 = v31;
    }

    while (v31);
  }

  v3 = 1;
LABEL_33:

  return v3;
}

- (id)getComponentDataList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    payload = [(MSDSignedManifest *)self payload];
    v6 = [payload objectForKey:listCopy];
  }

  else
  {
    sub_1000C7DEC();
    v6 = 0;
  }

  return v6;
}

- (id)getSystemAppDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"SystemApps"];

  return v3;
}

- (id)getSharedDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"SharedAppData"];

  return v3;
}

- (id)getUserDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"UserData"];

  return v3;
}

- (BOOL)isPathUnderNonContainerizedContentRoot:(id)root
{
  rootCopy = root;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100014A64;
  v12[4] = sub_100014A74;
  v13 = &stru_10016D9D8;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  pathComponents = [rootCopy pathComponents];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014A7C;
  v7[3] = &unk_10016A0E0;
  v7[4] = self;
  v7[5] = v12;
  v7[6] = &v8;
  [pathComponents enumerateObjectsUsingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);

  return self;
}

- (id)getManifestDataFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getManifestFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Data"];

  return v5;
}

- (id)getManifestInfoFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getManifestFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Info"];

  return v5;
}

- (id)getSettingsFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Settings"];

  return v5;
}

- (id)getSettingsDataFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifestV7 *)self getSettingsFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Data"];

  return v5;
}

- (id)getSettingsInfoFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifestV7 *)self getSettingsFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Info"];

  return v5;
}

- (id)originServerForBackupManifest:(_NSRange)manifest
{
  location = manifest.location;
  v5 = [(MSDSignedManifest *)self installationOrder:manifest.location];
  v6 = [v5 objectAtIndex:location];

  lastPathComponent = [v6 lastPathComponent];
  if (lastPathComponent)
  {
    getBackupList = [(MSDSignedManifestV7 *)self getBackupList];
    v9 = [getBackupList objectForKey:lastPathComponent];

    v10 = [v9 objectForKey:@"OriginServer"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getContainerTypeFromComponentName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy componentsSeparatedByString:@"."];
  v6 = [v5 objectAtIndex:0];
  getDataSectionKeys = [(MSDSignedManifestV7 *)self getDataSectionKeys];
  if ([getDataSectionKeys containsObject:v6])
  {
    v8 = v6;
  }

  else
  {
    sub_1000C7E88();
    v8 = 0;
  }

  return v8;
}

- (void)parseNonContainerizedContentRootSet
{
  v3 = objc_alloc_init(NSMutableSet);
  getDataSectionKeys = [(MSDSignedManifestV7 *)self getDataSectionKeys];
  allObjects = [getDataSectionKeys allObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (![(MSDSignedManifest *)self isContainerizedComponent:v11, v16])
        {
          payload = [(MSDSignedManifest *)self payload];
          v13 = [payload objectForKey:v11];

          v14 = [(MSDSignedManifestV7 *)self parseSectionForContentRoot:v13];
          v15 = v14;
          if (v14 && [v14 count])
          {
            [v3 unionSet:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(MSDSignedManifestV7 *)self setNonContainerizedContentRoots:v3];
}

- (id)parseSectionForContentRoot:(id)root
{
  rootCopy = root;
  v27 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = rootCopy;
  obj = [rootCopy allKeys];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v4 = @"/";
    v23 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = [v24 objectForKey:*(*(&v33 + 1) + 8 * v5)];
        v7 = [v6 objectForKey:@"Manifest"];
        v8 = [v7 objectForKey:@"Data"];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = v8;
        allKeys = [v8 allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(allKeys);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = objc_autoreleasePoolPush();
              if (([v14 isEqualToString:v4] & 1) == 0)
              {
                v16 = v4;
                v17 = [v28 objectForKey:v14];
                v18 = [v17 objectForKey:@"MSDManifestFileExtendedAttributes"];
                v19 = [v18 objectForKey:@"MSDAnnotation"];

                if (v19)
                {
                  v20 = [[NSString alloc] initWithData:v19 encoding:4];
                  if ([v20 isEqualToString:@"ContentRoot"])
                  {
                    [v27 addObject:v14];
                  }
                }

                v4 = v16;
              }

              objc_autoreleasePoolPop(v15);
            }

            v11 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v5 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  return v27;
}

- (void)parseLocaleCode
{
  [(MSDSignedManifestV7 *)self setLocaleCodeStr:0];
  v3 = [(MSDSignedManifestV7 *)self getSettingsDataFromSection:@"BackupData" forIdentifier:@"locale"];
  v4 = v3;
  if (!v3)
  {
    sub_1000C8094(&v10);
LABEL_8:
    v6 = v10;
    goto LABEL_5;
  }

  v5 = [v3 objectForKey:@"language"];
  if (!v5)
  {
    sub_1000C7FE0(&v10);
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v4 objectForKey:@"region"];
  if (v7)
  {
    v8 = v7;
    v9 = [NSString stringWithFormat:@"%@_%@", v6, v7];
    [(MSDSignedManifestV7 *)self setLocaleCodeStr:v9];
  }

  else
  {
    sub_1000C7F38();
  }

LABEL_5:
}

- (id)parseAllFileHash
{
  v2 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v54 = [&off_10017BBB0 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v54)
  {
    v52 = *v79;
    v3 = @"Manifest";
    do
    {
      v4 = 0;
      do
      {
        if (*v79 != v52)
        {
          objc_enumerationMutation(&off_10017BBB0);
        }

        v58 = v4;
        v5 = *(*(&v78 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        payload = [(MSDSignedManifest *)self payload];
        v7 = [payload objectForKey:v5];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v75;
          v60 = v8;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v75 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v74 + 1) + 8 * i);
              v14 = objc_autoreleasePoolPush();
              v15 = [v8 objectForKey:v13];
              v16 = [v15 objectForKey:v3];
              v17 = v16;
              if (v16)
              {
                v18 = [v16 objectForKey:@"Info"];
                v19 = v18;
                if (v18)
                {
                  v20 = v10;
                  v21 = v11;
                  v22 = v3;
                  v23 = [v18 objectForKey:@"Hash"];
                  if (v23)
                  {
                    [v2 addObject:v23];
                  }

                  v3 = v22;
                  v11 = v21;
                  v10 = v20;
                  v8 = v60;
                }
              }

              objc_autoreleasePoolPop(v14);
            }

            v10 = [v8 countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v4 = v58 + 1;
      }

      while ((v58 + 1) != v54);
      v54 = [&off_10017BBB0 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v54);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = [&off_10017BBC8 countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v47)
  {
    v46 = *v71;
    do
    {
      v24 = 0;
      do
      {
        if (*v71 != v46)
        {
          objc_enumerationMutation(&off_10017BBC8);
        }

        v49 = v24;
        v25 = *(*(&v70 + 1) + 8 * v24);
        v48 = objc_autoreleasePoolPush();
        payload2 = [(MSDSignedManifest *)self payload];
        v27 = [payload2 objectForKey:v25];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v28 = v27;
        v55 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
        if (v55)
        {
          v51 = v28;
          v53 = *v67;
          do
          {
            for (j = 0; j != v55; j = j + 1)
            {
              if (*v67 != v53)
              {
                objc_enumerationMutation(v28);
              }

              v30 = *(*(&v66 + 1) + 8 * j);
              v31 = objc_autoreleasePoolPush();
              v32 = [v28 objectForKey:v30];
              v33 = [v32 objectForKey:@"Manifest"];
              if (v33)
              {
                v59 = v32;
                v61 = v31;
                contexta = v33;
                v34 = [v33 objectForKey:@"Data"];
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v35 = v34;
                v36 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v63;
                  do
                  {
                    for (k = 0; k != v37; k = k + 1)
                    {
                      if (*v63 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = *(*(&v62 + 1) + 8 * k);
                      v41 = objc_autoreleasePoolPush();
                      v42 = [v35 objectForKey:v40];
                      v43 = [v42 objectForKey:@"MSDManifestFileHash"];
                      if (v43)
                      {
                        [v2 addObject:v43];
                      }

                      objc_autoreleasePoolPop(v41);
                    }

                    v37 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
                  }

                  while (v37);
                }

                v28 = v51;
                v32 = v59;
                v31 = v61;
                v33 = contexta;
              }

              objc_autoreleasePoolPop(v31);
            }

            v55 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
          }

          while (v55);
        }

        objc_autoreleasePoolPop(v48);
        v24 = v49 + 1;
      }

      while ((v49 + 1) != v47);
      v47 = [&off_10017BBC8 countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v47);
  }

  v44 = [NSSet setWithSet:v2];

  return v44;
}

- (MSDSignedManifestV7)initWithManifestData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_new();
  v96.receiver = self;
  v96.super_class = MSDSignedManifestV7;
  v6 = [(MSDSignedManifestV7 *)&v96 init];
  if (!v6)
  {
    v7 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = [dataCopy objectForKey:@"Info"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = sub_100063A54();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_94:
      v13 = 0;
      v14 = 0;
      goto LABEL_95;
    }

    sub_1000159EC();
    v34 = "%s: No Info section or in wrong format.";
LABEL_57:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
    goto LABEL_94;
  }

  if (+[MSDPlatform iOSHub])
  {
    v8 = [v7 objectForKey:@"Product"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v37 = sub_100063A54();
      if (sub_1000083A0(v37))
      {
        sub_1000159EC();
        sub_1000159CC(&_mh_execute_header, v69, v70, "%s: No Product section or in wrong format.", v71, v72, v73, v74, v81, log, v84, v86, v88, v90, v92, v94, v96.receiver, v96.super_class, buf[0]);
      }

      goto LABEL_94;
    }

    v9 = +[MSDPlatform sharedInstance];
    [v9 setPlatformWithManifestProductList:v8];

    v10 = NSClassFromString(@"MSDHubTestConfiguration");
    if (v10)
    {
      sharedInstance = [(objc_class *)v10 sharedInstance];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([sharedInstance shouldRunManifestRigorousTest] & 1) == 0)
      {
        v16 = sub_100063A54();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000159EC();
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - Will not run rigorous testing on iOS hub.", buf, 0xCu);
        }

        v12 = &__kCFBooleanFalse;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  manifestVerifier = [(MSDSignedManifest *)v6 manifestVerifier];

  if (!manifestVerifier)
  {
    v18 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDSignedManifest *)v6 setManifestVerifier:v18];

    manifestVerifier2 = [(MSDSignedManifest *)v6 manifestVerifier];

    if (!manifestVerifier2)
    {
      v8 = sub_100063A54();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      sub_1000159EC();
      v34 = "%s - Could not initialize manifestVerifier\n";
      goto LABEL_57;
    }
  }

  v14 = [dataCopy objectForKey:@"Version"];
  if (v12)
  {
    [v5 setObject:v12 forKey:@"RigorousTestingOverride"];
  }

  manifestVerifier3 = [(MSDSignedManifest *)v6 manifestVerifier];
  getDataSectionKeys = [(MSDSignedManifestV7 *)v6 getDataSectionKeys];
  v8 = [manifestVerifier3 verifyManifestSignature:dataCopy forDataSectionKeys:getDataSectionKeys withOptions:v5];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = v14;
      v22 = [v8 objectForKey:@"InstallationOrder"];
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v35 = sub_100063A54();
        if (sub_1000083A0(v35))
        {
          sub_1000159EC();
          sub_1000159CC(&_mh_execute_header, v57, v58, "%s: InstallationOrder section in wrong format.", v59, v60, v61, v62, v81, log, v84, v86, v88, v90, v92, v95, v96.receiver, v96.super_class, buf[0]);
        }

        v13 = 0;
        v15 = 0;
        goto LABEL_52;
      }

      v91 = v7;
      v23 = [v22 objectForKey:@"CriticalComponents"];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 count];
      }

      else
      {
        v25 = 0;
      }

      v26 = [v22 objectForKey:@"Components"];
      v27 = v26;
      v93 = v5;
      if (v26)
      {
        v25 = &v25[[v26 count]];
      }

      v28 = [v8 objectForKey:@"BackupData"];
      if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v36 = sub_100063A54();
        if (sub_1000083A0(v36))
        {
          sub_1000159EC();
          sub_1000159CC(&_mh_execute_header, v63, v64, "%s: no BackupData section or in wrong format.", v65, v66, v67, v68, v81, log, v84, v86, v88, v91, v93, v95, v96.receiver, v96.super_class, buf[0]);
        }

        v13 = 0;
        goto LABEL_84;
      }

      v29 = [v28 count];
      v13 = [v8 objectForKey:@"Apps"];
      v89 = v27;
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = sub_100063A54();
          if (sub_1000083A0(v40))
          {
            v98 = "[MSDSignedManifestV7 initWithManifestData:]";
            sub_1000159CC(&_mh_execute_header, v41, v42, "%s: Apps section in wrong format.", v43, v44, v45, v46, v81, log, v84, v86, v27, v91, v93, v95, v96.receiver, v96.super_class, 2u);
          }

LABEL_83:
LABEL_84:
          v15 = 0;
LABEL_92:
          v7 = v91;
          v5 = v93;
LABEL_52:
          v14 = v95;
LABEL_53:

          goto LABEL_54;
        }

        v29 = &v29[[v13 count]];
      }

      v30 = [v8 objectForKey:@"SystemApps"];
      v87 = v24;
      if (!v30)
      {
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v30 count])
        {
          ++v29;
        }

LABEL_42:
        v31 = [v8 objectForKey:@"Packages"];
        v85 = dataCopy;
        if (v31)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v54 = dataCopy;
            v55 = sub_100063A54();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v98 = "[MSDSignedManifestV7 initWithManifestData:]";
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s - Packages section in wrong format.", buf, 0xCu);
            }

            v15 = 0;
            dataCopy = v54;
            goto LABEL_92;
          }

          v29 = &v29[[v31 count]];
        }

        v32 = [v8 objectForKey:@"ConfigurationProfiles"];
        if (v32)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v56 = sub_100063A54();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v98 = "[MSDSignedManifestV7 initWithManifestData:]";
              _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%s - ConfigurationProfiles section in wrong format.", buf, 0xCu);
            }

LABEL_91:
            v15 = 0;
            dataCopy = v85;
            goto LABEL_92;
          }

          v29 = &v29[[v32 count]];
        }

        if (v25 == v29)
        {
          [(MSDSignedManifest *)v6 setSigningKey:@"MultipleContentSignings"];
          [(MSDSignedManifest *)v6 setPayload:v8];
          if ([(MSDSignedManifestV7 *)v6 checkPlatformTypeForAllComponents])
          {
            [(MSDSignedManifestV7 *)v6 parseNonContainerizedContentRootSet];
            [(MSDSignedManifest *)v6 parseInstallationOrder];
            v7 = v91;
            [(MSDSignedManifest *)v6 parseBundleID:v91];
            [(MSDSignedManifestV7 *)v6 parseLocaleCode];
            [MSDSignedManifest setSignedManifest:v6];
            v15 = v6;
          }

          else
          {
            v39 = sub_100063A54();
            v7 = v91;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "One or more components have an invalid platformType", buf, 2u);
            }

            v15 = 0;
          }

          dataCopy = v85;
          v5 = v93;
          goto LABEL_52;
        }

        loga = sub_100063A54();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v98 = "[MSDSignedManifestV7 initWithManifestData:]";
          v99 = 2048;
          v100 = v25;
          v101 = 2048;
          v102 = v29;
          _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%s - InstallationOrder count (%lu) doesn't match number of components in manifest (%lu)", buf, 0x20u);
        }

        goto LABEL_91;
      }

      v47 = sub_100063A54();
      if (sub_1000083A0(v47))
      {
        v98 = "[MSDSignedManifestV7 initWithManifestData:]";
        sub_1000159CC(&_mh_execute_header, v48, v49, "%s: SystemApps section in wrong format.", v50, v51, v52, v53, v81, log, v84, v24, v89, v91, v93, v95, v96.receiver, v96.super_class, 2u);
      }

      goto LABEL_83;
    }

    v38 = sub_100063A54();
    if (sub_1000083A0(v38))
    {
      sub_1000159EC();
      sub_1000159CC(&_mh_execute_header, v75, v76, "%s: payload format not correct.", v77, v78, v79, v80, v81, log, v84, v86, v88, v90, v92, v94, v96.receiver, v96.super_class, buf[0]);
    }

    v13 = 0;
LABEL_95:
    v15 = 0;
    goto LABEL_53;
  }

  v13 = 0;
LABEL_12:
  v15 = 0;
LABEL_54:

  return v15;
}

@end