@interface MILaunchServicesOperationManager
+ (BOOL)_shouldContinueAfterCheckingAttemptCountInDir:(id)a3;
+ (BOOL)_writeLaunchServicesOperation:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (id)_discoverOrderedJournalEntriesInInstanceDir:(id)a3;
+ (id)_mostRecentInstanceDirURLWithinURL:(id)a3;
+ (id)_operationFromURL:(id)a3 error:(id *)a4;
+ (id)_registerInstalledInfo:(id)a3 forAppBundleID:(id)a4 personas:(id)a5 inDomain:(unint64_t)a6 error:(id *)a7;
+ (id)instanceForCurrentUser;
+ (id)instanceForSystemSharedContent;
+ (id)registerInstalledInfo:(id)a3 forAppBundleID:(id)a4 personas:(id)a5 inDomain:(unint64_t)a6 error:(id *)a7;
+ (id)registerInstalledInfo:(id)a3 forIdentity:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6;
+ (id)registerUsingDiscoveredInfoForAppIdentity:(id)a3 inDomain:(unint64_t)a4 error:(id *)a5;
+ (void)_reconcileOperations:(id)a3 unregisterMountPoints:(id *)a4 registerMountPoints:(id *)a5 restartUniqueOperations:(id *)a6;
- (BOOL)_createStorageBaseDirectoryWithError:(id *)a3;
- (BOOL)_onQueue_addPendingLaunchServicesOperation:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_deleteLaunchServicesOperationForSerialNumber:(unint64_t)a3 error:(id *)a4;
- (BOOL)_onQueue_journalLaunchServicesOperation:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_setPersonaUniqueStrings:(id)a3 forAppBundleID:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6;
- (BOOL)_onQueue_unregisterAppForBundleID:(id)a3 domain:(unint64_t)a4 operationType:(unsigned int)a5 precondition:(id)a6 error:(id *)a7;
- (BOOL)_onQueue_unregisterApplicationsAtMountPoint:(id)a3 error:(id *)a4;
- (BOOL)registerUsingDiscoveredInformationForAppBundleID:(id)a3 inDomain:(unint64_t)a4 resultingRecordPromise:(id *)a5 error:(id *)a6;
- (BOOL)setPersonaUniqueStrings:(id)a3 forAppBundleID:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6;
- (BOOL)unregisterAppsAtMountPoint:(id)a3 error:(id *)a4;
- (MILaunchServicesOperationManager)initWithUID:(unsigned int)a3;
- (NSURL)instanceStorageBaseURL;
- (NSURL)lookAsideStorageBaseURL;
- (NSURL)storageBaseURL;
- (id)_onQueue_registerApplicationInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 domain:(unint64_t)a6 personas:(id)a7 error:(id *)a8;
- (id)_registerApplicationInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 domain:(unint64_t)a6 personas:(id)a7 error:(id *)a8;
- (id)_setUpLookAsideAtDirAndFindMostRecentInstance:(id)a3;
- (id)_storageURLForOperationSerialNumber:(unint64_t)a3;
- (id)registerInstalledInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 error:(id *)a6;
- (id)registerInstalledInfoForBuiltInAppAtURL:(id)a3 error:(id *)a4;
- (unint64_t)_onQueue_nextSerialNumber;
- (unint64_t)serialNumber;
- (void)_onQueue_handleLaunchServicesOperationFailureForUUID:(id)a3 error:(id)a4;
- (void)_onQueue_removePendingLaunchServicesOperationForUUID:(id)a3 dueToLSSave:(BOOL)a4;
- (void)_reconcileOperations:(id)a3;
- (void)operationWithUUID:(id)a3 didFailToSaveWithError:(id)a4;
- (void)operationWithUUIDWasSaved:(id)a3;
- (void)purge;
- (void)reconcile;
@end

@implementation MILaunchServicesOperationManager

