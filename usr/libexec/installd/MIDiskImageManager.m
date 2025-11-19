@interface MIDiskImageManager
+ (id)sharedInstance;
- (BOOL)URLIsOnAttachedEntityType:(unint64_t)a3 at:(id)a4;
- (BOOL)_isKnownPath:(id)a3;
- (BOOL)_removePath:(id)a3 fromEntityType:(unint64_t)a4;
- (BOOL)bundleID:(id)a3 isOnAttachedEntityType:(unint64_t)a4;
- (MIDiskImageManager)init;
- (id)_initializeInfoFromStorageAtURL:(id)a3 expectingDictKey:(id)a4;
- (id)_onQueue_infoForEntityType:(unint64_t)a3;
- (id)_onQueue_scanApps:(id)a3 returnMapInfo:(id *)a4 error:(id *)a5;
- (id)appBundleIDsOnAttachedEntityType:(unint64_t)a3;
- (id)appInfoForBundleID:(id)a3 onAttachedEntityType:(unint64_t)a4;
- (id)attachedContentPathsForEntityType:(unint64_t)a3;
- (void)_addPath:(id)a3 toEntityType:(unint64_t)a4 withInfo:(id)a5;
- (void)_clearPendingPath;
- (void)_initializeInfoFromStorage;
- (void)_onQueue_registerContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5;
- (void)_onQueue_registerDiscoveredAppEntries:(id)a3 onMountPoint:(id)a4 completion:(id)a5;
- (void)_onQueue_resetDiskImagePaths;
- (void)_onQueue_resetOSModulePaths;
- (void)_onQueue_saveInfo:(id)a3 withTopLevelKey:(id)a4 atURL:(id)a5;
- (void)_onQueue_unregisterContentsOnDiskImageAtMountPoint:(id)a3 completion:(id)a4;
- (void)_onQueue_unregisterContentsOnOSModuleAtURL:(id)a3 withBundleIDs:(id)a4 completion:(id)a5;
- (void)_setPendingPath:(id)a3;
- (void)reconcileContentsOnKnownOSModules:(id)a3 completion:(id)a4;
- (void)registerContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5;
- (void)reregisterContentsAtMountPoint:(id)a3;
- (void)resetMountPaths;
- (void)unregisterContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5;
@end

@implementation MIDiskImageManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C648;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A9610 != -1)
  {
    dispatch_once(&qword_1000A9610, block);
  }

  v2 = qword_1000A9608;

  return v2;
}

- (id)_initializeInfoFromStorageAtURL:(id)a3 expectingDictKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = [NSDictionary dictionaryWithContentsOfURL:v5 error:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      objc_opt_class();
      if (sub_100010AB8(v11))
      {
        v11 = v11;
        v12 = v11;
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
    v11 = [v5 path];
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

  v7 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA44;
  block[3] = &unk_100090D20;
  v11 = v4;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_sync(v7, block);
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
  v2 = self;
  v3 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(v3);

  v20 = objc_opt_new();
  v4 = +[MIFileManager defaultManager];
  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 hasInternalContent];

  if (v6)
  {
    v19 = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = +[MIDaemonConfiguration sharedInstance];
    v8 = [v7 developerDirectories];

    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v4 itemExistsAtURL:v13])
          {
            v14 = +[MIDaemonConfiguration sharedInstance];
            v15 = [v13 URLByAppendingPathComponent:@"Applications" isDirectory:1];
            v16 = [v14 _bundleIDMapForAppsInDirectory:v15];
            v17 = [v13 path];
            [v20 setObject:v16 forKeyedSubscript:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v2 = v19;
  }

  [(MIDiskImageManager *)v2 setMountInfo:v20];
  v18 = sub_10000C954();
  [(MIDiskImageManager *)v2 _onQueue_saveInfo:v20 withTopLevelKey:@"DiskImageMountPaths" atURL:v18];
}

