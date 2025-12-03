@interface KTPublicKeyStore
- (BOOL)anyStoreExpired;
- (BOOL)clearDiskApplicationKeyStore:(id)store error:(id *)error;
- (BOOL)configureWithDisk:(id)disk contextStore:(id)store error:(id *)error;
- (BOOL)hasApplicationPublicKeyStoreOnDisk:(id)disk error:(id *)error;
- (BOOL)initiallyFetched;
- (BOOL)saveDiskApplicationKeyStore:(id)store error:(id *)error;
- (BOOL)writePublicKeyStoreToDisk:(id)disk error:(id *)error;
- (KTPublicKeyStore)initWithDataStore:(id)store settings:(id)settings;
- (NSDictionary)applicationKeyStores;
- (id)applicationPublicKeyStore:(id)store;
- (id)copyKeyStoreState;
- (id)copyMetadata;
- (id)createApplicationKeyStore:(id)store keyStoreData:(id)data dataStore:(id)dataStore contextStore:(id)contextStore error:(id *)error;
- (id)createApplicationKeyStore:(id)store keyStoreResponse:(id)response dataStore:(id)dataStore contextStore:(id)contextStore error:(id *)error;
- (id)keyStoreFileName;
- (id)readPublicKeyStoreFromDisk:(id *)disk;
- (void)clearApplicationState:(id)state error:(id *)error;
- (void)clearForEnvironmentChange;
- (void)configureWithClient:(id)client ignoreCachedKeys:(BOOL)keys dataStore:(id)store contextStore:(id)contextStore applicationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)fetchKeyStore:(id)store application:(id)application contextStore:(id)contextStore completionHandler:(id)handler;
- (void)setPublicKeyStoreDelegate:(id)delegate;
- (void)updatePublicKeyStores:(id)stores diskStore:(id)store contextStore:(id)contextStore complete:(id)complete;
- (void)updateTLTKeyStoreWithApplicationKeyStore:(id)store;
@end

@implementation KTPublicKeyStore

- (id)keyStoreFileName
{
  settings = [(KTPublicKeyStore *)self settings];
  getEnvironment = [settings getEnvironment];

  if (getEnvironment == 2)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025E044();
    }

    v6 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "using QA2 key store", v7, 2u);
    }

    return @"KTPublicKeyStore-qa2.plist";
  }

  else if (getEnvironment == 1)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025E058();
    }

    v4 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "using QA1 key store", buf, 2u);
    }

    return @"KTPublicKeyStore-qa1.plist";
  }

  else
  {
    return @"KTPublicKeyStore.plist";
  }
}

