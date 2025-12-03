@interface MIDiskImageManager
+ (id)sharedInstance;
- (BOOL)URLIsOnAttachedEntityType:(unint64_t)type at:(id)at;
- (BOOL)_isKnownPath:(id)path;
- (BOOL)_removePath:(id)path fromEntityType:(unint64_t)type;
- (BOOL)bundleID:(id)d isOnAttachedEntityType:(unint64_t)type;
- (MIDiskImageManager)init;
- (id)_initializeInfoFromStorageAtURL:(id)l expectingDictKey:(id)key;
- (id)_onQueue_infoForEntityType:(unint64_t)type;
- (id)_onQueue_scanApps:(id)apps returnMapInfo:(id *)info error:(id *)error;
- (id)appBundleIDsOnAttachedEntityType:(unint64_t)type;
- (id)appInfoForBundleID:(id)d onAttachedEntityType:(unint64_t)type;
- (id)attachedContentPathsForEntityType:(unint64_t)type;
- (void)_addPath:(id)path toEntityType:(unint64_t)type withInfo:(id)info;
- (void)_clearPendingPath;
- (void)_initializeInfoFromStorage;
- (void)_onQueue_registerContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion;
- (void)_onQueue_registerDiscoveredAppEntries:(id)entries onMountPoint:(id)point completion:(id)completion;
- (void)_onQueue_resetDiskImagePaths;
- (void)_onQueue_resetOSModulePaths;
- (void)_onQueue_saveInfo:(id)info withTopLevelKey:(id)key atURL:(id)l;
- (void)_onQueue_unregisterContentsOnDiskImageAtMountPoint:(id)point completion:(id)completion;
- (void)_onQueue_unregisterContentsOnOSModuleAtURL:(id)l withBundleIDs:(id)ds completion:(id)completion;
- (void)_setPendingPath:(id)path;
- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion;
- (void)registerContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion;
- (void)reregisterContentsAtMountPoint:(id)point;
- (void)resetMountPaths;
- (void)unregisterContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion;
@end

@implementation MIDiskImageManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C648;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A9610 != -1)
  {
    dispatch_once(&qword_1000A9610, block);
  }

  v2 = qword_1000A9608;

  return v2;
}

- (id)_initializeInfoFromStorageAtURL:(id)l expectingDictKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v14 = 0;
  v7 = [NSDictionary dictionaryWithContentsOfURL:lCopy error:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      path = v10;
    }

    else
    {
      path = 0;
    }

    if (path)
    {
      objc_opt_class();
      if (sub_100010AB8(path))
      {
        path = path;
        v12 = path;
LABEL_15:

        goto LABEL_16;
      }
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

LABEL_13:
    MOLogWrite();
    goto LABEL_14;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    path = [lCopy path];
    goto LABEL_13;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (void)_initializeInfoFromStorage
{
  v3 = sub_10000C954();
  v4 = [(MIDiskImageManager *)self _initializeInfoFromStorageAtURL:v3 expectingDictKey:@"DiskImageMountPaths"];

  v5 = sub_10000C9CC();
  v6 = [(MIDiskImageManager *)self _initializeInfoFromStorageAtURL:v5 expectingDictKey:@"OSModulePaths"];

  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA44;
  block[3] = &unk_100090D20;
  v11 = v4;
  selfCopy = self;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_sync(mountInfoAccessQueue, block);
}

- (MIDiskImageManager)init
{
  v13.receiver = self;
  v13.super_class = MIDiskImageManager;
  v2 = [(MIDiskImageManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileInstallation.MIDiskImageManager.internal", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileInstallation.DiskImageManager.lsregister", v6);
    lsRegisterQueue = v2->_lsRegisterQueue;
    v2->_lsRegisterQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MobileInstallation.MIDiskImageManager.mountInfo", v9);
    mountInfoAccessQueue = v2->_mountInfoAccessQueue;
    v2->_mountInfoAccessQueue = v10;

    [(MIDiskImageManager *)v2 _initializeInfoFromStorage];
  }

  return v2;
}

- (void)_onQueue_resetDiskImagePaths
{
  selfCopy = self;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(mountInfoAccessQueue);

  v20 = objc_opt_new();
  v4 = +[MIFileManager defaultManager];
  v5 = +[MIDaemonConfiguration sharedInstance];
  hasInternalContent = [v5 hasInternalContent];

  if (hasInternalContent)
  {
    v19 = selfCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = +[MIDaemonConfiguration sharedInstance];
    developerDirectories = [v7 developerDirectories];

    v9 = [developerDirectories countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(developerDirectories);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v4 itemExistsAtURL:v13])
          {
            v14 = +[MIDaemonConfiguration sharedInstance];
            v15 = [v13 URLByAppendingPathComponent:@"Applications" isDirectory:1];
            v16 = [v14 _bundleIDMapForAppsInDirectory:v15];
            path = [v13 path];
            [v20 setObject:v16 forKeyedSubscript:path];
          }
        }

        v10 = [developerDirectories countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    selfCopy = v19;
  }

  [(MIDiskImageManager *)selfCopy setMountInfo:v20];
  v18 = sub_10000C954();
  [(MIDiskImageManager *)selfCopy _onQueue_saveInfo:v20 withTopLevelKey:@"DiskImageMountPaths" atURL:v18];
}

