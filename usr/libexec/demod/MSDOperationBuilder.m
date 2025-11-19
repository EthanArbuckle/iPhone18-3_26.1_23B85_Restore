@interface MSDOperationBuilder
- (id)buildAppDataOperationsWithIdentifier:(id)a3 andDependencies:(id)a4;
- (id)buildAppRemovalOperationsWithIdentifier:(id)a3;
- (id)buildBackupOperationsWithPath:(id)a3 andIndex:(unint64_t)a4;
- (id)buildConfigurationProfileOperationsWithIdentifier:(id)a3;
- (id)buildProvisioningProfileOperations:(id)a3;
- (id)buildSettingsOperationWithIdentifier:(id)a3;
- (id)buildStandalonePkgOperationsWithIdentifier:(id)a3;
- (id)buildSystemAppOperationsWithIdentifier:(id)a3;
- (id)sequentialGroupForIdentifiers:(id)a3 andContext:(id)a4;
- (id)sequentialOperationsForIdentifiers:(id)a3 andContext:(id)a4;
@end

@implementation MSDOperationBuilder

- (id)buildBackupOperationsWithPath:(id)a3 andIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MSDOperationBuilder *)self signedManifest];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 getVersion]);

  v9 = [MSDSignedManifest getComponentFromPath:v6 forManifestVersion:v8];
  v10 = +[MSDTargetDevice sharedInstance];
  v11 = [v10 demoUserHomePath];

  v12 = [MSDManifest alloc];
  v13 = [(MSDOperationBuilder *)self signedManifest];
  v14 = [v13 mergedBackupManifest:{a4, 1}];
  v15 = [(MSDManifest *)v12 initWithDictionary:v14 andUserHomePath:v11];

  if (v15)
  {
    v16 = [MSDContentFilesContext defaultContextForBackupItem:v9];
    [v16 setMasterManifest:v15];
    [v16 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
    v17 = [(MSDOperationBuilder *)self signedManifest];
    v18 = [v17 originServerForBackupManifest:{a4, 1}];
    [v16 setOriginServer:v18];

    v19 = [(MSDOperationBuilder *)self signedManifest];
    v20 = [v19 getDataComponentRealSizeFromSection:@"BackupData" forIdentifier:v9];
    [v16 setDiskSpacedRequired:v20];

    [v16 setContentBeingInstalled:a4, 1];
    [v16 setAppIdentifier:v9];
    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      v21 = @"/private/var/mnt/com.apple.mobilestoredemo.snapshot";
    }

    else
    {
      v21 = @"/";
    }

    [v16 setRootFileSystemPath:v21];
    v22 = [NSMutableArray arrayWithObjects:@"MSDContentFilesPrepareOperation", @"MSDContentFilesDownloadOperation", @"MSDContentFilesInstallOperation", 0];
    if ([(MSDOperationBuilder *)self forBackgroundDownload]&& [(MSDOperationBuilder *)self disableBackgroundInstall])
    {
      [v22 removeLastObject];
    }

    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      goto LABEL_13;
    }

    v23 = [(MSDOperationBuilder *)self signedManifest];
    v24 = [v23 isItemBaseBackup:v6];

    if (v24 & 1) != 0 || (-[MSDOperationBuilder signedManifest](self, "signedManifest"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 isItemProvisioningProfileBackup:v6], v25, (v26))
    {
      v27 = &off_10016B518;
    }

    else
    {
      v30 = [(MSDOperationBuilder *)self signedManifest];
      v31 = [v30 isItemConfigurationProfileBackup:v6];

      if (!v31)
      {
        goto LABEL_13;
      }

      v27 = &off_10016B510;
    }

    [v22 addObject:*v27];
LABEL_13:
    v28 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v22 andContext:v16];

    goto LABEL_14;
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000CB818();
  }

  v28 = 0;
LABEL_14:

  return v28;
}

- (id)buildStandalonePkgOperationsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MSDOperationBuilder *)self signedManifest];
  v6 = [v5 getManifestInfoFromSection:@"Packages" forIdentifier:v4];

  if (!v6)
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v4;
      v22 = "Missing Info section for stand-alone package:  %{public}@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    }