- (void)setPublicKeyStoreDelegate:(id)delegate
{
  delegateCopy = delegate;
  _applicationKeyStores = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(_applicationKeyStores);
  objc_storeWeak(&self->_delegate, delegateCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _applicationKeyStores2 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v7 = [_applicationKeyStores2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_applicationKeyStores2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        _applicationKeyStores3 = [(KTPublicKeyStore *)self _applicationKeyStores];
        v12 = [_applicationKeyStores3 objectForKeyedSubscript:v10];

        [v12 setDelegate:delegateCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_applicationKeyStores2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(_applicationKeyStores);
}

- (NSDictionary)applicationKeyStores
{
  _applicationKeyStores = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(_applicationKeyStores);
  _applicationKeyStores2 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v5 = [NSDictionary dictionaryWithDictionary:_applicationKeyStores2];

  objc_sync_exit(_applicationKeyStores);

  return v5;
}

- (id)applicationPublicKeyStore:(id)store
{
  storeCopy = store;
  _applicationKeyStores = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(_applicationKeyStores);
  _applicationKeyStores2 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v7 = [_applicationKeyStores2 objectForKeyedSubscript:storeCopy];

  objc_sync_exit(_applicationKeyStores);

  return v7;
}

- (void)updateTLTKeyStoreWithApplicationKeyStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    selfCopy = self;
    tltKeyStore = [(KTPublicKeyStore *)self tltKeyStore];

    if (tltKeyStore)
    {
      obj = [(KTPublicKeyStore *)selfCopy tltKeyStore];
      objc_sync_enter(obj);
      tltKeyStore2 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
      keyBag = [tltKeyStore2 keyBag];
      tltLogBeginningMs = [keyBag tltLogBeginningMs];
      keyBag2 = [storeCopy keyBag];
      tltLogBeginningMs2 = [keyBag2 tltLogBeginningMs];

      if (tltLogBeginningMs < tltLogBeginningMs2)
      {
        keyBag3 = [storeCopy keyBag];
        copyTltBag = [keyBag3 copyTltBag];
        tltKeyStore3 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        [tltKeyStore3 setKeyBag:copyTltBag];

        receiptTime = [storeCopy receiptTime];
        tltKeyStore4 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        [tltKeyStore4 setReceiptTime:receiptTime];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        applicationKeyStores = [(KTPublicKeyStore *)selfCopy applicationKeyStores];
        v17 = [applicationKeyStores countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v17)
        {
          v18 = *v54;
          do
          {
            v19 = 0;
            do
            {
              if (*v54 != v18)
              {
                objc_enumerationMutation(applicationKeyStores);
              }

              v20 = *(*(&v53 + 1) + 8 * v19);
              application = [storeCopy application];
              v22 = [v20 isEqualToString:application];

              if ((v22 & 1) == 0)
              {
                applicationKeyStores2 = [(KTPublicKeyStore *)selfCopy applicationKeyStores];
                v24 = [applicationKeyStores2 objectForKeyedSubscript:v20];
                keyBag4 = [v24 keyBag];
                tltKeyStore5 = [keyBag4 tltKeyStore];
                signatureVerifier = [tltKeyStore5 signatureVerifier];
                [signatureVerifier setNeedsRefresh:1];
              }

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [applicationKeyStores countByEnumeratingWithState:&v53 objects:v57 count:16];
          }

          while (v17);
        }

        goto LABEL_20;
      }

      tltKeyStore6 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
      keyBag5 = [tltKeyStore6 keyBag];
      tltLogBeginningMs3 = [keyBag5 tltLogBeginningMs];
      keyBag6 = [storeCopy keyBag];
      tltLogBeginningMs4 = [keyBag6 tltLogBeginningMs];

      if (tltLogBeginningMs3 <= tltLogBeginningMs4)
      {
        tltKeyStore7 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        v38 = [tltKeyStore7 readyWithRefresh:0];

        if (v38)
        {
LABEL_20:
          objc_sync_exit(obj);

          goto LABEL_21;
        }

        tltKeyStore8 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        keyBag7 = [tltKeyStore8 keyBag];
        vrfKey = [keyBag7 vrfKey];
        [vrfKey setNeedsRefresh:0];

        tltKeyStore9 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        keyBag8 = [tltKeyStore9 keyBag];
        appSthKeyStore = [keyBag8 appSthKeyStore];
        signatureVerifier2 = [appSthKeyStore signatureVerifier];
        [signatureVerifier2 setNeedsRefresh:0];

        tltKeyStore10 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        keyBag9 = [tltKeyStore10 keyBag];
        appSmtKeyStore = [keyBag9 appSmtKeyStore];
        signatureVerifier3 = [appSmtKeyStore signatureVerifier];
        [signatureVerifier3 setNeedsRefresh:0];

        tltKeyStore11 = [(KTPublicKeyStore *)selfCopy tltKeyStore];
        keyBag10 = [tltKeyStore11 keyBag];
        tltKeyStore12 = [keyBag10 tltKeyStore];
        signatureVerifier4 = [tltKeyStore12 signatureVerifier];
        [signatureVerifier4 setNeedsRefresh:0];
      }

      else
      {
        tltKeyStore11 = [storeCopy keyBag];
        keyBag10 = [tltKeyStore11 tltKeyStore];
        tltKeyStore12 = [keyBag10 signatureVerifier];
        [tltKeyStore12 setNeedsRefresh:1];
      }

      goto LABEL_20;
    }

    createTLTApplicationPublicKeyStore = [storeCopy createTLTApplicationPublicKeyStore];
    [(KTPublicKeyStore *)selfCopy setTltKeyStore:createTLTApplicationPublicKeyStore];
  }

LABEL_21:
}

- (void)updatePublicKeyStores:(id)stores diskStore:(id)store contextStore:(id)contextStore complete:(id)complete
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100205CE4;
  v11[3] = &unk_10031A768;
  completeCopy = complete;
  v10 = completeCopy;
  [(KTPublicKeyStore *)self configureWithClient:stores ignoreCachedKeys:1 dataStore:store contextStore:contextStore applicationHandler:0 completionHandler:v11];
}

- (id)copyMetadata
{
  v2 = [NSNumber numberWithBool:[(KTPublicKeyStore *)self readyWithRefresh:0]];
  v7[0] = v2;
  v6[0] = off_10038AC98;
  v6[1] = off_10038ACA0;
  v3 = [NSNumber numberWithInt:kTransparencyProtocolVersion];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)copyKeyStoreState
{
  v3 = objc_alloc_init(NSMutableDictionary);
  copyMetadata = [(KTPublicKeyStore *)self copyMetadata];
  [v3 setObject:copyMetadata forKeyedSubscript:off_10038AC90];

  applicationKeyStores = [(KTPublicKeyStore *)self applicationKeyStores];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [applicationKeyStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(applicationKeyStores);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [applicationKeyStores objectForKeyedSubscript:v10];
        copyKeyStoreState = [v11 copyKeyStoreState];
        [v3 setObject:copyKeyStoreState forKeyedSubscript:v10];
      }

      v7 = [applicationKeyStores countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)readPublicKeyStoreFromDisk:(id *)disk
{
  keyStoreFileName = [(KTPublicKeyStore *)self keyStoreFileName];
  v10 = 0;
  v5 = [TransparencyFileSupport readDictionaryFromFile:keyStoreFileName error:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = +[TransparencyAnalytics logger];
    [v7 logResultForEvent:@"ktDiskPublicKeyStoreEvent" hardFailure:1 result:v6 withAttributes:&off_10033D728];

    if (disk)
    {
      v8 = v6;
      *disk = v6;
    }
  }

  return v5;
}

- (BOOL)writePublicKeyStoreToDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  keyStoreFileName = [(KTPublicKeyStore *)self keyStoreFileName];
  v8 = [TransparencyFileSupport writeDictionaryToFile:diskCopy fileName:keyStoreFileName error:error];

  v9 = +[TransparencyAnalytics logger];
  v10 = v9;
  if (v8)
  {
    [v9 logSuccessForEventNamed:@"ktDiskPublicKeyStoreWriteEvent"];
  }

  else
  {
    [v9 logResultForEvent:@"ktDiskPublicKeyStoreEvent" hardFailure:1 result:*error withAttributes:&off_10033D750];
  }

  return v8;
}

- (BOOL)clearDiskApplicationKeyStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  [v8 setObject:0 forKeyedSubscript:storeCopy];
  v9 = [(KTPublicKeyStore *)self writePublicKeyStoreToDisk:v8 error:error];

  return v9;
}

