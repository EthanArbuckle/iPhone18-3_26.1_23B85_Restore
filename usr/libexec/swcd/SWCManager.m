@interface SWCManager
+ (id)beginListening;
- (BOOL)_addJSONDataInDictionary:(id)a3 toStagingDirectoryAtURL:(id)a4 error:(id *)a5;
- (BOOL)_connectionIsEntitled:(id)a3 forMutation:(BOOL)a4;
- (BOOL)_copyStagingDirectoryAtURL:(id)a3 toAdditionalServiceDetailsDirectoriesForApplicationIdentifiers:(id)a4 error:(id *)a5;
- (BOOL)_isDeveloperModeEnabled;
- (BOOL)_setDeveloperModeEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SWCManager)initWithDatabase:(id)a3;
- (id)_createStagingDirectoryForAdditionalServiceDetailsReturningError:(id *)a3;
- (id)_developerModeSemaphoreURL;
- (id)_eligibleSystemPlaceholderRecords;
- (id)_entriesWithServiceSpecifier:(id)a3 URL:(id)a4 limit:(unint64_t)a5 auditToken:(id *)a6;
- (id)_filterApplicationIdentifiers:(id)a3 toMatchEntitlementOfXPCConnection:(id)a4;
- (id)_serviceDetailsWithEntry:(id)a3;
- (void)_updateAllEntries:(id)a3;
- (void)_waitForSiteApprovalWithServiceSpecifier:(id)a3 completionHandler:(id)a4;
- (void)addAllAppsWithCompletionHandler:(id)a3;
- (void)addServiceWithServiceSpecifier:(id)a3 completionHandler:(id)a4;
- (void)commitServiceSettings:(id)a3 completionHandler:(id)a4;
- (void)downloader:(id)a3 didDownloadAASAFileContainingJSONObject:(id)a4 fromDomain:(id)a5 downloadRoute:(unsigned __int8)a6;
- (void)downloader:(id)a3 failedToDownloadAASAFileFromDomain:(id)a4 error:(id)a5;
- (void)downloader:(id)a3 willDownloadAASAFileFromDomain:(id)a4;
- (void)getDetailsWithServiceSpecifier:(id)a3 URL:(id)a4 limit:(unint64_t)a5 callerAuditToken:(id)a6 completionHandler:(id)a7;
- (void)getDeveloperModeEnabledWithCompletionHandler:(id)a3;
- (void)getServiceSettingsWithServiceSpecifier:(id)a3 completionHandler:(id)a4;
- (void)getTrackingDomains:(id)a3 sources:(unint64_t)a4 completionHandler:(id)a5;
- (void)receiveSIGTERMSignal;
- (void)removeServiceWithServiceSpecifier:(id)a3 completionHandler:(id)a4;
- (void)removeSettingsForKeys:(id)a3 serviceSpecifier:(id)a4 completionHandler:(id)a5;
- (void)removeSettingsForKeys:(id)a3 serviceType:(id)a4 completionHandler:(id)a5;
- (void)resetWithCompletionHandler:(id)a3;
- (void)setAdditionalServiceDetailsForApplicationIdentifiers:(id)a3 usingContentsOfDictionary:(id)a4 completionHandler:(id)a5;
- (void)setDetails:(id)a3 forServiceWithServiceSpecifier:(id)a4 completionHandler:(id)a5;
- (void)setDeveloperModeEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)showWithVerbosity:(unsigned __int8)a3 isTTY:(BOOL)a4 fileDescriptor:(id)a5 completionHandler:(id)a6;
- (void)updateEntriesForAllBundlesIgnoringCurrentState:(BOOL)a3;
- (void)waitForSiteApprovalWithServiceSpecifier:(id)a3 completionHandler:(id)a4;
@end

@implementation SWCManager

- (SWCManager)initWithDatabase:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SWCManager;
  v6 = [(SWCManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
    v8 = objc_alloc_init(SWCDownloader);
    downloader = v7->_downloader;
    v7->_downloader = v8;

    [(SWCDownloader *)v7->_downloader setDelegate:v7];
    v10 = [[SWCDownloadScheduler alloc] initWithDownloader:v7->_downloader database:v7->_database];
    downloadScheduler = v7->_downloadScheduler;
    v7->_downloadScheduler = v10;
  }

  return v7;
}

+ (id)beginListening
{
  if (qword_10003AD18 != -1)
  {
    dispatch_once(&qword_10003AD18, &stru_100034E48);
  }

  v3 = qword_10003AD10;

  return v3;
}

- (void)receiveSIGTERMSignal
{
  [(SWCDownloader *)self->_downloader receiveSIGTERMSignal];
  database = self->_database;

  [(SWCDatabase *)database receiveSIGTERMSignal];
}

- (void)updateEntriesForAllBundlesIgnoringCurrentState:(BOOL)a3
{
  v3 = a3;
  v34 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v35 = 0;
  [v6 getKnowledgeUUID:0 andSequenceNumber:&v35];
  v7 = v35;

  v8 = [(SWCDatabase *)self->_database launchServicesDatabaseGeneration];
  v9 = v8;
  if (v7 && v8 && ([v7 isEqual:{v8, v34}] & 1) != 0)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v10 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v7;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "LS database generation is still %{public}@. No need to synchronize the SWC database to it.", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v12 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v37 = v9;
      v38 = 2114;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LS database generation has changed %{public}@ to %{public}@. Synchronizing SWC database to it.", buf, 0x16u);
    }

    v11 = 1;
  }

  v13 = objc_alloc_init(SWCEnterpriseContext);
  v14 = [(SWCEnterpriseContext *)v13 state];
  v15 = [(SWCDatabase *)self->_database enterpriseState];
  v16 = v15;
  if (!(v14 | v15))
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v21 = qword_10003AD20;
    if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v18 = "Enterprise state is still nil. No need to synchronize the SWC database to it.";
    v19 = v21;
    v20 = 2;
    goto LABEL_46;
  }

  if (v14 && v15 && ([v14 isEqual:v15] & 1) != 0)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v17 = qword_10003AD20;
    if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    *buf = 138543362;
    v37 = v14;
    v18 = "Enterprise state is still %{public}@. No need to synchronize the SWC database to it.";
    v19 = v17;
    v20 = 12;
LABEL_46:
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
LABEL_25:
    v22 = 0;
    goto LABEL_31;
  }

  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v23 = qword_10003AD20;
  if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = v16;
    v38 = 2114;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Enterprise state has changed %{public}@ to %{public}@. Synchronizing SWC database to it.", buf, 0x16u);
  }

  v22 = 1;
