@interface MSDIPAInstallOperation
- (BOOL)_IXInstallAppIPA;
- (BOOL)_fulfillIXSZTransferPromise:(id)promise withFile:(id)file outError:(id *)error;
- (BOOL)_verifyInstalledApp;
- (BOOL)rollback;
- (MSDIPAInstallOperation)initWithContext:(id)context;
- (MSDIPAInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager;
- (id)methodSelectors;
- (void)_createFullIPAInstallOperationsAsFallback;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully;
@end

@implementation MSDIPAInstallOperation

- (MSDIPAInstallOperation)initWithContext:(id)context
{
  contextCopy = context;
  v5 = +[MSDContentCacheManager sharedInstance];
  v6 = [(MSDIPAInstallOperation *)self initWithContext:contextCopy andContentCacheManager:v5];

  return v6;
}

- (MSDIPAInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MSDIPAInstallOperation;
  v7 = [(MSDOperation *)&v11 initWithContext:context];
  v8 = v7;
  if (v7)
  {
    [(MSDIPAInstallOperation *)v7 setContentCacheProtocol:managerCopy];
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
  context = [(MSDOperation *)self context];
  [context setUninstallOperation:1];

  context2 = [(MSDOperation *)self context];
  v5 = [MSDOperationRepository createOperationFromIdentifier:@"MSDIPAUninstallOperation" withContext:context2];

  [(MSDOperation *)self produceNewDependentOperation:v5 forRollback:1];
  return 1;
}

- (BOOL)_IXInstallAppIPA
{
  v3 = +[NSFileManager defaultManager];
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  identifier = [context2 identifier];

  context3 = [(MSDOperation *)self context];
  uniqueIdentifier = [context3 uniqueIdentifier];

  context4 = [(MSDOperation *)self context];
  currentUniqueIdentifier = [context4 currentUniqueIdentifier];

  context5 = [(MSDOperation *)self context];
  alreadyInstalled = [context5 alreadyInstalled];

  context6 = [(MSDOperation *)self context];
  useDiffPatch = [context6 useDiffPatch];

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v83 = identifier;
    v84 = 2114;
    *v85 = uniqueIdentifier;
    *&v85[8] = 2114;
    v86 = currentUniqueIdentifier;
    v87 = 1026;
    v88 = useDiffPatch;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Installing IPA for app: %{public}@ <UID %{public}@, CurrentUID: %{public}@, DiffPatch: %{public, BOOL}d>", buf, 0x26u);
  }

  v17 = +[MSDAppHelper sharedInstance];
  v62 = [v17 acquireAppTerminationAssertionForApp:identifier];

  if (useDiffPatch)
  {
    contentCacheProtocol = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [contentCacheProtocol appDiffPatchFileForSourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
  }

  else
  {
    contentCacheProtocol = [(MSDOperation *)self context];
    [contentCacheProtocol fileHash];
  }
  v69 = ;

  v19 = [identifier stringByAppendingPathExtension:@"ipa"];
  v70 = [stagingRootPath stringByAppendingPathComponent:v19];

  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v83 = v69;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IPA/Patch file hash to use: %{public}@", buf, 0xCu);
  }

  v65 = currentUniqueIdentifier;

  v68 = v3;
  v64 = stagingRootPath;
  v66 = uniqueIdentifier;
  if (alreadyInstalled)
  {
    v81 = 0;
    v21 = [IXUpdatingAppInstallCoordinator coordinatorForAppWithBundleID:identifier withClientID:9 createIfNotExisting:1 created:0 error:&v81];
    v22 = v81;
    installError = v22;
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
    v21 = [IXInitiatingAppInstallCoordinator coordinatorForAppWithBundleID:identifier withClientID:9 createIfNotExisting:1 created:0 error:&v80];
    v24 = v80;
    installError = v24;
    if (!v21)
    {
      sub_1000DA010(v24);
      goto LABEL_66;
    }
  }

  v25 = installError;
  [v21 setObserver:{self, v62, stagingRootPath}];
  v79 = installError;
  v26 = [v21 setImportance:3 error:&v79];
  installError = v79;

  if ((v26 & 1) == 0)
  {
    sub_1000DA0C4(installError);
    goto LABEL_66;
  }

  v27 = +[NSArray array];
  v78 = installError;
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
    installError = v29;
    goto LABEL_32;
  }

  if (useDiffPatch)
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
  v67 = [[IXPlaceholder alloc] initAppPlaceholderWithBundleName:@"TempApp" bundleID:identifier installType:1 client:9];
  v33 = [v21 setPlaceholderPromise:? error:?];
  installError = v29;

  if ((v33 & 1) == 0)
  {
    sub_1000DA1FC(installError);
LABEL_62:
    v45 = 0;
    v41 = 0;
    goto LABEL_32;
  }

  v77[0] = installError;
  v34 = [v21 setAppAssetPromise:v30 error:v77];
  v35 = v77[0];

  if ((v34 & 1) == 0)
  {
    sub_1000DA298(v35);
    v45 = 0;
    v41 = 0;
    installError = v35;
    goto LABEL_32;
  }

  v76 = v35;
  v36 = [v67 setConfigurationCompleteWithError:&v76];
  installError = v76;

  if ((v36 & 1) == 0)
  {
    sub_1000DA334(installError);
    goto LABEL_62;
  }

  contentCacheProtocol2 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  context7 = [(MSDOperation *)self context];
  v39 = [contentCacheProtocol2 copyFileIfPresentInCache:v69 toLocation:v70 verifyHash:{objc_msgSend(context7, "verifyFileHash")}];

  if ((v39 & 1) == 0)
  {
    sub_1000DA3D0();
    goto LABEL_62;
  }

  if (([identifier isEqualToString:@"com.retailtech.arkenstone"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.ist.windward") & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.ist.DemoDiscoveryApp"))
  {
    v40 = +[F13Server sharedInstance];
    [v40 windwardAppInstallationStarted];
  }

  v41 = objc_alloc_init(MIInstallOptions);
  [v41 setInstallTargetType:1];
  v75 = installError;
  v42 = [v21 setInstallOptions:v41 error:&v75];
  v29 = v75;

  if ((v42 & 1) == 0)
  {
    sub_1000DA45C(v29);
    v45 = 0;
    goto LABEL_64;
  }

  if (useDiffPatch)
  {
    v74 = v29;
    v43 = [(MSDIPAInstallOperation *)self _fulfillIXSZTransferPromise:v30 withFile:v70 outError:&v74];
    installError = v74;

    if ((v43 & 1) == 0)
    {
      v45 = 0;
      goto LABEL_32;
    }

    v29 = installError;
  }

  else
  {
    [v30 setComplete:1];
  }

  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  installError = [(MSDIPAInstallOperation *)self installError];

  v45 = installError == 0;
LABEL_32:
  v46 = sub_100063BEC();
  signpostId = [(MSDOperation *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v48 = signpostId;
    if (os_signpost_enabled(v46))
    {
      *buf = 138412802;
      v83 = identifier;
      v84 = 1024;
      *v85 = useDiffPatch;
      *&v85[4] = 1024;
      *&v85[6] = v45;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v48, "Install IPA", "App identifier: %{xcode:string}@ Use diff patch: %{xcode:BOOLean}d Install Result: %{xcode:BOOLean}d", buf, 0x18u);
    }
  }

  if (v45)
  {
    v49 = installError;
  }

  else
  {
    v73 = installError;
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
      semaphore2 = [(MSDIPAInstallOperation *)self semaphore];
      dispatch_semaphore_wait(semaphore2, 0xFFFFFFFFFFFFFFFFLL);
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

  if (useDiffPatch)
  {
    contentCacheProtocol3 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [contentCacheProtocol3 removeAppDiffPatchFileForSourceAppUID:v65 targetAppUID:v66];
  }

  context8 = [(MSDOperation *)self context];
  deleteInstallableFileAfterInstall = [context8 deleteInstallableFileAfterInstall];

  if (!deleteInstallableFileAfterInstall)
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

  contentCacheProtocol4 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  v58 = [contentCacheProtocol4 deleteFromCache:v69];

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
  [v60 releaseAppTerminationAssertion:v63 forApp:identifier];

  return v45;
}

- (BOOL)_verifyInstalledApp
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  uniqueIdentifier = [context2 uniqueIdentifier];

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 bundlePathForInstalledApp:identifier];

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

    uniqueIdentifier2 = 0;
    goto LABEL_10;
  }

  uniqueIdentifier2 = [v9 uniqueIdentifier];
  if (([uniqueIdentifier2 isEqualToString:uniqueIdentifier] & 1) == 0)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = uniqueIdentifier2;
      v17 = 2114;
      v18 = uniqueIdentifier;
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

