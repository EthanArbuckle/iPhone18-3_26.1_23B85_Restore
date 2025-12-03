@interface MILaunchServicesOperationManager
+ (BOOL)_shouldContinueAfterCheckingAttemptCountInDir:(id)dir;
+ (BOOL)_writeLaunchServicesOperation:(id)operation toURL:(id)l error:(id *)error;
+ (id)_discoverOrderedJournalEntriesInInstanceDir:(id)dir;
+ (id)_mostRecentInstanceDirURLWithinURL:(id)l;
+ (id)_operationFromURL:(id)l error:(id *)error;
+ (id)_registerInstalledInfo:(id)info forAppBundleID:(id)d personas:(id)personas inDomain:(unint64_t)domain error:(id *)error;
+ (id)instanceForCurrentUser;
+ (id)instanceForSystemSharedContent;
+ (id)registerInstalledInfo:(id)info forAppBundleID:(id)d personas:(id)personas inDomain:(unint64_t)domain error:(id *)error;
+ (id)registerInstalledInfo:(id)info forIdentity:(id)identity inDomain:(unint64_t)domain error:(id *)error;
+ (id)registerUsingDiscoveredInfoForAppIdentity:(id)identity inDomain:(unint64_t)domain error:(id *)error;
+ (void)_reconcileOperations:(id)operations unregisterMountPoints:(id *)points registerMountPoints:(id *)mountPoints restartUniqueOperations:(id *)uniqueOperations;
- (BOOL)_createStorageBaseDirectoryWithError:(id *)error;
- (BOOL)_onQueue_addPendingLaunchServicesOperation:(id)operation error:(id *)error;
- (BOOL)_onQueue_deleteLaunchServicesOperationForSerialNumber:(unint64_t)number error:(id *)error;
- (BOOL)_onQueue_journalLaunchServicesOperation:(id)operation error:(id *)error;
- (BOOL)_onQueue_setPersonaUniqueStrings:(id)strings forAppBundleID:(id)d inDomain:(unint64_t)domain error:(id *)error;
- (BOOL)_onQueue_unregisterAppForBundleID:(id)d domain:(unint64_t)domain operationType:(unsigned int)type precondition:(id)precondition error:(id *)error;
- (BOOL)_onQueue_unregisterApplicationsAtMountPoint:(id)point error:(id *)error;
- (BOOL)registerUsingDiscoveredInformationForAppBundleID:(id)d inDomain:(unint64_t)domain resultingRecordPromise:(id *)promise error:(id *)error;
- (BOOL)setPersonaUniqueStrings:(id)strings forAppBundleID:(id)d inDomain:(unint64_t)domain error:(id *)error;
- (BOOL)unregisterAppsAtMountPoint:(id)point error:(id *)error;
- (MILaunchServicesOperationManager)initWithUID:(unsigned int)d;
- (NSURL)instanceStorageBaseURL;
- (NSURL)lookAsideStorageBaseURL;
- (NSURL)storageBaseURL;
- (id)_onQueue_registerApplicationInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d domain:(unint64_t)domain personas:(id)personas error:(id *)error;
- (id)_registerApplicationInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d domain:(unint64_t)domain personas:(id)personas error:(id *)error;
- (id)_setUpLookAsideAtDirAndFindMostRecentInstance:(id)instance;
- (id)_storageURLForOperationSerialNumber:(unint64_t)number;
- (id)registerInstalledInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d error:(id *)error;
- (id)registerInstalledInfoForBuiltInAppAtURL:(id)l error:(id *)error;
- (unint64_t)_onQueue_nextSerialNumber;
- (unint64_t)serialNumber;
- (void)_onQueue_handleLaunchServicesOperationFailureForUUID:(id)d error:(id)error;
- (void)_onQueue_removePendingLaunchServicesOperationForUUID:(id)d dueToLSSave:(BOOL)save;
- (void)_reconcileOperations:(id)operations;
- (void)operationWithUUID:(id)d didFailToSaveWithError:(id)error;
- (void)operationWithUUIDWasSaved:(id)saved;
- (void)purge;
- (void)reconcile;
@end

@implementation MILaunchServicesOperationManager