LABEL_31:

  if (v3)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v24 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Was asked to resynchronize the entire SWC database regardless of current state.", buf, 2u);
    }
  }

  else if ((v11 | v22) != 1)
  {
    goto LABEL_44;
  }

  v25 = objc_alloc_init(NSMutableOrderedSet);
  v26 = [(SWCManager *)self _isDeveloperModeEnabled];
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v27 = qword_10003AD20;
  if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Developer mode enabled: %{BOOL}i", buf, 8u);
  }

  v28 = objc_autoreleasePoolPush();
  v29 = [LSApplicationRecord enumeratorWithOptions:0];
  [v29 setErrorHandler:&stru_100034E88];
  [(SWCManager *)self _addEntriesForAllBundlesWithEnumerator:v29 toWorkingSet:v25 enterpriseContext:v13 developerModeEnabled:v26];

  objc_autoreleasePoolPop(v28);
  v30 = objc_autoreleasePoolPush();
  v31 = [(SWCManager *)self _eligibleSystemPlaceholderRecords];
  if ([v31 count])
  {
    v32 = [v31 objectEnumerator];
    [(SWCManager *)self _addEntriesForAllBundlesWithEnumerator:v32 toWorkingSet:v25 enterpriseContext:v13 developerModeEnabled:v26];
  }

  objc_autoreleasePoolPop(v30);
  v33 = +[LSApplicationWorkspace defaultWorkspace];
  [v33 _LSClearSchemaCaches];

  [(SWCManager *)self _updateAllEntries:v25];
  [(SWCDatabase *)self->_database setLaunchServicesDatabaseGeneration:v7];
  [(SWCDatabase *)self->_database setEnterpriseState:v14];

LABEL_44:
  objc_autoreleasePoolPop(v5);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(SWCManager *)self _connectionMayConnect:v5];
  if (v6)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v7 = qword_10003AD20;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = [v5 processIdentifier];
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Accepted connection: %llu", location, 0xCu);
    }

    v8 = _SWCGetServerInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    objc_initWeak(location, v5);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014350;
    v17[3] = &unk_100034D58;
    objc_copyWeak(&v18, location);
    [v5 setInterruptionHandler:v17];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100014460;
    v15 = &unk_100034D58;
    objc_copyWeak(&v16, location);
    [v5 setInvalidationHandler:&v12];
    v9 = [SWCDatabase queue:v12];
    [v5 _setQueue:v9];

    [v5 resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v10 = qword_10003AD20;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = [v5 processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "### Unentitled process %llu attempted to connect", location, 0xCu);
    }
  }

  return v6;
}

- (void)downloader:(id)a3 willDownloadAASAFileFromDomain:(id)a4
{
  v5 = a4;
  v6 = +[SWCDatabase queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014638;
  v8[3] = &unk_1000347C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)downloader:(id)a3 didDownloadAASAFileContainingJSONObject:(id)a4 fromDomain:(id)a5 downloadRoute:(unsigned __int8)a6
{
  v8 = a4;
  v9 = a5;
  v10 = +[SWCDatabase queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014770;
  block[3] = &unk_100034DC8;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, block);
}

- (void)downloader:(id)a3 failedToDownloadAASAFileFromDomain:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[SWCDatabase queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014920;
  block[3] = &unk_100034DC8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)waitForSiteApprovalWithServiceSpecifier:(id)a3 completionHandler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014BE4;
  v6[3] = &unk_100034F10;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(SWCManager *)v7 _waitForSiteApprovalWithServiceSpecifier:a3 completionHandler:v6];
}

- (void)getDetailsWithServiceSpecifier:(id)a3 URL:(id)a4 limit:(unint64_t)a5 callerAuditToken:(id)a6 completionHandler:(id)a7
{
  v24 = a3;
  v26 = a4;
  v12 = a6;
  v13 = a7;
  if (v12 && !strcmp([v12 objCType], "{?=[8I]}"))
  {
    [v12 getValue:&v33 size:32];
  }

  else
  {
    v14 = +[NSXPCConnection currentConnection];
    v15 = v14;
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
  }

  v31 = v33;
  v32 = v34;
  v16 = [(SWCManager *)self _entriesWithServiceSpecifier:v24 URL:v26 limit:a5 auditToken:&v31, v24];
  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = [(SWCManager *)self _serviceDetailsWithEntry:*(*(&v27 + 1) + 8 * i)];
        if (v22)
        {
          [v17 addObject:v22];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = [v17 copy];
  v13[2](v13, v23, 0);
}

- (void)addServiceWithServiceSpecifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(SWCManager *)self _connectionIsEntitled:v8 forMutation:1];

  if (v9)
  {
    if (v6 && ([v6 SWCApplicationIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [LSApplicationRecord alloc];
      v12 = [v6 bundleIdentifier];
      v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];

      if ((v13 || (v14 = [LSApplicationExtensionRecord alloc], [v6 bundleIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v14, "initWithBundleIdentifier:error:", v15, 0), v15, v13)) && (objc_msgSend(v6, "isFullySpecified") & 1) == 0)
      {
        [(SWCManager *)self updateEntriesForAllBundlesIgnoringCurrentState:0];
        v7[2](v7, 1, 0);
      }

      else if ([v6 isFullySpecified])
      {
        v16 = [(SWCDatabase *)self->_database entryMatchingServiceSpecifier:v6];
        if (!v16)
        {
          v16 = [[SWCEntry alloc] initWithServiceSpecifier:v6];
          v17 = [(SWCEntry *)v16 fields];
          *v17 = *v17 & 0xE3FF | 0x800;
          database = self->_database;
          v19 = [[NSOrderedSet alloc] initWithObject:v16];
          [(SWCDatabase *)database addEntries:v19];
        }

        v7[2](v7, 1, 0);
      }

      else
      {
        v26 = [NSError alloc];
        v32[0] = @"Line";
        v32[1] = @"Function";
        v33[0] = &off_1000368B8;
        v27 = [NSString stringWithUTF8String:"[SWCManager addServiceWithServiceSpecifier:completionHandler:]"];
        v33[1] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
        v29 = [v26 initWithDomain:_SWCErrorDomain code:3 userInfo:v28];
        (v7)[2](v7, 0, v29);
      }
    }

    else
    {
      v23 = [NSError alloc];
      v30[0] = @"Line";
      v30[1] = @"Function";
      v31[0] = &off_1000368D0;
      v13 = [NSString stringWithUTF8String:"[SWCManager addServiceWithServiceSpecifier:completionHandler:]"];
      v31[1] = v13;
      v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      v25 = [v23 initWithDomain:_SWCErrorDomain code:2 userInfo:v24];
      (v7)[2](v7, 0, v25);
    }
  }

  else
  {
    v20 = [NSError alloc];
    v35[0] = &off_1000368A0;
    v34[0] = @"Line";
    v34[1] = @"Function";
    v13 = [NSString stringWithUTF8String:"[SWCManager addServiceWithServiceSpecifier:completionHandler:]"];
    v34[2] = NSDebugDescriptionErrorKey;
    v35[1] = v13;
    v35[2] = @"Entitlement required to mutate SWC database";
    v21 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v22 = [v20 initWithDomain:_SWCErrorDomain code:1 userInfo:v21];
    (v7)[2](v7, 0, v22);
  }
}

- (void)removeServiceWithServiceSpecifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(SWCManager *)self _connectionIsEntitled:v8 forMutation:1];

  if (v9)
  {
    if (v6)
    {
      v10 = objc_alloc_init(NSMutableOrderedSet);
      database = self->_database;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000159C4;
      v26[3] = &unk_100034F38;
      v12 = v10;
      v27 = v12;
      [(SWCDatabase *)database enumerateEntriesMatchingServiceSpecifier:v6 block:v26];
      if ([v12 count])
      {
        [(SWCDatabase *)self->_database removeEntries:v12];
LABEL_5:
        v7[2](v7, 1, 0);
LABEL_16:
        v14 = v27;
        goto LABEL_17;
      }

      v18 = [v6 serviceType];
      if (v18 || ([v6 SWCApplicationIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v24 = [v6 SWCDomain];
        v25 = v24 == 0;

        if (v25)
        {
          goto LABEL_5;
        }
      }

      if (qword_10003AD28 != -1)
      {
        dispatch_once(&qword_10003AD28, &stru_1000351C0);
      }

      v19 = qword_10003AD20;
      if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v6;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Service '%@' not found to remove", buf, 0xCu);
      }

      v20 = [NSError alloc];
      v30[0] = @"Line";
      v30[1] = @"Function";
      v31[0] = &off_100036900;
      v21 = [NSString stringWithUTF8String:"[SWCManager removeServiceWithServiceSpecifier:completionHandler:]"];
      v31[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      v23 = [v20 initWithDomain:_SWCErrorDomain code:3 userInfo:v22];
      (v7)[2](v7, 0, v23);

      goto LABEL_16;
    }

    v16 = [NSError alloc];
    v28[0] = @"Line";
    v28[1] = @"Function";
    v29[0] = &off_100036918;
    v12 = [NSString stringWithUTF8String:"[SWCManager removeServiceWithServiceSpecifier:completionHandler:]"];
    v29[1] = v12;
    v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v17 = [v16 initWithDomain:_SWCErrorDomain code:2 userInfo:v14];
    (v7)[2](v7, 0, v17);
  }

  else
  {
    v13 = [NSError alloc];
    v35[0] = &off_1000368E8;
    v34[0] = @"Line";
    v34[1] = @"Function";
    v12 = [NSString stringWithUTF8String:"[SWCManager removeServiceWithServiceSpecifier:completionHandler:]"];
    v34[2] = NSDebugDescriptionErrorKey;
    v35[1] = v12;
    v35[2] = @"Entitlement required to mutate SWC database";
    v14 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v15 = [v13 initWithDomain:_SWCErrorDomain code:1 userInfo:v14];
    (v7)[2](v7, 0, v15);
  }

LABEL_17:
}

- (void)setDetails:(id)a3 forServiceWithServiceSpecifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [(SWCManager *)self _connectionIsEntitled:v11 forMutation:1];

  if ((v12 & 1) == 0)
  {
    v17 = [NSError alloc];
    v34[0] = &off_100036930;
    v33[0] = @"Line";
    v33[1] = @"Function";
    v18 = [NSString stringWithUTF8String:"[SWCManager setDetails:forServiceWithServiceSpecifier:completionHandler:]"];
    v33[2] = NSDebugDescriptionErrorKey;
    v34[1] = v18;
    v34[2] = @"Entitlement required to mutate SWC database";
    v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v20 = [v17 initWithDomain:_SWCErrorDomain code:1 userInfo:v19];
    v10[2](v10, 0, v20);
LABEL_11:

    goto LABEL_20;
  }

  if (![v9 isFullySpecified])
  {
    v21 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"[SWCManager setDetails:forServiceWithServiceSpecifier:completionHandler:]", @"Line", @"Function", &off_100036948];
    v28[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v28 forKeys:&v27 count:2];
    v20 = [v21 initWithDomain:_SWCErrorDomain code:2 userInfo:v19];
    v10[2](v10, 0, v20);
    goto LABEL_11;
  }

  v13 = [(SWCDatabase *)self->_database entryMatchingServiceSpecifier:v9];
  if (v13)
  {
    v14 = [_SWCPatternList patternListWithDetailsDictionary:v8];
    [(SWCEntry *)v13 setPatterns:v14];

    v15 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v8];
    [(SWCEntry *)v13 setSubstitutionVariables:v15];

    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v16 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v13;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Set details on %@: %@", buf, 0x16u);
    }

    [(SWCDatabase *)self->_database scheduleNextSave];
  }

  else
  {
    v13 = [[SWCEntry alloc] initWithServiceSpecifier:v9];
    if (v8)
    {
      v22 = [_SWCPatternList patternListWithDetailsDictionary:v8];
      [(SWCEntry *)v13 setPatterns:v22];

      v23 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v8];
      [(SWCEntry *)v13 setSubstitutionVariables:v23];
    }

    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v24 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v13;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Added %@ with details: %@", buf, 0x16u);
    }

    database = self->_database;
    v26 = [[NSOrderedSet alloc] initWithObject:v13];
    [(SWCDatabase *)database addEntries:v26];
  }

  v10[2](v10, 1, 0);
LABEL_20:
}

- (void)addAllAppsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(SWCManager *)self _connectionIsEntitled:v5 forMutation:1];

  if (v6)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v7 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Add all apps", v12, 2u);
    }

    v8 = 0;
    [(SWCManager *)self updateEntriesForAllBundlesIgnoringCurrentState:1];
  }

  else
  {
    v9 = [NSError alloc];
    v14[0] = &off_100036990;
    v13[0] = @"Line";
    v13[1] = @"Function";
    v10 = [NSString stringWithUTF8String:"[SWCManager addAllAppsWithCompletionHandler:]"];
    v13[2] = NSDebugDescriptionErrorKey;
    v14[1] = v10;
    v14[2] = @"Entitlement required to mutate SWC database";
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v8 = [v9 initWithDomain:_SWCErrorDomain code:1 userInfo:v11];
  }

  v4[2](v4, v6, v8);
}

