@interface MSDContentCacheManager
+ (id)sharedInstance;
- (BOOL)copyFileIfPresentInCache:(id)cache toLocation:(id)location verifyHash:(BOOL)hash;
- (BOOL)deleteFromCache:(id)cache;
- (MSDContentCacheManager)init;
- (id)appDiffPatchFileForSourceAppUID:(id)d targetAppUID:(id)iD;
- (id)fileCachePathFromSourcePath:(id)path forBackgroundDownload:(BOOL)download;
- (id)findFileInCache:(id)cache;
- (unint64_t)fileSizeInCache:(id)cache;
- (void)_clearFactoryCache;
- (void)_loadCachedManifestPaths;
- (void)addAppDiffPatchFile:(id)file sourceAppUID:(id)d targetAppUID:(id)iD;
- (void)clearCache;
- (void)clearCacheExceptFileHashes:(id)hashes;
- (void)createDownloadCacheFolders;
- (void)loadAppPatchesList;
- (void)removeAppDiffPatchFileForSourceAppUID:(id)d targetAppUID:(id)iD;
- (void)saveAppPatchesList;
@end

@implementation MSDContentCacheManager

+ (id)sharedInstance
{
  if (qword_1001A59C0 != -1)
  {
    sub_1000E6154();
  }

  v3 = qword_1001A59B8;

  return v3;
}

