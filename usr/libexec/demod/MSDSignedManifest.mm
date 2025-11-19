@interface MSDSignedManifest
+ (id)appsPrefixForManifestVersion:(id)a3;
+ (id)getComponentFromPath:(id)a3 forManifestVersion:(id)a4;
+ (id)signedManifestFromManifestData:(id)a3;
- (BOOL)hasSystemContainerBackupInRange:(_NSRange)a3;
- (BOOL)isContainerizedComponent:(id)a3;
- (BOOL)parseBundleID:(id)a3;
- (BOOL)validateInstallationOrder;
- (MSDSignedManifest)initWithManifestData:(id)a3;
- (NSDictionary)getAppDataList;
- (NSDictionary)getAppList;
- (NSDictionary)getBackup;
- (NSDictionary)getBackupList;
- (NSDictionary)getGroupDataList;
- (NSDictionary)getInfo;
- (NSDictionary)getPlugInDataList;
- (_NSRange)rangeOfGroupedBackups:(int64_t)a3;
- (id)appIdentifierFromOrderItem:(id)a3;
- (id)getAppManifest:(id)a3;
- (id)getComponentVersion:(id)a3;
- (id)getDictFromSection:(id)a3 forIdentifier:(id)a4;
- (id)getManifestFromSection:(id)a3 forIdentifier:(id)a4;
- (id)getOriginServerFromSection:(id)a3 forIdentifier:(id)a4;
- (id)getStandAlonePackageVersion:(id)a3;
- (id)itemAtIndexInManifest:(int64_t)a3;
- (id)mergedBackupManifest:(_NSRange)a3;
- (id)originServerForApp:(id)a3;
- (id)originServerForBackupManifest:(_NSRange)a3;
- (int)getVersion;
- (void)dealloc;
- (void)parseInstallationOrder;
@end

@implementation MSDSignedManifest

+ (id)signedManifestFromManifestData:(id)a3
{
  v3 = a3;
  v4 = [[MSDSignedManifest alloc] initWithManifestData:v3];

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
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"Version"];

  LODWORD(v2) = [v3 intValue];
  return v2;
}

- (NSDictionary)getInfo
{
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"Info"];

  return v3;
}

- (NSDictionary)getAppList
{
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"App"];

  return v3;
}

- (NSDictionary)getAppDataList
{
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"AppData"];

  return v3;
}

- (NSDictionary)getGroupDataList
{
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"GroupData"];

  return v3;
}

- (NSDictionary)getPlugInDataList
{
  v2 = [(MSDSignedManifest *)self payload];
  v3 = [v2 objectForKey:@"ExtensionData"];

  return v3;
}

- (BOOL)isContainerizedComponent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AppData"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"GroupData"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ExtensionData"];
  }

  return v4;
}

- (id)getOriginServerFromSection:(id)a3 forIdentifier:(id)a4
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:a3 forIdentifier:a4];
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
    v3 = [(MSDSignedManifest *)self payload];
    v4 = [v3 objectForKey:@"Backup"];
  }

  return v4;
}

- (NSDictionary)getBackupList
{
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    v3 = [(MSDSignedManifest *)self getBackup];
    [NSDictionary dictionaryWithObject:v3 forKey:@"backup.BaseBackup"];
  }

  else
  {
    v3 = [(MSDSignedManifest *)self payload];
    [v3 objectForKey:@"Backup"];
  }
  v4 = ;

  return v4;
}