+ (id)_registerInstalledInfo:(id)info forAppBundleID:(id)d personas:(id)personas inDomain:(unint64_t)domain error:(id *)error
{
  infoCopy = info;
  dCopy = d;
  personasCopy = personas;
  if (![self appReferencesEnabled] || (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isSharediPad"), v15, (v16 & 1) != 0))
  {
    v17 = 0;
    goto LABEL_4;
  }

  v23 = sub_100009864();
  v17 = 0;
  if (domain - 1 > 1)
  {
    goto LABEL_4;
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = +[MILaunchServicesOperationManager instanceForSystemSharedContent];
  v27 = 0;
  v25 = [v24 registerInstalledInfo:infoCopy forAppBundleID:dCopy personas:personasCopy inDomain:domain error:&v27];
  v17 = v27;

  if (v25)
  {
LABEL_4:
    v18 = +[MILaunchServicesOperationManager instanceForCurrentUser];
    v26 = v17;
    v19 = [v18 registerInstalledInfo:infoCopy forAppBundleID:dCopy personas:personasCopy inDomain:domain error:&v26];
    v20 = v26;

    v17 = v20;
    if (!error)
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
  if (error)
  {
LABEL_5:
    if (!v19)
    {
      v21 = v17;
      *error = v17;
    }
  }

LABEL_7:

  return v19;
}

+ (id)registerInstalledInfo:(id)info forAppBundleID:(id)d personas:(id)personas inDomain:(unint64_t)domain error:(id *)error
{
  personasCopy = personas;
  dCopy = d;
  infoCopy = info;
  v14 = [objc_opt_class() _registerInstalledInfo:infoCopy forAppBundleID:dCopy personas:personasCopy inDomain:domain error:error];

  return v14;
}

+ (id)registerInstalledInfo:(id)info forIdentity:(id)identity inDomain:(unint64_t)domain error:(id *)error
{
  infoCopy = info;
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  if (![self appReferencesEnabled])
  {
    v16 = 0;
    goto LABEL_6;
  }

  v12 = sub_100009864();
  _appReferenceManagerInstance = [self _appReferenceManagerInstance];
  v27 = 0;
  v28 = 0;
  v14 = [_appReferenceManagerInstance addReferenceForIdentity:identityCopy inDomain:domain forUserWithID:v12 resultingPersonaUniqueStrings:&v28 error:&v27];
  v15 = v28;
  v16 = v27;

  if (v14)
  {
    if (v15)
    {
LABEL_7:
      v26 = v16;
      v19 = [self _registerInstalledInfo:infoCopy forAppBundleID:bundleID personas:v15 inDomain:domain error:&v26];
      v20 = v16;
      v16 = v26;
      goto LABEL_8;
    }

LABEL_6:
    personaUniqueString = [identityCopy personaUniqueString];
    v29 = personaUniqueString;
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
    v33 = identityCopy;
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
    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v20 = MIStringForInstallationDomain();
  MOLogWrite();
  v19 = 0;
LABEL_8:
  errorCopy2 = error;

  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v19)
  {
    v22 = v16;
    *errorCopy2 = v16;
  }

LABEL_11:

  return v19;
}

+ (id)registerUsingDiscoveredInfoForAppIdentity:(id)identity inDomain:(unint64_t)domain error:(id *)error
{
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  v25 = 0;
  v10 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v25];
  v11 = v25;
  if (v10)
  {
    bundle = [v10 bundle];
    if (bundle)
    {
      selfCopy = self;
      personaUniqueString = [identityCopy personaUniqueString];
      v24 = v11;
      v15 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:bundle forPersona:personaUniqueString inContainer:v10 withError:&v24];
      v16 = v24;

      if (!v15)
      {
        v17 = 0;
        v11 = v16;
        if (!error)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v23 = v16;
      v17 = [selfCopy registerInstalledInfo:v15 forIdentity:identityCopy inDomain:domain error:&v23];
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
    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    bundle = 0;
    v15 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  if (!v17)
  {
    v19 = v11;
    *error = v11;
  }

LABEL_13:
  v20 = v17;

  return v17;
}

+ (id)instanceForCurrentUser
{
  v3 = sub_100009864();

  return [self _instanceForUID:v3];
}

+ (id)instanceForSystemSharedContent
{
  v3 = +[MIGlobalConfiguration sharedInstance];
  isSharediPad = [v3 isSharediPad];

  if (isSharediPad)
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
    v5 = [self _instanceForUID:0];
  }

  return v5;
}

- (MILaunchServicesOperationManager)initWithUID:(unsigned int)d
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

    v4->_targetUID = d;
  }

  return v4;
}

- (NSURL)storageBaseURL
{
  if (-[MILaunchServicesOperationManager targetUID](self, "targetUID") && (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isSharediPad], v2, !v3))
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    currentUserLaunchServicesOperationStorageBaseURL = [v4 currentUserLaunchServicesOperationStorageBaseURL];
  }

  else
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    currentUserLaunchServicesOperationStorageBaseURL = [v4 launchServicesOperationStorageBaseURL];
  }

  v6 = currentUserLaunchServicesOperationStorageBaseURL;

  return v6;
}

- (NSURL)instanceStorageBaseURL
{
  storageBaseURL = [(MILaunchServicesOperationManager *)self storageBaseURL];
  instanceID = [(MILaunchServicesOperationManager *)self instanceID];
  uUIDString = [instanceID UUIDString];
  v6 = [storageBaseURL URLByAppendingPathComponent:uUIDString isDirectory:1];

  return v6;
}