- (void)showWithVerbosity:(unsigned __int8)a3 isTTY:(BOOL)a4 fileDescriptor:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    if (xpc_get_type(v10) == &_xpc_type_fd)
    {
      v12 = xpc_fd_dup(v10);
      if ((v12 & 0x80000000) == 0)
      {
        if (v7)
        {
          _SWCForceTTY();
        }

        v13 = fdopen(v12, "w");
        if (v13)
        {
          context = objc_autoreleasePoolPush();
          v14 = [NSNumber numberWithInt:getpid()];
          _SWCLogValueForKey();

          v15 = [(SWCDatabase *)self->_database storageURL];
          v16 = [v15 path];
          _SWCLogValueForKey();

          if (v8)
          {
            v17 = [(SWCDatabase *)self->_database settingsGeneration];
            _SWCLogValueForKey();

            v18 = [(SWCDatabase *)self->_database launchServicesDatabaseGeneration];
            _SWCLogValueForKey();

            v19 = [(SWCDatabase *)self->_database enterpriseState];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 base64EncodedStringWithOptions:0];
            }

            else
            {
              v21 = 0;
            }

            _SWCLogValueForKey();
            v22 = [NSNumber numberWithBool:[(SWCManager *)self _isDeveloperModeEnabled]];
            _SWCLogValueForKey();
          }

          _SWCLogHeader();
          v75 = 0;
          v76 = &v75;
          v77 = 0x2020000000;
          v78 = 0;
          database = self->_database;
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_100016EEC;
          v73[3] = &unk_100034F88;
          v73[4] = &v75;
          v73[5] = v13;
          v74 = v8;
          [(SWCDatabase *)database enumerateEntriesWithBlock:v73];
          if ((v76[3] & 1) == 0)
          {
            _SWCLogLine();
          }

          _SWCLogHeader();
          if (v8 < 2)
          {
            v29 = objc_alloc_init(NSMutableArray);
            downloader = self->_downloader;
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_10001710C;
            v67[3] = &unk_100034FD8;
            v69 = v8;
            v31 = v29;
            v68 = v31;
            [(SWCDownloader *)downloader enumerateActiveAASAFileDownloadsWithBlock:v67];
            v32 = [v31 componentsJoinedByString:{@", "}];
            _SWCLogLine();

            if (!v8)
            {
LABEL_35:
              _Block_object_dispose(&v75, 8);
              objc_autoreleasePoolPop(context);
              fclose(v13);
              goto LABEL_3;
            }
          }

          else
          {
            v24 = objc_alloc_init(NSByteCountFormatter);
            v25 = self->_downloader;
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_100016F80;
            v70[3] = &unk_100034FB0;
            v71 = v24;
            v72 = v13;
            v26 = v24;
            [(SWCDownloader *)v25 enumerateActiveAASAFileDownloadsWithBlock:v70];

            _SWCLogHeader();
            v27 = +[_SWCPrefs sharedPrefs];
            v28 = [v27 descriptionOfAllPrefs];
            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_100017230;
            v66[3] = &unk_100034FF8;
            v66[4] = v13;
            [v28 enumerateKeysAndObjectsUsingBlock:v66];
          }

          _SWCLogHeader();
          v56 = 0;
          v57 = &v56;
          v58 = 0x2020000000;
          LOBYTE(v59) = 0;
          v33 = self->_database;
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100017240;
          v65[3] = &unk_100035020;
          v65[4] = &v56;
          v65[5] = v13;
          [(SWCDatabase *)v33 enumerateSettingsDictionariesWithBlock:v65];
          if ((v57[3] & 1) == 0)
          {
            _SWCLogLine();
          }

          _Block_object_dispose(&v56, 8);
          _SWCLogHeader();
          v34 = objc_alloc_init(NSMutableDictionary);
          v35 = self->_database;
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_10001731C;
          v63[3] = &unk_100034F38;
          v36 = v34;
          v64 = v36;
          v54 = v36;
          [(SWCDatabase *)v35 enumerateEntriesWithBlock:v63];
          v56 = 0;
          v57 = &v56;
          v58 = 0x4812000000;
          v59 = sub_100017480;
          v60 = sub_1000174A4;
          v61 = &unk_10002EB53;
          memset(v62, 0, sizeof(v62));
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_1000174D0;
          v55[3] = &unk_100035048;
          v55[4] = &v56;
          [v36 enumerateKeysAndObjectsUsingBlock:v55];
          v37 = v57[6];
          v38 = v57[7];
          v39 = 126 - 2 * __clz((v38 - v37) >> 4);
          v79 = &stru_100035088;
          if (v38 == v37)
          {
            v40 = 0;
          }

          else
          {
            v40 = v39;
          }

          sub_10001BF00(v37, v38, &v79, v40, 1);

          if (v57[6] == v57[7])
          {
            _SWCLogLine();
          }

          else
          {
            v50 = v11;
            v51 = v10;
            v41 = v13;
            v42 = v8;
            v53 = objc_alloc_init(NSByteCountFormatter);
            v43 = v57[6];
            v44 = v57[7];
            while (v43 != v44)
            {
              if (*(v43 + 8))
              {
                v45 = *v43;
                v46 = [NSNumber numberWithUnsignedLongLong:*(v43 + 8)];
                v47 = *(v43 + 8);
                v48 = [v45 description];
                if (v42 <= 1)
                {
                  v49 = [v53 stringForObjectValue:v46];
                  _SWCLogValueForKey();
                }

                else
                {
                  _SWCLogValueForKey();
                }

                v36 = v54;
              }

              v43 += 16;
            }

            v13 = v41;
            v11 = v50;
            v10 = v51;
          }

          _Block_object_dispose(&v56, 8);
          v80 = v62;
          sub_10001BE80(&v80);

          goto LABEL_35;
        }
      }
    }
  }

LABEL_3:
  _SWCForceTTY();
  v11[2](v11);
}

- (void)resetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(SWCManager *)self _connectionIsEntitled:v5 forMutation:1];

  if (v6)
  {
    [(SWCDatabase *)self->_database removeAllEntries];
    [(SWCManager *)self updateEntriesForAllBundlesIgnoringCurrentState:1];
    database = self->_database;
    v13 = 0;
    v8 = [(SWCDatabase *)database saveReturningError:&v13];
    v9 = v13;
    v4[2](v4, v8, v9);
    xpc_transaction_exit_clean();
  }

  else
  {
    v10 = [NSError alloc];
    v15[0] = &off_1000369A8;
    v14[0] = @"Line";
    v14[1] = @"Function";
    v9 = [NSString stringWithUTF8String:"[SWCManager resetWithCompletionHandler:]"];
    v14[2] = NSDebugDescriptionErrorKey;
    v15[1] = v9;
    v15[2] = @"Entitlement required to mutate SWC database";
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = [v10 initWithDomain:_SWCErrorDomain code:1 userInfo:v11];
    v4[2](v4, 0, v12);
  }
}

- (void)getServiceSettingsWithServiceSpecifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SWCDatabase *)self->_database settingsDictionaryForServiceSpecifier:v6];
  if (!v8)
  {
    v9 = [(SWCDatabase *)self->_database entryMatchingServiceSpecifier:v6];

    if (!v9)
    {
      v14 = [NSError alloc];
      v18[0] = &off_1000369C0;
      v17[0] = @"Line";
      v17[1] = @"Function";
      v15 = [NSString stringWithUTF8String:"[SWCManager getServiceSettingsWithServiceSpecifier:completionHandler:]"];
      v17[2] = NSDebugDescriptionErrorKey;
      v18[1] = v15;
      v18[2] = @"No services match the service specifier, so settings cannot be saved for it.";
      v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
      v13 = [v14 initWithDomain:_SWCErrorDomain code:3 userInfo:v16];

      v8 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v8 = &__NSDictionary0__struct;
  }

  v10 = [_SWCServiceSettings alloc];
  v11 = [(SWCDatabase *)self->_database settingsGeneration];
  v12 = [v10 _initWithServiceSpecifier:v6 dictionary:v8 generation:v11];

  v13 = 0;
LABEL_5:
  v7[2](v7, v12, v13);
}

