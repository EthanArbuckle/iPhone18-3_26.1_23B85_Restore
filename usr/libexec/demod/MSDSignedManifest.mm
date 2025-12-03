@interface MSDSignedManifest
+ (id)appsPrefixForManifestVersion:(id)version;
+ (id)getComponentFromPath:(id)path forManifestVersion:(id)version;
+ (id)signedManifestFromManifestData:(id)data;
- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range;
- (BOOL)isContainerizedComponent:(id)component;
- (BOOL)parseBundleID:(id)d;
- (BOOL)validateInstallationOrder;
- (MSDSignedManifest)initWithManifestData:(id)data;
- (NSDictionary)getAppDataList;
- (NSDictionary)getAppList;
- (NSDictionary)getBackup;
- (NSDictionary)getBackupList;
- (NSDictionary)getGroupDataList;
- (NSDictionary)getInfo;
- (NSDictionary)getPlugInDataList;
- (_NSRange)rangeOfGroupedBackups:(int64_t)backups;
- (id)appIdentifierFromOrderItem:(id)item;
- (id)getAppManifest:(id)manifest;
- (id)getComponentVersion:(id)version;
- (id)getDictFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestFromSection:(id)section forIdentifier:(id)identifier;
- (id)getOriginServerFromSection:(id)section forIdentifier:(id)identifier;
- (id)getStandAlonePackageVersion:(id)version;
- (id)itemAtIndexInManifest:(int64_t)manifest;
- (id)mergedBackupManifest:(_NSRange)manifest;
- (id)originServerForApp:(id)app;
- (id)originServerForBackupManifest:(_NSRange)manifest;
- (int)getVersion;
- (void)dealloc;
- (void)parseInstallationOrder;
@end

@implementation MSDSignedManifest

+ (id)signedManifestFromManifestData:(id)data
{
  dataCopy = data;
  v4 = [[MSDSignedManifest alloc] initWithManifestData:dataCopy];

  return v4;
}

- (void)dealloc
{
  [(MSDSignedManifest *)self setPayload:0];
  v3.receiver = self;
  v3.super_class = MSDSignedManifest;
  [(MSDSignedManifest *)&v3 dealloc];
}

- (int)getVersion
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Version"];

  LODWORD(payload) = [v3 intValue];
  return payload;
}

- (NSDictionary)getInfo
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Info"];

  return v3;
}

- (NSDictionary)getAppList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"App"];

  return v3;
}

- (NSDictionary)getAppDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"AppData"];

  return v3;
}

- (NSDictionary)getGroupDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"GroupData"];

  return v3;
}

- (NSDictionary)getPlugInDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"ExtensionData"];

  return v3;
}

- (BOOL)isContainerizedComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy isEqualToString:@"AppData"] & 1) != 0 || (objc_msgSend(componentCopy, "isEqualToString:", @"GroupData"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [componentCopy isEqualToString:@"ExtensionData"];
  }

  return v4;
}

- (id)getOriginServerFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"OriginServer"];

  return v5;
}

- (NSDictionary)getBackup
{
  if ([(MSDSignedManifest *)self getVersion]>= 5)
  {
    sub_1000D5FC0();
    v4 = 0;
  }

  else
  {
    payload = [(MSDSignedManifest *)self payload];
    v4 = [payload objectForKey:@"Backup"];
  }

  return v4;
}

- (NSDictionary)getBackupList
{
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    getBackup = [(MSDSignedManifest *)self getBackup];
    [NSDictionary dictionaryWithObject:getBackup forKey:@"backup.BaseBackup"];
  }

  else
  {
    getBackup = [(MSDSignedManifest *)self payload];
    [getBackup objectForKey:@"Backup"];
  }
  v4 = ;

  return v4;
}

- (id)itemAtIndexInManifest:(int64_t)manifest
{
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v5 = [installationOrder objectAtIndex:manifest];

  return v5;
}

- (_NSRange)rangeOfGroupedBackups:(int64_t)backups
{
  [(MSDSignedManifest *)self getVersion];
  backupsCopy = backups;
  v5 = 1;
  result.length = v5;
  result.location = backupsCopy;
  return result;
}