- (MSDContentCacheManager)init
{
  v14.receiver = self;
  v14.super_class = MSDContentCacheManager;
  v2 = [(MSDContentCacheManager *)&v14 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(MSDContentCacheManager *)v2 setFileManager:v3];

    v4 = [NSURL fileURLWithPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/.MSD_cache/AppPatches.plist"];
    [(MSDContentCacheManager *)v2 setAppPatchesListFileURL:v4];

    [(MSDContentCacheManager *)v2 setDemoVolumeCacheFolderPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/.MSD_cache"];
    [(MSDContentCacheManager *)v2 setDataVolumeCacheFolderPath:@"/var/MSDWorkContainer/.MSD_cache"];
    v5 = +[MSDTargetDevice sharedInstance];
    demoUserHomePath = [v5 demoUserHomePath];
    [(MSDContentCacheManager *)v2 setUserHomePath:demoUserHomePath];

    userHomePath = [(MSDContentCacheManager *)v2 userHomePath];
    v8 = [userHomePath stringByAppendingPathComponent:@"/.MSD_cache"];
    [(MSDContentCacheManager *)v2 setUserVolumeCacheFolderPath:v8];

    dataVolumeCacheFolderPath = [(MSDContentCacheManager *)v2 dataVolumeCacheFolderPath];
    v15[0] = dataVolumeCacheFolderPath;
    demoVolumeCacheFolderPath = [(MSDContentCacheManager *)v2 demoVolumeCacheFolderPath];
    v15[1] = demoVolumeCacheFolderPath;
    userVolumeCacheFolderPath = [(MSDContentCacheManager *)v2 userVolumeCacheFolderPath];
    v15[2] = userVolumeCacheFolderPath;
    v12 = [NSArray arrayWithObjects:v15 count:3];
    [(MSDContentCacheManager *)v2 setFileDownloadCachePaths:v12];

    [(MSDContentCacheManager *)v2 _loadCachedManifestPaths];
    [(MSDContentCacheManager *)v2 createDownloadCacheFolders];
    [(MSDContentCacheManager *)v2 loadAppPatchesList];
  }

  return v2;
}

- (void)clearCache
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  fileDownloadCachePaths = [(MSDContentCacheManager *)self fileDownloadCachePaths];
  v4 = [fileDownloadCachePaths countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138543362;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(fileDownloadCachePaths);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        fileManager = [(MSDContentCacheManager *)self fileManager];
        v11 = [fileManager fileExistsAtPath:v9];

        if (v11)
        {
          v12 = sub_100063A54();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing the cache at path: %{public}@", buf, 0xCu);
          }

          fileManager2 = [(MSDContentCacheManager *)self fileManager];
          [fileManager2 removeItemAtPath:v9 error:0];
        }

        fileManager3 = [(MSDContentCacheManager *)self fileManager];
        [fileManager3 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [fileDownloadCachePaths countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  [(MSDContentCacheManager *)self _clearFactoryCache];
}

- (void)clearCacheExceptFileHashes:(id)hashes
{
  hashesCopy = hashes;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  fileDownloadCachePaths = [(MSDContentCacheManager *)self fileDownloadCachePaths];
  v6 = [fileDownloadCachePaths countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138543362;
    v17 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(fileDownloadCachePaths);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        fileManager = [(MSDContentCacheManager *)self fileManager];
        v13 = [fileManager fileExistsAtPath:v11];

        if (v13)
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v25 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Clearing the cache at path: %{public}@", buf, 0xCu);
          }

          v15 = +[NSFileManager defaultManager];
          v16 = [v15 contentsOfDirectoryAtPath:v11 error:0];

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000A0F2C;
          v18[3] = &unk_10016BF50;
          v18[4] = v11;
          v18[5] = self;
          v19 = hashesCopy;
          [v16 enumerateObjectsUsingBlock:v18];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [fileDownloadCachePaths countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  [(MSDContentCacheManager *)self _clearFactoryCache];
}

- (BOOL)copyFileIfPresentInCache:(id)cache toLocation:(id)location verifyHash:(BOOL)hash
{
  hashCopy = hash;
  cacheCopy = cache;
  locationCopy = location;
  v10 = [(MSDContentCacheManager *)self findFileInCache:cacheCopy];
  if (v10)
  {
    if (hashCopy)
    {
      v11 = [MSDFileMetadata fileHashWithPath:v10];
      hexStringRepresentation = [v11 hexStringRepresentation];

      if (![cacheCopy isEqualToString:hexStringRepresentation])
      {
        sub_1000E6204();
        v17 = 0;
LABEL_17:

        v18 = 0;
        goto LABEL_13;
      }
    }

    fileManager = [(MSDContentCacheManager *)self fileManager];
    v14 = [fileManager fileExistsAtPath:locationCopy];

    if (v14)
    {
      fileManager2 = [(MSDContentCacheManager *)self fileManager];
      v24 = 0;
      v16 = [fileManager2 removeItemAtPath:locationCopy error:&v24];
      v17 = v24;

      if ((v16 & 1) == 0)
      {
        hexStringRepresentation = sub_100063A54();
        if (os_log_type_enabled(hexStringRepresentation, OS_LOG_TYPE_ERROR))
        {
          sub_1000E62A4();
        }

        goto LABEL_17;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;
    fileManager3 = [(MSDContentCacheManager *)self fileManager];
    v23 = v17;
    v21 = [fileManager3 copyItemAtPath:v10 toPath:locationCopy error:&v23];
    v17 = v23;

    if ((v21 & 1) == 0)
    {
      hexStringRepresentation = sub_100063A54();
      if (os_log_type_enabled(hexStringRepresentation, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6318();
      }

      goto LABEL_17;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

LABEL_13:

  return v18;
}

- (id)fileCachePathFromSourcePath:(id)path forBackgroundDownload:(BOOL)download
{
  downloadCopy = download;
  pathCopy = path;
  if ([pathCopy hasPrefix:@"/private"])
  {
    v7 = [pathCopy substringFromIndex:{objc_msgSend(@"/private", "length")}];

    pathCopy = v7;
  }

  if (downloadCopy)
  {
    demoVolumeCacheFolderPath = [(MSDContentCacheManager *)self demoVolumeCacheFolderPath];
  }

  else if (pathCopy && (-[MSDContentCacheManager userHomePath](self, "userHomePath"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [pathCopy hasPrefix:v9], v9, v10))
  {
    demoVolumeCacheFolderPath = [(MSDContentCacheManager *)self userVolumeCacheFolderPath];
  }

  else
  {
    demoVolumeCacheFolderPath = [(MSDContentCacheManager *)self dataVolumeCacheFolderPath];
  }

  v11 = demoVolumeCacheFolderPath;

  return v11;
}

- (void)addAppDiffPatchFile:(id)file sourceAppUID:(id)d targetAppUID:(id)iD
{
  fileCopy = file;
  dCopy = d;
  iDCopy = iD;
  iDCopy = [NSString stringWithFormat:@"%@_%@", dCopy, iDCopy];
  appPatches = [(MSDContentCacheManager *)self appPatches];
  objc_sync_enter(appPatches);
  appPatches2 = [(MSDContentCacheManager *)self appPatches];
  [appPatches2 setObject:fileCopy forKey:iDCopy];

  [(MSDContentCacheManager *)self saveAppPatchesList];
  objc_sync_exit(appPatches);
}

- (void)removeAppDiffPatchFileForSourceAppUID:(id)d targetAppUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  iDCopy = [NSString stringWithFormat:@"%@_%@", dCopy, iDCopy];
  appPatches = [(MSDContentCacheManager *)self appPatches];
  objc_sync_enter(appPatches);
  appPatches2 = [(MSDContentCacheManager *)self appPatches];
  [appPatches2 removeObjectForKey:iDCopy];

  [(MSDContentCacheManager *)self saveAppPatchesList];
  objc_sync_exit(appPatches);
}

- (id)appDiffPatchFileForSourceAppUID:(id)d targetAppUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  iDCopy = [NSString stringWithFormat:@"%@_%@", dCopy, iDCopy];
  appPatches = [(MSDContentCacheManager *)self appPatches];
  objc_sync_enter(appPatches);
  appPatches2 = [(MSDContentCacheManager *)self appPatches];
  v11 = [appPatches2 objectForKey:iDCopy];

  objc_sync_exit(appPatches);

  return v11;
}

- (id)findFileInCache:(id)cache
{
  cacheCopy = cache;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  fileDownloadCachePaths = [(MSDContentCacheManager *)self fileDownloadCachePaths];
  v6 = [fileDownloadCachePaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(fileDownloadCachePaths);
      }

      v10 = [*(*(&v14 + 1) + 8 * v9) stringByAppendingPathComponent:cacheCopy];
      fileManager = [(MSDContentCacheManager *)self fileManager];
      v12 = [fileManager fileExistsAtPath:v10];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [fileDownloadCachePaths countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (unint64_t)fileSizeInCache:(id)cache
{
  v4 = [(MSDContentCacheManager *)self findFileInCache:cache];
  fileManager = [(MSDContentCacheManager *)self fileManager];
  v6 = [fileManager attributesOfItemAtPath:v4 error:0];

  if (v6)
  {
    fileSize = [v6 fileSize];
  }

  else
  {
    fileSize = 0;
  }

  return fileSize;
}

- (BOOL)deleteFromCache:(id)cache
{
  cacheCopy = cache;
  v5 = [(MSDContentCacheManager *)self findFileInCache:cacheCopy];
  if (!v5)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E638C();
    }

    v8 = 0;
    goto LABEL_10;
  }

  fileManager = [(MSDContentCacheManager *)self fileManager];
  v13 = 0;
  v7 = [fileManager removeItemAtPath:v5 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138543874;
      v15 = cacheCopy;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to delete hash: %{public}@ with path: %{public}@ from cache; error: %{public}@", buf, 0x20u);
    }

LABEL_10:

    v9 = 0;
    goto LABEL_4;
  }

  v9 = 1;
LABEL_4:

  return v9;
}

- (void)createDownloadCacheFolders
{
  v3 = +[MSDHelperAgent sharedInstance];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fileDownloadCachePaths = [(MSDContentCacheManager *)self fileDownloadCachePaths];
  v5 = [fileDownloadCachePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fileDownloadCachePaths);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        fileManager = [(MSDContentCacheManager *)self fileManager];
        v11 = [fileManager fileExistsAtPath:v9];

        if ((v11 & 1) == 0)
        {
          [v3 prepareWorkDirectory:v9 writableByNonRoot:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [fileDownloadCachePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)loadAppPatchesList
{
  fileManager = [(MSDContentCacheManager *)self fileManager];
  appPatchesListFileURL = [(MSDContentCacheManager *)self appPatchesListFileURL];
  path = [appPatchesListFileURL path];
  v6 = [fileManager fileExistsAtPath:path];

  if (v6)
  {
    appPatchesListFileURL2 = [(MSDContentCacheManager *)self appPatchesListFileURL];
    v12 = 0;
    v8 = [NSDictionary dictionaryWithContentsOfURL:appPatchesListFileURL2 error:&v12];
    v9 = v12;

    if (v8)
    {
      v10 = [v8 mutableCopy];
      [(MSDContentCacheManager *)self setAppPatches:v10];
    }

    else
    {
      sub_1000E6400(v9, &v13);
      v10 = v13;
    }
  }

  else
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [(MSDContentCacheManager *)self setAppPatches:v11];
  }
}

- (void)saveAppPatchesList
{
  appPatches = [(MSDContentCacheManager *)self appPatches];
  appPatchesListFileURL = [(MSDContentCacheManager *)self appPatchesListFileURL];
  v7 = 0;
  v5 = [appPatches writeToURL:appPatchesListFileURL error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    sub_1000E64C4(v6);
  }
}

- (void)_loadCachedManifestPaths
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000A1EE0;
  v12 = sub_1000A1EF0;
  v13 = objc_opt_new();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 contentsOfDirectoryAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest" error:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A1EF8;
  v7[3] = &unk_10016BB10;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = [NSArray arrayWithArray:v9[5]];
  cachedManifestPaths = self->_cachedManifestPaths;
  self->_cachedManifestPaths = v5;

  _Block_object_dispose(&v8, 8);
}

- (void)_clearFactoryCache
{
  fileManager = [(MSDContentCacheManager *)self fileManager];
  v4 = [fileManager fileExistsAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest"];

  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = @"/var/MSDWorkContainer/.MSD_cache_manifest";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing the cache at path: %{public}@", &v11, 0xCu);
    }

    fileManager2 = [(MSDContentCacheManager *)self fileManager];
    [fileManager2 removeItemAtPath:@"/var/MSDWorkContainer/.MSD_cache_manifest" error:0];
  }

  fileManager3 = [(MSDContentCacheManager *)self fileManager];
  v8 = [fileManager3 fileExistsAtPath:@"/var/MSDWorkContainer/.MSD_cache_content_plist"];

  if (v8)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = @"/var/MSDWorkContainer/.MSD_cache_content_plist";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Clearing the cache at path: %{public}@", &v11, 0xCu);
    }

    fileManager4 = [(MSDContentCacheManager *)self fileManager];
    [fileManager4 removeItemAtPath:@"/var/MSDWorkContainer/.MSD_cache_content_plist" error:0];
  }
}

@end