LABEL_14:
    v20 = 0;
    goto LABEL_6;
  }

  v7 = [v6 objectForKey:@"Hash"];
  if (!v7)
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v4;
      v22 = "Missing Hash value in the Info section for stand-alone package:  %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDOperationContext *)v9 setIdentifier:v4];
  [(MSDInstallableFileContext *)v9 setFileType:1];
  v10 = [v8 hexStringRepresentation];
  [(MSDInstallableFileContext *)v9 setFileHash:v10];

  [(MSDInstallableFileContext *)v9 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  v11 = [(MSDOperationBuilder *)self signedManifest];
  v12 = [v11 getOriginServerFromSection:@"Packages" forIdentifier:v4];
  [(MSDInstallableFileContext *)v9 setOriginServer:v12];

  v13 = [(MSDOperationBuilder *)self signedManifest];
  v14 = [v13 getStandAlonePackageRealSize:v4];
  v15 = [v14 unsignedLongLongValue];

  v16 = [(MSDOperationBuilder *)self signedManifest];
  v17 = [v16 getStandAlonePackageFileSize:v4];
  v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v17 unsignedLongLongValue] + v15 + ((((((5 * v15) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2));
  [(MSDOperationContext *)v9 setDiskSpacedRequired:v18];

  v19 = [NSMutableArray arrayWithObjects:@"MSDBasePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
  if (![(MSDOperationBuilder *)self forBackgroundDownload])
  {
    [v19 addObject:@"MSDPackageInstallOperation"];
  }

  v20 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v19 andContext:v9];

LABEL_6:

  return v20;
}

- (id)buildConfigurationProfileOperationsWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBB00(v20, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_16;
  }

  v5 = [(MSDOperationBuilder *)self signedManifest];
  v6 = [v5 getManifestDataFromSection:@"ConfigurationProfiles" forIdentifier:v4];

  if (!v6)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBA7C();
    }

LABEL_16:
    v21 = 0;
    goto LABEL_9;
  }

  if ([v6 count]!= 1)
  {
    sub_1000CB880();
LABEL_20:
    v21 = 0;
    v20 = v6;
    goto LABEL_9;
  }

  v7 = [(MSDOperationBuilder *)self signedManifest];
  v8 = [v7 getManifestInfoFromSection:@"ConfigurationProfiles" forIdentifier:v4];

  if (!v8)
  {
    sub_1000CB9D8();
    goto LABEL_20;
  }

  v9 = [v6 allKeys];
  v10 = [v9 firstObject];

  v11 = [v6 objectForKey:v10];
  v12 = [v11 objectForKey:@"MSDManifestFileHash"];

  if (!v12)
  {
    sub_1000CB914(v10, v4, v8);
    goto LABEL_20;
  }

  v13 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDOperationContext *)v13 setIdentifier:v4];
  [(MSDInstallableFileContext *)v13 setFileType:3];
  v14 = [v12 hexStringRepresentation];
  [(MSDInstallableFileContext *)v13 setFileHash:v14];

  [(MSDInstallableFileContext *)v13 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  v15 = [(MSDOperationBuilder *)self signedManifest];
  v16 = [v15 getOriginServerFromSection:@"ConfigurationProfiles" forIdentifier:v4];
  [(MSDInstallableFileContext *)v13 setOriginServer:v16];

  v17 = [(MSDOperationBuilder *)self signedManifest];
  v18 = [v17 getDataComponentRealSizeFromSection:@"ConfigurationProfiles" forIdentifier:v4];
  [(MSDOperationContext *)v13 setDiskSpacedRequired:v18];

  v19 = [v8 objectForKey:@"ProfileIdentifier"];
  [(MSDInstallableFileContext *)v13 setProfileIdentifier:v19];

  v20 = [NSMutableArray arrayWithObjects:@"MSDBasePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
  if (![(MSDOperationBuilder *)self forBackgroundDownload])
  {
    [v20 addObject:@"MSDConfigurationProfileInstallOperation"];
  }

  v21 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v20 andContext:v13];

LABEL_9:

  return v21;
}