- (id)itemAtIndexInManifest:(int64_t)a3
{
  v4 = [(MSDSignedManifest *)self installationOrder];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (_NSRange)rangeOfGroupedBackups:(int64_t)a3
{
  [(MSDSignedManifest *)self getVersion];
  v4 = a3;
  v5 = 1;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)mergedBackupManifest:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ([(MSDSignedManifest *)self getVersion]<= 4)
  {
    v21 = [(MSDSignedManifest *)self getBackup];
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

  v21 = +[NSMutableDictionary dictionary];
  v8 = [(MSDSignedManifest *)self installationOrder];
  if (location < location + length)
  {
    do
    {
      v9 = [v8 objectAtIndex:location];
      v10 = [(MSDSignedManifest *)self getBackupList];
      v11 = [v10 objectForKey:v9];

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
        v16 = [v15 watchOS];

        v17 = sub_100063A54();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (!v16)
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

      [v21 addEntriesFromDictionary:v11];
LABEL_17:

      ++location;
      --length;
    }

    while (length);
  }

LABEL_19:

  return v21;
}

- (BOOL)hasSystemContainerBackupInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    return 0;
  }

  v6 = +[MSDPlatform sharedInstance];
  v7 = [v6 watchOS];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MSDSignedManifest *)self installationOrder];
  v9 = v8;
  v10 = location + length;
  if (location >= location + length)
  {
    v13 = 0;
  }

  else
  {
    v11 = [v8 objectAtIndex:location];
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

- (id)originServerForBackupManifest:(_NSRange)a3
{
  location = a3.location;
  if ([(MSDSignedManifest *)self getVersion:a3.location]>= 5)
  {
    v6 = [(MSDSignedManifest *)self installationOrder];
    v7 = [v6 objectAtIndex:location];

    v8 = [(MSDSignedManifest *)self getBackupList];
    v9 = [v8 objectForKey:v7];

    v5 = [v9 objectForKey:@"OriginServer"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)originServerForApp:(id)a3
{
  v4 = a3;
  v5 = [(MSDSignedManifest *)self getAppList];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v5 objectForKey:v4];
    v6 = [v7 objectForKey:@"OriginServer"];
  }

  return v6;
}

- (id)appIdentifierFromOrderItem:(id)a3
{
  v4 = a3;
  if ([(MSDSignedManifest *)self isItemApp:v4])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"app.", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)appsPrefixForManifestVersion:(id)a3
{
  v3 = [a3 intValue];
  v4 = @"/Apps/";
  if (v3 != 7)
  {
    v4 = 0;
  }

  if (v3 == 6)
  {
    return @"app.";
  }

  else
  {
    return v4;
  }
}

+ (id)getComponentFromPath:(id)a3 forManifestVersion:(id)a4
{
  v5 = a3;
  v6 = [a4 intValue];
  if (v6 != 7)
  {
    if (v6 != 6)
    {
      goto LABEL_19;
    }

    if ([v5 hasPrefix:@"app."])
    {
      v7 = @"app.";
LABEL_15:
      v8 = [(__CFString *)v7 length];
      v9 = v5;
LABEL_16:
      v10 = [v9 substringFromIndex:v8];
      goto LABEL_20;
    }

    if ([v5 hasPrefix:@"backup."])
    {
      v7 = @"backup.";
      goto LABEL_15;
    }
  }

  if ([v5 hasPrefix:@"/Apps/"])
  {
    v7 = @"/Apps/";
    goto LABEL_15;
  }

  if ([v5 hasPrefix:@"/BackupData/"])
  {
    v7 = @"/BackupData/";
    goto LABEL_15;
  }

  if ([v5 hasPrefix:@"/Packages/"])
  {
    v7 = @"/Packages/";
    goto LABEL_15;
  }

  if ([v5 hasPrefix:@"/ConfigurationProfiles/"])
  {
    v7 = @"/ConfigurationProfiles/";
    goto LABEL_15;
  }

  if ([v5 hasPrefix:@"/SystemApps"])
  {
    v9 = v5;
    v8 = 1;
    goto LABEL_16;
  }

LABEL_19:
  v10 = v5;
LABEL_20:
  v11 = v10;

  return v11;
}

- (id)getComponentVersion:(id)a3
{
  v4 = a3;
  v5 = [(MSDSignedManifest *)self getAppList];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"CFBundleShortVersionString"];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "appName:%{public}@ componentVersion:%{public}@", &v11, 0x16u);
  }

  return v8;
}

- (id)getAppManifest:(id)a3
{
  v4 = a3;
  v5 = [(MSDSignedManifest *)self getAppList];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 objectForKey:@"Manifest"];

  return v7;
}

- (id)getStandAlonePackageVersion:(id)a3
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
  v3 = [(MSDSignedManifest *)self payload];
  v4 = [v3 objectForKey:@"InstallationOrder"];

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
  v4 = [(MSDSignedManifest *)self installationOrder];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

      v2 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)getDictFromSection:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDSignedManifest *)self payload];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 objectForKey:v6];

  return v10;
}

- (id)getManifestFromSection:(id)a3 forIdentifier:(id)a4
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:a3 forIdentifier:a4];
  v5 = [v4 objectForKey:@"Manifest"];

  return v5;
}

- (BOOL)parseBundleID:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"PartNumber"];
  v6 = [v4 objectForKey:@"Revision"];

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

- (MSDSignedManifest)initWithManifestData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v91.receiver = self;
  v91.super_class = MSDSignedManifest;
  v6 = [(MSDSignedManifest *)&v91 init];
  if (v6)
  {
    v7 = [v4 objectForKey:@"Version"];
    v8 = [v4 objectForKey:@"Info"];
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
        v12 = [(objc_class *)v11 sharedInstance];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v12 shouldRunManifestRigorousTest] & 1) == 0)
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

    v18 = [(MSDSignedManifest *)v6 manifestVerifier];

    if (v18)
    {
      v19 = [(MSDSignedManifest *)v6 manifestVerifier];
      v20 = [(MSDSignedManifest *)v6 getDataSectionKeys];
      v92 = @"RigorousTestingOverride";
      v93 = v13;
      v21 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v14 = [v19 verifyManifestSignature:v4 forDataSectionKeys:v20 withOptions:v21];

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
        v25 = v4;
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
          v4 = v25;
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
          v4 = v25;
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
        v35 = [v4 objectForKey:@"SigningKey"];
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