+ (id)_registerInstalledInfo:(id)a3 forAppBundleID:(id)a4 personas:(id)a5 inDomain:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (![a1 appReferencesEnabled] || (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isSharediPad"), v15, (v16 & 1) != 0))
  {
    v17 = 0;
    goto LABEL_4;
  }

  v23 = sub_100009864();
  v17 = 0;
  if (a6 - 1 > 1)
  {
    goto LABEL_4;
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
  v27 = 0;
  v25 = [v24 registerInstalledInfo:v12 forAppBundleID:v13 personas:v14 inDomain:a6 error:&v27];
  v17 = v27;

  if (v25)
  {
LABEL_4:
    v18 = +[MILaunchServicesOperationManager instanceForCurrentUser];
    v26 = v17;
    v19 = [v18 registerInstalledInfo:v12 forAppBundleID:v13 personas:v14 inDomain:a6 error:&v26];
    v20 = v26;

    v17 = v20;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100058E3C();
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v19 = 0;
  if (a7)
  {
LABEL_5:
    if (!v19)
    {
      v21 = v17;
      *a7 = v17;
    }
  }

LABEL_7:

  return v19;
}

+ (id)registerInstalledInfo:(id)a3 forAppBundleID:(id)a4 personas:(id)a5 inDomain:(unint64_t)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() _registerInstalledInfo:v13 forAppBundleID:v12 personas:v11 inDomain:a6 error:a7];

  return v14;
}

+ (id)registerInstalledInfo:(id)a3 forIdentity:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 bundleID];
  if (![a1 appReferencesEnabled])
  {
    v16 = 0;
    goto LABEL_6;
  }

  v12 = sub_100009864();
  v13 = [a1 _appReferenceManagerInstance];
  v27 = 0;
  v28 = 0;
  v14 = [v13 addReferenceForIdentity:v10 inDomain:a5 forUserWithID:v12 resultingPersonaUniqueStrings:&v28 error:&v27];
  v15 = v28;
  v16 = v27;

  if (v14)
  {
    if (v15)
    {
LABEL_7:
      v26 = v16;
      v19 = [a1 _registerInstalledInfo:v9 forAppBundleID:v11 personas:v15 inDomain:a5 error:&v26];
      v20 = v16;
      v16 = v26;
      goto LABEL_8;
    }

LABEL_6:
    v17 = [v10 personaUniqueString];
    v29 = v17;
    v18 = [NSArray arrayWithObjects:&v29 count:1];
    v15 = [NSSet setWithArray:v18];

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v24 = MIStringForInstallationDomain();
    *buf = 136316162;
    v31 = "+[MILaunchServicesOperationManager registerInstalledInfo:forIdentity:inDomain:error:]";
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v24;
    v36 = 1024;
    v37 = v12;
    v38 = 2112;
    v39 = v16;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to add reference for %@ in %@ for client with uid %u : %@", buf, 0x30u);
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
  {
    v19 = 0;
    v21 = a6;
    if (!a6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v20 = MIStringForInstallationDomain();
  MOLogWrite();
  v19 = 0;
LABEL_8:
  v21 = a6;

  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v19)
  {
    v22 = v16;
    *v21 = v16;
  }

LABEL_11:

  return v19;
}

+ (id)registerUsingDiscoveredInfoForAppIdentity:(id)a3 inDomain:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 bundleID];
  v25 = 0;
  v10 = [MIBundleContainer appBundleContainerForIdentifier:v9 inDomain:a4 withError:&v25];
  v11 = v25;
  if (v10)
  {
    v13 = [v10 bundle];
    if (v13)
    {
      v22 = a1;
      v14 = [v8 personaUniqueString];
      v24 = v11;
      v15 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:v13 forPersona:v14 inContainer:v10 withError:&v24];
      v16 = v24;

      if (!v15)
      {
        v17 = 0;
        v11 = v16;
        if (!a5)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v23 = v16;
      v17 = [v22 registerInstalledInfo:v15 forIdentity:v8 inDomain:a4 error:&v23];
      v18 = v23;
      v11 = v16;
    }

    else
    {
      v18 = sub_100010734("+[MILaunchServicesOperationManager registerUsingDiscoveredInfoForAppIdentity:inDomain:error:]", 160, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@ for %@", v12, v10);
      v17 = 0;
      v15 = 0;
    }

    v11 = v18;
    if (!a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    v13 = 0;
    v15 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  if (!v17)
  {
    v19 = v11;
    *a5 = v11;
  }

LABEL_13:
  v20 = v17;

  return v17;
}

+ (id)instanceForCurrentUser
{
  v3 = sub_100009864();

  return [a1 _instanceForUID:v3];
}

+ (id)instanceForSystemSharedContent
{
  v3 = +[MIGlobalConfiguration sharedInstance];
  v4 = [v3 isSharediPad];

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058EC4();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v5 = 0;
  }

  else
  {
    v5 = [a1 _instanceForUID:0];
  }

  return v5;
}

- (MILaunchServicesOperationManager)initWithUID:(unsigned int)a3
{
  v13.receiver = self;
  v13.super_class = MILaunchServicesOperationManager;
  v4 = [(MILaunchServicesOperationManager *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.installd.LSOperationManager", v5);
    internalQueue = v4->_internalQueue;
    v4->_internalQueue = v6;

    v8 = objc_opt_new();
    pendingOperations = v4->_pendingOperations;
    v4->_pendingOperations = v8;

    v4->_serialNumber = 1;
    v10 = objc_opt_new();
    instanceID = v4->_instanceID;
    v4->_instanceID = v10;

    v4->_targetUID = a3;
  }

  return v4;
}

- (NSURL)storageBaseURL
{
  if (-[MILaunchServicesOperationManager targetUID](self, "targetUID") && (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isSharediPad], v2, !v3))
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    v5 = [v4 currentUserLaunchServicesOperationStorageBaseURL];
  }

  else
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    v5 = [v4 launchServicesOperationStorageBaseURL];
  }

  v6 = v5;

  return v6;
}

- (NSURL)instanceStorageBaseURL
{
  v3 = [(MILaunchServicesOperationManager *)self storageBaseURL];
  v4 = [(MILaunchServicesOperationManager *)self instanceID];
  v5 = [v4 UUIDString];
  v6 = [v3 URLByAppendingPathComponent:v5 isDirectory:1];

  return v6;
}

- (NSURL)lookAsideStorageBaseURL
{
  if (-[MILaunchServicesOperationManager targetUID](self, "targetUID") && (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isSharediPad], v2, !v3))
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    v5 = [v4 currentUserLaunchServicesOperationLookAsideStorageBaseURL];
  }

  else
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    v5 = [v4 launchServicesOperationLookAsideStorageBaseURL];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_createStorageBaseDirectoryWithError:(id *)a3
{
  v5 = +[MIFileManager defaultManager];
  v6 = [(MILaunchServicesOperationManager *)self storageBaseURL];
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:0 mode:493 class:4 error:a3];

  v8 = 0;
  if (v7)
  {
    v9 = [(MILaunchServicesOperationManager *)self instanceStorageBaseURL];
    v8 = [v5 createDirectoryAtURL:v9 withIntermediateDirectories:0 mode:493 class:4 error:a3];
  }

  return v8;
}

- (id)_storageURLForOperationSerialNumber:(unint64_t)a3
{
  v4 = [(MILaunchServicesOperationManager *)self instanceStorageBaseURL];
  v5 = [NSString stringWithFormat:@"%lu.plist", a3];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];

  return v6;
}