- (NSURL)lookAsideStorageBaseURL
{
  if (-[MILaunchServicesOperationManager targetUID](self, "targetUID") && (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 isSharediPad], v2, !v3))
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    currentUserLaunchServicesOperationLookAsideStorageBaseURL = [v4 currentUserLaunchServicesOperationLookAsideStorageBaseURL];
  }

  else
  {
    v4 = +[MIDaemonConfiguration sharedInstance];
    currentUserLaunchServicesOperationLookAsideStorageBaseURL = [v4 launchServicesOperationLookAsideStorageBaseURL];
  }

  v6 = currentUserLaunchServicesOperationLookAsideStorageBaseURL;

  return v6;
}

- (BOOL)_createStorageBaseDirectoryWithError:(id *)error
{
  v5 = +[MIFileManager defaultManager];
  storageBaseURL = [(MILaunchServicesOperationManager *)self storageBaseURL];
  v7 = [v5 createDirectoryAtURL:storageBaseURL withIntermediateDirectories:0 mode:493 class:4 error:error];

  v8 = 0;
  if (v7)
  {
    instanceStorageBaseURL = [(MILaunchServicesOperationManager *)self instanceStorageBaseURL];
    v8 = [v5 createDirectoryAtURL:instanceStorageBaseURL withIntermediateDirectories:0 mode:493 class:4 error:error];
  }

  return v8;
}

- (id)_storageURLForOperationSerialNumber:(unint64_t)number
{
  instanceStorageBaseURL = [(MILaunchServicesOperationManager *)self instanceStorageBaseURL];
  number = [NSString stringWithFormat:@"%lu.plist", number];
  v6 = [instanceStorageBaseURL URLByAppendingPathComponent:number isDirectory:0];

  return v6;
}

+ (BOOL)_writeLaunchServicesOperation:(id)operation toURL:(id)l error:(id *)error
{
  lCopy = l;
  v18 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:operation requiringSecureCoding:1 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = +[MIDaemonConfiguration sharedInstance];
    v11 = [v10 uid];
    v12 = +[MIDaemonConfiguration sharedInstance];
    v17 = v9;
    v13 = [v8 MI_writeAtomicallyToURL:lCopy withMode:420 owner:v11 group:objc_msgSend(v12 protectionClass:"gid") withBarrier:4 error:{1, &v17}];
    v14 = v17;

    v9 = v14;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v13 & 1) == 0)
  {
    v15 = v9;
    *error = v9;
  }

LABEL_7:

  return v13;
}

- (BOOL)_onQueue_journalLaunchServicesOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8 = -[MILaunchServicesOperationManager _storageURLForOperationSerialNumber:](self, "_storageURLForOperationSerialNumber:", [operationCopy serialNumber]);
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
  v11 = [objc_opt_class() _writeLaunchServicesOperation:operationCopy toURL:v8 error:&v15];
  v12 = v15;

  if (error && (v11 & 1) == 0)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)_onQueue_deleteLaunchServicesOperationForSerialNumber:(unint64_t)number error:(id *)error
{
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8 = +[MIFileManager defaultManager];
  v9 = [(MILaunchServicesOperationManager *)self _storageURLForOperationSerialNumber:number];
  v14 = 0;
  v10 = [v8 removeItemAtURL:v9 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (BOOL)_onQueue_addPendingLaunchServicesOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  pendingOperations = [(MILaunchServicesOperationManager *)self pendingOperations];
  operationUUID = [operationCopy operationUUID];
  [pendingOperations setObject:operationCopy forKeyedSubscript:operationUUID];

  if ([pendingOperations count] == 1)
  {
    v10 = os_transaction_create();
    [(MILaunchServicesOperationManager *)self setPendingOperationTransaction:v10];
  }

  v16 = 0;
  v11 = [(MILaunchServicesOperationManager *)self _onQueue_journalLaunchServicesOperation:operationCopy error:&v16];
  v12 = v16;
  v13 = v12;
  if (v11)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  else if (error)
  {
    v14 = v12;
    *error = v13;
  }

  return v11;
}

- (void)_onQueue_removePendingLaunchServicesOperationForUUID:(id)d dueToLSSave:(BOOL)save
{
  saveCopy = save;
  dCopy = d;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  pendingOperations = [(MILaunchServicesOperationManager *)self pendingOperations];
  v8 = [pendingOperations objectForKeyedSubscript:dCopy];
  if (v8)
  {
    [pendingOperations removeObjectForKey:dCopy];
    -[MILaunchServicesOperationManager _onQueue_deleteLaunchServicesOperationForSerialNumber:error:](self, "_onQueue_deleteLaunchServicesOperationForSerialNumber:error:", [v8 serialNumber], 0);
    if (![pendingOperations count])
    {
      [(MILaunchServicesOperationManager *)self setPendingOperationTransaction:0];
    }

    if (saveCopy)
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

  else if (saveCopy)
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

- (void)_onQueue_handleLaunchServicesOperationFailureForUUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100058F48();
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v9 = dCopy;
    v10 = errorCopy;
    MOLogWrite();
  }

  [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:dCopy dueToLSSave:0, v9, v10];
}

- (unint64_t)serialNumber
{
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_serialNumber;
}

- (unint64_t)_onQueue_nextSerialNumber
{
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  result = [(MILaunchServicesOperationManager *)self serialNumber];
  ++self->_serialNumber;
  return result;
}

+ (id)_mostRecentInstanceDirURLWithinURL:(id)l
{
  lCopy = l;
  v21 = +[MIFileManager defaultManager];
  obj = [lCopy URLByAppendingPathComponent:@"MostRecent" isDirectory:1];
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
    v6 = [v4 enumerateURLsForItemsInDirectoryAtURL:lCopy ignoreSymlinks:1 withBlock:v30];
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

- (id)_setUpLookAsideAtDirAndFindMostRecentInstance:(id)instance
{
  instanceCopy = instance;
  v5 = +[MIFileManager defaultManager];
  storageBaseURL = [(MILaunchServicesOperationManager *)self storageBaseURL];
  if (![v5 itemDoesNotExistOrIsNotDirectoryAtURL:instanceCopy])
  {
    v33 = 0;
    v16 = [v5 removeItemAtURL:storageBaseURL keepParent:1 error:&v33];
    v17 = v33;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100059054();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        path = v17;
        MOLogWrite();
      }
    }

    v32 = 0;
    v18 = [(MILaunchServicesOperationManager *)self _createStorageBaseDirectoryWithError:&v32, path];
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

    v20 = [objc_opt_class() _mostRecentInstanceDirURLWithinURL:instanceCopy];
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
    v21 = [v5 removeItemAtURL:instanceCopy keepParent:0 error:{&v31, v28}];
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

  [v5 removeItemAtURL:instanceCopy error:0];
  v7 = [objc_opt_class() _mostRecentInstanceDirURLWithinURL:storageBaseURL];
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
    path = [v8 path];
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
    v23 = [v5 removeItemAtURL:storageBaseURL keepParent:1 error:{&v37, path, v30}];
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
  v10 = [v5 moveItemAtURL:storageBaseURL toURL:instanceCopy error:&v35];
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
        path = v13;
        MOLogWrite();
      }
    }

    lastPathComponent = [v8 lastPathComponent];
    v15 = [instanceCopy URLByAppendingPathComponent:lastPathComponent isDirectory:1];

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

