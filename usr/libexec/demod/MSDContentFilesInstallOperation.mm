@interface MSDContentFilesInstallOperation
- (BOOL)_addToProcessedContainersIfNeeded;
- (BOOL)_constructStagingArea;
- (BOOL)_createWormholeInStagingToUserHome;
- (BOOL)_moveFilesFromStagingToSecondaryStaging;
- (BOOL)_patchBackupFolderIfNeeded;
- (BOOL)rollback;
- (MSDContentFilesInstallOperation)initWithContext:(id)context;
- (MSDContentFilesInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager andTargetDevice:(id)device;
- (id)_retrieveContentRootPath;
- (id)methodSelectors;
@end

@implementation MSDContentFilesInstallOperation

- (MSDContentFilesInstallOperation)initWithContext:(id)context
{
  contextCopy = context;
  v5 = +[MSDContentCacheManager sharedInstance];
  v6 = +[MSDTargetDevice sharedInstance];
  v7 = [(MSDContentFilesInstallOperation *)self initWithContext:contextCopy andContentCacheManager:v5 andTargetDevice:v6];

  return v7;
}

- (MSDContentFilesInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager andTargetDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = MSDContentFilesInstallOperation;
  v10 = [(MSDOperation *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    [(MSDContentFilesInstallOperation *)v10 setContentCacheProtocol:managerCopy];
    [(MSDContentFilesInstallOperation *)v11 setTargetDeviceDelegate:deviceCopy];
  }

  return v11;
}

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_createWormholeInStagingToUserHome"];
  v3 = [NSValue valueWithPointer:"_constructStagingArea"];
  v4 = [NSValue valueWithPointer:"_patchBackupFolderIfNeeded"];
  v5 = [NSValue valueWithPointer:"_moveFilesFromStagingToSecondaryStaging"];
  v6 = [NSValue valueWithPointer:"_addToProcessedContainersIfNeeded"];
  v7 = [NSArray arrayWithObjects:v2, v3, v4, v5, v6, 0];

  return v7;
}

- (BOOL)rollback
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context2 secondaryStagingRootPath];

  v7 = +[MSDHelperAgent sharedInstance];
  v8 = [v7 removeWorkDirectory:stagingRootPath];

  if ((v8 & 1) == 0)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = +[MSDHelperAgent sharedInstance];
  v10 = [v9 removeWorkDirectory:secondaryStagingRootPath];

  if ((v10 & 1) == 0)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_1000D5324();
    }

LABEL_9:

    v11 = 0;
    goto LABEL_4;
  }

  v11 = 1;
LABEL_4:

  return v11;
}

- (BOOL)_createWormholeInStagingToUserHome
{
  v3 = +[NSFileManager defaultManager];
  targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
  demoUserHomePath = [targetDeviceDelegate demoUserHomePath];

  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];
  v8 = [stagingRootPath stringByAppendingPathComponent:demoUserHomePath];

  if (+[MSDOperationContext downloadOnly])
  {
    v9 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata";
  }

  else
  {
    v9 = demoUserHomePath;
  }

  v10 = [(__CFString *)v9 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v11 = [v10 stringByAppendingPathComponent:@"/MSD_staging"];
  context2 = [(MSDOperation *)self context];
  uniqueName = [context2 uniqueName];
  v14 = [v11 stringByAppendingPathComponent:uniqueName];

  v15 = [v10 stringByAppendingPathComponent:@"/MSD_secondary_staging"];
  context3 = [(MSDOperation *)self context];
  uniqueName2 = [context3 uniqueName];
  v18 = [v15 stringByAppendingPathComponent:uniqueName2];

  v19 = sub_100063A54();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = v8;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating wormhole in staging from %{public}@ to %{public}@...", buf, 0x16u);
  }

  stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
  v37 = 0;
  v21 = [v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v37];
  v22 = v37;

  if ((v21 & 1) == 0)
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5398(v22);
    }

    goto LABEL_26;
  }

  v36 = v22;
  v23 = [v3 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v36];
  v24 = v36;

  if ((v23 & 1) == 0)
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5424(v14, v24);
    }

    goto LABEL_25;
  }

  v35 = v24;
  v25 = [v3 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v35];
  v22 = v35;

  if ((v25 & 1) == 0)
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5424(v18, v22);
    }

    goto LABEL_26;
  }

  v26 = [v3 destinationOfSymbolicLinkAtPath:v8 error:0];

  if (v26)
  {
    v34 = v22;
    v27 = [v3 removeItemAtPath:v8 error:&v34];
    v24 = v34;

    if (v27)
    {
      v22 = v24;
      goto LABEL_12;
    }

    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D54C0(v24);
    }

LABEL_25:
    v22 = v24;
LABEL_26:

    v30 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v28 = v22;
  v33 = v22;
  v29 = [v3 createSymbolicLinkAtPath:v8 withDestinationPath:v14 error:&v33];
  v22 = v33;

  if ((v29 & 1) == 0)
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D554C(v22);
    }

    goto LABEL_26;
  }

  v30 = 1;
