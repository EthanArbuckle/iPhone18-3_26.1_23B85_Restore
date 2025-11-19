@interface MSDIPAInstallOperation
- (BOOL)_IXInstallAppIPA;
- (BOOL)_fulfillIXSZTransferPromise:(id)a3 withFile:(id)a4 outError:(id *)a5;
- (BOOL)_verifyInstalledApp;
- (BOOL)rollback;
- (MSDIPAInstallOperation)initWithContext:(id)a3;
- (MSDIPAInstallOperation)initWithContext:(id)a3 andContentCacheManager:(id)a4;
- (id)methodSelectors;
- (void)_createFullIPAInstallOperationsAsFallback;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3;
@end

@implementation MSDIPAInstallOperation

- (MSDIPAInstallOperation)initWithContext:(id)a3
{
  v4 = a3;
  v5 = +[MSDContentCacheManager sharedInstance];
  v6 = [(MSDIPAInstallOperation *)self initWithContext:v4 andContentCacheManager:v5];

  return v6;
}

- (MSDIPAInstallOperation)initWithContext:(id)a3 andContentCacheManager:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MSDIPAInstallOperation;
  v7 = [(MSDOperation *)&v11 initWithContext:a3];
  v8 = v7;
  if (v7)
  {
    [(MSDIPAInstallOperation *)v7 setContentCacheProtocol:v6];
    v9 = dispatch_semaphore_create(0);
    [(MSDIPAInstallOperation *)v8 setSemaphore:v9];

    [(MSDIPAInstallOperation *)v8 setInstallError:0];
  }

  return v8;
}

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_IXInstallAppIPA"];
  v3 = [NSValue valueWithPointer:"_verifyInstalledApp"];
  v4 = [NSArray arrayWithObjects:v2, v3, 0];

  return v4;
}

- (BOOL)rollback
{
  v3 = [(MSDOperation *)self context];
  [v3 setUninstallOperation:1];

  v4 = [(MSDOperation *)self context];
  v5 = [MSDOperationRepository createOperationFromIdentifier:@"MSDIPAUninstallOperation" withContext:v4];

  [(MSDOperation *)self produceNewDependentOperation:v5 forRollback:1];
  return 1;
}

