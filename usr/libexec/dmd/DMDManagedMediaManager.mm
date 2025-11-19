@interface DMDManagedMediaManager
+ (BOOL)shouldBypassVPPLicenseCheck;
+ (DMDManagedMediaManager)sharedManager;
+ (id)homeSharingCloudClient;
- (DMDManagedMediaManager)init;
- (NSArray)nonStoreBooks;
- (NSArray)storeBooks;
- (void)cancelNonStoreDownloadsWithDownloadIdentifiers:(id)a3 completionBlock:(id)a4;
- (void)cleanUpWithAssertion:(id)a3 completionBlock:(id)a4;
- (void)installNonStoreBook:(id)a3 fileExtension:(id)a4 URL:(id)a5 assertion:(id)a6 completionBlock:(id)a7;
- (void)installStoreBookWithiTunesStoreID:(id)a3 originator:(id)a4 assertion:(id)a5 completionBlock:(id)a6;
- (void)memberQueueCleanUp;
- (void)memberQueueCommitNonStoreBooksManifest;
- (void)memberQueueCommitStoreBooksManifest;
- (void)memberQueueMoveTransientStatesForward;
- (void)memberQueueRereadNonStoreBooksManifest;
- (void)memberQueueRereadStoreBooksManifest;
- (void)moveTransientStatesForward;
- (void)refreshBookPurchaseHistoryCompletion:(id)a3;
- (void)removeNonStoreBookWithPersistentID:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)removeStoreBookWithiTunesStoreID:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)rereadNonStoreBooksManifestCompletionBlock:(id)a3;
- (void)rereadStoreBooksManifestCompletionBlock:(id)a3;
- (void)searchBookPurchaseHistoryForiTunesStoreID:(id)a3 assertion:(id)a4 triesLeft:(int)a5 completionBlock:(id)a6;
- (void)setNonStoreManagedBook:(id)a3;
- (void)setState:(id)a3 forNonStoreBookWithPersistentID:(id)a4;
- (void)setState:(id)a3 forStoreBookWithiTunesStoreID:(id)a4;
- (void)setStoreManagedBook:(id)a3;
- (void)uprootWithAssertion:(id)a3 completionBlock:(id)a4;
@end

@implementation DMDManagedMediaManager

+ (DMDManagedMediaManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005009C;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF138 != -1)
  {
    dispatch_once(&qword_1000FF138, block);
  }

  v2 = qword_1000FF130;

  return v2;
}

+ (id)homeSharingCloudClient
{
  if (qword_1000FF148 != -1)
  {
    sub_100084DA4();
  }

  v3 = qword_1000FF140;

  return v3;
}

- (DMDManagedMediaManager)init
{
  v15.receiver = self;
  v15.super_class = DMDManagedMediaManager;
  v3 = [(DMDManagedMediaManager *)&v15 init];
  if (v3)
  {
    v4 = [DMDPowerAssertion assertionForOperation:@"DMDManagedMediaManager: init"];
    if ((MCHasMDMMigrated() & 1) == 0)
    {
      sub_100084DB8(a2, v3);
    }

    v5 = dispatch_queue_create("DMDManagedMediaManager Member Queue", &_dispatch_queue_attr_concurrent);
    memberQueue = v3->_memberQueue;
    v3->_memberQueue = v5;

    v7 = objc_opt_new();
    memberQueuePersistentIDToNonStoreBook = v3->_memberQueuePersistentIDToNonStoreBook;
    v3->_memberQueuePersistentIDToNonStoreBook = v7;

    v9 = objc_opt_new();
    memberQueueiTunesStoreIDToStoreBook = v3->_memberQueueiTunesStoreIDToStoreBook;
    v3->_memberQueueiTunesStoreIDToStoreBook = v9;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000502B8;
    v13[3] = &unk_1000CE5A0;
    v14 = v4;
    v11 = v4;
    [(DMDManagedMediaManager *)v3 cleanUpWithAssertion:v11 completionBlock:v13];
    [v11 stayAliveThroughHereAtLeast];
  }

  return v3;
}

- (void)cleanUpWithAssertion:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = [(DMDManagedMediaManager *)self memberQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100050374;
  v8[3] = &unk_1000CE8C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_barrier_async(v6, v8);
}