+ (BOOL)_writeLaunchServicesOperation:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v18 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = +[MIDaemonConfiguration sharedInstance];
    v11 = [v10 uid];
    v12 = +[MIDaemonConfiguration sharedInstance];
    v17 = v9;
    v13 = [v8 MI_writeAtomicallyToURL:v7 withMode:420 owner:v11 group:objc_msgSend(v12 protectionClass:"gid") withBarrier:4 error:{1, &v17}];
    v14 = v17;

    v9 = v14;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if ((v13 & 1) == 0)
  {
    v15 = v9;
    *a5 = v9;
  }

LABEL_7:

  return v13;
}

- (BOOL)_onQueue_journalLaunchServicesOperation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = -[MILaunchServicesOperationManager _storageURLForOperationSerialNumber:](self, "_storageURLForOperationSerialNumber:", [v6 serialNumber]);
  v16 = 0;
  v9 = [(MILaunchServicesOperationManager *)self _createStorageBaseDirectoryWithError:&v16];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v10 = 0;
  }

  v15 = v10;
  v11 = [objc_opt_class() _writeLaunchServicesOperation:v6 toURL:v8 error:&v15];
  v12 = v15;

  if (a4 && (v11 & 1) == 0)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

- (BOOL)_onQueue_deleteLaunchServicesOperationForSerialNumber:(unint64_t)a3 error:(id *)a4
{
  v7 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MIFileManager defaultManager];
  v9 = [(MILaunchServicesOperationManager *)self _storageURLForOperationSerialNumber:a3];
  v14 = 0;
  v10 = [v8 removeItemAtURL:v9 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }
  }

  return v10;
}

- (BOOL)_onQueue_addPendingLaunchServicesOperation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MILaunchServicesOperationManager *)self pendingOperations];
  v9 = [v6 operationUUID];
  [v8 setObject:v6 forKeyedSubscript:v9];

  if ([v8 count] == 1)
  {
    v10 = os_transaction_create();
    [(MILaunchServicesOperationManager *)self setPendingOperationTransaction:v10];
  }

  v16 = 0;
  v11 = [(MILaunchServicesOperationManager *)self _onQueue_journalLaunchServicesOperation:v6 error:&v16];
  v12 = v16;
  v13 = v12;
  if (v11)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  else if (a4)
  {
    v14 = v12;
    *a4 = v13;
  }

  return v11;
}

- (void)_onQueue_removePendingLaunchServicesOperationForUUID:(id)a3 dueToLSSave:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MILaunchServicesOperationManager *)self pendingOperations];
  v8 = [v7 objectForKeyedSubscript:v9];
  if (v8)
  {
    [v7 removeObjectForKey:v9];
    -[MILaunchServicesOperationManager _onQueue_deleteLaunchServicesOperationForSerialNumber:error:](self, "_onQueue_deleteLaunchServicesOperationForSerialNumber:error:", [v8 serialNumber], 0);
    if (![v7 count])
    {
      [(MILaunchServicesOperationManager *)self setPendingOperationTransaction:0];
    }

    if (v4)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
LABEL_17:
        MOLogWrite();
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      goto LABEL_17;
    }
  }

  else if (v4)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      goto LABEL_17;
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    goto LABEL_17;
  }
}

- (void)_onQueue_handleLaunchServicesOperationFailureForUUID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100058F48();
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v9 = v6;
    v10 = v7;
    MOLogWrite();
  }

  [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v6 dueToLSSave:0, v9, v10];
}

- (unint64_t)serialNumber
{
  v3 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_serialNumber;
}

- (unint64_t)_onQueue_nextSerialNumber
{
  v3 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  result = [(MILaunchServicesOperationManager *)self serialNumber];
  ++self->_serialNumber;
  return result;
}