- (void)commitServiceSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SWCDatabase *)self->_database settingsGeneration];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [(SWCManager *)self _connectionIsEntitled:v9 forMutation:1];

  if ((v10 & 1) == 0)
  {
    v17 = [NSError alloc];
    v30[0] = &off_1000369D8;
    v29[0] = @"Line";
    v29[1] = @"Function";
    v18 = [NSString stringWithUTF8String:"[SWCManager commitServiceSettings:completionHandler:]"];
    v29[2] = NSDebugDescriptionErrorKey;
    v30[1] = v18;
    v30[2] = @"Entitlement required to mutate SWC database";
    v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    v20 = [v17 initWithDomain:_SWCErrorDomain code:1 userInfo:v19];

LABEL_7:
    v16 = 0;
    goto LABEL_10;
  }

  v11 = [v6 generation];
  v12 = [v11 isEqual:v8];

  if ((v12 & 1) == 0)
  {
    v21 = [NSError alloc];
    v28[0] = &off_1000369F0;
    v27[0] = @"Line";
    v27[1] = @"Function";
    v22 = [NSString stringWithUTF8String:"[SWCManager commitServiceSettings:completionHandler:]"];
    v28[1] = v22;
    v28[2] = @"Settings conflict detected. Try again.";
    v27[2] = NSDebugDescriptionErrorKey;
    v27[3] = @"Generation";
    v23 = [v6 generation];
    v24 = [v23 description];
    v28[3] = v24;
    v27[4] = @"ExpectedGeneration";
    v25 = [v8 description];
    v28[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
    v20 = [v21 initWithDomain:_SWCErrorDomain code:1000 userInfo:v26];

    goto LABEL_7;
  }

  v13 = [v6 serviceSpecifier];
  if (v13)
  {
    database = self->_database;
    v15 = [v6 dictionaryRepresentation];
    [(SWCDatabase *)database setSettingsDictionary:v15 forServiceSpecifier:v13];

    v16 = [(SWCDatabase *)self->_database settingsGeneration];
  }

  else
  {
    v16 = 0;
  }

  v20 = 0;
LABEL_10:
  v7[2](v7, v16, v20);
}

- (void)removeSettingsForKeys:(id)a3 serviceType:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [(SWCManager *)self _connectionIsEntitled:v11 forMutation:1];

  if ((v12 & 1) == 0)
  {
    v15 = [NSError alloc];
    v23[0] = &off_100036A08;
    v22[0] = @"Line";
    v22[1] = @"Function";
    v16 = [NSString stringWithUTF8String:"[SWCManager removeSettingsForKeys:serviceType:completionHandler:]"];
    v22[2] = NSDebugDescriptionErrorKey;
    v23[1] = v16;
    v23[2] = @"Entitlement required to mutate SWC database";
    v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v18 = [v15 initWithDomain:_SWCErrorDomain code:1 userInfo:v17];
LABEL_8:
    v13 = v18;

    v14 = 0;
    goto LABEL_9;
  }

  if (!v9 || v8 && (_NSIsNSSet() & 1) == 0)
  {
    v19 = [NSError alloc];
    v20[0] = @"Line";
    v20[1] = @"Function";
    v21[0] = &off_100036A20;
    v16 = [NSString stringWithUTF8String:"[SWCManager removeSettingsForKeys:serviceType:completionHandler:]"];
    v21[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v18 = [v19 initWithDomain:_SWCErrorDomain code:2 userInfo:v17];
    goto LABEL_8;
  }

  v13 = 0;
  [(SWCDatabase *)self->_database removeSettingsForKeys:v8 serviceType:v9];
  v14 = 1;
LABEL_9:
  v10[2](v10, v14, v13);
}

- (void)removeSettingsForKeys:(id)a3 serviceSpecifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [(SWCManager *)self _connectionIsEntitled:v11 forMutation:1];

  if ((v12 & 1) == 0)
  {
    v20 = [NSError alloc];
    v26[0] = &off_100036A38;
    v25[0] = @"Line";
    v25[1] = @"Function";
    v17 = [NSString stringWithUTF8String:"[SWCManager removeSettingsForKeys:serviceSpecifier:completionHandler:]"];
    v25[2] = NSDebugDescriptionErrorKey;
    v26[1] = v17;
    v26[2] = @"Entitlement required to mutate SWC database";
    v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v19 = [v20 initWithDomain:_SWCErrorDomain code:1 userInfo:v18];
    goto LABEL_8;
  }

  if (v9)
  {
    v13 = [v9 serviceType];
    v14 = v13;
    if (v13)
    {
      if (v8)
      {
        v15 = _NSIsNSSet();

        if ((v15 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v21 = 0;
      [(SWCDatabase *)self->_database removeSettingsForKeys:v8 serviceSpecifier:v9];
      v22 = 1;
      goto LABEL_9;
    }
  }

LABEL_6:
  v16 = [NSError alloc];
  v23[0] = @"Line";
  v23[1] = @"Function";
  v24[0] = &off_100036A50;
  v17 = [NSString stringWithUTF8String:"[SWCManager removeSettingsForKeys:serviceSpecifier:completionHandler:]"];
  v24[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19 = [v16 initWithDomain:_SWCErrorDomain code:2 userInfo:v18];
LABEL_8:
  v21 = v19;

  v22 = 0;
LABEL_9:
  v10[2](v10, v22, v21);
}

- (void)getTrackingDomains:(id)a3 sources:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7 && !_NSIsNSSet())
  {
LABEL_13:
    v8[2](v8, &__NSDictionary0__struct);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if ((_NSIsNSString() & 1) == 0)
          {

            goto LABEL_13;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000187D8;
    v15[3] = &unk_1000350B0;
    v16 = os_transaction_create();
    v17 = v8;
    v14 = v16;
    [_SWCTrackingDomainInfo _getTrackingDomainInfoWithDomains:v9 sources:a4 completionHandler:v15];
  }
}

- (void)getDeveloperModeEnabledWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [NSNumber numberWithBool:[(SWCManager *)self _isDeveloperModeEnabled]];
  v5[2](v5, v4, 0);
}

- (void)setDeveloperModeEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(SWCManager *)self _connectionIsEntitled:v7 forMutation:1];

  if (v8)
  {
    if ([(SWCManager *)self _isDeveloperModeEnabled]== v4)
    {
      v6[2](v6, 1, 0);
    }

    else if (v4)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100018B48;
      v16[3] = &unk_1000350D8;
      v16[4] = self;
      v17 = v6;
      [(SWCManager *)self _authorizeDeveloperModeChangeWithCompletionHandler:v16];
    }

    else
    {
      v15 = 0;
      v13 = [(SWCManager *)self _setDeveloperModeEnabled:0 error:&v15];
      v14 = v15;
      (v6)[2](v6, v13, v14);
    }
  }

  else
  {
    v9 = [NSError alloc];
    v19[0] = &off_100036A68;
    v18[0] = @"Line";
    v18[1] = @"Function";
    v10 = [NSString stringWithUTF8String:"[SWCManager setDeveloperModeEnabled:completionHandler:]"];
    v18[2] = NSDebugDescriptionErrorKey;
    v19[1] = v10;
    v19[2] = @"Entitlement required to enable Associated Domains developer mode.";
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v12 = [v9 initWithDomain:_SWCErrorDomain code:1 userInfo:v11];

    (v6)[2](v6, 0, v12);
  }
}