- (id)buildAppRemovalOperationsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDInstallableFileContext *)v6 setFileType:0];
  [(MSDOperationContext *)v6 setIdentifier:v4];

  [(MSDInstallableFileContext *)v6 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  v13 = @"MSDIPAUninstallOperation";
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v7 andContext:v6];

  if (v8)
  {
    v9 = [v8 operations];
    v10 = [v9 allObjects];
    [v5 addObjectsFromArray:v10];

    v11 = v5;
  }

  else
  {
    sub_1000CBB70();
    v11 = 0;
  }

  return v11;
}

- (id)buildSettingsOperationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MSDOperationBuilder *)self signedManifest];
  v6 = [v5 getSettingsDataFromSection:@"BackupData" forIdentifier:v4];

  v7 = sub_100063A54();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[MSDOperationBuilder buildSettingsOperationWithIdentifier:]";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v12, 0x16u);
    }

    v8 = [MSDSettingsContext defaultContextForIdentifier:v4];
    [v8 setDataDict:v6];
    v9 = +[NSMutableArray array];
    [v9 addObject:@"MSDSettingsInstallOperation"];
    v10 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v9 andContext:v8];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBBCC();
    }

    v10 = 0;
  }

  return v10;
}

- (id)sequentialOperationsForIdentifiers:(id)a3 andContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MSDOperationRepository createOperationFromIdentifier:*(*(&v18 + 1) + 8 * i) withContext:v6, v18];
        if (!v13)
        {

          v16 = 0;
          goto LABEL_13;
        }

        v14 = v13;
        if ([v7 count])
        {
          v15 = [v7 lastObject];
          [v14 addDependency:v15];
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = v7;
LABEL_13:

  return v16;
}

- (id)sequentialGroupForIdentifiers:(id)a3 andContext:(id)a4
{
  v4 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:a3 andContext:a4];
  v5 = [[MSDOperationGroup alloc] initWithOperations:v4];

  return v5;
}