+ (id)_mostRecentInstanceDirURLWithinURL:(id)a3
{
  v22 = a3;
  v21 = +[MIFileManager defaultManager];
  obj = [v22 URLByAppendingPathComponent:@"MostRecent" isDirectory:1];
  v20 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10004E510;
  v41[4] = sub_10004E520;
  v42 = +[NSDate distantPast];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10004E510;
  v39 = sub_10004E520;
  v40 = 0;
  if ([v21 itemExistsAtURL:obj])
  {
    v3 = obj;
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004E528;
    v30[3] = &unk_100091950;
    v4 = v21;
    v31 = v4;
    v33 = v41;
    v34 = &v35;
    v5 = v20;
    v32 = v5;
    v6 = [v4 enumerateURLsForItemsInDirectoryAtURL:v22 ignoreSymlinks:1 withBlock:v30];
    v7 = v36[5];
    if (v7)
    {
      v29 = 0;
      v8 = [v4 moveItemAtURL:v7 toURL:obj error:&v29];
      v19 = v29;
      if (v8)
      {
        objc_storeStrong(v36 + 5, obj);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100058FD0();
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v17 = v19;
          MOLogWrite();
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v43 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v24 = 0;
            v14 = [v4 removeItemAtURL:v13 error:{&v24, v17, v18}];
            v15 = v24;
            if ((v14 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
            {
              v17 = v13;
              v18 = v15;
              MOLogWrite();
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v43 count:16];
        }

        while (v10);
      }

      v3 = v36[5];
    }

    else
    {
      v19 = 0;
      v3 = 0;
    }
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(v41, 8);

  return v3;
}

- (id)_setUpLookAsideAtDirAndFindMostRecentInstance:(id)a3
{
  v4 = a3;
  v5 = +[MIFileManager defaultManager];
  v6 = [(MILaunchServicesOperationManager *)self storageBaseURL];
  if (![v5 itemDoesNotExistOrIsNotDirectoryAtURL:v4])
  {
    v33 = 0;
    v16 = [v5 removeItemAtURL:v6 keepParent:1 error:&v33];
    v17 = v33;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100059054();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v27 = v17;
        MOLogWrite();
      }
    }

    v32 = 0;
    v18 = [(MILaunchServicesOperationManager *)self _createStorageBaseDirectoryWithError:&v32, v27];
    v19 = v32;
    if ((v18 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000590D8();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v28 = v19;
        MOLogWrite();
      }
    }

    v20 = [objc_opt_class() _mostRecentInstanceDirURLWithinURL:v4];
    if (v20)
    {
      v15 = v20;

LABEL_70:
      v15 = v15;
      v25 = v15;
      goto LABEL_72;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005915C();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v31 = v17;
    v21 = [v5 removeItemAtURL:v4 keepParent:0 error:{&v31, v28}];
    v22 = v31;

    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000591E0();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    goto LABEL_45;
  }

  [v5 removeItemAtURL:v4 error:0];
  v7 = [objc_opt_class() _mostRecentInstanceDirURLWithinURL:v6];
  if (!v7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

LABEL_45:
    v15 = 0;
    goto LABEL_71;
  }

  v8 = v7;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10004EDA4;
  v38[3] = &unk_100091978;
  v38[4] = &v39;
  v9 = [v5 enumerateURLsForItemsInDirectoryAtURL:v7 ignoreSymlinks:1 withBlock:v38];
  if (v9 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    v27 = [v8 path];
    v30 = v9;
    MOLogWrite();
  }

  if ((v40[3] & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v37 = 0;
    v23 = [v5 removeItemAtURL:v6 keepParent:1 error:{&v37, v27, v30}];
    v11 = v37;
    if ((v23 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100059264();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v29 = v11;
        MOLogWrite();
      }
    }

    v36 = 0;
    v24 = [(MILaunchServicesOperationManager *)self _createStorageBaseDirectoryWithError:&v36, v29];
    v13 = v36;
    if ((v24 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000590D8();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    v10 = 0;
    v15 = 0;
    goto LABEL_62;
  }

  v35 = 0;
  v10 = [v5 moveItemAtURL:v6 toURL:v4 error:&v35];
  v11 = v35;
  if (v10)
  {
    v34 = 0;
    v12 = [(MILaunchServicesOperationManager *)self _createStorageBaseDirectoryWithError:&v34];
    v13 = v34;
    if ((v12 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000590D8();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v27 = v13;
        MOLogWrite();
      }
    }

    v14 = [v8 lastPathComponent];
    v15 = [v4 URLByAppendingPathComponent:v14 isDirectory:1];

LABEL_62:
    goto LABEL_69;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000592E8();
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v15 = 0;
LABEL_69:

  _Block_object_dispose(&v39, 8);
  if (v10)
  {
    goto LABEL_70;
  }

LABEL_71:
  v25 = 0;
LABEL_72:

  return v25;
}

+ (BOOL)_shouldContinueAfterCheckingAttemptCountInDir:(id)a3
{
  v3 = a3;
  v4 = +[MIFileManager defaultManager];
  v5 = [v3 URLByAppendingPathComponent:@"ReconcileAttempts.txt" isDirectory:0];
  v24 = 0;
  v6 = [NSString stringWithContentsOfURL:v5 encoding:4 error:&v24];
  v7 = v24;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 integerValue];
    if ((v9 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000593F0();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v18 = v9;
        MOLogWrite();
      }

      [v4 removeItemAtURL:v3 error:{0, v18}];
LABEL_24:
      v15 = 0;
      goto LABEL_32;
    }

    v12 = [NSString stringWithFormat:@"%ld", v9 + 1];
    v23 = v8;
    v13 = [v12 writeToURL:v5 atomically:1 encoding:4 error:&v23];
    v14 = v23;

    if (v13)
    {

      v15 = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_10005936C();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v19 = v14;
        MOLogWrite();
      }

      [v4 removeItemAtURL:v3 error:{0, v19}];

      v15 = 0;
    }

    v8 = v14;
    goto LABEL_32;
  }

  v10 = [v7 domain];
  if ([v10 isEqualToString:NSCocoaErrorDomain])
  {
    v11 = [v8 code];

    if (v11 == 260)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v18 = [v5 path];
    v21 = v8;
    MOLogWrite();
  }

LABEL_18:

  v22 = 0;
  v15 = 1;
  v16 = [@"1" writeToURL:v5 atomically:1 encoding:4 error:&v22];
  v8 = v22;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059480(v5);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v20 = [v5 path];
      MOLogWrite();
    }

    goto LABEL_24;
  }

LABEL_32:

  return v15;
}

+ (id)_operationFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
  v24 = 0;
  v11 = [NSData dataWithContentsOfURL:v5 options:3 error:&v24];
  v12 = v24;
  if (v11)
  {
    v23 = v12;
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v11 error:&v23];
    v14 = v23;

    if (v13)
    {
      goto LABEL_8;
    }

    v15 = MIInstallerErrorDomain;
    v16 = [v5 path];
    v18 = sub_100010734("+[MILaunchServicesOperationManager _operationFromURL:error:]", 694, v15, 4, v14, 0, @"Failed to unarchive registration data from %@", v17, v16);
    v12 = v14;
  }

  else
  {
    v19 = MIInstallerErrorDomain;
    v16 = [v5 path];
    v18 = sub_100010734("+[MILaunchServicesOperationManager _operationFromURL:error:]", 688, v19, 4, v12, 0, @"Failed to read registration data from %@", v20, v16);
  }

  v14 = v18;

  if (a4)
  {
    v21 = v14;
    v13 = 0;
    *a4 = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

+ (id)_discoverOrderedJournalEntriesInInstanceDir:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[MIFileManager defaultManager];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10004F4A8;
  v16 = &unk_1000919A0;
  v18 = a1;
  v7 = v5;
  v17 = v7;
  v8 = [v6 enumerateURLsForItemsInDirectoryAtURL:v4 ignoreSymlinks:1 withBlock:&v13];

  if (v8 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    v11 = [v4 path];
    v12 = v8;
    MOLogWrite();
  }

  v9 = [v7 sortedArrayUsingComparator:{&stru_1000919E0, v11, v12, v13, v14, v15, v16}];

  return v9;
}