- (void)setAdditionalServiceDetailsForApplicationIdentifiers:(id)a3 usingContentsOfDictionary:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  if (![(SWCManager *)self _connectionIsEntitled:v11 forMutation:1])
  {
    v18 = [NSError alloc];
    v34[0] = &off_100036A80;
    v33[0] = @"Line";
    v33[1] = @"Function";
    v12 = [NSString stringWithUTF8String:"[SWCManager setAdditionalServiceDetailsForApplicationIdentifiers:usingContentsOfDictionary:completionHandler:]"];
    v33[2] = NSDebugDescriptionErrorKey;
    v34[1] = v12;
    v34[2] = @"Entitlement required to mutate SWC database";
    v13 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v19 = [v18 initWithDomain:_SWCErrorDomain code:1 userInfo:v13];
LABEL_12:
    v15 = v19;
    goto LABEL_13;
  }

  if (!v8 || !_NSIsNSSet() || ![v8 count])
  {
    v20 = [NSError alloc];
    v32[0] = &off_100036A98;
    v31[0] = @"Line";
    v31[1] = @"Function";
    v12 = [NSString stringWithUTF8String:"[SWCManager setAdditionalServiceDetailsForApplicationIdentifiers:usingContentsOfDictionary:completionHandler:]"];
    v31[2] = NSDebugDescriptionErrorKey;
    v32[1] = v12;
    v32[2] = @"Invalid app ID list.";
    v13 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
    v19 = [v20 initWithDomain:_SWCErrorDomain code:2 userInfo:v13];
    goto LABEL_12;
  }

  if (!v9 || (_NSIsNSDictionary() & 1) == 0)
  {
    v21 = [NSError alloc];
    v30[0] = &off_100036AB0;
    v29[0] = @"Line";
    v29[1] = @"Function";
    v12 = [NSString stringWithUTF8String:"[SWCManager setAdditionalServiceDetailsForApplicationIdentifiers:usingContentsOfDictionary:completionHandler:]"];
    v29[2] = NSDebugDescriptionErrorKey;
    v30[1] = v12;
    v30[2] = @"Invalid domain-to-JSON dictionary.";
    v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    v19 = [v21 initWithDomain:_SWCErrorDomain code:2 userInfo:v13];
    goto LABEL_12;
  }

  v12 = [(SWCManager *)self _filterApplicationIdentifiers:v8 toMatchEntitlementOfXPCConnection:v11];
  v26 = 0;
  v13 = [(SWCManager *)self _createStagingDirectoryForAdditionalServiceDetailsReturningError:&v26];
  v14 = v26;
  v15 = v14;
  if (!v13)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v25 = v14;
  v16 = [(SWCManager *)self _addJSONDataInDictionary:v9 toStagingDirectoryAtURL:v13 error:&v25];
  v17 = v25;

  if (v16)
  {
    v24 = v17;
    v16 = [(SWCManager *)self _copyStagingDirectoryAtURL:v13 toAdditionalServiceDetailsDirectoriesForApplicationIdentifiers:v12 error:&v24];
    v15 = v24;
  }

  else
  {
    v15 = v17;
  }

  v22 = +[NSFileManager defaultManager];
  [v22 removeItemAtURL:v13 error:0];

  if (v16)
  {
    v23 = sub_100013EF8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Updating all apps after updating additional service details for %@", buf, 0xCu);
    }

    v16 = 1;
    [(SWCManager *)self updateEntriesForAllBundlesIgnoringCurrentState:1];
  }

LABEL_14:

  v10[2](v10, v16, v15);
}

- (id)_eligibleSystemPlaceholderRecords
{
  v2 = objc_alloc_init(NSMutableArray);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_100036BE0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(&off_100036BE0);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
        if (!v7)
        {
          v8 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v6 error:0];
          if (v8)
          {
            [v2 addObject:v8];
          }
        }
      }

      v3 = [&off_100036BE0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  return v2;
}

- (void)_updateAllEntries:(id)a3
{
  v36 = a3;
  v37 = objc_alloc_init(NSMutableOrderedSet);
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v5 = objc_autoreleasePoolPush();
  database = self->_database;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100019DE4;
  v44[3] = &unk_100034CE0;
  v7 = v36;
  v45 = v7;
  v39 = v37;
  v46 = v39;
  [(SWCDatabase *)database enumerateEntriesWithBlock:v44];

  objc_autoreleasePoolPop(v5);
  context = objc_autoreleasePoolPush();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v8)
  {
    v9 = *v41;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [(SWCDatabase *)self->_database entry:v11];
        if (!v12)
        {
          [v4 addObject:v11];
          goto LABEL_14;
        }

        v13 = v11;
        v14 = *[v11 fields];
        v15 = v12;
        if (((*[v12 fields] ^ v14) & 0x1C00) != 0)
        {
          [v39 addObject:v12];
          [v4 addObject:v11];
          v16 = v11;
          if ((*[v11 fields] & 0x1C00) != 0)
          {
            goto LABEL_19;
          }

          if (qword_10003AD28 != -1)
          {
            dispatch_once(&qword_10003AD28, &stru_1000351C0);
          }

          v17 = qword_10003AD20;
          if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v48 = v12;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Entry %@ needs its JSON updated because it moved from on-disk to network", buf, 0xCu);
          }

          goto LABEL_14;
        }

        v21 = v11;
        if ((*[v11 fields] & 0x1C00) == 0xC00)
        {
          [v39 addObject:v12];
          [v4 addObject:v11];
        }

        else
        {
          v22 = [v11 applicationPersistentIdentifier];
          v23 = [v12 applicationPersistentIdentifier];
          v24 = v23;
          if (!v22 || !v23)
          {
            goto LABEL_37;
          }

          v25 = _LSPersistentIdentifierCompare();

          if (!v25)
          {
            v22 = [v11 applicationVersion];
            v24 = [v12 applicationVersion];
            if ([v11 isDownloadable] && objc_msgSend(v22, "isEqual:", v24))
            {
              if (qword_10003AD28 != -1)
              {
                dispatch_once(&qword_10003AD28, &stru_1000351C0);
              }

              v26 = qword_10003AD20;
              if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v48 = v12;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Entry %@ has moved databases but hasn't changed versions; we won't download new JSON right now", buf, 0xCu);
              }

              v19 = [v11 applicationPersistentIdentifier];
              [v12 setApplicationPersistentIdentifier:v19];
LABEL_16:

              goto LABEL_19;
            }

            if (qword_10003AD28 != -1)
            {
              dispatch_once(&qword_10003AD28, &stru_1000351C0);
            }

            v27 = qword_10003AD20;
            if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v12;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Entry %@ has moved databases, and it has changed versions or it is from on-disk, will update JSON", buf, 0xCu);
            }