+ (BOOL)_shouldContinueAfterCheckingAttemptCountInDir:(id)dir
{
  dirCopy = dir;
  v4 = +[MIFileManager defaultManager];
  v5 = [dirCopy URLByAppendingPathComponent:@"ReconcileAttempts.txt" isDirectory:0];
  v24 = 0;
  v6 = [NSString stringWithContentsOfURL:v5 encoding:4 error:&v24];
  v7 = v24;
  v8 = v7;
  if (v6)
  {
    integerValue = [v6 integerValue];
    if ((integerValue - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000593F0();
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        path = integerValue;
        MOLogWrite();
      }

      [v4 removeItemAtURL:dirCopy error:{0, path}];
LABEL_24:
      v15 = 0;
      goto LABEL_32;
    }

    v12 = [NSString stringWithFormat:@"%ld", integerValue + 1];
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

      [v4 removeItemAtURL:dirCopy error:{0, v19}];

      v15 = 0;
    }

    v8 = v14;
    goto LABEL_32;
  }

  domain = [v7 domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    code = [v8 code];

    if (code == 260)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    path = [v5 path];
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
      path2 = [v5 path];
      MOLogWrite();
    }

    goto LABEL_24;
  }

LABEL_32:

  return v15;
}

+ (id)_operationFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
  v24 = 0;
  v11 = [NSData dataWithContentsOfURL:lCopy options:3 error:&v24];
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
    path = [lCopy path];
    v18 = sub_100010734("+[MILaunchServicesOperationManager _operationFromURL:error:]", 694, v15, 4, v14, 0, @"Failed to unarchive registration data from %@", v17, path);
    v12 = v14;
  }

  else
  {
    v19 = MIInstallerErrorDomain;
    path = [lCopy path];
    v18 = sub_100010734("+[MILaunchServicesOperationManager _operationFromURL:error:]", 688, v19, 4, v12, 0, @"Failed to read registration data from %@", v20, path);
  }

  v14 = v18;

  if (error)
  {
    v21 = v14;
    v13 = 0;
    *error = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

+ (id)_discoverOrderedJournalEntriesInInstanceDir:(id)dir
{
  dirCopy = dir;
  v5 = objc_opt_new();
  v6 = +[MIFileManager defaultManager];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10004F4A8;
  v16 = &unk_1000919A0;
  selfCopy = self;
  v7 = v5;
  v17 = v7;
  v8 = [v6 enumerateURLsForItemsInDirectoryAtURL:dirCopy ignoreSymlinks:1 withBlock:&v13];

  if (v8 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    path = [dirCopy path];
    v12 = v8;
    MOLogWrite();
  }

  v9 = [v7 sortedArrayUsingComparator:{&stru_1000919E0, path, v12, v13, v14, v15, v16}];

  return v9;
}

+ (void)_reconcileOperations:(id)operations unregisterMountPoints:(id *)points registerMountPoints:(id *)mountPoints restartUniqueOperations:(id *)uniqueOperations
{
  operationsCopy = operations;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = operationsCopy;
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
          mountPoint = [v15 mountPoint];
          [v8 removeObject:mountPoint];
          [v7 addObject:mountPoint];
LABEL_22:

          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mountPoint = v15;
          v16MountPoint = [mountPoint mountPoint];
          if (v16MountPoint)
          {
            [v7 removeObject:v16MountPoint];
            [v8 addObject:v16MountPoint];
          }

          else
          {
            bundleID = [mountPoint bundleID];
            [v9 setObject:mountPoint forKeyedSubscript:bundleID];
          }

          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16MountPoint = v15;
          mountPoint = [v16MountPoint bundleID];
          [v9 setObject:v16MountPoint forKeyedSubscript:mountPoint];
LABEL_21:

          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mountPoint = v15;
          bundleID2 = [mountPoint bundleID];
          v19 = [v9 objectForKeyedSubscript:bundleID2];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
              [mountPoint personaUniqueStrings];
              v21 = bundleID2;
              v23 = v22 = v9;
              [v20 updatePersonaUniqueStrings:v23];

              v10 = v39;
              v9 = v22;
              bundleID2 = v21;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setObject:mountPoint forKeyedSubscript:bundleID2];
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
                  v48 = bundleID2;
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
                  v50 = bundleID2;
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
            [v9 setObject:mountPoint forKeyedSubscript:bundleID2];
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
          mountPoint = NSStringFromClass(v25);
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

  *points = [v7 copy];
  *mountPoints = [v8 copy];
  *uniqueOperations = [v9 allValues];
}