- (BOOL)hasApplicationPublicKeyStoreOnDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  v6 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:diskCopy];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveDiskApplicationKeyStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  copyKeyStoreState = [storeCopy copyKeyStoreState];
  application = [storeCopy application];

  [v8 setObject:copyKeyStoreState forKeyedSubscript:application];
  copyMetadata = [(KTPublicKeyStore *)self copyMetadata];
  [v8 setObject:copyMetadata forKeyedSubscript:off_10038AC90];

  v12 = [(KTPublicKeyStore *)self writePublicKeyStoreToDisk:v8 error:error];
  return v12;
}

- (id)createApplicationKeyStore:(id)store keyStoreData:(id)data dataStore:(id)dataStore contextStore:(id)contextStore error:(id *)error
{
  storeCopy = store;
  dataCopy = data;
  dataStoreCopy = dataStore;
  contextStoreCopy = contextStore;
  v16 = [KTApplicationPublicKeyStore alloc];
  settings = [(KTPublicKeyStore *)self settings];
  v18 = [(KTApplicationPublicKeyStore *)v16 initWithApplication:storeCopy dataStore:dataStoreCopy diskState:dataCopy contextStore:contextStoreCopy settings:settings error:error];

  if (v18)
  {
    _applicationKeyStores = [(KTPublicKeyStore *)self _applicationKeyStores];
    objc_sync_enter(_applicationKeyStores);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(KTApplicationPublicKeyStore *)v18 setDelegate:WeakRetained];

    _applicationKeyStores2 = [(KTPublicKeyStore *)self _applicationKeyStores];
    [_applicationKeyStores2 setValue:v18 forKey:storeCopy];

    objc_sync_exit(_applicationKeyStores);
    v22 = v18;
  }

  return v18;
}