LABEL_37:

LABEL_38:
            if (qword_10003AD28 != -1)
            {
              dispatch_once(&qword_10003AD28, &stru_1000351C0);
            }

            v28 = qword_10003AD20;
            if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v12;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Entry %@ needs its JSON updated because the app PI changed", buf, 0xCu);
            }

            [v39 addObject:v12];
            [v4 addObject:v11];
LABEL_14:
            if (![v11 isDownloadable])
            {
              goto LABEL_19;
            }

            downloader = self->_downloader;
            v19 = [v11 domain];
            v20 = [v11 applicationIdentifier];
            [(SWCDownloader *)downloader downloadAASAFileForDomain:v19 applicationIdentifier:v20 completionHandler:0];

            goto LABEL_16;
          }

          if (v25 != 100)
          {
            goto LABEL_38;
          }
        }

LABEL_19:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v29 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      v8 = v29;
    }

    while (v29);
  }

  objc_autoreleasePoolPop(context);
  v30 = objc_autoreleasePoolPush();
  if ([v39 count])
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v31 = qword_10003AD20;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v39 count];
      *buf = 134218242;
      v48 = v33;
      v49 = 2112;
      v50 = v39;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Removing %llu entries: %@", buf, 0x16u);
    }

    [(SWCDatabase *)self->_database removeEntries:v39];
  }

  if ([v4 count])
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v32 = qword_10003AD20;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v4 count];
      *buf = 134218242;
      v48 = v34;
      v49 = 2112;
      v50 = v4;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Adding %llu entries: %@", buf, 0x16u);
    }

    [(SWCDatabase *)self->_database addEntries:v4];
  }

  objc_autoreleasePoolPop(v30);
  if ([v39 count])
  {
    [(SWCDatabase *)self->_database cleanOldSettings];
  }

  [(SWCDatabase *)self->_database scheduleNextSave];
  [(SWCDownloadScheduler *)self->_downloadScheduler update];
}

- (id)_entriesWithServiceSpecifier:(id)a3 URL:(id)a4 limit:(unint64_t)a5 auditToken:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = [[NSURLComponents alloc] initWithURL:v10 resolvingAgainstBaseURL:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001A0A4;
  v27[3] = &unk_100035100;
  v15 = v9;
  v28 = v15;
  v16 = v11;
  v29 = v16;
  v17 = *&a6->var0[4];
  v31 = *a6->var0;
  v32 = v17;
  v18 = v13;
  v30 = v18;
  [(SWCDatabase *)database enumerateEntriesMatchingServiceSpecifier:v15 block:v27];

  objc_autoreleasePoolPop(v12);
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10001A3F0;
  v25 = &unk_100035128;
  v19 = v16;
  v26 = v19;
  [v18 sortWithOptions:16 usingComparator:&v22];
  v20 = [v18 copy];

  return v20;
}

- (id)_serviceDetailsWithEntry:(id)a3
{
  v3 = a3;
  v4 = [_SWCServiceDetails alloc];
  v5 = [v3 serviceSpecifier];
  v6 = [v4 _initWithServiceSpecifier:v5 fields:{objc_msgSend(v3, "fields")}];

  return v6;
}

- (void)_waitForSiteApprovalWithServiceSpecifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isFullySpecified])
  {
    v11 = [NSError alloc];
    v38[0] = @"Line";
    v38[1] = @"Function";
    v39[0] = &off_100036AF8;
    v9 = [NSString stringWithUTF8String:"[SWCManager(Private) _waitForSiteApprovalWithServiceSpecifier:completionHandler:]"];
    v39[1] = v9;
    v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v13 = [v11 initWithDomain:_SWCErrorDomain code:2 userInfo:v12];
    v7[2](v7, 0, v13);
    goto LABEL_20;
  }

  v8 = [(SWCDatabase *)self->_database entryMatchingServiceSpecifier:v6];
  v9 = v8;
  if (!v8)
  {
    v14 = [NSError alloc];
    v41[0] = &off_100036AE0;
    v40[0] = @"Line";
    v40[1] = @"Function";
    v12 = [NSString stringWithUTF8String:"[SWCManager(Private) _waitForSiteApprovalWithServiceSpecifier:completionHandler:]"];
    v40[2] = NSDebugDescriptionErrorKey;
    v41[1] = v12;
    v41[2] = @"The specified service was not found in the SWC database.";
    v13 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    v15 = [v14 initWithDomain:_SWCErrorDomain code:3 userInfo:v13];
    v7[2](v7, 0, v15);

    v9 = 0;
    goto LABEL_20;
  }

  if ((*[v8 fields] & 0xC) == 0)
  {
    v16 = [v9 retryCount];
    if (v16)
    {
      v17 = [v9 retryCount];
      v18 = [v17 unsignedIntegerValue];
      v19 = +[_SWCPrefs sharedPrefs];
      v20 = [v19 maximumRetryCount];

      if (v18 > v20)
      {
        if (qword_10003AD28 != -1)
        {
          dispatch_once(&qword_10003AD28, &stru_1000351C0);
        }

        v21 = qword_10003AD20;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v9 retryCount];
          v23 = +[NSXPCConnection currentConnection];
          *buf = 138543874;
          v45 = v22;
          v46 = 2112;
          v47 = v9;
          v48 = 2048;
          v49 = [v23 processIdentifier];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Exhausted retry attempts (%{public}@) for entry %@; will not attempt to download it on behalf of an interested caller %llu", buf, 0x20u);
        }

        v24 = [v9 lastError];
        v25 = v24;
        if (v24)
        {
          v12 = v24;
        }

        else
        {
          v29 = [NSError alloc];
          v42[0] = @"Line";
          v42[1] = @"Function";
          v43[0] = &off_100036AC8;
          v30 = [NSString stringWithUTF8String:"[SWCManager(Private) _waitForSiteApprovalWithServiceSpecifier:completionHandler:]"];
          v43[1] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          v12 = [v29 initWithDomain:_SWCErrorDomain code:-1 userInfo:v31];
        }

        v7[2](v7, 0, v12);
        goto LABEL_21;
      }
    }

    v12 = [v6 SWCDomain];
    downloader = self->_downloader;
    v27 = [v6 SWCApplicationIdentifier];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001AD80;
    v35[3] = &unk_100035178;
    v37 = v7;
    v28 = v9;
    v36 = v28;
    [(SWCDownloader *)downloader downloadAASAFileForDomain:v12 applicationIdentifier:v27 completionHandler:v35];

    v13 = v37;
    v9 = v28;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v10 = qword_10003AD20;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v32 = *[v9 fields];
    v33 = _SWCServiceApprovalStateGetDebugDescription();
    v34 = +[NSXPCConnection currentConnection];
    *buf = 138412802;
    v45 = v9;
    v46 = 2114;
    v47 = v33;
    v48 = 2048;
    v49 = [v34 processIdentifier];
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Entry %@ already has approval state %{public}@, skipping download for interested caller %llu", buf, 0x20u);
  }

  (v7)[2](v7, v9, 0);
