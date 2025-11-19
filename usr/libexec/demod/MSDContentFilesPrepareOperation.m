@interface MSDContentFilesPrepareOperation
- (BOOL)_compareManifests;
- (BOOL)_deteremineContentFilesInstallNecessity;
- (BOOL)_generateDeviceManifest;
- (BOOL)_prepareStagingArea;
- (BOOL)_processAlreadyHaveList;
- (BOOL)_restoreStashedStagingToSecondaryStaging;
- (id)methodSelectors;
@end

@implementation MSDContentFilesPrepareOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly](MSDOperationContext, "downloadOnly") && +[MSDHubFeatureFlags disableBackgroundInstall])
  {
    v2 = [NSValue valueWithPointer:"_deteremineContentFilesInstallNecessity"];
    v3 = [NSValue valueWithPointer:"_generateDeviceManifest"];
    v4 = [NSValue valueWithPointer:"_compareManifests"];
    v5 = [NSArray arrayWithObjects:v2, v3, v4, 0];
  }

  else
  {
    v2 = [NSValue valueWithPointer:"_deteremineContentFilesInstallNecessity"];
    v3 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v4 = [NSValue valueWithPointer:"_generateDeviceManifest"];
    v6 = [NSValue valueWithPointer:"_compareManifests"];
    v7 = [NSValue valueWithPointer:"_processAlreadyHaveList"];
    v5 = [NSArray arrayWithObjects:v2, v3, v4, v6, v7, 0];
  }

  return v5;
}

- (BOOL)_deteremineContentFilesInstallNecessity
{
  v3 = [(MSDOperation *)self context];
  if ([v3 containerized])
  {
    v4 = [(MSDOperation *)self context];
    v5 = [v4 contentRootPath];

    if (!v5 && !+[MSDOperationContext downloadOnly])
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(MSDOperation *)self context];
        v8 = [v7 identifier];
        v15 = 138543362;
        v16 = v8;
        v9 = "No content root path found for containerized component: %{public}@";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, &v15, 0xCu);

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = +[MSDContentFilesContext processedContainers];
  v11 = [(MSDOperation *)self context];
  v12 = [v11 uniqueName];
  v13 = [v10 containsObject:v12];

  if (v13)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MSDOperation *)self context];
      v8 = [v7 uniqueName];
      v15 = 138543362;
      v16 = v8;
      v9 = "Shared container is already installed: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    [(MSDOperation *)self setSkipped:1];
  }

  return 1;
}

- (BOOL)_prepareStagingArea
{
  v5.receiver = self;
  v5.super_class = MSDContentFilesPrepareOperation;
  v3 = [(MSDBasePrepareOperation *)&v5 _prepareStagingArea];
  if (v3)
  {
    sub_1000CD40C(self, &v6);
    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)_generateDeviceManifest
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[MSDHelperAgent sharedInstance];
  v5 = +[MSDTargetDevice sharedInstance];
  v6 = [(MSDOperation *)self context];
  v7 = [v6 contentRootPath];

  if (!v7)
  {
    if (+[MSDOperationContext downloadOnly])
    {
      v29 = objc_alloc_init(MSDManifest);
      v30 = [(MSDOperation *)self context];
      [v30 setDeviceManifest:v29];

      v28 = 1;
      goto LABEL_8;
    }

    sub_1000CD724();
LABEL_14:
    v28 = 0;
    goto LABEL_8;
  }

  v8 = [(MSDOperation *)self context];
  v9 = [v8 uniqueName];
  v10 = [v9 stringByAppendingPathExtension:@"plist"];

  v11 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/DeviceManifests" stringByAppendingPathComponent:v10];
  v37 = 0;
  v12 = [v3 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/DeviceManifests" withIntermediateDirectories:1 attributes:0 error:&v37];
  v13 = v37;
  if ((v12 & 1) == 0)
  {
    sub_1000CD60C(v13, v11, v10);
    goto LABEL_14;
  }

  v33 = v13;
  v34 = v10;
  v36 = v3;
  v14 = [(MSDOperation *)self context];
  v15 = [v14 rootFileSystemPath];
  v16 = [(MSDOperation *)self context];
  v17 = [v16 contentRootPath];
  v18 = [v15 stringByAppendingPathComponent:v17];

  v19 = [(MSDOperation *)self context];
  v20 = [v19 identifier];
  v21 = [(MSDOperation *)self context];
  [v21 containerType];
  v23 = v22 = v4;
  v35 = v5;
  v24 = [v5 demoUserHomePath];
  v25 = v22;
  v26 = [v22 createDeviceManifestForComponent:v20 ofType:v23 withRootPath:v18 userHomePath:v24 andSavePath:v11];

  if (v26)
  {
    v27 = [(MSDOperation *)self context];
    [v27 setDeviceManifest:v26];

    v28 = 1;
  }

  else
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD6E0(v32);
    }

    v28 = 0;
  }

  v5 = v35;
  v3 = v36;
  v4 = v25;