- (id)createApplicationKeyStore:(id)store keyStoreResponse:(id)response dataStore:(id)dataStore contextStore:(id)contextStore error:(id *)error
{
  storeCopy = store;
  responseCopy = response;
  dataStoreCopy = dataStore;
  contextStoreCopy = contextStore;
  v16 = [KTApplicationPublicKeyStore alloc];
  settings = [(KTPublicKeyStore *)self settings];
  v18 = [(KTApplicationPublicKeyStore *)v16 initWithApplication:storeCopy dataStore:dataStoreCopy response:responseCopy contextStore:contextStoreCopy settings:settings error:error];

  if (v18)
  {
    _applicationKeyStores = [(KTPublicKeyStore *)self _applicationKeyStores];
    objc_sync_enter(_applicationKeyStores);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(KTApplicationPublicKeyStore *)v18 setDelegate:WeakRetained];

    _applicationKeyStores2 = [(KTPublicKeyStore *)self _applicationKeyStores];
    [_applicationKeyStores2 setValue:v18 forKey:storeCopy];

    objc_sync_exit(_applicationKeyStores);
    v22 = v18;
  }

  return v18;
}

- (void)fetchKeyStore:(id)store application:(id)application contextStore:(id)contextStore completionHandler:(id)handler
{
  storeCopy = store;
  applicationCopy = application;
  contextStoreCopy = contextStore;
  handlerCopy = handler;
  v23 = 0;
  v14 = [TransparencyRPCRequestBuilder buildPublicKeysRequest:applicationCopy error:&v23];
  v15 = v23;
  v16 = v15;
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100206794;
    v18[3] = &unk_100329FA0;
    v22 = handlerCopy;
    v18[4] = self;
    v19 = applicationCopy;
    v20 = storeCopy;
    v21 = contextStoreCopy;
    [v20 fetchPublicKeys:v14 completionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)configureWithClient:(id)client ignoreCachedKeys:(BOOL)keys dataStore:(id)store contextStore:(id)contextStore applicationHandler:(id)handler completionHandler:(id)completionHandler
{
  clientCopy = client;
  storeCopy = store;
  contextStoreCopy = contextStore;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (keys)
  {
    v42 = storeCopy;
    v18 = 0;
LABEL_16:
    v43 = handlerCopy;
    applications = [(KTPublicKeyStore *)self applications];
    v26 = [applications count];

    if (v26)
    {
      v27 = 0;
      do
      {
        configureGroup = [(KTPublicKeyStore *)self configureGroup];
        dispatch_group_enter(configureGroup);

        ++v27;
        applications2 = [(KTPublicKeyStore *)self applications];
        v30 = [applications2 count];
      }

      while (v27 < v30);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = self->_applications;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v50;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          v36 = contextStoreCopy;
          if (*v50 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v49 + 1) + 8 * i);
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_100207154;
          v47[3] = &unk_1003295D0;
          v38 = v43;
          v47[5] = self;
          v48 = v38;
          v47[4] = v37;
          v39 = v37;
          contextStoreCopy = v36;
          [(KTPublicKeyStore *)self fetchKeyStore:clientCopy application:v39 contextStore:v36 completionHandler:v47];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v33);
    }

    configureGroup2 = [(KTPublicKeyStore *)self configureGroup];
    configureQueue = [(KTPublicKeyStore *)self configureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002071C0;
    block[3] = &unk_10031BCC0;
    v46 = completionHandlerCopy;
    dispatch_group_notify(configureGroup2, configureQueue, block);

    storeCopy = v42;
    handlerCopy = v43;
    goto LABEL_27;
  }

  v57 = 0;
  v19 = [(KTPublicKeyStore *)self configureWithDisk:storeCopy contextStore:contextStoreCopy error:&v57];
  v18 = v57;
  if (!v19)
  {
    v42 = storeCopy;
    goto LABEL_16;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = self->_applications;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, *(*(&v53 + 1) + 8 * j), v18);
        }
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v22);
  }

  if (completionHandlerCopy)
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, v18);
  }