- (id)mergedBackupManifest:(_NSRange)manifest
{
  length = manifest.length;
  location = manifest.location;
  if ([(MSDSignedManifest *)self getVersion]<= 4)
  {
    getBackup = [(MSDSignedManifest *)self getBackup];
    goto LABEL_19;
  }

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

  getBackup = +[NSMutableDictionary dictionary];
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  if (location < location + length)
  {
    do
    {
      v9 = [installationOrder objectAtIndex:location];
      getBackupList = [(MSDSignedManifest *)self getBackupList];
      v11 = [getBackupList objectForKey:v9];

      v12 = [v11 objectForKey:@"Manifest"];
      v13 = v12;
      if (v12)
      {
        v14 = v12;

        v11 = v14;
      }

      if ([(MSDSignedManifest *)self isItemSystemContainerBackup:v9])
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

          goto LABEL_17;
        }

        if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "System container backup found. Start restoring UUID paths...", buf, 2u);
        }

        v19 = [NSString restoreSystemContainerUUIDPathsInDict:v11];

        v11 = v19;
      }

      [getBackup addEntriesFromDictionary:v11];
LABEL_17:

      ++location;
      --length;
    }

    while (length);
  }

LABEL_19:

  return getBackup;
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
    v12 = [v11 isEqualToString:@"backup.SystemContainer"];

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
        v18 = [v17 isEqualToString:@"backup.SystemContainer"];

        v14 = v16 + 1;
        --v15;
      }

      while (!v18);
      v13 = v16 < v10;
    }
  }

  return v13;
}

- (id)originServerForBackupManifest:(_NSRange)manifest
{
  location = manifest.location;
  if ([(MSDSignedManifest *)self getVersion:manifest.location]>= 5)
  {
    installationOrder = [(MSDSignedManifest *)self installationOrder];
    v7 = [installationOrder objectAtIndex:location];

    getBackupList = [(MSDSignedManifest *)self getBackupList];
    v9 = [getBackupList objectForKey:v7];

    v5 = [v9 objectForKey:@"OriginServer"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)originServerForApp:(id)app
{
  appCopy = app;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:appCopy];

  if (v6)
  {
    v7 = [getAppList objectForKey:appCopy];
    v6 = [v7 objectForKey:@"OriginServer"];
  }

  return v6;
}

- (id)appIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifest *)self isItemApp:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"app.", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)appsPrefixForManifestVersion:(id)version
{
  intValue = [version intValue];
  v4 = @"/Apps/";
  if (intValue != 7)
  {
    v4 = 0;
  }

  if (intValue == 6)
  {
    return @"app.";
  }

  else
  {
    return v4;
  }
}

+ (id)getComponentFromPath:(id)path forManifestVersion:(id)version
{
  pathCopy = path;
  intValue = [version intValue];
  if (intValue != 7)
  {
    if (intValue != 6)
    {
      goto LABEL_19;
    }

    if ([pathCopy hasPrefix:@"app."])
    {
      v7 = @"app.";
LABEL_15:
      v8 = [(__CFString *)v7 length];
      v9 = pathCopy;
LABEL_16:
      v10 = [v9 substringFromIndex:v8];
      goto LABEL_20;
    }

    if ([pathCopy hasPrefix:@"backup."])
    {
      v7 = @"backup.";
      goto LABEL_15;
    }
  }

  if ([pathCopy hasPrefix:@"/Apps/"])
  {
    v7 = @"/Apps/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/BackupData/"])
  {
    v7 = @"/BackupData/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/Packages/"])
  {
    v7 = @"/Packages/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/ConfigurationProfiles/"])
  {
    v7 = @"/ConfigurationProfiles/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/SystemApps"])
  {
    v9 = pathCopy;
    v8 = 1;
    goto LABEL_16;
  }

LABEL_19:
  v10 = pathCopy;
LABEL_20:
  v11 = v10;

  return v11;
}

- (id)getComponentVersion:(id)version
{
  versionCopy = version;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:versionCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"CFBundleShortVersionString"];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = versionCopy;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "appName:%{public}@ componentVersion:%{public}@", &v11, 0x16u);
  }

  return v8;
}

- (id)getAppManifest:(id)manifest
{
  manifestCopy = manifest;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:manifestCopy];

  v7 = [v6 objectForKey:@"Manifest"];

  return v7;
}

- (id)getStandAlonePackageVersion:(id)version
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDSignedManifest getStandAlonePackageVersion:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - getStandAlonePackageVersion is applicable to manifest V7 only.", &v5, 0xCu);
  }

  return 0;
}

- (void)parseInstallationOrder
{
  v7 = objc_alloc_init(NSMutableArray);
  payload = [(MSDSignedManifest *)self payload];
  v4 = [payload objectForKey:@"InstallationOrder"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"CriticalComponents"];
      v6 = [v4 objectForKey:@"Components"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObjectsFromArray:v5];
          [(MSDSignedManifest *)self setStaggeredContentUpdateEnabled:1];
          [(MSDSignedManifest *)self setCriticalComponents:v5];
        }
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObjectsFromArray:v6];
        }
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v5 = v7;
      v7 = [v4 mutableCopy];
    }
  }

