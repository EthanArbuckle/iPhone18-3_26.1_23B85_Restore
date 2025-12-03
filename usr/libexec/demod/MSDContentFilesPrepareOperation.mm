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
  context = [(MSDOperation *)self context];
  if ([context containerized])
  {
    context2 = [(MSDOperation *)self context];
    contentRootPath = [context2 contentRootPath];

    if (!contentRootPath && !+[MSDOperationContext downloadOnly])
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        context3 = [(MSDOperation *)self context];
        identifier = [context3 identifier];
        v15 = 138543362;
        v16 = identifier;
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
  context4 = [(MSDOperation *)self context];
  uniqueName = [context4 uniqueName];
  v13 = [v10 containsObject:uniqueName];

  if (v13)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      context3 = [(MSDOperation *)self context];
      identifier = [context3 uniqueName];
      v15 = 138543362;
      v16 = identifier;
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
  _prepareStagingArea = [(MSDBasePrepareOperation *)&v5 _prepareStagingArea];
  if (_prepareStagingArea)
  {
    sub_1000CD40C(self, &v6);
    LOBYTE(_prepareStagingArea) = v6;
  }

  return _prepareStagingArea;
}

- (BOOL)_generateDeviceManifest
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[MSDHelperAgent sharedInstance];
  v5 = +[MSDTargetDevice sharedInstance];
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  if (!contentRootPath)
  {
    if (+[MSDOperationContext downloadOnly])
    {
      v29 = objc_alloc_init(MSDManifest);
      context2 = [(MSDOperation *)self context];
      [context2 setDeviceManifest:v29];

      v28 = 1;
      goto LABEL_8;
    }

    sub_1000CD724();
LABEL_14:
    v28 = 0;
    goto LABEL_8;
  }

  context3 = [(MSDOperation *)self context];
  uniqueName = [context3 uniqueName];
  v10 = [uniqueName stringByAppendingPathExtension:@"plist"];

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
  context4 = [(MSDOperation *)self context];
  rootFileSystemPath = [context4 rootFileSystemPath];
  context5 = [(MSDOperation *)self context];
  contentRootPath2 = [context5 contentRootPath];
  v18 = [rootFileSystemPath stringByAppendingPathComponent:contentRootPath2];

  context6 = [(MSDOperation *)self context];
  identifier = [context6 identifier];
  context7 = [(MSDOperation *)self context];
  [context7 containerType];
  v23 = v22 = v4;
  v35 = v5;
  demoUserHomePath = [v5 demoUserHomePath];
  v25 = v22;
  v26 = [v22 createDeviceManifestForComponent:identifier ofType:v23 withRootPath:v18 userHomePath:demoUserHomePath andSavePath:v11];

  if (v26)
  {
    context8 = [(MSDOperation *)self context];
    [context8 setDeviceManifest:v26];

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
  context = [(MSDOperation *)self context];
  masterManifest = [context masterManifest];

  selfCopy = self;
  context2 = [(MSDOperation *)self context];
  deviceManifest = [context2 deviceManifest];

  v31 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [masterManifest dict];
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
        dict = [deviceManifest dict];
        v12 = [dict objectForKey:v9];

        if (!v12)
        {
          [v33 addObject:v9];
          goto LABEL_19;
        }

        v13 = [masterManifest metadataForFile:v9];
        v14 = [deviceManifest metadataForFile:v9];
        v15 = [v13 compareWith:v14];
        if (v15 != 5)
        {
          v17 = v15;
          v18 = deviceManifest;
          v19 = masterManifest;
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

            masterManifest = v19;
            deviceManifest = v18;
            v7 = v30;
            goto LABEL_17;
          }

          masterManifest = v19;
          deviceManifest = v18;
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

  context3 = [(MSDOperation *)selfCopy context];
  [context3 setAlreadyHaveList:v31];

  v23 = [NSMutableArray arrayWithCapacity:0];
  context4 = [(MSDOperation *)selfCopy context];
  [context4 setCloneFailedList:v23];

  context5 = [(MSDOperation *)selfCopy context];
  [context5 setCreationList:v33];

  context6 = [(MSDOperation *)selfCopy context];
  [context6 setDeviceManifest:0];

  return 1;
}