LABEL_8:

  return v28;
}

- (BOOL)_compareManifests
{
  v3 = [(MSDOperation *)self context];
  v4 = [v3 masterManifest];

  v28 = self;
  v5 = [(MSDOperation *)self context];
  v6 = [v5 deviceManifest];

  v31 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v4 dict];
  v34 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v34)
  {
    v7 = *v36;
    v30 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v6 dict];
        v12 = [v11 objectForKey:v9];

        if (!v12)
        {
          [v33 addObject:v9];
          goto LABEL_19;
        }

        v13 = [v4 metadataForFile:v9];
        v14 = [v6 metadataForFile:v9];
        v15 = [v13 compareWith:v14];
        if (v15 != 5)
        {
          v17 = v15;
          v18 = v6;
          v19 = v4;
          v20 = sub_100063A54();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v29 = [MSDFileMetadata compareResultToNSString:v17];
            *buf = 138543618;
            v40 = v9;
            v41 = 2114;
            v42 = v29;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "File meta data mismatch: %{public}@ (%{public}@)", buf, 0x16u);
          }

          if (v17 < 4)
          {
            [v33 addObject:v9];
            v16 = sub_100063A54();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v40 = v9;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "File found with incorrect metadata; Add to creation list: %{public}@", buf, 0xCu);
            }

            v4 = v19;
            v6 = v18;
            v7 = v30;
            goto LABEL_17;
          }

          v4 = v19;
          v6 = v18;
          v7 = v30;
          if (v17 != 4)
          {
            goto LABEL_18;
          }
        }

        [v31 addObject:v9];
        v16 = sub_100063A54();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v40 = v9;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Add to already have list: %{public}@", buf, 0xCu);
        }

LABEL_17:

LABEL_18:
LABEL_19:

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v34 != v8);
      v21 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      v34 = v21;
    }

    while (v21);
  }

  v22 = [(MSDOperation *)v28 context];
  [v22 setAlreadyHaveList:v31];

  v23 = [NSMutableArray arrayWithCapacity:0];
  v24 = [(MSDOperation *)v28 context];
  [v24 setCloneFailedList:v23];

  v25 = [(MSDOperation *)v28 context];
  [v25 setCreationList:v33];

  v26 = [(MSDOperation *)v28 context];
  [v26 setDeviceManifest:0];

  return 1;
}

- (BOOL)_processAlreadyHaveList
{
  v3 = +[MSDContentCacheManager sharedInstance];
  v48 = +[NSFileManager defaultManager];
  v46 = +[MSDOperationContext downloadOnly];
  v4 = [(MSDOperation *)self context];
  v5 = [v4 contentRootPath];

  v6 = [(MSDOperation *)self context];
  v7 = [v6 rootFileSystemPath];
  v8 = [(MSDOperation *)self context];
  v9 = v8;
  if (v5)
  {
    [v8 contentRootPath];
  }

  else
  {
    [v8 pseudoContentRootPath];
  }
  v10 = ;
  v47 = [v7 stringByAppendingPathComponent:v10];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = [(MSDOperation *)self context];
  v12 = [v11 alreadyHaveList];

  obj = v12;
  v51 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v51)
  {
    goto LABEL_28;
  }

  v14 = 0;
  v50 = *v53;
  *&v13 = 138543362;
  v43 = v13;
  v44 = self;
  v45 = v3;
  do
  {
    v15 = 0;
    do
    {
      if (*v53 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v52 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [(MSDOperation *)self context];
      v19 = [v18 masterManifest];
      v20 = [v19 metadataForFile:v16];

      if (!v20)
      {
        sub_1000CD790(v16, v17);
        goto LABEL_30;
      }

      v21 = [v20 getFileType];
      v22 = [v21 isEqualToString:NSFileTypeRegular];

      if (!v22)
      {
        v26 = 0;
        v27 = 0;
        v24 = 0;
        goto LABEL_14;
      }

      v23 = [v20 getHash];
      v24 = [v23 hexStringRepresentation];

      v25 = [v3 findFileInCache:v24];

      if (v25)
      {
        v26 = 0;
        v27 = 0;
        goto LABEL_14;
      }

      v26 = [v47 stringByAppendingPathComponent:v16];
      v28 = [v3 fileCachePathFromSourcePath:v26 forBackgroundDownload:v46];
      v27 = [v28 stringByAppendingPathComponent:v24];

      v29 = [v20 getAccessControlList];
      if (v29)
      {
        v30 = [v20 getAccessControlList];
        v31 = [v30 length] != 0;
      }

      else
      {
        v31 = 0;
      }

      if (![v48 isReadableFileAtPath:v26] || v31)
      {
        v37 = +[MSDHelperAgent sharedInstance];
        v38 = [v20 getHash];
        v39 = [v37 cloneFile:v26 to:v27 expectingHash:v38];

        if (v39)
        {
LABEL_26:
          v14 = 1;
          self = v44;
          v3 = v45;
          goto LABEL_14;
        }
      }

      else
      {
        v32 = [v20 getHash];
        v33 = [v48 cloneFile:v26 to:v27 expectingHash:v32 correctOwnership:0];

        if (v33)
        {
          goto LABEL_26;
        }
      }

      v34 = sub_100063A54();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = v43;
        v57 = v16;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to clone file %{public}@; Adding it to creation list.", buf, 0xCu);
      }

      self = v44;
      v35 = [(MSDOperation *)v44 context];
      v36 = [v35 cloneFailedList];
      [v36 addObject:v16];

      v14 = 0;
      v3 = v45;
LABEL_14:

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v51 != v15);
    v40 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    v51 = v40;
  }

  while (v40);