- (BOOL)_IXInstallAppIPA
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(MSDOperation *)self context];
  v5 = [v4 stagingRootPath];

  v6 = [(MSDOperation *)self context];
  v7 = [v6 identifier];

  v8 = [(MSDOperation *)self context];
  v9 = [v8 uniqueIdentifier];

  v10 = [(MSDOperation *)self context];
  v11 = [v10 currentUniqueIdentifier];

  v12 = [(MSDOperation *)self context];
  v13 = [v12 alreadyInstalled];

  v14 = [(MSDOperation *)self context];
  v15 = [v14 useDiffPatch];

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v83 = v7;
    v84 = 2114;
    *v85 = v9;
    *&v85[8] = 2114;
    v86 = v11;
    v87 = 1026;
    v88 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Installing IPA for app: %{public}@ <UID %{public}@, CurrentUID: %{public}@, DiffPatch: %{public, BOOL}d>", buf, 0x26u);
  }

  v17 = +[MSDAppHelper sharedInstance];
  v62 = [v17 acquireAppTerminationAssertionForApp:v7];

  if (v15)
  {
    v18 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [v18 appDiffPatchFileForSourceAppUID:v11 targetAppUID:v9];
  }

  else
  {
    v18 = [(MSDOperation *)self context];
    [v18 fileHash];
  }
  v69 = ;

  v19 = [v7 stringByAppendingPathExtension:@"ipa"];
  v70 = [v5 stringByAppendingPathComponent:v19];

  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v83 = v69;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IPA/Patch file hash to use: %{public}@", buf, 0xCu);
  }

  v65 = v11;

  v68 = v3;
  v64 = v5;
  v66 = v9;
  if (v13)
  {
    v81 = 0;
    v21 = [IXUpdatingAppInstallCoordinator coordinatorForAppWithBundleID:v7 withClientID:9 createIfNotExisting:1 created:0 error:&v81];
    v22 = v81;
    v23 = v22;
    if (!v21)
    {
      sub_1000DA4F8(v22);
LABEL_66:
      v45 = 0;
      v41 = 0;
      v67 = 0;
      v30 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v80 = 0;
    v21 = [IXInitiatingAppInstallCoordinator coordinatorForAppWithBundleID:v7 withClientID:9 createIfNotExisting:1 created:0 error:&v80];
    v24 = v80;
    v23 = v24;
    if (!v21)
    {
      sub_1000DA010(v24);
      goto LABEL_66;
    }
  }

  v25 = v23;
  [v21 setObserver:{self, v62, v5}];
  v79 = v23;
  v26 = [v21 setImportance:3 error:&v79];
  v23 = v79;

  if ((v26 & 1) == 0)
  {
    sub_1000DA0C4(v23);
    goto LABEL_66;
  }

  v27 = +[NSArray array];
  v78 = v23;
  v28 = [v21 setInitialODRAssetPromises:v27 error:&v78];
  v29 = v78;

  if ((v28 & 1) == 0)
  {
    sub_1000DA160(v29);
    v45 = 0;
    v41 = 0;
    v67 = 0;
    v30 = 0;
LABEL_64:
    v23 = v29;
    goto LABEL_32;
  }

  if (v15)
  {
    v30 = [[IXPromisedStreamingZipTransfer alloc] initWithName:@"IPAPromise" client:9 streamingZipOptions:&__NSDictionary0__struct archiveSize:0 diskSpaceNeeded:0];
  }

  else
  {
    v31 = [IXPromisedTransferToPath alloc];
    v32 = [NSURL fileURLWithString:v70];
    v30 = [v31 initWithName:@"IPAPromise" client:9 transferPath:v32 diskSpaceNeeded:0];
  }

  v77[1] = v29;
  v67 = [[IXPlaceholder alloc] initAppPlaceholderWithBundleName:@"TempApp" bundleID:v7 installType:1 client:9];
  v33 = [v21 setPlaceholderPromise:? error:?];
  v23 = v29;

  if ((v33 & 1) == 0)
  {
    sub_1000DA1FC(v23);
LABEL_62:
    v45 = 0;
    v41 = 0;
    goto LABEL_32;
  }

  v77[0] = v23;
  v34 = [v21 setAppAssetPromise:v30 error:v77];
  v35 = v77[0];

  if ((v34 & 1) == 0)
  {
    sub_1000DA298(v35);
    v45 = 0;
    v41 = 0;
    v23 = v35;
    goto LABEL_32;
  }

  v76 = v35;
  v36 = [v67 setConfigurationCompleteWithError:&v76];
  v23 = v76;

  if ((v36 & 1) == 0)
  {
    sub_1000DA334(v23);
    goto LABEL_62;
  }

  v37 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  v38 = [(MSDOperation *)self context];
  v39 = [v37 copyFileIfPresentInCache:v69 toLocation:v70 verifyHash:{objc_msgSend(v38, "verifyFileHash")}];

  if ((v39 & 1) == 0)
  {
    sub_1000DA3D0();
    goto LABEL_62;
  }

  if (([v7 isEqualToString:@"com.retailtech.arkenstone"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"com.apple.ist.windward") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.ist.DemoDiscoveryApp"))
  {
    v40 = +[F13Server sharedInstance];
    [v40 windwardAppInstallationStarted];
  }

  v41 = objc_alloc_init(MIInstallOptions);
  [v41 setInstallTargetType:1];
  v75 = v23;
  v42 = [v21 setInstallOptions:v41 error:&v75];
  v29 = v75;

  if ((v42 & 1) == 0)
  {
    sub_1000DA45C(v29);
    v45 = 0;
    goto LABEL_64;
  }

  if (v15)
  {
    v74 = v29;
    v43 = [(MSDIPAInstallOperation *)self _fulfillIXSZTransferPromise:v30 withFile:v70 outError:&v74];
    v23 = v74;

    if ((v43 & 1) == 0)
    {
      v45 = 0;
      goto LABEL_32;
    }

    v29 = v23;
  }

  else
  {
    [v30 setComplete:1];
  }

  v44 = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);

  v23 = [(MSDIPAInstallOperation *)self installError];

  v45 = v23 == 0;
LABEL_32:
  v46 = sub_100063BEC();
  v47 = [(MSDOperation *)self signpostId];
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v48 = v47;
    if (os_signpost_enabled(v46))
    {
      *buf = 138412802;
      v83 = v7;
      v84 = 1024;
      *v85 = v15;
      *&v85[4] = 1024;
      *&v85[6] = v45;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v48, "Install IPA", "App identifier: %{xcode:string}@ Use diff patch: %{xcode:BOOLean}d Install Result: %{xcode:BOOLean}d", buf, 0x18u);
    }
  }

  if (v45)
  {
    v49 = v23;
  }

  else
  {
    v73 = v23;
    sub_1000C1424(&v73, 3727740962, @"Cannot install app.");
    v49 = v73;

    [(MSDOperation *)self setError:v49];
    if (v30)
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100076804;
      v72[3] = &unk_10016ACA0;
      v72[4] = self;
      [v30 cancelForReason:v49 client:9 completion:v72];
      v50 = [(MSDIPAInstallOperation *)self semaphore];
      dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);
    }

    [(MSDIPAInstallOperation *)self _createFullIPAInstallOperationsAsFallback];
  }

  if ([v68 fileExistsAtPath:{v70, v62}])
  {
    v71 = v49;
    v51 = [v68 removeItemAtPath:v70 error:&v71];
    v52 = v71;

    if ((v51 & 1) == 0)
    {
      v53 = sub_100063A54();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_1000DA5AC(v70, v52);
      }
    }
  }

  else
  {
    v52 = v49;
  }

  if (v15)
  {
    v54 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [v54 removeAppDiffPatchFileForSourceAppUID:v65 targetAppUID:v66];
  }

  v55 = [(MSDOperation *)self context];
  v56 = [v55 deleteInstallableFileAfterInstall];

  if (!v56)
  {
    v59 = sub_100063A54();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v83 = v69;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Skipping deletion of IPA/Patch file from cache: %{public}@", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v57 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  v58 = [v57 deleteFromCache:v69];

  if ((v58 & 1) == 0)
  {
    v59 = sub_100063A54();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA65C();
    }

LABEL_54:
  }

  v60 = +[MSDAppHelper sharedInstance];
  [v60 releaseAppTerminationAssertion:v63 forApp:v7];

  return v45;
}