LABEL_13:
  [(MSDSignedManifest *)self setInstallationOrder:v7];
}

- (BOOL)validateInstallationOrder
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v5 = [installationOrder countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v2 = v5;
    v6 = 0;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(installationOrder);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([(MSDSignedManifest *)self isItemProvisioningProfileBackup:v9]|| [(MSDSignedManifest *)self isItemBaseBackup:v9])
        {
          v6 = 1;
        }

        else if ([(MSDSignedManifest *)self isItemApp:v9])
        {
          if (v6)
          {
            v10 = 0;
            LOBYTE(v2) = 1;
          }

          else
          {
            v11 = sub_100063A54();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot place app before provisioning profile or base backup.", v13, 2u);
            }

            LOBYTE(v2) = 0;
            v10 = 0;
          }

          goto LABEL_18;
        }
      }

      v2 = [installationOrder countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_18:

  return (v2 | v10) & 1;
}

- (id)getDictFromSection:(id)section forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionCopy = section;
  payload = [(MSDSignedManifest *)self payload];
  v9 = [payload objectForKey:sectionCopy];

  v10 = [v9 objectForKey:identifierCopy];

  return v10;
}

- (id)getManifestFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Manifest"];

  return v5;
}

- (BOOL)parseBundleID:(id)d
{
  dCopy = d;
  v5 = [dCopy objectForKey:@"PartNumber"];
  v6 = [dCopy objectForKey:@"Revision"];

  if (!v5)
  {
    sub_1000D60D0();
LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  if (!v6)
  {
    sub_1000D6028();
    goto LABEL_7;
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", v5, [v6 intValue]);
  [(MSDSignedManifest *)self setBundleID:v7];

  v8 = 1;
LABEL_4:

  return v8;
}

- (MSDSignedManifest)initWithManifestData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(NSMutableArray);
  v91.receiver = self;
  v91.super_class = MSDSignedManifest;
  v6 = [(MSDSignedManifest *)&v91 init];
  if (v6)
  {
    v7 = [dataCopy objectForKey:@"Version"];
    v8 = [dataCopy objectForKey:@"Info"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v95 = "[MSDSignedManifest initWithManifestData:]";
        sub_10005F09C();
        _os_log_error_impl(v58, v59, v60, v61, v62, v63);
      }

      v14 = 0;
      goto LABEL_77;
    }

    v90 = v8;
    if (+[MSDPlatform iOSHub])
    {
      v9 = [v8 objectForKey:@"Product"];
      if (!v9 || (objc_opt_class(), (sub_10005F0A8() & 1) == 0))
      {
        v38 = sub_100063A54();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v95 = "[MSDSignedManifest initWithManifestData:]";
          sub_10005F09C();
          _os_log_error_impl(v70, v71, v72, v73, v74, v75);
        }

        goto LABEL_63;
      }

      v10 = +[MSDPlatform sharedInstance];
      [v10 setPlatformWithManifestProductList:v9];

      v11 = NSClassFromString(@"MSDHubTestConfiguration");
      if (v11)
      {
        sharedInstance = [(objc_class *)v11 sharedInstance];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([sharedInstance shouldRunManifestRigorousTest] & 1) == 0)
        {
          v16 = sub_100063A54();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v95 = "[MSDSignedManifest initWithManifestData:]";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - Will not run rigorous testing on iOS hub.", buf, 0xCu);
          }

          v13 = &__kCFBooleanFalse;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDSignedManifest *)v6 setManifestVerifier:v17];

    manifestVerifier = [(MSDSignedManifest *)v6 manifestVerifier];

    if (manifestVerifier)
    {
      manifestVerifier2 = [(MSDSignedManifest *)v6 manifestVerifier];
      getDataSectionKeys = [(MSDSignedManifest *)v6 getDataSectionKeys];
      v92 = @"RigorousTestingOverride";
      v93 = v13;
      v21 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v14 = [manifestVerifier2 verifyManifestSignature:dataCopy forDataSectionKeys:getDataSectionKeys withOptions:v21];

      if (!v14)
      {
        v15 = 0;
        v8 = v90;
        goto LABEL_51;
      }

      objc_opt_class();
      v8 = v90;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = sub_100063A54();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v95 = "[MSDSignedManifest initWithManifestData:]";
          sub_10005F09C();
          _os_log_error_impl(v39, v40, v41, v42, v43, v44);
        }

        goto LABEL_77;
      }

      v9 = [v14 objectForKey:@"InstallationOrder"];
      if (v9)
      {
        objc_opt_class();
        if ((sub_10005F0A8() & 1) == 0)
        {
          objc_opt_class();
          if ((sub_10005F0A8() & 1) == 0)
          {
            v45 = sub_100063A54();
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_76;
            }

            *buf = 136315138;
            v95 = "[MSDSignedManifest initWithManifestData:]";
            sub_10005F09C();
            goto LABEL_72;
          }
        }

        v89 = v5;
        v22 = [v14 objectForKey:@"Backup"];
        if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v37 = sub_100063A54();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v95 = "[MSDSignedManifest initWithManifestData:]";
            sub_10005F09C();
            _os_log_error_impl(v64, v65, v66, v67, v68, v69);
          }

          v15 = 0;
          v5 = v89;
          goto LABEL_50;
        }

        v23 = [v14 objectForKey:@"App"];
        if (v23)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = sub_100063A54();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v95 = "[MSDSignedManifest initWithManifestData:]";
              sub_10005F09C();
              _os_log_error_impl(v52, v53, v54, v55, v56, v57);
            }

            goto LABEL_80;
          }

          v24 = [v23 count];
        }

        else
        {
          v24 = 0;
        }

        v88 = v7;
        objc_opt_class();
        v25 = dataCopy;
        if (sub_10005F0A8())
        {
          v26 = [v9 objectForKey:@"CriticalComponents"];

          if (v26)
          {
            v27 = [v9 objectForKey:@"CriticalComponents"];
            [v89 addObjectsFromArray:v27];
          }

          v28 = [v9 objectForKey:@"Components"];

          v29 = v89;
          if (v28)
          {
            v30 = [v9 objectForKey:@"Components"];
            [v89 addObjectsFromArray:v30];
          }
        }

        else
        {
          objc_opt_class();
          v29 = v89;
          if (sub_10005F0A8())
          {
            [v89 addObjectsFromArray:v9];
          }
        }

        v31 = [v29 containsObject:@"systemappdata"];
        v32 = [v29 count];
        v33 = [v22 count];
        if (v31)
        {
          dataCopy = v25;
          if (v32 != &v33[v24 + 1])
          {
            v34 = sub_100063A54();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
LABEL_83:
              sub_10005F0C0();
              _os_log_error_impl(v82, v83, v84, v85, v86, v87);
              goto LABEL_79;
            }

            goto LABEL_79;
          }
        }

        else
        {
          dataCopy = v25;
          if (v32 != &v24[v33])
          {
            v34 = sub_100063A54();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              goto LABEL_83;
            }

LABEL_79:
            v7 = v88;
LABEL_80:

            v15 = 0;
            v5 = v89;
            v8 = v90;
            goto LABEL_50;
          }
        }

        v7 = v88;
        v5 = v89;
        v8 = v90;
      }

      if ([v7 intValue] > 4)
      {
        [(MSDSignedManifest *)v6 setSigningKey:@"MultipleContentSignings"];
      }

      else
      {
        v35 = [dataCopy objectForKey:@"SigningKey"];
        [(MSDSignedManifest *)v6 setSigningKey:v35];
      }

      [(MSDSignedManifest *)v6 setPayload:v14];
      [(MSDSignedManifest *)v6 parseInstallationOrder];
      if ([(MSDSignedManifest *)v6 validateInstallationOrder])
      {
        if ([(MSDSignedManifest *)v6 parseBundleID:v8])
        {
          [MSDSignedManifest setSignedManifest:v6];
          v15 = v6;
LABEL_50:

          goto LABEL_51;
        }

        v45 = sub_100063A54();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *buf = 0;
      }

      else
      {
        v45 = sub_100063A54();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_76:

LABEL_77:
          v15 = 0;
          goto LABEL_50;
        }

        *buf = 0;
      }

      sub_10005F0C0();
LABEL_72:
      _os_log_error_impl(v46, v47, v48, v49, v50, v51);
      goto LABEL_76;
    }

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      sub_10005F0C0();
      _os_log_error_impl(v76, v77, v78, v79, v80, v81);
    }

LABEL_63:
    v14 = 0;
    v15 = 0;
    v8 = v90;
    goto LABEL_50;
  }

  v8 = 0;
  v14 = 0;
  v7 = 0;
  v15 = 0;
LABEL_51:

  return v15;
}

@end