+ (void)_reconcileOperations:(id)a3 unregisterMountPoints:(id *)a4 registerMountPoints:(id *)a5 restartUniqueOperations:(id *)a6
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v39 = v10;
    v40 = v7;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          v34 = *(*(&v41 + 1) + 8 * v14);
          MOLogWrite();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 mountPoint];
          [v8 removeObject:v16];
          [v7 addObject:v16];
LABEL_22:

          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v17 = [v16 mountPoint];
          if (v17)
          {
            [v7 removeObject:v17];
            [v8 addObject:v17];
          }

          else
          {
            v24 = [v16 bundleID];
            [v9 setObject:v16 forKeyedSubscript:v24];
          }

          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v15;
          v16 = [v17 bundleID];
          [v9 setObject:v17 forKeyedSubscript:v16];
LABEL_21:

          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v18 = [v16 bundleID];
          v19 = [v9 objectForKeyedSubscript:v18];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
              [v16 personaUniqueStrings];
              v21 = v18;
              v23 = v22 = v9;
              [v20 updatePersonaUniqueStrings:v23];

              v10 = v39;
              v9 = v22;
              v18 = v21;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setObject:v16 forKeyedSubscript:v18];
LABEL_33:
              v7 = v40;
            }

            else
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v27 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
              if (isKindOfClass)
              {
                v10 = v39;
                v7 = v40;
                if (v27)
                {
                  *buf = 136315394;
                  v46 = "+[MILaunchServicesOperationManager _reconcileOperations:unregisterMountPoints:registerMountPoints:restartUniqueOperations:]";
                  v47 = 2112;
                  v48 = v18;
                  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Encountered set personas operation for %@ after unregister operation", buf, 0x16u);
                }

                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                {
                  MOLogWrite();
                }
              }

              else
              {
                v7 = v40;
                if (v27)
                {
                  v31 = objc_opt_class();
                  v32 = NSStringFromClass(v31);
                  *buf = 136315650;
                  v46 = "+[MILaunchServicesOperationManager _reconcileOperations:unregisterMountPoints:registerMountPoints:restartUniqueOperations:]";
                  v47 = 2112;
                  v48 = v32;
                  v49 = 2112;
                  v50 = v18;
                  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Encountered unexpected LS operation of class %@ for bundle ID %@ before set personas operation", buf, 0x20u);
                }

                v10 = v39;
                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                {
                  v28 = objc_opt_class();
                  v35 = NSStringFromClass(v28);
                  MOLogWrite();

                  v10 = v39;
                }
              }
            }
          }

          else
          {
            [v9 setObject:v16 forKeyedSubscript:v18];
          }

          goto LABEL_22;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 136315394;
          v46 = "+[MILaunchServicesOperationManager _reconcileOperations:unregisterMountPoints:registerMountPoints:restartUniqueOperations:]";
          v47 = 2112;
          v48 = v30;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Encountered unknown class while enumerating saved operations: %@", buf, 0x16u);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v25 = objc_opt_class();
          v16 = NSStringFromClass(v25);
          MOLogWrite();
          goto LABEL_22;
        }

LABEL_23:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v33 = [v10 countByEnumeratingWithState:&v41 objects:v51 count:16];
      v12 = v33;
    }

    while (v33);
  }

  *a4 = [v7 copy];
  *a5 = [v8 copy];
  *a6 = [v9 allValues];
}

- (void)_reconcileOperations:(id)a3
{
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v43 = a3;
  [objc_opt_class() _reconcileOperations:v43 unregisterMountPoints:&v62 registerMountPoints:&v61 restartUniqueOperations:&v60];
  v4 = v62;
  v41 = v61;
  v40 = v60;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      v8 = 0;
      do
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * v8);
        v55 = 0;
        v10 = [(MILaunchServicesOperationManager *)self unregisterAppsAtMountPoint:v9 error:&v55, v37, v38];
        v11 = v55;
        if ((v10 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v12 = [v9 path];
            *buf = 136315650;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 2112;
            *v66 = v12;
            *&v66[8] = 2112;
            *&v66[10] = v11;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to restart unregister operation for mount point %@ : %@", buf, 0x20u);
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            v37 = [v9 path];
            v38 = v11;
            MOLogWrite();
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v6);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = v41;
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        v19 = [(MILaunchServicesOperationManager *)self _diskImageManagerInstance:v37];
        [v19 reregisterContentsAtMountPoint:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v15);
  }

  v42 = v13;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v40;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v67 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      v24 = 0;
      do
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
          v27 = [v26 bundleID];
          v28 = [v26 domain];
          v46 = 0;
          v29 = [(MILaunchServicesOperationManager *)self registerUsingDiscoveredInformationForAppBundleID:v27 inDomain:v28 resultingRecordPromise:0 error:&v46];
          v30 = v46;
          if (v29)
          {
            goto LABEL_40;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v35 = [(MILaunchServicesOperationManager *)self targetUID];
            *buf = 136315906;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 1024;
            *v66 = v35;
            *&v66[4] = 2112;
            *&v66[6] = v27;
            *&v66[14] = 2112;
            *&v66[16] = v30;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to restart register operation for %u/%@ : %@", buf, 0x26u);
          }

          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            goto LABEL_40;
          }