LABEL_14:

  return v30;
}

- (BOOL)_constructStagingArea
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  _retrieveContentRootPath = [(MSDContentFilesInstallOperation *)self _retrieveContentRootPath];
  v66 = [stagingRootPath stringByAppendingPathComponent:_retrieveContentRootPath];
  context2 = [(MSDOperation *)self context];
  masterManifest = [context2 masterManifest];
  dict = [masterManifest dict];
  allKeys = [dict allKeys];

  context3 = [(MSDOperation *)self context];
  masterManifest2 = [context3 masterManifest];

  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x3032000000;
  v121[3] = sub_10005D2B4;
  v121[4] = sub_10005D2C4;
  contentCacheProtocol = [(MSDContentFilesInstallOperation *)self contentCacheProtocol];
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = sub_10005D2B4;
  v119 = sub_10005D2C4;
  v120 = +[NSFileManager defaultManager];
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  context4 = [(MSDOperation *)self context];
  LOBYTE(masterManifest) = [context4 verifyFileHash];

  v114 = masterManifest;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 1;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_10005D2B4;
  v107 = sub_10005D2C4;
  v108 = 0;
  v67 = objc_alloc_init(NSMutableSet);
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = sub_10005D2B4;
  v101 = sub_10005D2C4;
  v102 = objc_alloc_init(NSMutableArray);
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_10005D2B4;
  v95 = sub_10005D2C4;
  v96 = +[NSMutableDictionary dictionary];
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_10005D2B4;
  v89 = sub_10005D2C4;
  v90 = objc_alloc_init(NSMutableArray);
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_10005D2B4;
  v83 = sub_10005D2C4;
  v84 = +[NSMutableDictionary dictionary];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = allKeys;
  v9 = [obj countByEnumeratingWithState:&v75 objects:v127 count:16];
  if (v9)
  {
    v64 = *v76;
    *&v10 = 138543362;
    v59 = v10;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v76 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v75 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v66 stringByAppendingPathComponent:v12];
      stringByDeletingLastPathComponent = [v14 stringByDeletingLastPathComponent];
      v16 = [masterManifest2 metadataForFile:v12];
      v17 = v16;
      if (!v16)
      {
        break;
      }

      getFileType = [v16 getFileType];
      [v67 addObject:stringByDeletingLastPathComponent];
      if ([getFileType isEqualToString:NSFileTypeDirectory])
      {
        [v67 addObject:v14];
      }

      else
      {
        if ([getFileType isEqualToString:NSFileTypeSymbolicLink])
        {
          [v86[5] addObject:v14];
          v20 = v80[5];
          getTargetFile = [v17 getTargetFile];
          [v20 setObject:getTargetFile forKey:v14];
          goto LABEL_17;
        }

        if (![getFileType isEqualToString:NSFileTypeRegular])
        {
          getTargetFile = sub_100063A54();
          if (os_log_type_enabled(getTargetFile, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v12;
            v125 = 2114;
            v126 = getFileType;
            _os_log_impl(&_mh_execute_header, getTargetFile, OS_LOG_TYPE_DEFAULT, "Ignore path %{public}@ of unexpected file type %{public}@", buf, 0x16u);
          }

LABEL_17:
          v19 = 0;
LABEL_18:

          goto LABEL_19;
        }

        [v98[5] addObject:v14];
        getFileSize = [v17 getFileSize];
        v23 = v92[5];
        if (getFileSize)
        {
          getTargetFile = [v17 getHash];
          hexStringRepresentation = [getTargetFile hexStringRepresentation];
          [v23 setObject:hexStringRepresentation forKey:v14];

          goto LABEL_17;
        }

        [v92[5] setObject:@"ZERO_SIZE" forKey:v14];
      }

      v19 = 0;
LABEL_19:

      objc_autoreleasePoolPop(v13);
      if (!v17)
      {

        if (v19 == 6)
        {
          goto LABEL_54;
        }

        goto LABEL_29;
      }

      if (v9 == ++v11)
      {
        v25 = [obj countByEnumeratingWithState:&v75 objects:v127 count:16];
        v9 = v25;
        if (v25)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    getTargetFile = sub_100063A54();
    if (os_log_type_enabled(getTargetFile, OS_LOG_TYPE_ERROR))
    {
      *buf = v59;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, getTargetFile, OS_LOG_TYPE_ERROR, "Cannot find metadata for path %{public}@", buf, 0xCu);
    }

    getFileType = 0;
    v19 = 6;
    goto LABEL_18;
  }

LABEL_27:

LABEL_29:
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v26 = v67;
  v27 = [v26 countByEnumeratingWithState:&v71 objects:v123 count:16];
  if (v27)
  {
    v28 = *v72;
    while (2)
    {
      v29 = 0;
      do
      {
        if (*v72 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v71 + 1) + 8 * v29);
        v31 = objc_autoreleasePoolPush();
        if ([v116[5] fileExistsAtPath:v30] & 1) != 0 || (v32 = v116[5], v33 = (v104 + 5), v70 = v104[5], v34 = objc_msgSend(v32, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v30, 1, 0, &v70), objc_storeStrong(v33, v70), *(v110 + 24) = v34, (v34))
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          v37 = sub_100063A54();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [v104[5] localizedDescription];
            *buf = 138543618;
            *&buf[4] = v30;
            v125 = 2114;
            v126 = localizedDescription;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Could not create directory at %{public}@ - %{public}@", buf, 0x16u);
          }

          v36 = 0;
          v35 = 6;
        }

        objc_autoreleasePoolPop(v31);
        if (!v36)
        {

          if (v35 == 6)
          {
            goto LABEL_54;
          }

          goto LABEL_46;
        }

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v39 = [v26 countByEnumeratingWithState:&v71 objects:v123 count:16];
      v27 = v39;
      if (v39)
      {
        continue;
      }

      break;
    }
  }

LABEL_46:
  v40 = [v86[5] count];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D2CC;
  block[3] = &unk_10016B040;
  block[4] = &v85;
  block[5] = &v79;
  block[6] = &v115;
  block[7] = &v103;
  block[8] = &v109;
  dispatch_apply(v40, 0, block);
  if ((v110[3] & 1) == 0)
  {
    v56 = sub_100063A54();
    sub_1000D55D8(v56);
LABEL_58:

    goto LABEL_54;
  }

  v41 = [v98[5] count];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10005D43C;
  v68[3] = &unk_10016B068;
  v68[4] = &v97;
  v68[5] = &v91;
  v68[6] = &v115;
  v68[7] = &v103;
  v68[8] = v121;
  v68[9] = v113;
  v68[10] = &v109;
  dispatch_apply(v41, 0, v68);
  if ((v110[3] & 1) == 0)
  {
    v57 = sub_100063A54();
    sub_1000D5624(v57);
    goto LABEL_58;
  }

  if (!+[MSDOperationContext downloadOnly])
  {
    context5 = [(MSDOperation *)self context];
    containerType = [context5 containerType];
    v44 = [containerType isEqualToString:@"BackupData"];

    v45 = +[MSDHelperAgent sharedInstance];
    [(MSDOperation *)self context];
    if (v44)
      v46 = {;
      contentBeingInstalled = [v46 contentBeingInstalled];
      v49 = [v45 restoreBackupAttributesUnder:v66 range:contentBeingInstalled manifestUID:v48 deviceUID:{&off_10017B0E0, &off_10017B0E0}];
      *(v110 + 24) = v49;
    }

    else
      v46 = {;
      containerType2 = [v46 containerType];
      context6 = [(MSDOperation *)self context];
      identifier = [context6 identifier];
      v53 = [v45 restoreAppDataAttributesUnder:v66 containerType:containerType2 identifier:identifier manifestUID:&off_10017B0E0 deviceUID:&off_10017B0E0];
      *(v110 + 24) = v53;
    }
  }

  if ((v110[3] & 1) == 0)
  {
    v58 = sub_100063A54();
    sub_1000D5670(v58);
    goto LABEL_58;
  }

LABEL_54:
  v54 = *(v110 + 24);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(v113, 8);
  _Block_object_dispose(&v115, 8);

  _Block_object_dispose(v121, 8);
  return v54 & 1;
}

- (BOOL)_patchBackupFolderIfNeeded
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  containerType = [context2 containerType];

  if ([containerType isEqualToString:@"BackupData"] && objc_msgSend(identifier, "hasSuffix:", @"baseBackup"))
  {
    targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
    context3 = [(MSDOperation *)self context];
    stagingRootPath = [context3 stagingRootPath];
    [targetDeviceDelegate patchBackupFolderInStaging:stagingRootPath];
  }

  if (!+[MSDOperationContext downloadOnly](MSDOperationContext, "downloadOnly") && [containerType isEqualToString:@"BackupData"] && objc_msgSend(identifier, "hasSuffix:", @"greyMatter"))
  {
    +[MSDGreyMatterHelper purgeExistingAssets];
  }

  return 1;
}

- (BOOL)_moveFilesFromStagingToSecondaryStaging
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context2 secondaryStagingRootPath];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = stagingRootPath;
    v13 = 2114;
    v14 = secondaryStagingRootPath;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Moving files from %{public}@ to %{public}@.", &v11, 0x16u);
  }

  targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
  v9 = [targetDeviceDelegate moveFilesToFinalDst:stagingRootPath finalPath:secondaryStagingRootPath];

  return v9;
}

- (BOOL)_addToProcessedContainersIfNeeded
{
  v3 = +[MSDContentFilesContext processedContainers];
  context = [(MSDOperation *)self context];
  uniqueName = [context uniqueName];

  if (([v3 containsObject:uniqueName] & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = uniqueName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding to processed containers: %{public}@", &v8, 0xCu);
    }

    [v3 addObject:uniqueName];
  }

  return 1;
}

- (id)_retrieveContentRootPath
{
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  if (!contentRootPath)
  {
    context2 = [(MSDOperation *)self context];
    contentRootPath = [context2 pseudoContentRootPath];
  }

  return contentRootPath;
}

@end