- (BOOL)_verifyInstalledApp
{
  v3 = [(MSDOperation *)self context];
  v4 = [v3 identifier];

  v5 = [(MSDOperation *)self context];
  v6 = [v5 uniqueIdentifier];

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 bundlePathForInstalledApp:v4];

  v9 = [MSDiOSApp appWithPath:v8];
  v10 = v9;
  if (!v9)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot create MSDiOSApp from bundle path %{public}@", &v15, 0xCu);
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = [v9 uniqueIdentifier];
  if (([v11 isEqualToString:v6] & 1) == 0)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The installed app has UID %{public}@ but the expected UID is %{public}@", &v15, 0x16u);
    }

LABEL_10:

    [(MSDIPAInstallOperation *)self _createFullIPAInstallOperationsAsFallback];
    v12 = 0;
    goto LABEL_4;
  }

  v12 = 1;
LABEL_4:

  return v12;
}

- (BOOL)_fulfillIXSZTransferPromise:(id)a3 withFile:(id)a4 outError:(id *)a5
{
  v26 = a3;
  v24 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100076F3C;
  v39 = sub_100076F4C;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  memset(&v30, 0, sizeof(v30));
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending bytes to IXPromisedStreamingZipTransfer from file: %{public}@", buf, 0xCu);
  }

  v8 = v24;
  v9 = open([v24 fileSystemRepresentation], 0);
  v25 = v9;
  if (v9 < 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      sub_1000DA870(v24, v22, buf, v21);
    }