- (id)buildAppDataOperationsWithIdentifier:(id)a3 andDependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MSDTargetDevice sharedInstance];
  v55 = [v8 demoUserHomePath];

  v57 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(MSDOperationContext);
  v56 = v6;
  [(MSDOperationContext *)v9 setIdentifier:v6];
  if ([v7 count])
  {
    v71 = @"MSDApplicationDataPrepareOperation";
    v10 = [NSArray arrayWithObjects:&v71 count:1];
    v11 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v10 andContext:v9];

    if (v11)
    {
      [v57 addObject:v11];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v13)
      {
        goto LABEL_49;
      }

      v14 = v13;
      v51 = *v63;
      v54 = v11;
      v48 = v9;
      v49 = v7;
      v50 = v12;
      while (1)
      {
        v15 = 0;
        v47 = v14;
        do
        {
          if (*v63 != v51)
          {
            objc_enumerationMutation(v12);
          }

          v52 = v15;
          v16 = *(*(&v62 + 1) + 8 * v15);
          v17 = [v12 objectForKey:v16];
          v18 = v16;
          if (!v17 || ![v17 count])
          {
            v19 = sub_100063A54();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            *buf = 138543362;
            *&buf[4] = v18;
            v20 = v19;
            v21 = "No dependency listed under: %{public}@";
LABEL_15:
            v22 = 12;
LABEL_16:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
            goto LABEL_17;
          }

          if ([v18 isEqualToString:@"ProvisioningProfiles"])
          {
            v19 = sub_100063A54();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            *buf = 0;
            v20 = v19;
            v21 = "Skip app provisioning profile dependency.";
            v22 = 2;
            goto LABEL_16;
          }

          if ([v18 isEqualToString:@"AppData"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"ExtensionData") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"GroupData") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"UserData") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"SharedAppData"))
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v19 = v17;
            v23 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v23)
            {
              v24 = v23;
              obj = v19;
              v25 = *v59;
              while (2)
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v59 != v25)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v27 = *(*(&v58 + 1) + 8 * i);
                  v28 = sub_100063A54();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    *&buf[4] = v27;
                    v67 = 2114;
                    v68 = v18;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Creating operation sequence for app data: <Name = %{public}@, Type = %{public}@>", buf, 0x16u);
                  }

                  v29 = [(MSDOperationBuilder *)self signedManifest];
                  v30 = [v29 getManifestDataFromSection:v18 forIdentifier:v27];

                  if (!v30)
                  {
                    sub_1000CBC34(v27, buf);
                    v33 = *buf;
LABEL_55:

                    v44 = 0;
                    v9 = v48;
                    v7 = v49;
                    goto LABEL_56;
                  }

                  v31 = [(MSDOperationBuilder *)self signedManifest];
                  v32 = [v31 isContainerizedComponent:v18];

                  if (v32)
                  {
                    [MSDContentFilesContext defaultContextForContainerizedAppDataItem:v27];
                  }

                  else
                  {
                    [MSDContentFilesContext defaultContextForNonContainerizedAppDataItem:v27];
                  }
                  v33 = ;
                  v34 = [[MSDManifest alloc] initWithDictionary:v30 andUserHomePath:v55];
                  [v33 setMasterManifest:v34];

                  [v33 setIdentifier:v27];
                  [v33 setContainerType:v18];
                  [v33 setVerifyFileHash:{-[MSDOperationBuilder verifyHashBeforeStaging](self, "verifyHashBeforeStaging")}];
                  v35 = [(MSDOperationBuilder *)self signedManifest];
                  v36 = [v35 getOriginServerFromSection:v18 forIdentifier:v27];
                  [v33 setOriginServer:v36];

                  v37 = [(MSDOperationBuilder *)self signedManifest];
                  v38 = [v37 getDataComponentRealSizeFromSection:v18 forIdentifier:v27];
                  [v33 setDiskSpacedRequired:v38];

                  [v33 setAppIdentifier:v56];
                  if ([(MSDOperationBuilder *)self forBackgroundDownload])
                  {
                    v39 = @"/private/var/mnt/com.apple.mobilestoredemo.snapshot";
                  }

                  else
                  {
                    v39 = @"/";
                  }

                  [v33 setRootFileSystemPath:v39];
                  v40 = [NSMutableArray arrayWithObjects:@"MSDContentFilesPrepareOperation", @"MSDContentFilesDownloadOperation", @"MSDContentFilesInstallOperation", 0];
                  if ([(MSDOperationBuilder *)self forBackgroundDownload]&& [(MSDOperationBuilder *)self disableBackgroundInstall])
                  {
                    [v40 removeLastObject];
                  }

                  v41 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v40 andContext:v33];
                  v11 = v54;
                  if (!v41)
                  {

                    goto LABEL_55;
                  }

                  v42 = v41;
                  [v41 addDependency:v54];
                  [v57 addObject:v42];
                }

                v24 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }

              v19 = obj;
              v17 = obj;
              v12 = v50;
              v14 = v47;
            }

            else
            {
              v17 = v19;
            }
          }

          else
          {
            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v18;
              v20 = v19;
              v21 = "Ignore unrecognized app dependency: %{public}@";
              goto LABEL_15;
            }
          }

LABEL_17:

          v15 = v52 + 1;
        }

        while ((v52 + 1) != v14);
        v43 = [v12 countByEnumeratingWithState:&v62 objects:v70 count:16];
        v14 = v43;
        v9 = v48;
        v7 = v49;
        if (!v43)
        {
LABEL_49:

          v44 = [[MSDOperationGroup alloc] initWithOperationGroups:v57];
          goto LABEL_56;
        }
      }
    }

    sub_1000CBCDC();
    v44 = 0;
  }

  else
  {
    v45 = sub_100063A54();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "No app dependencies for %{public}@; skip building AppData operations ...", buf, 0xCu);
    }

    v44 = objc_alloc_init(MSDOperationGroup);
  }

LABEL_56:

  return v44;
}