- (BOOL)_processAlreadyHaveList
{
  v3 = +[MSDContentCacheManager sharedInstance];
  v48 = +[NSFileManager defaultManager];
  v46 = +[MSDOperationContext downloadOnly];
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  context2 = [(MSDOperation *)self context];
  rootFileSystemPath = [context2 rootFileSystemPath];
  context3 = [(MSDOperation *)self context];
  v9 = context3;
  if (contentRootPath)
  {
    [context3 contentRootPath];
  }

  else
  {
    [context3 pseudoContentRootPath];
  }
  v10 = ;
  v47 = [rootFileSystemPath stringByAppendingPathComponent:v10];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  context4 = [(MSDOperation *)self context];
  alreadyHaveList = [context4 alreadyHaveList];

  obj = alreadyHaveList;
  v51 = [alreadyHaveList countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v51)
  {
    goto LABEL_28;
  }

  v14 = 0;
  v50 = *v53;
  *&v13 = 138543362;
  v43 = v13;
  selfCopy = self;
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
      context5 = [(MSDOperation *)self context];
      masterManifest = [context5 masterManifest];
      v20 = [masterManifest metadataForFile:v16];

      if (!v20)
      {
        sub_1000CD790(v16, v17);
        goto LABEL_30;
      }

      getFileType = [v20 getFileType];
      v22 = [getFileType isEqualToString:NSFileTypeRegular];

      if (!v22)
      {
        v26 = 0;
        v27 = 0;
        hexStringRepresentation = 0;
        goto LABEL_14;
      }

      getHash = [v20 getHash];
      hexStringRepresentation = [getHash hexStringRepresentation];

      v25 = [v3 findFileInCache:hexStringRepresentation];

      if (v25)
      {
        v26 = 0;
        v27 = 0;
        goto LABEL_14;
      }

      v26 = [v47 stringByAppendingPathComponent:v16];
      v28 = [v3 fileCachePathFromSourcePath:v26 forBackgroundDownload:v46];
      v27 = [v28 stringByAppendingPathComponent:hexStringRepresentation];

      getAccessControlList = [v20 getAccessControlList];
      if (getAccessControlList)
      {
        getAccessControlList2 = [v20 getAccessControlList];
        v31 = [getAccessControlList2 length] != 0;
      }

      else
      {
        v31 = 0;
      }

      if (![v48 isReadableFileAtPath:v26] || v31)
      {
        v37 = +[MSDHelperAgent sharedInstance];
        getHash2 = [v20 getHash];
        v39 = [v37 cloneFile:v26 to:v27 expectingHash:getHash2];

        if (v39)
        {
LABEL_26:
          v14 = 1;
          self = selfCopy;
          v3 = v45;
          goto LABEL_14;
        }
      }

      else
      {
        getHash3 = [v20 getHash];
        v33 = [v48 cloneFile:v26 to:v27 expectingHash:getHash3 correctOwnership:0];

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

      self = selfCopy;
      context6 = [(MSDOperation *)selfCopy context];
      cloneFailedList = [context6 cloneFailedList];
      [cloneFailedList addObject:v16];

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

  context7 = [(MSDOperation *)self context];
  [context7 setAlreadyHaveList:0];

  return v14 & 1;
}

- (BOOL)_restoreStashedStagingToSecondaryStaging
{
  v3 = +[MSDHelperAgent sharedInstance];
  v4 = +[NSFileManager defaultManager];
  context = [(MSDOperation *)self context];
  stashedStagingRootPath = [context stashedStagingRootPath];

  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v8 = [v7 stringByAppendingPathComponent:@"/MSD_stashed_staging"];
  context2 = [(MSDOperation *)self context];
  uniqueName = [context2 uniqueName];
  v11 = [v8 stringByAppendingPathComponent:uniqueName];

  context3 = [(MSDOperation *)self context];
  pseudoContentRootPath = [context3 pseudoContentRootPath];

  v55 = [stashedStagingRootPath stringByAppendingPathComponent:pseudoContentRootPath];
  context4 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context4 secondaryStagingRootPath];

  context5 = [(MSDOperation *)self context];
  contentRootPath = [context5 contentRootPath];
  v52 = [secondaryStagingRootPath stringByAppendingPathComponent:contentRootPath];

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v60 = stashedStagingRootPath;
    v61 = 2114;
    v62 = secondaryStagingRootPath;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restoring files from: %{public}@ to: %{public}@", buf, 0x16u);
  }

  v53 = secondaryStagingRootPath;
  v54 = pseudoContentRootPath;
  if (pseudoContentRootPath && [v4 fileExistsAtPath:v55])
  {
    context6 = [(MSDOperation *)self context];
    contentRootPath2 = [context6 contentRootPath];
    v21 = [stashedStagingRootPath stringByAppendingPathComponent:contentRootPath2];

    v22 = sub_100063A54();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = v55;
      v61 = 2114;
      v62 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Renaming pseudo content content root path from: %{public}@ to: %{public}@", buf, 0x16u);
    }

    stringByDeletingLastPathComponent = [v21 stringByDeletingLastPathComponent];
    v57 = 0;
    v24 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v57];
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
        secondaryStagingRootPath = v53;
        pseudoContentRootPath = v54;
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

    pseudoContentRootPath = v54;

    secondaryStagingRootPath = v53;