- (BOOL)_fulfillIXSZTransferPromise:(id)promise withFile:(id)file outError:(id *)error
{
  promiseCopy = promise;
  fileCopy = file;
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
    *&buf[4] = fileCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending bytes to IXPromisedStreamingZipTransfer from file: %{public}@", buf, 0xCu);
  }

  v8 = fileCopy;
  v9 = open([fileCopy fileSystemRepresentation], 0);
  v25 = v9;
  if (v9 < 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      sub_1000DA870(fileCopy, v22, buf, v21);
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
  [promiseCopy prepareForExtraction:v29];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

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
          semaphore3 = sub_100063A54();
          if (os_log_type_enabled(semaphore3, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA808();
          }

          goto LABEL_16;
        }

        if (read(v25, v13, v12) != v12)
        {
          semaphore3 = sub_100063A54();
          if (os_log_type_enabled(semaphore3, OS_LOG_TYPE_ERROR))
          {
            v19 = __error();
            sub_1000DA754(v19, buf, semaphore3);
          }

          goto LABEL_16;
        }

        semaphore3 = [NSData dataWithBytesNoCopy:v13 length:v12 freeWhenDone:1];
        if (!semaphore3)
        {
          v20 = sub_100063A54();
          sub_1000DA7A0(v20, buf);
          semaphore3 = *buf;
          goto LABEL_16;
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100076FE8;
        v28[3] = &unk_10016B620;
        v28[5] = &v35;
        v28[6] = &v31;
        v28[4] = self;
        [promiseCopy supplyBytes:semaphore3 withCompletionBlock:v28];
        semaphore2 = [(MSDIPAInstallOperation *)self semaphore];
        dispatch_semaphore_wait(semaphore2, 0xFFFFFFFFFFFFFFFFLL);

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
    [promiseCopy finishStreamWithCompletionBlock:v27];
    semaphore3 = [(MSDIPAInstallOperation *)self semaphore];
    dispatch_semaphore_wait(semaphore3, 0xFFFFFFFFFFFFFFFFLL);
LABEL_16:
  }

  if (v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (error)
  {
    v16 = v36[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v17 & 1;
}

- (void)_createFullIPAInstallOperationsAsFallback
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  dependents = [(MSDOperation *)self dependents];
  v6 = [dependents copy];

  context2 = [(MSDOperation *)self context];
  useDiffPatch = [context2 useDiffPatch];

  if (useDiffPatch)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Falling back to install full IPA for app: %{public}@", buf, 0xCu);
    }

    context3 = [(MSDOperation *)self context];
    v11 = [context3 copy];

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

- (void)coordinatorDidCompleteSuccessfully:(id)successfully
{
  successfullyCopy = successfully;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [successfullyCopy bundleID];
    v8 = 138543362;
    v9 = bundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "App %{public}@ successfully installed.", &v8, 0xCu);
  }

  [(MSDIPAInstallOperation *)self setInstallError:0];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [coordinatorCopy bundleID];
    localizedDescription = [reasonCopy localizedDescription];
    v13 = 138543618;
    v14 = bundleID;
    v15 = 2114;
    v16 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App %{public}@ cannot be installed: %{public}@", &v13, 0x16u);
  }

  [(MSDIPAInstallOperation *)self setInstallError:reasonCopy];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end