- (id)buildProvisioningProfileOperations:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v29 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v29)
  {
    v28 = *v31;
    obj = v6;
    v27 = v5;
    while (2)
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [(MSDOperationBuilder *)self signedManifest];
        v10 = [v9 getManifestDataFromSection:@"ProvisioningProfiles" forIdentifier:v8];

        if (!v10)
        {
          sub_1000CBE84(v8, &v34);
          v12 = v34;
          goto LABEL_20;
        }

        if ([v10 count] != 1)
        {
          v12 = sub_100063A54();
          v6 = obj;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000CBD70();
          }

          goto LABEL_21;
        }

        v11 = [v10 allKeys];
        v12 = [v11 firstObject];

        v13 = [v10 objectForKey:v12];
        v14 = [v13 objectForKey:@"MSDManifestFileHash"];

        if (!v14)
        {
          sub_1000CBDD8();
          goto LABEL_20;
        }

        v15 = objc_alloc_init(MSDInstallableFileContext);
        [(MSDOperationContext *)v15 setIdentifier:v8];
        [(MSDInstallableFileContext *)v15 setFileType:2];
        v16 = [v14 hexStringRepresentation];
        [(MSDInstallableFileContext *)v15 setFileHash:v16];

        [(MSDInstallableFileContext *)v15 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
        v17 = [(MSDOperationBuilder *)self signedManifest];
        v18 = [v17 getOriginServerFromSection:@"ProvisioningProfiles" forIdentifier:v8];
        [(MSDInstallableFileContext *)v15 setOriginServer:v18];

        v19 = [(MSDOperationBuilder *)self signedManifest];
        v20 = [v19 getDataComponentRealSizeFromSection:@"ProvisioningProfiles" forIdentifier:v8];
        [(MSDOperationContext *)v15 setDiskSpacedRequired:v20];

        v21 = [NSMutableArray arrayWithObjects:@"MSDProvisioningProfilePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
        if (![(MSDOperationBuilder *)self forBackgroundDownload])
        {
          [v21 addObject:@"MSDProvisioningProfileInstallOperation"];
        }

        v22 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v21 andContext:v15];
        v5 = v27;
        if (!v22)
        {

          v12 = v21;
LABEL_20:
          v6 = obj;
LABEL_21:

          v24 = 0;
          goto LABEL_22;
        }

        v23 = v22;
        [v27 addObjectsFromArray:v22];
      }

      v6 = obj;
      v29 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v24 = [[MSDOperationGroup alloc] initWithOperations:v5];
LABEL_22:

  return v24;
}

- (id)buildSystemAppOperationsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(MSDOperationBuilder *)self signedManifest];
  v7 = [v6 getSystemAppDataList];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v48 = v4;
    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_alloc_init(MSDOperationContext);
      [(MSDOperationContext *)v8 setIdentifier:v4];
      v57 = @"MSDSystemAppsDataPrepareOperation";
      v9 = [NSArray arrayWithObjects:&v57 count:1];
      v10 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v9 andContext:v8];

      if (!v10)
      {
        goto LABEL_30;
      }

      v11 = [(MSDOperationContext *)v10 operations];
      v12 = [v11 allObjects];
      [v5 addObjectsFromArray:v12];

      v8 = v10;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v47 = v7;
    obj = v7;
    v13 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v52;
      *&v14 = 138543362;
      v49 = v14;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v51 + 1) + 8 * v17);
          v19 = sub_100063A54();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            sub_100024E74(v20, v21, v22, v23, v24, v25, v26, v27, v47, v48, v49);
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing system app: %{public}@", v28, 0xCu);
          }

          v29 = [(MSDOperationBuilder *)self signedManifest];
          v30 = [v29 getSystemAppDependecies:v18];

          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v31 = [(MSDOperationBuilder *)self buildAppDataOperationsWithIdentifier:v18 andDependencies:v30];
            if (!v31)
            {
              v45 = sub_100063A54();
              if (sub_1000083A0(v45))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to generate operation sequences from app dependencies.", buf, 2u);
              }

              v10 = 0;
              goto LABEL_29;
            }

            v32 = v31;
            if (v8)
            {
              [v31 addDependency:v8];
            }

            v33 = [v32 operations];
            v34 = [v33 allObjects];
            [v5 addObjectsFromArray:v34];
          }

          else
          {
            v32 = sub_100063A54();
            v35 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
            if (v35)
            {
              sub_100024E74(v35, v36, v37, v38, v39, v40, v41, v42, v47, v48, v49);
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Missing app data dependencies for system app:  %{public}@", v43, 0xCu);
            }
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v44 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        v15 = v44;
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    v10 = v5;
LABEL_29:
    v7 = v47;
    v4 = v48;
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "Missing SystemApps data section.", buf, 2u);
    }

    v10 = 0;
  }

LABEL_30:

  return v10;
}

@end