LABEL_28:
  v14 = 1;
LABEL_30:

  v41 = [(MSDOperation *)self context];
  [v41 setAlreadyHaveList:0];

  return v14 & 1;
}

- (BOOL)_restoreStashedStagingToSecondaryStaging
{
  v3 = +[MSDHelperAgent sharedInstance];
  v4 = +[NSFileManager defaultManager];
  v5 = [(MSDOperation *)self context];
  v6 = [v5 stashedStagingRootPath];

  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v8 = [v7 stringByAppendingPathComponent:@"/MSD_stashed_staging"];
  v9 = [(MSDOperation *)self context];
  v10 = [v9 uniqueName];
  v11 = [v8 stringByAppendingPathComponent:v10];

  v12 = [(MSDOperation *)self context];
  v13 = [v12 pseudoContentRootPath];

  v55 = [v6 stringByAppendingPathComponent:v13];
  v14 = [(MSDOperation *)self context];
  v15 = [v14 secondaryStagingRootPath];

  v16 = [(MSDOperation *)self context];
  v17 = [v16 contentRootPath];
  v52 = [v15 stringByAppendingPathComponent:v17];

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v60 = v6;
    v61 = 2114;
    v62 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restoring files from: %{public}@ to: %{public}@", buf, 0x16u);
  }

  v53 = v15;
  v54 = v13;
  if (v13 && [v4 fileExistsAtPath:v55])
  {
    v19 = [(MSDOperation *)self context];
    v20 = [v19 contentRootPath];
    v21 = [v6 stringByAppendingPathComponent:v20];

    v22 = sub_100063A54();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = v55;
      v61 = 2114;
      v62 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Renaming pseudo content content root path from: %{public}@ to: %{public}@", buf, 0x16u);
    }

    v23 = [v21 stringByDeletingLastPathComponent];
    v57 = 0;
    v24 = [v4 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v57];
    v25 = v57;

    if (v24)
    {
      v56 = v25;
      v26 = v4;
      v27 = [v4 moveItemAtPath:v55 toPath:v21 error:&v56];
      v28 = v56;

      if (v27)
      {

        v4 = v26;
        v15 = v53;
        v13 = v54;
        goto LABEL_10;
      }

      v49 = sub_100063A54();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD8B0(v28, v49);
      }

      v25 = v28;
      v4 = v26;
    }

    else
    {
      v49 = sub_100063A54();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD844();
      }
    }

    v13 = v54;

    v15 = v53;
LABEL_27:
    v36 = v52;
LABEL_28:

    v39 = 0;
    goto LABEL_14;
  }

LABEL_10:
  if (([v3 moveStagingToFinal:v6 finalPath:v15] & 1) == 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD93C(v21);
    }

    goto LABEL_27;
  }

  v29 = [(MSDOperation *)self context];
  v30 = [v29 containerType];
  v31 = [v30 isEqualToString:@"BackupData"];

  v32 = +[MSDHelperAgent sharedInstance];
  v33 = [(MSDOperation *)self context];
  v34 = v33;
  if (!v31)
  {
    v42 = [v33 containerType];
    [(MSDOperation *)self context];
    v50 = v11;
    v51 = v6;
    v43 = v7;
    v44 = v3;
    v46 = v45 = v4;
    v47 = [v46 identifier];
    v36 = v52;
    v48 = [v32 restoreAppDataAttributesUnder:v52 containerType:v42 identifier:v47 manifestUID:&off_10017AFC0 deviceUID:&off_10017AFC0];

    v4 = v45;
    v3 = v44;
    v7 = v43;
    v11 = v50;
    v6 = v51;

    if (v48)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v35 = [v33 contentBeingInstalled];
  v36 = v52;
  v38 = [v32 restoreBackupAttributesUnder:v52 range:v35 manifestUID:v37 deviceUID:{&off_10017AFC0, &off_10017AFC0}];

  if ((v38 & 1) == 0)
  {
LABEL_16:
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD980();
    }

    v15 = v53;
    v13 = v54;
    goto LABEL_28;
  }

LABEL_13:
  v39 = 1;
  v15 = v53;
  v13 = v54;
LABEL_14:
  v58[0] = v6;
  v58[1] = v11;
  v40 = [NSArray arrayWithObjects:v58 count:2];
  [v3 removeWorkDirectories:v40];

  return v39;
}

@end