LABEL_22:
}

- (BOOL)_connectionIsEntitled:(id)a3 forMutation:(BOOL)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  v6 = _SWCIsAuditTokenEntitled();

  return v6;
}

- (id)_developerModeSemaphoreURL
{
  v2 = +[_SWCPrefs sharedPrefs];
  v3 = [v2 containerURLReturningError:0];

  v4 = [v3 URLByAppendingPathComponent:@".developerMode" isDirectory:0];

  return v4;
}

- (BOOL)_setDeveloperModeEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(SWCManager *)self _developerModeSemaphoreURL];
  if (!v7)
  {
    if (a4)
    {
      v11 = [NSError alloc];
      v20[0] = &off_100036B10;
      v19[0] = @"Line";
      v19[1] = @"Function";
      v12 = [NSString stringWithUTF8String:"[SWCManager(Private) _setDeveloperModeEnabled:error:]"];
      v19[2] = NSDebugDescriptionErrorKey;
      v20[1] = v12;
      v20[2] = @"Unable to find path to developer mode semaphore file.";
      v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
      *a4 = [v11 initWithDomain:_SWCErrorDomain code:-1 userInfo:v13];
    }

    return 0;
  }

  if (!v5)
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v14 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Disabling developer mode.", v18, 2u);
    }

    v15 = +[NSFileManager defaultManager];
    v16 = [v15 removeItemAtURL:v7 error:a4];

    if (!v16)
    {
      return 0;
    }

LABEL_16:
    self->_developerModeEnabled = (v5 | 0x100);
    [(SWCManager *)self updateEntriesForAllBundlesIgnoringCurrentState:1];
    return 1;
  }

  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v8 = qword_10003AD20;
  if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 0;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Enabling developer mode.", v18, 2u);
  }

  v9 = +[NSData data];
  v10 = [v9 writeToURL:v7 options:1 error:a4];

  if (v10)
  {
    goto LABEL_16;
  }

  return 0;
}

- (BOOL)_isDeveloperModeEnabled
{
  if (self->_developerModeEnabled.__engaged_)
  {
    LOBYTE(v3) = self->_developerModeEnabled.var0.__null_state_;
  }

  else
  {
    v4 = [(SWCManager *)self _developerModeSemaphoreURL];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 checkResourceIsReachableAndReturnError:0];
    }

    else
    {
      v3 = 0;
    }

    self->_developerModeEnabled = (v3 | 0x100);
  }

  return v3;
}

- (id)_filterApplicationIdentifiers:(id)a3 toMatchEntitlementOfXPCConnection:(id)a4
{
  v18 = a3;
  v17 = a4;
  v5 = [v17 processIdentifier];
  if (v5 == getpid())
  {
    if (qword_10003AD28 != -1)
    {
      dispatch_once(&qword_10003AD28, &stru_1000351C0);
    }

    v6 = qword_10003AD20;
    if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Treating connection from self as entitled (additional service details check)", buf, 2u);
    }

    v7 = v18;
    goto LABEL_24;
  }

  v8 = [v17 valueForEntitlement:@"com.apple.private.swc.additional-service-details-provider"];
  if ([v8 isEqual:@"*"])
  {
    v7 = v18;
LABEL_23:

    goto LABEL_24;
  }

  if (!v8)
  {
    v7 = 0;
    goto LABEL_24;
  }

  if ((_NSIsNSArray() & 1) != 0 || (v25 = v8, [NSArray arrayWithObjects:&v25 count:1], v7 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v7) != 0))
  {
    v7 = objc_alloc_init(NSMutableSet);
    objc_opt_class();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v18;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 rawValue];
            v15 = [v8 containsObject:v14];

            if (v15)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    goto LABEL_23;
  }

LABEL_24:

  return v7;
}

- (id)_createStagingDirectoryForAdditionalServiceDetailsReturningError:(id *)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [NSString alloc];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 initWithFormat:@"AdditionalServiceDetails/staged-%@", v7];

  v9 = +[_SWCPrefs sharedPrefs];
  v20 = 0;
  v10 = [v9 containerURLReturningError:&v20];
  v11 = v20;
  v12 = [v10 URLByAppendingPathComponent:v8 isDirectory:1];

  if (v12)
  {
    v13 = +[NSFileManager defaultManager];
    v19 = v11;
    v14 = [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v19];
    v15 = v19;

    if (v14)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v11 = v15;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (a3 && !v16)
  {
    v17 = v11;
    *a3 = v11;
  }

  return v16;
}

- (BOOL)_addJSONDataInDictionary:(id)a3 toStagingDirectoryAtURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10001BA00;
  v26 = sub_10001BA10;
  v27 = 0;
  v9 = [v7 count];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001BA18;
  v13[3] = &unk_1000351A0;
  v17 = objc_opt_class();
  v10 = v8;
  v14 = v10;
  v15 = &v22;
  v16 = &v18;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v19[3];
  if (a5 && v11 != v9)
  {
    *a5 = v23[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11 == v9;
}

- (BOOL)_copyStagingDirectoryAtURL:(id)a3 toAdditionalServiceDetailsDirectoriesForApplicationIdentifiers:(id)a4 error:(id *)a5
{
  v24 = a3;
  v6 = a4;
  v22 = [v6 count];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v26 = v9;
      v14 = [SWCEntry additionalServiceDetailsDirectoryURLForApplicationIdentifier:v12 createParentIfNeeded:1 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = +[NSFileManager defaultManager];
        [v16 removeItemAtURL:v14 error:0];

        v17 = +[NSFileManager defaultManager];
        v25 = v15;
        v18 = [v17 copyItemAtURL:v24 toURL:v14 error:&v25];
        v9 = v25;

        v8 += v18;
      }

      else
      {
        v18 = 0;
        v9 = v15;
      }

      objc_autoreleasePoolPop(v13);
      if (!v18)
      {
        break;
      }

      if (v7 == ++v11)
      {
        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (a5 && v8 != v22)
  {
    v19 = v9;
    *a5 = v9;
  }

  return v8 == v22;
}

@end