LABEL_39:
          v34 = [(MILaunchServicesOperationManager *)self targetUID:v37];
          v38 = v27;
          v39 = v30;
          v37 = v34;
          MOLogWrite();
          goto LABEL_40;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_41;
        }

        v31 = v25;
        v27 = [v31 bundleID];
        v32 = [v31 domain];
        v45 = 0;
        v33 = [(MILaunchServicesOperationManager *)self registerUsingDiscoveredInformationForAppBundleID:v27 inDomain:v32 resultingRecordPromise:0 error:&v45];
        v30 = v45;
        if ((v33 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v36 = [(MILaunchServicesOperationManager *)self targetUID];
            *buf = 136315906;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 1024;
            *v66 = v36;
            *&v66[4] = 2112;
            *&v66[6] = v27;
            *&v66[14] = 2112;
            *&v66[16] = v30;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to restart unregister operation for %u/%@ : %@", buf, 0x26u);
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            goto LABEL_39;
          }
        }

LABEL_40:

LABEL_41:
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v47 objects:v67 count:16];
    }

    while (v22);
  }
}

- (void)reconcile
{
  v3 = [(MILaunchServicesOperationManager *)self lookAsideStorageBaseURL];
  v4 = +[MIFileManager defaultManager];
  v5 = [(MILaunchServicesOperationManager *)self _setUpLookAsideAtDirAndFindMostRecentInstance:v3];
  if (v5 && [objc_opt_class() _shouldContinueAfterCheckingAttemptCountInDir:v3])
  {
    v6 = [objc_opt_class() _discoverOrderedJournalEntriesInInstanceDir:v5];
    [(MILaunchServicesOperationManager *)self _reconcileOperations:v6];
    v9 = 0;
    v7 = [v4 removeItemAtURL:v3 error:&v9];
    v8 = v9;
    if ((v7 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000595C8();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }
    }
  }
}

- (void)purge
{
  v3 = +[MIFileManager defaultManager];
  v4 = [(MILaunchServicesOperationManager *)self lookAsideStorageBaseURL];
  v14 = 0;
  v5 = [v3 removeItemAtURL:v4 keepParent:0 error:&v14];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005964C(v4);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v10 = [v4 path];
      v12 = v6;
      MOLogWrite();
    }

    v6 = 0;
  }

  v7 = [(MILaunchServicesOperationManager *)self storageBaseURL:v10];

  v13 = v6;
  v8 = [v3 removeItemAtURL:v7 keepParent:1 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000596F0(v7);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v11 = [v7 path];
      MOLogWrite();
    }
  }
}

- (id)_onQueue_registerApplicationInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 domain:(unint64_t)a6 personas:(id)a7 error:(id *)a8
{
  v13 = a3;
  v49 = a4;
  v48 = a5;
  v50 = a7;
  v14 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v14);

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10004E510;
  v66 = sub_10004E520;
  v67 = 0;
  v15 = objc_opt_new();
  v16 = [(MILaunchServicesOperationManager *)self targetUID];
  v17 = objc_opt_new();
  v18 = [NSNumber numberWithUnsignedInt:v16];
  [v17 setTargetUserID:v18];

  v19 = [[MILaunchServicesRegisterOperation alloc] initWithBundleID:v48 domain:a6 personas:v50 mountPoint:v49 operationUUID:v15 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
  v61 = 0;
  LOBYTE(a6) = [(MILaunchServicesOperationManager *)self _onQueue_addPendingLaunchServicesOperation:v19 error:&v61];
  v47 = v61;
  if ((a6 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059794();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v40 = v19;
      v44 = v47;
      MOLogWrite();
    }
  }

  v60 = 0;
  v20 = [MITestManager sharedInstance:v40];
  if ([v20 isRunningInTestMode:&v60 outError:0])
  {
    if (v60 == 1)
    {
      v21 = [v13 firstObject];
      v22 = [v21 isPlaceholder];

      if ((v22 & 1) == 0)
      {
        if ([v20 testFlagsAreSet:8])
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            v39 = [v13 firstObject];
            v43 = [v39 bundleIdentifier];
            MOLogWrite();
          }

          exit(1);
        }

        if ([v20 testFlagsAreSet:16])
        {
          v23 = +[MIDaemonConfiguration sharedInstance];
          v24 = [v23 testFileSentinelForSyncURL];

          v59 = 0;
          LODWORD(v23) = [&stru_100092CF8 writeToURL:v24 atomically:1 encoding:4 error:&v59];
          v45 = v59;
          if (v23)
          {
            while (1)
            {
              v25 = +[MIFileManager defaultManager];
              v26 = [v25 itemExistsAtURL:v24];

              if (!v26)
              {
                break;
              }

              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                v41 = [v24 path];
                MOLogWrite();
              }

              sleep(1u);
            }
          }

          else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            v42 = [v24 path];
            MOLogWrite();
          }
        }
      }
    }
  }

  v27 = [v13 firstObject];
  v28 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100050BDC;
  v51[3] = &unk_100091A08;
  v51[4] = self;
  v58 = v16;
  v29 = v50;
  v52 = v29;
  v57 = &v62;
  v30 = v27;
  v53 = v30;
  v31 = v28;
  v54 = v31;
  v32 = v15;
  v55 = v32;
  v33 = v17;
  v56 = v33;
  v34 = sub_100009A34(v51);

  v35 = v63[5];
  if (!v35)
  {
    [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v32];
    v35 = v63[5];
    if (a8)
    {
      if (!v35)
      {
        v36 = v34;
        *a8 = v34;
        v35 = v63[5];
      }
    }
  }

  v37 = v35;

  _Block_object_dispose(&v62, 8);

  return v37;
}