LABEL_27:
}

- (BOOL)configureWithDisk:(id)disk contextStore:(id)store error:(id *)error
{
  diskCopy = disk;
  storeCopy = store;
  v8 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:error];
  v9 = v8;
  if (v8)
  {
    v30 = [v8 objectForKeyedSubscript:off_10038AC90];
    if (v30 && ([v30 objectForKeyedSubscript:off_10038ACA0], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "unsignedIntegerValue"), v12 = kTransparencyProtocolVersion, v10, v11 >= v12))
    {
      v18 = [v30 objectForKey:off_10038AC98];

      if (v18)
      {
        v19 = [v30 objectForKey:off_10038AC98];
        -[KTPublicKeyStore setForceRefresh:](self, "setForceRefresh:", [v19 BOOLValue] ^ 1);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = selfCopy->_applications;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v21)
      {
        v22 = *v36;
        v31 = kTransparencyErrorFile;
        v32 = 1;
        do
        {
          v23 = 0;
          do
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v35 + 1) + 8 * v23);
            v25 = [v9 objectForKeyedSubscript:v24];

            if (v25)
            {
              v26 = [v9 objectForKeyedSubscript:v24];
              v27 = [(KTPublicKeyStore *)selfCopy createApplicationKeyStore:v24 keyStoreData:v26 dataStore:diskCopy contextStore:storeCopy error:error];

              if (v27)
              {
                [(KTPublicKeyStore *)selfCopy updateTLTKeyStoreWithApplicationKeyStore:v27];
              }

              else
              {
                [(KTPublicKeyStore *)selfCopy clearDiskApplicationKeyStore:v24 error:error];
                v32 = 0;
              }
            }

            else
            {
              if (error)
              {
                *error = [TransparencyError errorWithDomain:v31 code:-39 underlyingError:*error description:@"On-disk key store not found for %@", v24];
              }

              if (qword_10039CC18 != -1)
              {
                sub_10025E120();
              }

              v28 = qword_10039CC20;
              if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v24;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "On-disk key store not found for %@", buf, 0xCu);
              }
            }

            v23 = v23 + 1;
          }

          while (v21 != v23);
          v21 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v21);
      }

      else
      {
        v32 = 1;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025E148();
      }

      v13 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating to newer protocol version used by this client", buf, 2u);
      }

      [(KTPublicKeyStore *)self setForceRefresh:1];
      v39 = 0;
      v14 = [diskCopy clearState:&v39];
      selfCopy = v39;
      if ((v14 & 1) == 0)
      {
        if (qword_10039CC18 != -1)
        {
          sub_10025E15C();
        }

        v16 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = selfCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to clear DB state: %@", buf, 0xCu);
        }
      }

      v32 = 0;
    }
  }

  else
  {
    [(KTPublicKeyStore *)self setForceRefresh:1];
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-38 underlyingError:*error description:@"On-disk key store not found"];
    }

    if (qword_10039CC18 != -1)
    {
      sub_10025E184();
    }

    v17 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "On-disk key store not found", buf, 2u);
    }

    v32 = 0;
  }

  return v32 & 1;
}