LABEL_18:
    close(v25);
    goto LABEL_19;
  }

  fstat(v9, &v30);
  st_size = v30.st_size;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100076F54;
  v29[3] = &unk_10016B5F8;
  v29[4] = self;
  v29[5] = &v35;
  [v26 prepareForExtraction:v29];
  v11 = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  if (!v36[5])
  {
    if (st_size)
    {
      while ((v32[3] & 1) == 0)
      {
        if (st_size >= 0x19000)
        {
          v12 = 102400;
        }

        else
        {
          v12 = st_size;
        }

        v13 = malloc_type_malloc(v12, 0xD2E5A910uLL);
        if (!v13)
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA808();
          }

          goto LABEL_16;
        }

        if (read(v25, v13, v12) != v12)
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v19 = __error();
            sub_1000DA754(v19, buf, v14);
          }

          goto LABEL_16;
        }

        v14 = [NSData dataWithBytesNoCopy:v13 length:v12 freeWhenDone:1];
        if (!v14)
        {
          v20 = sub_100063A54();
          sub_1000DA7A0(v20, buf);
          v14 = *buf;
          goto LABEL_16;
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100076FE8;
        v28[3] = &unk_10016B620;
        v28[5] = &v35;
        v28[6] = &v31;
        v28[4] = self;
        [v26 supplyBytes:v14 withCompletionBlock:v28];
        v15 = [(MSDIPAInstallOperation *)self semaphore];
        dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

        if (v36[5])
        {
          goto LABEL_16;
        }

        st_size -= v12;
        if (!st_size)
        {
          break;
        }
      }
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100077094;
    v27[3] = &unk_100169E68;
    v27[4] = self;
    v27[5] = &v35;
    [v26 finishStreamWithCompletionBlock:v27];
    v14 = [(MSDIPAInstallOperation *)self semaphore];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
LABEL_16:
  }

  if (v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (a5)
  {
    v16 = v36[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v17 & 1;
}

- (void)_createFullIPAInstallOperationsAsFallback
{
  v3 = [(MSDOperation *)self context];
  v4 = [v3 identifier];

  v5 = [(MSDOperation *)self dependents];
  v6 = [v5 copy];

  v7 = [(MSDOperation *)self context];
  v8 = [v7 useDiffPatch];

  if (v8)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Falling back to install full IPA for app: %{public}@", buf, 0xCu);
    }

    v10 = [(MSDOperation *)self context];
    v11 = [v10 copy];

    [v11 setAlreadyInstalled:0];
    [v11 setCurrentUniqueIdentifier:0];
    [v11 setUseDiffPatch:0];
    v12 = [MSDOperationRepository createOperationFromIdentifier:@"MSDInstallableFileDownloadOperation" withContext:v11];
    v13 = [MSDOperationRepository createOperationFromIdentifier:@"MSDIPAInstallOperation" withContext:v11];
    [v13 addDependency:v12];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18) addDependency:{v13, v19}];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    [(MSDOperation *)self produceNewDependentOperation:v12 forRollback:0];
    [(MSDOperation *)self produceNewDependentOperation:v13 forRollback:0];
    [(MSDOperation *)self setSkipped:1];
  }
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "App %{public}@ successfully installed.", &v8, 0xCu);
  }

  [(MSDIPAInstallOperation *)self setInstallError:0];
  v7 = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(v7);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 bundleID];
    v11 = [v8 localizedDescription];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App %{public}@ cannot be installed: %{public}@", &v13, 0x16u);
  }

  [(MSDIPAInstallOperation *)self setInstallError:v8];
  v12 = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(v12);
}

@end