- (void)_reconcileOperations:(id)operations
{
  v61 = 0;
  v62 = 0;
  v60 = 0;
  operationsCopy = operations;
  [objc_opt_class() _reconcileOperations:operationsCopy unregisterMountPoints:&v62 registerMountPoints:&v61 restartUniqueOperations:&v60];
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
        v10 = [(MILaunchServicesOperationManager *)self unregisterAppsAtMountPoint:v9 error:&v55, path2, v38];
        v11 = v55;
        if ((v10 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            path = [v9 path];
            *buf = 136315650;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 2112;
            *v66 = path;
            *&v66[8] = 2112;
            *&v66[10] = v11;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to restart unregister operation for mount point %@ : %@", buf, 0x20u);
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            path2 = [v9 path];
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
        v19 = [(MILaunchServicesOperationManager *)self _diskImageManagerInstance:path2];
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
          bundleID = [v26 bundleID];
          domain = [v26 domain];
          v46 = 0;
          v29 = [(MILaunchServicesOperationManager *)self registerUsingDiscoveredInformationForAppBundleID:bundleID inDomain:domain resultingRecordPromise:0 error:&v46];
          v30 = v46;
          if (v29)
          {
            goto LABEL_40;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            targetUID = [(MILaunchServicesOperationManager *)self targetUID];
            *buf = 136315906;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 1024;
            *v66 = targetUID;
            *&v66[4] = 2112;
            *&v66[6] = bundleID;
            *&v66[14] = 2112;
            *&v66[16] = v30;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to restart register operation for %u/%@ : %@", buf, 0x26u);
          }

          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            goto LABEL_40;
          }

LABEL_39:
          v34 = [(MILaunchServicesOperationManager *)self targetUID:path2];
          v38 = bundleID;
          v39 = v30;
          path2 = v34;
          MOLogWrite();
          goto LABEL_40;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_41;
        }

        v31 = v25;
        bundleID = [v31 bundleID];
        domain2 = [v31 domain];
        v45 = 0;
        v33 = [(MILaunchServicesOperationManager *)self registerUsingDiscoveredInformationForAppBundleID:bundleID inDomain:domain2 resultingRecordPromise:0 error:&v45];
        v30 = v45;
        if ((v33 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            targetUID2 = [(MILaunchServicesOperationManager *)self targetUID];
            *buf = 136315906;
            v64 = "[MILaunchServicesOperationManager _reconcileOperations:]";
            v65 = 1024;
            *v66 = targetUID2;
            *&v66[4] = 2112;
            *&v66[6] = bundleID;
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
  lookAsideStorageBaseURL = [(MILaunchServicesOperationManager *)self lookAsideStorageBaseURL];
  v4 = +[MIFileManager defaultManager];
  v5 = [(MILaunchServicesOperationManager *)self _setUpLookAsideAtDirAndFindMostRecentInstance:lookAsideStorageBaseURL];
  if (v5 && [objc_opt_class() _shouldContinueAfterCheckingAttemptCountInDir:lookAsideStorageBaseURL])
  {
    v6 = [objc_opt_class() _discoverOrderedJournalEntriesInInstanceDir:v5];
    [(MILaunchServicesOperationManager *)self _reconcileOperations:v6];
    v9 = 0;
    v7 = [v4 removeItemAtURL:lookAsideStorageBaseURL error:&v9];
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
  lookAsideStorageBaseURL = [(MILaunchServicesOperationManager *)self lookAsideStorageBaseURL];
  v14 = 0;
  v5 = [v3 removeItemAtURL:lookAsideStorageBaseURL keepParent:0 error:&v14];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10005964C(lookAsideStorageBaseURL);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      path = [lookAsideStorageBaseURL path];
      v12 = v6;
      MOLogWrite();
    }

    v6 = 0;
  }

  v7 = [(MILaunchServicesOperationManager *)self storageBaseURL:path];

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
      path2 = [v7 path];
      MOLogWrite();
    }
  }
}