- (void)memberQueueCleanUp
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cleaning up media manager manifests", buf, 2u);
  }

  v69 = sub_100050ED0();
  [(DMDManagedMediaManager *)self memberQueueRereadNonStoreBooksManifest];
  v72 = objc_opt_new();
  v2 = [v69 downloads];
  v79 = [v2 mutableCopy];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v3 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
  if (v3)
  {
    v77 = 0;
    v4 = *v105;
    v73 = SSDownloadPhaseFailed;
    v71 = SSDownloadPhaseFinished;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v105 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v104 + 1) + 8 * i);
        v7 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v8 = [v7 objectForKeyedSubscript:v6];

        v9 = [v8 downloadIdentifier];
        v10 = v9 == 0;

        if (!v10)
        {
          *buf = 0;
          v99 = buf;
          v100 = 0x3032000000;
          v101 = sub_100050F14;
          v102 = sub_100050F24;
          v103 = 0;
          v11 = [v8 downloadIdentifier];
          v12 = [v11 longLongValue];

          v97[0] = _NSConcreteStackBlock;
          v97[1] = 3221225472;
          v97[2] = sub_100050F2C;
          v97[3] = &unk_1000CF5A0;
          v97[4] = buf;
          v97[5] = v12;
          [v79 enumerateObjectsUsingBlock:v97];
          v13 = *(v99 + 5);
          if (v13)
          {
            v14 = [v13 downloadPhaseIdentifier];
            if ([v14 isEqualToString:v73])
            {
              v15 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v70 = [v8 friendlyName];
                v22 = [*(v99 + 5) failureError];
                *v111 = 138543618;
                v112 = v70;
                v113 = 2114;
                v114 = v22;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Book failed to download: %{public}@\nError: %{public}@", v111, 0x16u);
              }

              [v8 setDownloadIdentifier:0];
              v16 = [v8 state];
              v17 = v16 == @"Failed";

              if (!v17)
              {
                [v8 setState:@"Failed"];
                v77 = 1;
              }

              [v72 addObject:*(v99 + 5)];
            }

            else if ([v14 isEqualToString:v71])
            {
              v18 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v8 friendlyName];
                *v111 = 138543362;
                v112 = v19;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Book completed downloading: %{public}@", v111, 0xCu);
              }

              [v8 setDownloadIdentifier:0];
              v20 = [v8 state];
              v21 = v20 == @"Managed";

              if (!v21)
              {
                [v8 setState:@"Managed"];
                v77 = 1;
              }
            }

            [v79 removeObjectIdenticalTo:*(v99 + 5)];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
    }

    while (v3);
  }

  else
  {
    v77 = 0;
  }

  [v69 finishDownloads:v72];
  if ([v79 count])
  {
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_100050FAC;
    v94[3] = &unk_1000CDBD0;
    v95 = v69;
    v96 = v79;
    [v95 cancelDownloads:v96 completionBlock:v94];
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v23 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v24 = [v23 countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v24)
  {
    v25 = *v91;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v90 + 1) + 8 * j);
        v28 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v29 = [v28 objectForKeyedSubscript:v27];

        v30 = [v29 fullPath];
        if (!v30)
        {
          goto LABEL_38;
        }

        v31 = +[NSFileManager defaultManager];
        v32 = [v29 fullPath];
        v33 = [v31 fileExistsAtPath:v32];

        if (!v33)
        {
LABEL_38:
          v37 = [v29 state];
          v38 = v37 == @"ManagedButUninstalled";

          v36 = @"ManagedButUninstalled";
          if (v38)
          {
            goto LABEL_40;
          }

LABEL_39:
          [v29 setState:v36];
          v77 = 1;
          goto LABEL_40;
        }

        v34 = [v29 state];
        v35 = v34 == @"Managed";

        v36 = @"Managed";
        if (!v35)
        {
          goto LABEL_39;
        }