- (id)_registerApplicationInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 domain:(unint64_t)a6 personas:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10004E510;
  v44 = sub_10004E520;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10004E510;
  v38 = sub_10004E520;
  v39 = 0;
  v18 = [(MILaunchServicesOperationManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050F28;
  block[3] = &unk_100091A30;
  v31 = &v40;
  block[4] = self;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v21 = v16;
  v29 = v21;
  v33 = a6;
  v22 = v17;
  v30 = v22;
  v32 = &v34;
  dispatch_sync(v18, block);

  v23 = v41[5];
  if (a8 && !v23)
  {
    *a8 = v35[5];
    v23 = v41[5];
  }

  v24 = v23;

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

- (id)registerInstalledInfoForBuiltInAppAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v7 = [[MIExecutableBundle alloc] initWithBundleURL:v6 error:&v19];

  v8 = v19;
  if (v7)
  {
    v18 = v8;
    v9 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:v7 forPersona:0 inContainer:0 withError:&v18];
    v10 = v18;

    if (v9)
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      v12 = [v11 bundleIdentifier];
      v17 = v10;
      v13 = [(MILaunchServicesOperationManager *)self registerInstalledInfo:v9 forAppBundleID:v12 personas:0 inDomain:1 error:&v17];
      v8 = v17;

      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
      v8 = v10;
      if (!a4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
    v13 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    v14 = v8;
    *a4 = v8;
  }

LABEL_10:
  v15 = v13;

  return v13;
}

- (id)registerInstalledInfo:(id)a3 onMountPoint:(id)a4 forAppBundleID:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[MIDaemonConfiguration sharedInstance];
  v14 = [v13 deviceHasPersonas];

  if (v14)
  {
    v15 = +[MIGlobalConfiguration sharedInstance];
    v16 = [v15 primaryPersonaString];
    v17 = [NSSet setWithObject:v16];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = [(MILaunchServicesOperationManager *)self _registerApplicationInfo:v12 onMountPoint:v11 forAppBundleID:v10 domain:3 personas:v17 error:a6];

  return v18;
}

- (BOOL)registerUsingDiscoveredInformationForAppBundleID:(id)a3 inDomain:(unint64_t)a4 resultingRecordPromise:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v40 = 0;
  v11 = [MIBundleContainer appBundleContainerForIdentifier:v10 inDomain:a4 withError:&v40];
  v12 = v40;
  v13 = v12;
  if (v11)
  {
    v15 = [v11 bundle];
    if (v15)
    {
      v35 = a5;
      v38 = v13;
      v16 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:v15 forPersona:0 inContainer:v11 withError:&v38];
      v17 = v38;

      if (!v16)
      {
        v19 = 0;
        v21 = 0;
        LOBYTE(v22) = 0;
        v13 = v17;
        goto LABEL_20;
      }

      v34 = a6;
      v18 = [objc_opt_class() _appReferenceManagerInstance];
      v37 = v17;
      v19 = [v18 personaUniqueStringsForAppWithBundleID:v10 domain:a4 forUserWithID:sub_100009864() error:&v37];
      v20 = v37;

      if (v19)
      {
        v36 = v20;
        v21 = [(MILaunchServicesOperationManager *)self registerInstalledInfo:v16 forAppBundleID:v10 personas:v19 inDomain:a4 error:&v36];
        v13 = v36;

        v22 = v21 != 0;
        goto LABEL_24;
      }

      v28 = MIInstallerErrorDomain;
      v23 = MIStringForInstallationDomain();
      v13 = sub_100010734("[MILaunchServicesOperationManager registerUsingDiscoveredInformationForAppBundleID:inDomain:resultingRecordPromise:error:]", 1147, v28, 4, v20, 0, @"Failed to fetch persona unique strings for %@ in domain %@", v29, v10);

      a6 = v34;
    }

    else
    {
      sub_100010734("[MILaunchServicesOperationManager registerUsingDiscoveredInformationForAppBundleID:inDomain:resultingRecordPromise:error:]", 1136, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@ for %@", v14, v11);
      v16 = 0;
      v13 = v23 = v13;
    }

    goto LABEL_18;
  }

  v23 = [v12 domain];
  if (![v23 isEqualToString:MIContainerManagerErrorDomain])
  {
    v16 = 0;
    v15 = 0;
LABEL_18:

    v19 = 0;
    goto LABEL_19;
  }

  v35 = a5;
  v24 = [v13 code];

  if (v24 != 21)
  {
    v19 = 0;
    v16 = 0;
    v15 = 0;
LABEL_19:
    v21 = 0;
    LOBYTE(v22) = 0;
    goto LABEL_20;
  }

  v34 = a6;

  v25 = +[MIDaemonConfiguration sharedInstance];
  v26 = [v25 builtInApplicationBundleIDs];
  v27 = [v26 containsObject:v10];

  if (v27)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v13 = 0;
    v21 = 0;
    v15 = 0;
    v16 = 0;
    v19 = 0;
    v22 = 1;
  }

  else
  {
    v31 = +[LSPrecondition emptyPrecondition];
    v39 = 0;
    v22 = [(MILaunchServicesOperationManager *)self unregisterAppForBundleID:v10 inDomain:a4 operationType:3 precondition:v31 error:&v39];
    v13 = v39;

    v21 = 0;
    v15 = 0;
    v16 = 0;
    v19 = 0;
  }

LABEL_24:
  a6 = v34;
  if (v35 && v22)
  {
    v32 = v21;
    *v35 = v21;
    LOBYTE(v22) = 1;
    goto LABEL_27;
  }