- (id)_onQueue_registerApplicationInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d domain:(unint64_t)domain personas:(id)personas error:(id *)error
{
  infoCopy = info;
  pointCopy = point;
  dCopy = d;
  personasCopy = personas;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10004E510;
  v66 = sub_10004E520;
  v67 = 0;
  v15 = objc_opt_new();
  targetUID = [(MILaunchServicesOperationManager *)self targetUID];
  v17 = objc_opt_new();
  v18 = [NSNumber numberWithUnsignedInt:targetUID];
  [v17 setTargetUserID:v18];

  v19 = [[MILaunchServicesRegisterOperation alloc] initWithBundleID:dCopy domain:domain personas:personasCopy mountPoint:pointCopy operationUUID:v15 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
  v61 = 0;
  LOBYTE(domain) = [(MILaunchServicesOperationManager *)self _onQueue_addPendingLaunchServicesOperation:v19 error:&v61];
  v47 = v61;
  if ((domain & 1) == 0)
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
      firstObject = [infoCopy firstObject];
      isPlaceholder = [firstObject isPlaceholder];

      if ((isPlaceholder & 1) == 0)
      {
        if ([v20 testFlagsAreSet:8])
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            firstObject2 = [infoCopy firstObject];
            bundleIdentifier = [firstObject2 bundleIdentifier];
            MOLogWrite();
          }

          exit(1);
        }

        if ([v20 testFlagsAreSet:16])
        {
          v23 = +[MIDaemonConfiguration sharedInstance];
          testFileSentinelForSyncURL = [v23 testFileSentinelForSyncURL];

          v59 = 0;
          LODWORD(v23) = [&stru_100092CF8 writeToURL:testFileSentinelForSyncURL atomically:1 encoding:4 error:&v59];
          v45 = v59;
          if (v23)
          {
            while (1)
            {
              v25 = +[MIFileManager defaultManager];
              v26 = [v25 itemExistsAtURL:testFileSentinelForSyncURL];

              if (!v26)
              {
                break;
              }

              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                path = [testFileSentinelForSyncURL path];
                MOLogWrite();
              }

              sleep(1u);
            }
          }

          else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            path2 = [testFileSentinelForSyncURL path];
            MOLogWrite();
          }
        }
      }
    }
  }

  firstObject3 = [infoCopy firstObject];
  v28 = [infoCopy subarrayWithRange:{1, objc_msgSend(infoCopy, "count") - 1}];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100050BDC;
  v51[3] = &unk_100091A08;
  v51[4] = self;
  v58 = targetUID;
  v29 = personasCopy;
  v52 = v29;
  v57 = &v62;
  v30 = firstObject3;
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
    if (error)
    {
      if (!v35)
      {
        v36 = v34;
        *error = v34;
        v35 = v63[5];
      }
    }
  }

  v37 = v35;

  _Block_object_dispose(&v62, 8);

  return v37;
}

- (id)_registerApplicationInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d domain:(unint64_t)domain personas:(id)personas error:(id *)error
{
  infoCopy = info;
  pointCopy = point;
  dCopy = d;
  personasCopy = personas;
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
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050F28;
  block[3] = &unk_100091A30;
  v31 = &v40;
  block[4] = self;
  v19 = infoCopy;
  v27 = v19;
  v20 = pointCopy;
  v28 = v20;
  v21 = dCopy;
  v29 = v21;
  domainCopy = domain;
  v22 = personasCopy;
  v30 = v22;
  v32 = &v34;
  dispatch_sync(internalQueue, block);

  v23 = v41[5];
  if (error && !v23)
  {
    *error = v35[5];
    v23 = v41[5];
  }

  v24 = v23;

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

- (id)registerInstalledInfoForBuiltInAppAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v7 = [[MIExecutableBundle alloc] initWithBundleURL:lCopy error:&v19];

  v8 = v19;
  if (v7)
  {
    v18 = v8;
    v9 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:v7 forPersona:0 inContainer:0 withError:&v18];
    v10 = v18;

    if (v9)
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      bundleIdentifier = [v11 bundleIdentifier];
      v17 = v10;
      v13 = [(MILaunchServicesOperationManager *)self registerInstalledInfo:v9 forAppBundleID:bundleIdentifier personas:0 inDomain:1 error:&v17];
      v8 = v17;

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
      v8 = v10;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
    v13 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    v14 = v8;
    *error = v8;
  }