LABEL_27:
    v36 = v52;
LABEL_28:

    v39 = 0;
    goto LABEL_14;
  }

LABEL_10:
  if (([v3 moveStagingToFinal:stashedStagingRootPath finalPath:secondaryStagingRootPath] & 1) == 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD93C(v21);
    }

    goto LABEL_27;
  }

  context7 = [(MSDOperation *)self context];
  containerType = [context7 containerType];
  v31 = [containerType isEqualToString:@"BackupData"];

  v32 = +[MSDHelperAgent sharedInstance];
  context8 = [(MSDOperation *)self context];
  v34 = context8;
  if (!v31)
  {
    containerType2 = [context8 containerType];
    [(MSDOperation *)self context];
    v50 = v11;
    v51 = stashedStagingRootPath;
    v43 = v7;
    v44 = v3;
    v46 = v45 = v4;
    identifier = [v46 identifier];
    v36 = v52;
    v48 = [v32 restoreAppDataAttributesUnder:v52 containerType:containerType2 identifier:identifier manifestUID:&off_10017AFC0 deviceUID:&off_10017AFC0];

    v4 = v45;
    v3 = v44;
    v7 = v43;
    v11 = v50;
    stashedStagingRootPath = v51;

    if (v48)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  contentBeingInstalled = [context8 contentBeingInstalled];
  v36 = v52;
  v38 = [v32 restoreBackupAttributesUnder:v52 range:contentBeingInstalled manifestUID:v37 deviceUID:{&off_10017AFC0, &off_10017AFC0}];

  if ((v38 & 1) == 0)
  {
LABEL_16:
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD980();
    }

    secondaryStagingRootPath = v53;
    pseudoContentRootPath = v54;
    goto LABEL_28;
  }

LABEL_13:
  v39 = 1;
  secondaryStagingRootPath = v53;
  pseudoContentRootPath = v54;
LABEL_14:
  v58[0] = stashedStagingRootPath;
  v58[1] = v11;
  v40 = [NSArray arrayWithObjects:v58 count:2];
  [v3 removeWorkDirectories:v40];

  return v39;
}

@end