- (void)_onQueue_resetOSModulePaths
{
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(mountInfoAccessQueue);

  v5 = objc_opt_new();
  [(MIDiskImageManager *)self setOsModuleInfo:v5];
  v4 = sub_10000C9CC();
  [(MIDiskImageManager *)self _onQueue_saveInfo:v5 withTopLevelKey:@"OSModulePaths" atURL:v4];
}

- (void)resetMountPaths
{
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D0DC;
  block[3] = &unk_100090D48;
  block[4] = self;
  dispatch_sync(mountInfoAccessQueue, block);
}

- (void)_onQueue_saveInfo:(id)info withTopLevelKey:(id)key atURL:(id)l
{
  keyCopy = key;
  lCopy = l;
  infoCopy = info;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(mountInfoAccessQueue);

  allKeys = [infoCopy allKeys];

  if ([allKeys count])
  {
    v21 = keyCopy;
    v22 = allKeys;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = 0;
    v14 = [v13 MI_writeToURL:lCopy format:200 options:268435457 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      path = [lCopy path];
      MOLogWrite();
    }
  }

  else
  {
    v16 = +[MIFileManager defaultManager];
    v20 = 0;
    v17 = [v16 removeItemAtURL:lCopy error:&v20];
    v15 = v20;

    if ((v17 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }
  }
}

- (BOOL)_isKnownPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D40C;
  block[3] = &unk_100090D70;
  block[4] = self;
  v9 = pathCopy;
  v10 = &v11;
  v6 = pathCopy;
  dispatch_sync(mountInfoAccessQueue, block);

  LOBYTE(pathCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return pathCopy;
}

- (void)_addPath:(id)path toEntityType:(unint64_t)type withInfo:(id)info
{
  pathCopy = path;
  infoCopy = info;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D584;
  v13[3] = &unk_100090D98;
  v13[4] = self;
  v14 = pathCopy;
  v15 = infoCopy;
  typeCopy = type;
  v11 = infoCopy;
  v12 = pathCopy;
  dispatch_sync(mountInfoAccessQueue, v13);
}

- (BOOL)_removePath:(id)path fromEntityType:(unint64_t)type
{
  pathCopy = path;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D7AC;
  v10[3] = &unk_100090DC0;
  v10[4] = self;
  v11 = pathCopy;
  v12 = &v14;
  typeCopy = type;
  v8 = pathCopy;
  dispatch_sync(mountInfoAccessQueue, v10);

  LOBYTE(pathCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return pathCopy;
}

- (void)_setPendingPath:(id)path
{
  pathCopy = path;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D9A8;
  v7[3] = &unk_100090DE8;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(mountInfoAccessQueue, v7);
}

- (void)_clearPendingPath
{
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DA3C;
  block[3] = &unk_100090D48;
  block[4] = self;
  dispatch_sync(mountInfoAccessQueue, block);
}

- (id)_onQueue_infoForEntityType:(unint64_t)type
{
  if (type == 2)
  {
    osModuleInfo = [(MIDiskImageManager *)self osModuleInfo];
  }

  else if (type == 1)
  {
    osModuleInfo = [(MIDiskImageManager *)self mountInfo];
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    osModuleInfo = 0;
  }

  return osModuleInfo;
}

- (BOOL)URLIsOnAttachedEntityType:(unint64_t)type at:(id)at
{
  atCopy = at;
  v7 = +[MIFileManager defaultManager];
  v8 = [v7 realPathForURL:atCopy allowNonExistentPathComponents:0 isDirectory:1 error:0];

  if (v8)
  {
    path = [v8 path];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000DC48;
    v14[3] = &unk_100090DC0;
    v14[4] = self;
    v15 = path;
    v16 = &v18;
    typeCopy = type;
    v11 = path;
    dispatch_sync(mountInfoAccessQueue, v14);

    v12 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (id)attachedContentPathsForEntityType:(unint64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000DEE0;
  v13 = sub_10000DEF0;
  v14 = 0;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DEF8;
  block[3] = &unk_100090E10;
  block[5] = &v9;
  block[6] = type;
  block[4] = self;
  dispatch_sync(mountInfoAccessQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)appInfoForBundleID:(id)d onAttachedEntityType:(unint64_t)type
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000DEE0;
  v19 = sub_10000DEF0;
  v20 = 0;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E0E0;
  v11[3] = &unk_100090DC0;
  v11[4] = self;
  v12 = dCopy;
  v13 = &v15;
  typeCopy = type;
  v8 = dCopy;
  dispatch_sync(mountInfoAccessQueue, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (BOOL)bundleID:(id)d isOnAttachedEntityType:(unint64_t)type
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E324;
  v10[3] = &unk_100090DC0;
  v10[4] = self;
  v11 = dCopy;
  v12 = &v14;
  typeCopy = type;
  v8 = dCopy;
  dispatch_sync(mountInfoAccessQueue, v10);

  LOBYTE(dCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return dCopy;
}

- (id)appBundleIDsOnAttachedEntityType:(unint64_t)type
{
  v5 = objc_opt_new();
  mountInfoAccessQueue = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E51C;
  block[3] = &unk_100090EB0;
  v11 = v5;
  typeCopy = type;
  block[4] = self;
  v7 = v5;
  dispatch_sync(mountInfoAccessQueue, block);

  v8 = [v7 copy];

  return v8;
}

- (id)_onQueue_scanApps:(id)apps returnMapInfo:(id *)info error:(id *)error
{
  appsCopy = apps;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = +[MIDaemonConfiguration sharedInstance];
  standardInfoMapInfoPlistKeys = [v12 standardInfoMapInfoPlistKeys];

  v14 = +[MIFileManager defaultManager];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E87C;
  v28[3] = &unk_100090F00;
  v15 = v10;
  v29 = v15;
  v30 = standardInfoMapInfoPlistKeys;
  v16 = v11;
  v31 = v16;
  v17 = standardInfoMapInfoPlistKeys;
  v18 = [v14 enumerateURLsForItemsInDirectoryAtURL:appsCopy ignoreSymlinks:1 withBlock:v28];

  if (!v18)
  {
    goto LABEL_4;
  }

  domain = [v18 domain];
  if (([domain isEqualToString:NSPOSIXErrorDomain] & 1) == 0)
  {

    goto LABEL_8;
  }

  code = [v18 code];

  if (code != 2)
  {
LABEL_8:
    v22 = MIInstallerErrorDomain;
    path = [appsCopy path];
    v25 = sub_100010734("[MIDiskImageManager _onQueue_scanApps:returnMapInfo:error:]", 518, v22, 4, v18, 0, @"Failed to scan apps on %@", v24, path);

    if (error)
    {
      v26 = v25;
      v21 = 0;
      *error = v25;
    }

    else
    {
      v21 = 0;
    }

    v18 = v25;
    goto LABEL_12;
  }

LABEL_4:
  if (info)
  {
    *info = [v16 copy];
  }

  v21 = [v15 copy];
LABEL_12:

  return v21;
}

- (void)_onQueue_registerDiscoveredAppEntries:(id)entries onMountPoint:(id)point completion:(id)completion
{
  entriesCopy = entries;
  pointCopy = point;
  completionCopy = completion;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  lsRegisterQueue = [(MIDiskImageManager *)self lsRegisterQueue];
  v16 = entriesCopy;
  v17 = pointCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = pointCopy;
  v15 = entriesCopy;
  MIRunTransactionalTask();
}

- (void)_onQueue_registerContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (type - 1 < 2)
  {
    v12 = +[MIFileManager defaultManager];
    v29 = 0;
    v13 = [v12 realPathForURL:lCopy allowNonExistentPathComponents:0 isDirectory:1 error:&v29];
    v14 = v29;

    if (!v13)
    {
      v17 = MIInstallerErrorDomain;
      path = [lCopy path];
      v16 = sub_100010734("[MIDiskImageManager _onQueue_registerContentsOnAttachedEntityAtURL:ofType:completion:]", 570, v17, 25, v14, 0, @"Failed to realpath image mount %@", v19, path);

      completionCopy[2](completionCopy, v16);
LABEL_24:

      goto LABEL_25;
    }

    path2 = [v13 path];
    if ([(MIDiskImageManager *)self _isKnownPath:path2])
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      completionCopy[2](completionCopy, 0);
      v16 = v14;
      goto LABEL_23;
    }

    [(MIDiskImageManager *)self _setPendingPath:path2];
    v20 = [v13 URLByAppendingPathComponent:@"Applications" isDirectory:1];
    v27 = v14;
    v28 = 0;
    v21 = [(MIDiskImageManager *)self _onQueue_scanApps:v20 returnMapInfo:&v28 error:&v27];
    v26 = v28;
    v16 = v27;

    if (v21)
    {
      if ([v21 count])
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v24 = sub_10000C51C(type);
          v25 = path2;
          MOLogWrite();
        }

        typeCopy = type;
        v23 = v26;
        [(MIDiskImageManager *)self _addPath:path2 toEntityType:typeCopy withInfo:v26, v24, v25];
        [(MIDiskImageManager *)self _clearPendingPath];
        [(MIDiskImageManager *)self _onQueue_registerDiscoveredAppEntries:v21 onMountPoint:v13 completion:completionCopy];
        goto LABEL_22;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v24 = path2;
        MOLogWrite();
      }

      [(MIDiskImageManager *)self _clearPendingPath];
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      completionCopy[2](completionCopy, v16);
    }

    v23 = v26;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v16 = sub_100010734("[MIDiskImageManager _onQueue_registerContentsOnAttachedEntityAtURL:ofType:completion:]", 563, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly found unknown MIAttachedEntityTypeUnknown", v11, v24);
  completionCopy[2](completionCopy, v16);
LABEL_25:
}

- (void)registerContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F544;
  v13[3] = &unk_100090F78;
  v13[4] = self;
  v14 = lCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = lCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)reregisterContentsAtMountPoint:(id)point
{
  pointCopy = point;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F608;
  v7[3] = &unk_100090DE8;
  v8 = pointCopy;
  selfCopy = self;
  v6 = pointCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)_onQueue_unregisterContentsOnOSModuleAtURL:(id)l withBundleIDs:(id)ds completion:(id)completion
{
  lCopy = l;
  dsCopy = ds;
  completionCopy = completion;
  lsRegisterQueue = [(MIDiskImageManager *)self lsRegisterQueue];
  v15 = dsCopy;
  v16 = lCopy;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = dsCopy;
  MIRunTransactionalTask();
}

- (void)_onQueue_unregisterContentsOnDiskImageAtMountPoint:(id)point completion:(id)completion
{
  pointCopy = point;
  completionCopy = completion;
  lsRegisterQueue = [(MIDiskImageManager *)self lsRegisterQueue];
  v11 = pointCopy;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = pointCopy;
  MIRunTransactionalTask();
}

- (void)unregisterContentsOnAttachedEntityAtURL:(id)l ofType:(unint64_t)type completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FDF0;
  v13[3] = &unk_100090FC8;
  v16 = completionCopy;
  typeCopy = type;
  v14 = lCopy;
  selfCopy = self;
  v11 = lCopy;
  v12 = completionCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion
{
  modulesCopy = modules;
  completionCopy = completion;
  internalQueue = [(MIDiskImageManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001017C;
  block[3] = &unk_100090F50;
  v12 = modulesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = modulesCopy;
  dispatch_sync(internalQueue, block);
}

@end