LABEL_10:
  v15 = v13;

  return v13;
}

- (id)registerInstalledInfo:(id)info onMountPoint:(id)point forAppBundleID:(id)d error:(id *)error
{
  dCopy = d;
  pointCopy = point;
  infoCopy = info;
  v13 = +[MIDaemonConfiguration sharedInstance];
  deviceHasPersonas = [v13 deviceHasPersonas];

  if (deviceHasPersonas)
  {
    v15 = +[MIGlobalConfiguration sharedInstance];
    primaryPersonaString = [v15 primaryPersonaString];
    v17 = [NSSet setWithObject:primaryPersonaString];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = [(MILaunchServicesOperationManager *)self _registerApplicationInfo:infoCopy onMountPoint:pointCopy forAppBundleID:dCopy domain:3 personas:v17 error:error];

  return v18;
}

- (BOOL)registerUsingDiscoveredInformationForAppBundleID:(id)d inDomain:(unint64_t)domain resultingRecordPromise:(id *)promise error:(id *)error
{
  dCopy = d;
  v40 = 0;
  v11 = [MIBundleContainer appBundleContainerForIdentifier:dCopy inDomain:domain withError:&v40];
  v12 = v40;
  v13 = v12;
  if (v11)
  {
    bundle = [v11 bundle];
    if (bundle)
    {
      promiseCopy2 = promise;
      v38 = v13;
      v16 = [MILaunchServicesDatabaseGatherer fetchInfoForBundle:bundle forPersona:0 inContainer:v11 withError:&v38];
      v17 = v38;

      if (!v16)
      {
        v19 = 0;
        v21 = 0;
        LOBYTE(v22) = 0;
        v13 = v17;
        goto LABEL_20;
      }

      errorCopy2 = error;
      _appReferenceManagerInstance = [objc_opt_class() _appReferenceManagerInstance];
      v37 = v17;
      v19 = [_appReferenceManagerInstance personaUniqueStringsForAppWithBundleID:dCopy domain:domain forUserWithID:sub_100009864() error:&v37];
      v20 = v37;

      if (v19)
      {
        v36 = v20;
        v21 = [(MILaunchServicesOperationManager *)self registerInstalledInfo:v16 forAppBundleID:dCopy personas:v19 inDomain:domain error:&v36];
        v13 = v36;

        v22 = v21 != 0;
        goto LABEL_24;
      }

      v28 = MIInstallerErrorDomain;
      domain = MIStringForInstallationDomain();
      v13 = sub_100010734("[MILaunchServicesOperationManager registerUsingDiscoveredInformationForAppBundleID:inDomain:resultingRecordPromise:error:]", 1147, v28, 4, v20, 0, @"Failed to fetch persona unique strings for %@ in domain %@", v29, dCopy);

      error = errorCopy2;
    }

    else
    {
      sub_100010734("[MILaunchServicesOperationManager registerUsingDiscoveredInformationForAppBundleID:inDomain:resultingRecordPromise:error:]", 1136, MIInstallerErrorDomain, 36, 0, 0, @"Failed to find bundle in bundle container %@ for %@", v14, v11);
      v16 = 0;
      v13 = domain = v13;
    }

    goto LABEL_18;
  }

  domain = [v12 domain];
  if (![domain isEqualToString:MIContainerManagerErrorDomain])
  {
    v16 = 0;
    bundle = 0;
LABEL_18:

    v19 = 0;
    goto LABEL_19;
  }

  promiseCopy2 = promise;
  code = [v13 code];

  if (code != 21)
  {
    v19 = 0;
    v16 = 0;
    bundle = 0;
LABEL_19:
    v21 = 0;
    LOBYTE(v22) = 0;
    goto LABEL_20;
  }

  errorCopy2 = error;

  v25 = +[MIDaemonConfiguration sharedInstance];
  builtInApplicationBundleIDs = [v25 builtInApplicationBundleIDs];
  v27 = [builtInApplicationBundleIDs containsObject:dCopy];

  if (v27)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v13 = 0;
    v21 = 0;
    bundle = 0;
    v16 = 0;
    v19 = 0;
    v22 = 1;
  }

  else
  {
    v31 = +[LSPrecondition emptyPrecondition];
    v39 = 0;
    v22 = [(MILaunchServicesOperationManager *)self unregisterAppForBundleID:dCopy inDomain:domain operationType:3 precondition:v31 error:&v39];
    v13 = v39;

    v21 = 0;
    bundle = 0;
    v16 = 0;
    v19 = 0;
  }

LABEL_24:
  error = errorCopy2;
  if (promiseCopy2 && v22)
  {
    v32 = v21;
    *promiseCopy2 = v21;
    LOBYTE(v22) = 1;
    goto LABEL_27;
  }

LABEL_20:
  if (error && (v22 & 1) == 0)
  {
    v30 = v13;
    *error = v13;
  }

LABEL_27:

  return v22;
}