- (void)_onQueue_resetOSModulePaths
{
  v3 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(v3);

  v5 = objc_opt_new();
  [(MIDiskImageManager *)self setOsModuleInfo:v5];
  v4 = sub_10000C9CC();
  [(MIDiskImageManager *)self _onQueue_saveInfo:v5 withTopLevelKey:@"OSModulePaths" atURL:v4];
}

- (void)resetMountPaths
{
  v3 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D0DC;
  block[3] = &unk_100090D48;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onQueue_saveInfo:(id)a3 withTopLevelKey:(id)a4 atURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 allKeys];

  if ([v12 count])
  {
    v21 = v8;
    v22 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = 0;
    v14 = [v13 MI_writeToURL:v9 format:200 options:268435457 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v18 = [v9 path];
      MOLogWrite();
    }
  }

  else
  {
    v16 = +[MIFileManager defaultManager];
    v20 = 0;
    v17 = [v16 removeItemAtURL:v9 error:&v20];
    v15 = v20;

    if ((v17 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }
  }
}

- (BOOL)_isKnownPath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D40C;
  block[3] = &unk_100090D70;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_addPath:(id)a3 toEntityType:(unint64_t)a4 withInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D584;
  v13[3] = &unk_100090D98;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (BOOL)_removePath:(id)a3 fromEntityType:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D7AC;
  v10[3] = &unk_100090DC0;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

- (void)_setPendingPath:(id)a3
{
  v4 = a3;
  v5 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D9A8;
  v7[3] = &unk_100090DE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_clearPendingPath
{
  v3 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DA3C;
  block[3] = &unk_100090D48;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)_onQueue_infoForEntityType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(MIDiskImageManager *)self osModuleInfo];
  }

  else if (a3 == 1)
  {
    v3 = [(MIDiskImageManager *)self mountInfo];
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)URLIsOnAttachedEntityType:(unint64_t)a3 at:(id)a4
{
  v6 = a4;
  v7 = +[MIFileManager defaultManager];
  v8 = [v7 realPathForURL:v6 allowNonExistentPathComponents:0 isDirectory:1 error:0];

  if (v8)
  {
    v9 = [v8 path];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v10 = [(MIDiskImageManager *)self mountInfoAccessQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000DC48;
    v14[3] = &unk_100090DC0;
    v14[4] = self;
    v15 = v9;
    v16 = &v18;
    v17 = a3;
    v11 = v9;
    dispatch_sync(v10, v14);

    v12 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (id)attachedContentPathsForEntityType:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000DEE0;
  v13 = sub_10000DEF0;
  v14 = 0;
  v5 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DEF8;
  block[3] = &unk_100090E10;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)appInfoForBundleID:(id)a3 onAttachedEntityType:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000DEE0;
  v19 = sub_10000DEF0;
  v20 = 0;
  v7 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E0E0;
  v11[3] = &unk_100090DC0;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (BOOL)bundleID:(id)a3 isOnAttachedEntityType:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E324;
  v10[3] = &unk_100090DC0;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

- (id)appBundleIDsOnAttachedEntityType:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(MIDiskImageManager *)self mountInfoAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E51C;
  block[3] = &unk_100090EB0;
  v11 = v5;
  v12 = a3;
  block[4] = self;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = [v7 copy];

  return v8;
}

- (id)_onQueue_scanApps:(id)a3 returnMapInfo:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = +[MIDaemonConfiguration sharedInstance];
  v13 = [v12 standardInfoMapInfoPlistKeys];

  v14 = +[MIFileManager defaultManager];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E87C;
  v28[3] = &unk_100090F00;
  v15 = v10;
  v29 = v15;
  v30 = v13;
  v16 = v11;
  v31 = v16;
  v17 = v13;
  v18 = [v14 enumerateURLsForItemsInDirectoryAtURL:v8 ignoreSymlinks:1 withBlock:v28];

  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = [v18 domain];
  if (([v19 isEqualToString:NSPOSIXErrorDomain] & 1) == 0)
  {

    goto LABEL_8;
  }

  v20 = [v18 code];

  if (v20 != 2)
  {
LABEL_8:
    v22 = MIInstallerErrorDomain;
    v23 = [v8 path];
    v25 = sub_100010734("[MIDiskImageManager _onQueue_scanApps:returnMapInfo:error:]", 518, v22, 4, v18, 0, @"Failed to scan apps on %@", v24, v23);

    if (a5)
    {
      v26 = v25;
      v21 = 0;
      *a5 = v25;
    }

    else
    {
      v21 = 0;
    }

    v18 = v25;
    goto LABEL_12;
  }

LABEL_4:
  if (a4)
  {
    *a4 = [v16 copy];
  }

  v21 = [v15 copy];
LABEL_12:

  return v21;
}