- (KTPublicKeyStore)initWithDataStore:(id)store settings:(id)settings
{
  storeCopy = store;
  settingsCopy = settings;
  v22.receiver = self;
  v22.super_class = KTPublicKeyStore;
  v8 = [(KTPublicKeyStore *)&v22 init];
  if (!v8)
  {
LABEL_9:
    v18 = v8;
    goto LABEL_15;
  }

  v25[0] = kKTApplicationIdentifierIDS;
  v25[1] = kKTApplicationIdentifierIDSMultiplex;
  v25[2] = kKTApplicationIdentifierIDSFaceTime;
  v9 = [NSArray arrayWithObjects:v25 count:3];
  [(KTPublicKeyStore *)v8 setApplications:v9];

  applications = [(KTPublicKeyStore *)v8 applications];
  v11 = [applications count];

  if (v11 == 3)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(KTPublicKeyStore *)v8 set_applicationKeyStores:v12];

    v13 = dispatch_group_create();
    [(KTPublicKeyStore *)v8 setConfigureGroup:v13];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.transparency.keyStoreConfiguration", v14);
    [(KTPublicKeyStore *)v8 setConfigureQueue:v15];

    [(KTPublicKeyStore *)v8 setSettings:settingsCopy];
    v21 = 0;
    LOBYTE(v15) = [(KTPublicKeyStore *)v8 configureWithDisk:storeCopy contextStore:0 error:&v21];
    v16 = v21;
    if ((v15 & 1) == 0)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025E1C0();
      }

      v17 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "failed to read disk public key store:%@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  if (qword_10039CC18 != -1)
  {
    sub_10025E198();
  }

  v19 = qword_10039CC20;
  if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "hey silly, update the KT_APPLICATION_COUNT, too!", buf, 2u);
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (void)clearApplicationState:(id)state error:(id *)error
{
  stateCopy = state;
  applicationKeyStores = [(KTPublicKeyStore *)self applicationKeyStores];
  v8 = [applicationKeyStores objectForKeyedSubscript:stateCopy];

  if ([stateCopy isEqualToString:kKTApplicationIdentifierTLT])
  {
    tltKeyStore = [(KTPublicKeyStore *)self tltKeyStore];

    v8 = tltKeyStore;
  }

  if (v8)
  {
    [v8 clearState:error];
    application = [v8 application];
    [(KTPublicKeyStore *)self clearDiskApplicationKeyStore:application error:error];
  }

  else
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025E1E8();
    }

    v11 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = stateCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unknown key store for application %@", &v12, 0xCu);
    }
  }
}

- (void)clearForEnvironmentChange
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  applications = [(KTPublicKeyStore *)self applications];
  v4 = [applications countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        applicationKeyStores = [(KTPublicKeyStore *)self applicationKeyStores];
        v11 = [applicationKeyStores objectForKeyedSubscript:v9];

        if (v11)
        {
          v21 = 0;
          [v11 clearState:&v21];
          v12 = v21;
          if (v12)
          {
            if (qword_10039CC18 != -1)
            {
              sub_10025E1FC();
            }

            v13 = qword_10039CC20;
            if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v27 = v9;
              v28 = 2112;
              v29 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error clearing application keystore state[%@]: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (qword_10039CC18 != -1)
          {
            sub_10025E224();
          }

          v14 = qword_10039CC20;
          if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Tried to clear key store for unknown application %@", buf, 0xCu);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [applications countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  tltKeyStore = [(KTPublicKeyStore *)self tltKeyStore];

  if (tltKeyStore)
  {
    tltKeyStore2 = [(KTPublicKeyStore *)self tltKeyStore];
    v20 = 0;
    [tltKeyStore2 clearState:&v20];
    v17 = v20;

    if (v17)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025E24C();
      }

      v18 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error clearing application keystore state[TLT]: %@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)anyStoreExpired
{
  applicationKeyStores = [(KTPublicKeyStore *)self applicationKeyStores];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  applications = [(KTPublicKeyStore *)self applications];
  v5 = [applications countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = [applicationKeyStores objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        storeExpired = [v9 storeExpired];

        if (storeExpired)
        {
          storeExpired2 = 1;
          goto LABEL_11;
        }
      }

      v6 = [applications countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  applications = [(KTPublicKeyStore *)self tltKeyStore];
  storeExpired2 = [applications storeExpired];
LABEL_11:

  return storeExpired2;
}

- (BOOL)initiallyFetched
{
  v11 = 0;
  v2 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:&v11];
  v3 = v11;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:off_10038AC90];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKeyedSubscript:off_10038AC98];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v5 BOOLValue];
      }

      else
      {
        if (qword_10039CC18 != -1)
        {
          sub_10025E29C();
        }

        v9 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Disk data store ready flag wrong class", buf, 2u);
        }

        bOOLValue = 0;
      }
    }

    else
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025E274();
      }

      v8 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Disk data store missing metadata", buf, 2u);
      }

      bOOLValue = 0;
    }
  }

  else
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025E2C4();
    }

    v7 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Initial readPublicKeyStoreFromDisk failed with: %@", buf, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

@end