LABEL_40:
      }

      v24 = [v23 countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v24);
  }

  if (v77)
  {
    [(DMDManagedMediaManager *)self memberQueueCommitNonStoreBooksManifest];
  }

  v39 = +[DMDPaths purchasedBooksManifest];
  obja = [NSDictionary dictionaryWithContentsOfFile:v39];

  v40 = [obja objectForKeyedSubscript:@"Books"];
  v41 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v40 count]);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v80 = v40;
  v42 = [v80 countByEnumeratingWithState:&v86 objects:v109 count:16];
  if (v42)
  {
    v43 = *v87;
    do
    {
      for (k = 0; k != v42; k = k + 1)
      {
        if (*v87 != v43)
        {
          objc_enumerationMutation(v80);
        }

        v45 = *(*(&v86 + 1) + 8 * k);
        v46 = [v45 objectForKeyedSubscript:@"s"];
        v47 = [v45 objectForKeyedSubscript:@"Path"];
        v48 = v47;
        if (v46)
        {
          v49 = v47 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          v50 = +[DMDPaths purchasedBooksDirectory];
          v51 = [v50 stringByAppendingPathComponent:v48];
          [v41 setObject:v51 forKeyedSubscript:v46];
        }
      }

      v42 = [v80 countByEnumeratingWithState:&v86 objects:v109 count:16];
    }

    while (v42);
  }

  [(DMDManagedMediaManager *)self memberQueueRereadStoreBooksManifest];
  v78 = +[NSFileManager defaultManager];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v108 count:16];
  if (!v53)
  {

    goto LABEL_74;
  }

  v76 = 0;
  v54 = *v83;
  do
  {
    for (m = 0; m != v53; m = m + 1)
    {
      if (*v83 != v54)
      {
        objc_enumerationMutation(v52);
      }

      v56 = *(*(&v82 + 1) + 8 * m);
      v57 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
      v58 = [v57 objectForKeyedSubscript:v56];

      v59 = sub_100050FB8();
      v60 = [v58 state];
      v61 = [v59 containsObject:v60];

      if ((v61 & 1) == 0)
      {
        v62 = [v58 iTunesStoreID];
        v63 = [v41 objectForKeyedSubscript:v62];

        if (v63 && [v78 fileExistsAtPath:v63])
        {
          v64 = [v58 state];
          v65 = v64 == @"Installed";

          v66 = @"Installed";
          if (v65)
          {
            goto LABEL_68;
          }

LABEL_67:
          [v58 setState:v66];
          v76 = 1;
        }

        else
        {
          v67 = [v58 state];
          v68 = v67 == @"Uninstalled";

          v66 = @"Uninstalled";
          if (!v68)
          {
            goto LABEL_67;
          }
        }

LABEL_68:
      }
    }

    v53 = [v52 countByEnumeratingWithState:&v82 objects:v108 count:16];
  }

  while (v53);

  if (v76)
  {
    [(DMDManagedMediaManager *)self memberQueueCommitStoreBooksManifest];
  }

LABEL_74:
}

- (void)memberQueueCommitNonStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) manifestDictionary];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [v3 setObject:v5 forKeyedSubscript:kNonStoreBooksManifestBooksKey];
  v13 = +[NSFileManager defaultManager];
  v14 = +[DMDPaths managedNonStoreBooksDirectory];
  if (([v13 fileExistsAtPath:v14] & 1) == 0)
  {
    v23 = NSFilePosixPermissions;
    v24 = &off_1000D7A30;
    v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:v15 error:0];

    v16 = +[MCProfileConnection sharedConnection];
    v17 = [v16 isEnterpriseBookBackupAllowed];

    if (![DMDMDMUtilities setSkipBackupAttribute:v17 ^ 1 toItemAtPath:v14]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084E44();
    }
  }

  v18 = +[DMDPaths managedNonStoreBooksManifestPath];
  [v3 writeToFile:v18 atomically:1];

  MCSendManagedBooksChangedNotification();
}

- (void)memberQueueCommitStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) manifestDictionary];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v3 setObject:v5 forKeyedSubscript:kStoreBooksManifestBooksKey];
  v13 = +[DMDPaths managedStoreBooksManifestPath];
  [v3 writeToFile:v13 atomically:1];

  MCSendManagedBooksChangedNotification();
}