LABEL_20:
  if (a6 && (v22 & 1) == 0)
  {
    v30 = v13;
    *a6 = v13;
  }

LABEL_27:

  return v22;
}

- (BOOL)_onQueue_setPersonaUniqueStrings:(id)a3 forAppBundleID:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v12);

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [NSNumber numberWithUnsignedInt:[(MILaunchServicesOperationManager *)self targetUID]];
  [v14 setTargetUserID:v15];

  v16 = [[MILaunchServicesSetPersonasOperation alloc] initWithBundleID:v11 domain:a5 personas:v10 registrationUUID:v13 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
  v33 = 0;
  v17 = [(MILaunchServicesOperationManager *)self _onQueue_addPendingLaunchServicesOperation:v16 error:&v33];
  v18 = v33;
  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005981C();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100051928;
  v27[3] = &unk_100091A58;
  v32 = &v34;
  v27[4] = self;
  v19 = v10;
  v28 = v19;
  v20 = v11;
  v29 = v20;
  v21 = v13;
  v30 = v21;
  v22 = v14;
  v31 = v22;
  v23 = sub_100009A34(v27);

  v24 = *(v35 + 24);
  if ((v24 & 1) == 0)
  {
    [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v21];
    v24 = *(v35 + 24);
  }

  if (a6 && (v24 & 1) == 0)
  {
    v25 = v23;
    *a6 = v23;
    v24 = *(v35 + 24);
  }

  _Block_object_dispose(&v34, 8);
  return v24 & 1;
}

- (BOOL)setPersonaUniqueStrings:(id)a3 forAppBundleID:(id)a4 inDomain:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10004E510;
  v31 = sub_10004E520;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(MILaunchServicesOperationManager *)self internalQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100051B94;
  v17[3] = &unk_100091A80;
  v20 = &v23;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v21 = &v27;
  v22 = a5;
  v19 = v14;
  dispatch_sync(v12, v17);

  v15 = *(v24 + 24);
  if (a6 && (v24[3] & 1) == 0)
  {
    *a6 = v28[5];
    v15 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15 & 1;
}

- (BOOL)_onQueue_unregisterAppForBundleID:(id)a3 domain:(unint64_t)a4 operationType:(unsigned int)a5 precondition:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v14);

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = [NSNumber numberWithUnsignedInt:[(MILaunchServicesOperationManager *)self targetUID]];
  [v16 setTargetUserID:v17];

  v18 = [[MILaunchServicesUnregisterOperation alloc] initWithBundleID:v12 domain:a4 registrationUUID:v15 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
  v36 = 0;
  v19 = [(MILaunchServicesOperationManager *)self _onQueue_addPendingLaunchServicesOperation:v18 error:&v36];
  v20 = v36;
  if ((v19 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005997C();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100051F9C;
  v29[3] = &unk_100091AA8;
  v34 = &v37;
  v29[4] = self;
  v21 = v12;
  v30 = v21;
  v22 = v15;
  v31 = v22;
  v35 = a5;
  v23 = v13;
  v32 = v23;
  v24 = v16;
  v33 = v24;
  v25 = sub_100009A34(v29);

  v26 = *(v38 + 24);
  if ((v26 & 1) == 0)
  {
    [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v22];
    v26 = *(v38 + 24);
  }

  if (a7 && (v26 & 1) == 0)
  {
    v27 = v25;
    *a7 = v25;
    v26 = *(v38 + 24);
  }

  _Block_object_dispose(&v37, 8);
  return v26 & 1;
}

- (BOOL)_onQueue_unregisterApplicationsAtMountPoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_opt_new();
  v9 = sub_100009864();
  v10 = objc_opt_new();
  v11 = [NSNumber numberWithUnsignedInt:v9];
  [v10 setTargetUserID:v11];

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v23 = [v6 path];
    MOLogWrite();
  }

  v12 = [[MILaunchServicesUnregisterMountPointOperation alloc] initWithMountPoint:v6 operationUUID:v8 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
  v25 = 0;
  v13 = [(MILaunchServicesOperationManager *)self _onQueue_addPendingLaunchServicesOperation:v12 error:&v25];
  v14 = v25;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059BB8();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v23 = v12;
      v24 = v14;
      MOLogWrite();
    }
  }

  v15 = [(MILaunchServicesOperationManager *)self _lsApplicationWorkspaceInstance:v23];
  v16 = [v15 unregisterApplicationsAtMountPoint:v6 operationUUID:v8 saveObserver:self requestContext:v10];

  if ((v16 & 1) == 0)
  {
    [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v8];
    v17 = MIInstallerErrorDomain;
    v18 = [v6 path];
    v20 = sub_100010734("[MILaunchServicesOperationManager _onQueue_unregisterApplicationsAtMountPoint:error:]", 1362, v17, 4, 0, 0, @"Failed to unregister applications at mount point %@", v19, v18);

    if (a4)
    {
      v21 = v20;
      *a4 = v20;
    }

    v14 = v20;
  }

  return v16;
}

- (BOOL)unregisterAppsAtMountPoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10004E510;
  v19 = sub_10004E520;
  v20 = 0;
  v7 = [(MILaunchServicesOperationManager *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052928;
  v11[3] = &unk_100090CD8;
  v13 = &v21;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(v7, v11);

  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

- (void)operationWithUUIDWasSaved:(id)a3
{
  v4 = a3;
  v5 = [(MILaunchServicesOperationManager *)self internalQueue];
  v6 = v4;
  MIRunTransactionalTask();
}

- (void)operationWithUUID:(id)a3 didFailToSaveWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MILaunchServicesOperationManager *)self internalQueue];
  v11 = v7;
  v9 = v7;
  v10 = v6;
  MIRunTransactionalTask();
}

@end