- (void)_onQueue_registerDiscoveredAppEntries:(id)a3 onMountPoint:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(MIDiskImageManager *)self lsRegisterQueue];
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  MIRunTransactionalTask();
}

- (void)_onQueue_registerContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MIDiskImageManager *)self internalQueue];
  dispatch_assert_queue_V2(v10);

  if (a4 - 1 < 2)
  {
    v12 = +[MIFileManager defaultManager];
    v29 = 0;
    v13 = [v12 realPathForURL:v8 allowNonExistentPathComponents:0 isDirectory:1 error:&v29];
    v14 = v29;

    if (!v13)
    {
      v17 = MIInstallerErrorDomain;
      v18 = [v8 path];
      v16 = sub_100010734("[MIDiskImageManager _onQueue_registerContentsOnAttachedEntityAtURL:ofType:completion:]", 570, v17, 25, v14, 0, @"Failed to realpath image mount %@", v19, v18);

      v9[2](v9, v16);
LABEL_24:

      goto LABEL_25;
    }

    v15 = [v13 path];
    if ([(MIDiskImageManager *)self _isKnownPath:v15])
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      v9[2](v9, 0);
      v16 = v14;
      goto LABEL_23;
    }

    [(MIDiskImageManager *)self _setPendingPath:v15];
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
          v24 = sub_10000C51C(a4);
          v25 = v15;
          MOLogWrite();
        }

        v22 = a4;
        v23 = v26;
        [(MIDiskImageManager *)self _addPath:v15 toEntityType:v22 withInfo:v26, v24, v25];
        [(MIDiskImageManager *)self _clearPendingPath];
        [(MIDiskImageManager *)self _onQueue_registerDiscoveredAppEntries:v21 onMountPoint:v13 completion:v9];
        goto LABEL_22;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v24 = v15;
        MOLogWrite();
      }

      [(MIDiskImageManager *)self _clearPendingPath];
      v9[2](v9, 0);
    }

    else
    {
      v9[2](v9, v16);
    }

    v23 = v26;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v16 = sub_100010734("[MIDiskImageManager _onQueue_registerContentsOnAttachedEntityAtURL:ofType:completion:]", 563, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly found unknown MIAttachedEntityTypeUnknown", v11, v24);
  v9[2](v9, v16);
LABEL_25:
}

- (void)registerContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MIDiskImageManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F544;
  v13[3] = &unk_100090F78;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (void)reregisterContentsAtMountPoint:(id)a3
{
  v4 = a3;
  v5 = [(MIDiskImageManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F608;
  v7[3] = &unk_100090DE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onQueue_unregisterContentsOnOSModuleAtURL:(id)a3 withBundleIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MIDiskImageManager *)self lsRegisterQueue];
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  MIRunTransactionalTask();
}

- (void)_onQueue_unregisterContentsOnDiskImageAtMountPoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIDiskImageManager *)self lsRegisterQueue];
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  MIRunTransactionalTask();
}

- (void)unregisterContentsOnAttachedEntityAtURL:(id)a3 ofType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MIDiskImageManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FDF0;
  v13[3] = &unk_100090FC8;
  v16 = v9;
  v17 = a4;
  v14 = v8;
  v15 = self;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (void)reconcileContentsOnKnownOSModules:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIDiskImageManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001017C;
  block[3] = &unk_100090F50;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

@end