- (void)memberQueueRereadNonStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = +[DMDPaths managedNonStoreBooksManifestPath];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:kNonStoreBooksManifestBooksKey];
    v7 = v6;
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v15 + 1) + 8 * v11)];
            v13 = [v12 persistentID];

            if (v13)
            {
              v14 = [v12 persistentID];
              [v3 setObject:v12 forKeyedSubscript:v14];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  [(DMDManagedMediaManager *)self setMemberQueuePersistentIDToNonStoreBook:v3];
}

- (void)memberQueueRereadStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = +[DMDPaths managedStoreBooksManifestPath];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:kStoreBooksManifestBooksKey];
    v7 = v6;
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v15 + 1) + 8 * v11)];
            v13 = [v12 iTunesStoreID];

            if (v13)
            {
              v14 = [v12 iTunesStoreID];
              [v3 setObject:v12 forKeyedSubscript:v14];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  [(DMDManagedMediaManager *)self setMemberQueueiTunesStoreIDToStoreBook:v3];
}

- (void)rereadNonStoreBooksManifestCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(DMDManagedMediaManager *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005188C;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

- (void)rereadStoreBooksManifestCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(DMDManagedMediaManager *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000519B8;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

- (void)setNonStoreManagedBook:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentID];

  if (v5)
  {
    v6 = [(DMDManagedMediaManager *)self memberQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051B1C;
    v7[3] = &unk_1000CDC38;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_async(v6, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084E88();
  }
}

- (void)setStoreManagedBook:(id)a3
{
  v4 = a3;
  v5 = [v4 iTunesStoreID];

  if (v5)
  {
    v6 = [(DMDManagedMediaManager *)self memberQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051C7C;
    v7[3] = &unk_1000CDC38;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_async(v6, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084F00();
  }
}

- (void)setState:(id)a3 forNonStoreBookWithPersistentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051DC8;
  block[3] = &unk_1000CDC60;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_async(v8, block);
}

- (void)setState:(id)a3 forStoreBookWithiTunesStoreID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051F1C;
  block[3] = &unk_1000CDC60;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_async(v8, block);
}

- (void)cancelNonStoreDownloadsWithDownloadIdentifiers:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100050ED0();
  v8 = objc_opt_new();
  if ([v5 count])
  {
    v19 = v7;
    v20 = v6;
    v9 = [v7 downloads];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 persistentIdentifier]);
          v16 = [v5 containsObject:v15];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v7 = v19;
    v6 = v20;
  }

  if ([v8 count])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100052220;
    v23[3] = &unk_1000CE2E8;
    v17 = &v24;
    v24 = v6;
    [v7 cancelDownloads:v8 completionBlock:v23];
LABEL_16:

    goto LABEL_17;
  }

  if (v6)
  {
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052284;
    block[3] = &unk_1000CF578;
    v17 = &v22;
    v22 = v6;
    dispatch_async(v18, block);

    goto LABEL_16;
  }

LABEL_17:
}

- (void)installNonStoreBook:(id)a3 fileExtension:(id)a4 URL:(id)a5 assertion:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting installation of book: %{public}@", buf, 0xCu);
  }

  v17 = [v12 persistentID];
  if (!v17)
  {
    sub_100084FF0();
  }

  v18 = [(DMDManagedMediaManager *)self memberQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100052470;
  v24[3] = &unk_1000CF668;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v29 = v16;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v13;
  v23 = v12;
  dispatch_barrier_async(v18, v24);
}

+ (BOOL)shouldBypassVPPLicenseCheck
{
  CFPreferencesAppSynchronize(@"com.apple.managedconfiguration.mdmd");
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"MediaBypassVPPCheck", @"com.apple.managedconfiguration.mdmd", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)refreshBookPurchaseHistoryCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Refreshing book purchase history and trying again.", v5, 2u);
  }

  v4 = +[DMDManagedMediaManager homeSharingCloudClient];
  [v4 updateJaliscoLibraryWithReason:8 completionHandler:v3];
}