- (BOOL)_onQueue_setPersonaUniqueStrings:(id)strings forAppBundleID:(id)d inDomain:(unint64_t)domain error:(id *)error
{
  stringsCopy = strings;
  dCopy = d;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [NSNumber numberWithUnsignedInt:[(MILaunchServicesOperationManager *)self targetUID]];
  [v14 setTargetUserID:v15];

  v16 = [[MILaunchServicesSetPersonasOperation alloc] initWithBundleID:dCopy domain:domain personas:stringsCopy registrationUUID:v13 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
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
  v19 = stringsCopy;
  v28 = v19;
  v20 = dCopy;
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

  if (error && (v24 & 1) == 0)
  {
    v25 = v23;
    *error = v23;
    v24 = *(v35 + 24);
  }

  _Block_object_dispose(&v34, 8);
  return v24 & 1;
}

- (BOOL)setPersonaUniqueStrings:(id)strings forAppBundleID:(id)d inDomain:(unint64_t)domain error:(id *)error
{
  stringsCopy = strings;
  dCopy = d;
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
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100051B94;
  v17[3] = &unk_100091A80;
  v20 = &v23;
  v17[4] = self;
  v13 = stringsCopy;
  v18 = v13;
  v14 = dCopy;
  v21 = &v27;
  domainCopy = domain;
  v19 = v14;
  dispatch_sync(internalQueue, v17);

  v15 = *(v24 + 24);
  if (error && (v24[3] & 1) == 0)
  {
    *error = v28[5];
    v15 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15 & 1;
}

- (BOOL)_onQueue_unregisterAppForBundleID:(id)d domain:(unint64_t)domain operationType:(unsigned int)type precondition:(id)precondition error:(id *)error
{
  dCopy = d;
  preconditionCopy = precondition;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = [NSNumber numberWithUnsignedInt:[(MILaunchServicesOperationManager *)self targetUID]];
  [v16 setTargetUserID:v17];

  v18 = [[MILaunchServicesUnregisterOperation alloc] initWithBundleID:dCopy domain:domain registrationUUID:v15 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
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
  v21 = dCopy;
  v30 = v21;
  v22 = v15;
  v31 = v22;
  typeCopy = type;
  v23 = preconditionCopy;
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

  if (error && (v26 & 1) == 0)
  {
    v27 = v25;
    *error = v25;
    v26 = *(v38 + 24);
  }

  _Block_object_dispose(&v37, 8);
  return v26 & 1;
}

- (BOOL)_onQueue_unregisterApplicationsAtMountPoint:(id)point error:(id *)error
{
  pointCopy = point;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8 = objc_opt_new();
  v9 = sub_100009864();
  v10 = objc_opt_new();
  v11 = [NSNumber numberWithUnsignedInt:v9];
  [v10 setTargetUserID:v11];

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    path = [pointCopy path];
    MOLogWrite();
  }

  v12 = [[MILaunchServicesUnregisterMountPointOperation alloc] initWithMountPoint:pointCopy operationUUID:v8 serialNumber:[(MILaunchServicesOperationManager *)self _onQueue_nextSerialNumber]];
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
      path = v12;
      v24 = v14;
      MOLogWrite();
    }
  }

  v15 = [(MILaunchServicesOperationManager *)self _lsApplicationWorkspaceInstance:path];
  v16 = [v15 unregisterApplicationsAtMountPoint:pointCopy operationUUID:v8 saveObserver:self requestContext:v10];

  if ((v16 & 1) == 0)
  {
    [(MILaunchServicesOperationManager *)self _onQueue_removePendingLaunchServicesOperationForUUID:v8];
    v17 = MIInstallerErrorDomain;
    path2 = [pointCopy path];
    v20 = sub_100010734("[MILaunchServicesOperationManager _onQueue_unregisterApplicationsAtMountPoint:error:]", 1362, v17, 4, 0, 0, @"Failed to unregister applications at mount point %@", v19, path2);

    if (error)
    {
      v21 = v20;
      *error = v20;
    }

    v14 = v20;
  }

  return v16;
}

- (BOOL)unregisterAppsAtMountPoint:(id)point error:(id *)error
{
  pointCopy = point;
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
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052928;
  v11[3] = &unk_100090CD8;
  v13 = &v21;
  v11[4] = self;
  v8 = pointCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(internalQueue, v11);

  v9 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

- (void)operationWithUUIDWasSaved:(id)saved
{
  savedCopy = saved;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  v6 = savedCopy;
  MIRunTransactionalTask();
}

- (void)operationWithUUID:(id)d didFailToSaveWithError:(id)error
{
  dCopy = d;
  errorCopy = error;
  internalQueue = [(MILaunchServicesOperationManager *)self internalQueue];
  v11 = errorCopy;
  v9 = errorCopy;
  v10 = dCopy;
  MIRunTransactionalTask();
}

@end