- (void)searchBookPurchaseHistoryForiTunesStoreID:(id)a3 assertion:(id)a4 triesLeft:(int)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Searching book purchase history for iTunes Store ID %{public}@", buf, 0xCu);
  }

  v13 = +[DMDManagedMediaManager homeSharingCloudClient];
  v24 = v10;
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100053254;
  v18[3] = &unk_1000CF6B8;
  v23 = a5;
  v19 = v10;
  v20 = self;
  v21 = v11;
  v22 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  [v13 loadBooksForStoreIDs:v14 withCompletionHandler:v18];
}

- (void)installStoreBookWithiTunesStoreID:(id)a3 originator:(id)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting installation of book with iTunes Store ID %{public}@", buf, 0xCu);
  }

  if (v10)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"Book Installation" value:&stru_1000D0428 table:@"DMFNotifications"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"Sign in to iTunes to allow %@ to manage and install books." value:&stru_1000D0428 table:@"DMFNotifications"];
    v18 = [NSString stringWithFormat:v17, v11];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100053960;
    v20[3] = &unk_1000CF730;
    v24 = v13;
    v21 = v12;
    v22 = self;
    v23 = v10;
    [(DMDManagedAssetManager *)self promptUserToLoginToiTunesIfNeededTitle:v15 message:v18 assertion:v21 completionBlock:v20];

LABEL_7:
    goto LABEL_8;
  }

  if (v13)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000538E8;
    block[3] = &unk_1000CF450;
    v27 = v13;
    v26 = v12;
    dispatch_async(v19, block);

    v15 = v27;
    goto LABEL_7;
  }

LABEL_8:
}

- (NSArray)storeBooks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100050F14;
  v11 = sub_100050F24;
  v12 = 0;
  v3 = [(DMDManagedMediaManager *)self memberQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053DD8;
  v6[3] = &unk_1000CE550;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)nonStoreBooks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100050F14;
  v11 = sub_100050F24;
  v12 = 0;
  v3 = [(DMDManagedMediaManager *)self memberQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053F8C;
  v6[3] = &unk_1000CE550;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)memberQueueMoveTransientStatesForward
{
  v29 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = sub_100050FB8();
        v12 = [v10 state];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          [v29 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v5);
  }

  if ([v29 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v14 = [v29 count];
      *buf = 67109120;
      LODWORD(v40) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removing %u non-store books because we have reported their transient state.", buf, 8u);
    }

    v15 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
    [v15 removeObjectsForKeys:v29];

    [(DMDManagedMediaManager *)self memberQueueCommitNonStoreBooksManifest];
  }

  v30 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        v22 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
        v23 = [v22 objectForKeyedSubscript:v21];

        v24 = sub_100050FB8();
        v25 = [v23 state];
        v26 = [v24 containsObject:v25];

        if (v26)
        {
          [v30 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v18);
  }

  if ([v30 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v27 = [v30 count];
      *buf = 134217984;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removing %lu store books because we have reported their transient state.", buf, 0xCu);
    }

    v28 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
    [v28 removeObjectsForKeys:v30];

    [(DMDManagedMediaManager *)self memberQueueCommitStoreBooksManifest];
  }
}

- (void)moveTransientStatesForward
{
  v3 = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054448;
  block[3] = &unk_1000CE5A0;
  block[4] = self;
  dispatch_barrier_async(v3, block);
}

- (void)removeNonStoreBookWithPersistentID:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DMDManagedMediaManager *)self memberQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100054550;
  v15[3] = &unk_1000CE9D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_barrier_async(v11, v15);
}

- (void)removeStoreBookWithiTunesStoreID:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054A60;
  block[3] = &unk_1000CDC38;
  block[4] = self;
  v16 = v7;
  v10 = v7;
  dispatch_sync(v9, block);

  v11 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100054AB0;
  v13[3] = &unk_1000CF578;
  v14 = v8;
  v12 = v8;
  dispatch_async(v11, v13);
}

- (void)uprootWithAssertion:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Canceling all book downloads.", buf, 2u);
  }

  v8 = sub_100050ED0();
  [v8 downloads];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100054C18;
  v13[3] = &unk_1000CF758;
  v15 = v14 = v8;
  v17 = v6;
  v18 = v7;
  v16 = self;
  v9 = v6;
  v10 = v7;
  v11 = v15;
  v12 = v8;
  [v12 cancelDownloads:v11 completionBlock:v13];
}

@end