@interface KTPublicKeyStore
- (BOOL)anyStoreExpired;
- (BOOL)clearDiskApplicationKeyStore:(id)a3 error:(id *)a4;
- (BOOL)configureWithDisk:(id)a3 contextStore:(id)a4 error:(id *)a5;
- (BOOL)hasApplicationPublicKeyStoreOnDisk:(id)a3 error:(id *)a4;
- (BOOL)initiallyFetched;
- (BOOL)saveDiskApplicationKeyStore:(id)a3 error:(id *)a4;
- (BOOL)writePublicKeyStoreToDisk:(id)a3 error:(id *)a4;
- (KTPublicKeyStore)initWithDataStore:(id)a3 settings:(id)a4;
- (NSDictionary)applicationKeyStores;
- (id)applicationPublicKeyStore:(id)a3;
- (id)copyKeyStoreState;
- (id)copyMetadata;
- (id)createApplicationKeyStore:(id)a3 keyStoreData:(id)a4 dataStore:(id)a5 contextStore:(id)a6 error:(id *)a7;
- (id)createApplicationKeyStore:(id)a3 keyStoreResponse:(id)a4 dataStore:(id)a5 contextStore:(id)a6 error:(id *)a7;
- (id)keyStoreFileName;
- (id)readPublicKeyStoreFromDisk:(id *)a3;
- (void)clearApplicationState:(id)a3 error:(id *)a4;
- (void)clearForEnvironmentChange;
- (void)configureWithClient:(id)a3 ignoreCachedKeys:(BOOL)a4 dataStore:(id)a5 contextStore:(id)a6 applicationHandler:(id)a7 completionHandler:(id)a8;
- (void)fetchKeyStore:(id)a3 application:(id)a4 contextStore:(id)a5 completionHandler:(id)a6;
- (void)setPublicKeyStoreDelegate:(id)a3;
- (void)updatePublicKeyStores:(id)a3 diskStore:(id)a4 contextStore:(id)a5 complete:(id)a6;
- (void)updateTLTKeyStoreWithApplicationKeyStore:(id)a3;
@end

@implementation KTPublicKeyStore

- (id)keyStoreFileName
{
  v2 = [(KTPublicKeyStore *)self settings];
  v3 = [v2 getEnvironment];

  if (v3 == 2)
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

  else if (v3 == 1)
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

- (void)setPublicKeyStoreDelegate:(id)a3
{
  v4 = a3;
  v5 = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(v5);
  objc_storeWeak(&self->_delegate, v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(KTPublicKeyStore *)self _applicationKeyStores];
        v12 = [v11 objectForKeyedSubscript:v10];

        [v12 setDelegate:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (NSDictionary)applicationKeyStores
{
  v3 = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(v3);
  v4 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v5 = [NSDictionary dictionaryWithDictionary:v4];

  objc_sync_exit(v3);

  return v5;
}

- (id)applicationPublicKeyStore:(id)a3
{
  v4 = a3;
  v5 = [(KTPublicKeyStore *)self _applicationKeyStores];
  objc_sync_enter(v5);
  v6 = [(KTPublicKeyStore *)self _applicationKeyStores];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)updateTLTKeyStoreWithApplicationKeyStore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v52 = self;
    v5 = [(KTPublicKeyStore *)self tltKeyStore];

    if (v5)
    {
      obj = [(KTPublicKeyStore *)v52 tltKeyStore];
      objc_sync_enter(obj);
      v6 = [(KTPublicKeyStore *)v52 tltKeyStore];
      v7 = [v6 keyBag];
      v8 = [v7 tltLogBeginningMs];
      v9 = [v4 keyBag];
      v10 = [v9 tltLogBeginningMs];

      if (v8 < v10)
      {
        v11 = [v4 keyBag];
        v12 = [v11 copyTltBag];
        v13 = [(KTPublicKeyStore *)v52 tltKeyStore];
        [v13 setKeyBag:v12];

        v14 = [v4 receiptTime];
        v15 = [(KTPublicKeyStore *)v52 tltKeyStore];
        [v15 setReceiptTime:v14];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v16 = [(KTPublicKeyStore *)v52 applicationKeyStores];
        v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v53 + 1) + 8 * v19);
              v21 = [v4 application];
              v22 = [v20 isEqualToString:v21];

              if ((v22 & 1) == 0)
              {
                v23 = [(KTPublicKeyStore *)v52 applicationKeyStores];
                v24 = [v23 objectForKeyedSubscript:v20];
                v25 = [v24 keyBag];
                v26 = [v25 tltKeyStore];
                v27 = [v26 signatureVerifier];
                [v27 setNeedsRefresh:1];
              }

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
          }

          while (v17);
        }

        goto LABEL_20;
      }

      v29 = [(KTPublicKeyStore *)v52 tltKeyStore];
      v30 = [v29 keyBag];
      v31 = [v30 tltLogBeginningMs];
      v32 = [v4 keyBag];
      v33 = [v32 tltLogBeginningMs];

      if (v31 <= v33)
      {
        v37 = [(KTPublicKeyStore *)v52 tltKeyStore];
        v38 = [v37 readyWithRefresh:0];

        if (v38)
        {
LABEL_20:
          objc_sync_exit(obj);

          goto LABEL_21;
        }

        v39 = [(KTPublicKeyStore *)v52 tltKeyStore];
        v40 = [v39 keyBag];
        v41 = [v40 vrfKey];
        [v41 setNeedsRefresh:0];

        v42 = [(KTPublicKeyStore *)v52 tltKeyStore];
        v43 = [v42 keyBag];
        v44 = [v43 appSthKeyStore];
        v45 = [v44 signatureVerifier];
        [v45 setNeedsRefresh:0];

        v46 = [(KTPublicKeyStore *)v52 tltKeyStore];
        v47 = [v46 keyBag];
        v48 = [v47 appSmtKeyStore];
        v49 = [v48 signatureVerifier];
        [v49 setNeedsRefresh:0];

        v34 = [(KTPublicKeyStore *)v52 tltKeyStore];
        v35 = [v34 keyBag];
        v36 = [v35 tltKeyStore];
        v50 = [v36 signatureVerifier];
        [v50 setNeedsRefresh:0];
      }

      else
      {
        v34 = [v4 keyBag];
        v35 = [v34 tltKeyStore];
        v36 = [v35 signatureVerifier];
        [v36 setNeedsRefresh:1];
      }

      goto LABEL_20;
    }

    v28 = [v4 createTLTApplicationPublicKeyStore];
    [(KTPublicKeyStore *)v52 setTltKeyStore:v28];
  }

LABEL_21:
}

- (void)updatePublicKeyStores:(id)a3 diskStore:(id)a4 contextStore:(id)a5 complete:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100205CE4;
  v11[3] = &unk_10031A768;
  v12 = a6;
  v10 = v12;
  [(KTPublicKeyStore *)self configureWithClient:a3 ignoreCachedKeys:1 dataStore:a4 contextStore:a5 applicationHandler:0 completionHandler:v11];
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
  v4 = [(KTPublicKeyStore *)self copyMetadata];
  [v3 setObject:v4 forKeyedSubscript:off_10038AC90];

  v5 = [(KTPublicKeyStore *)self applicationKeyStores];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 copyKeyStoreState];
        [v3 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)readPublicKeyStoreFromDisk:(id *)a3
{
  v4 = [(KTPublicKeyStore *)self keyStoreFileName];
  v10 = 0;
  v5 = [TransparencyFileSupport readDictionaryFromFile:v4 error:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = +[TransparencyAnalytics logger];
    [v7 logResultForEvent:@"ktDiskPublicKeyStoreEvent" hardFailure:1 result:v6 withAttributes:&off_10033D728];

    if (a3)
    {
      v8 = v6;
      *a3 = v6;
    }
  }

  return v5;
}

- (BOOL)writePublicKeyStoreToDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTPublicKeyStore *)self keyStoreFileName];
  v8 = [TransparencyFileSupport writeDictionaryToFile:v6 fileName:v7 error:a4];

  v9 = +[TransparencyAnalytics logger];
  v10 = v9;
  if (v8)
  {
    [v9 logSuccessForEventNamed:@"ktDiskPublicKeyStoreWriteEvent"];
  }

  else
  {
    [v9 logResultForEvent:@"ktDiskPublicKeyStoreEvent" hardFailure:1 result:*a4 withAttributes:&off_10033D750];
  }

  return v8;
}

- (BOOL)clearDiskApplicationKeyStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  [v8 setObject:0 forKeyedSubscript:v6];
  v9 = [(KTPublicKeyStore *)self writePublicKeyStoreToDisk:v8 error:a4];

  return v9;
}

- (BOOL)hasApplicationPublicKeyStoreOnDisk:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveDiskApplicationKeyStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:0];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = [v6 copyKeyStoreState];
  v10 = [v6 application];

  [v8 setObject:v9 forKeyedSubscript:v10];
  v11 = [(KTPublicKeyStore *)self copyMetadata];
  [v8 setObject:v11 forKeyedSubscript:off_10038AC90];

  v12 = [(KTPublicKeyStore *)self writePublicKeyStoreToDisk:v8 error:a4];
  return v12;
}

- (id)createApplicationKeyStore:(id)a3 keyStoreData:(id)a4 dataStore:(id)a5 contextStore:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [KTApplicationPublicKeyStore alloc];
  v17 = [(KTPublicKeyStore *)self settings];
  v18 = [(KTApplicationPublicKeyStore *)v16 initWithApplication:v12 dataStore:v14 diskState:v13 contextStore:v15 settings:v17 error:a7];

  if (v18)
  {
    v19 = [(KTPublicKeyStore *)self _applicationKeyStores];
    objc_sync_enter(v19);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(KTApplicationPublicKeyStore *)v18 setDelegate:WeakRetained];

    v21 = [(KTPublicKeyStore *)self _applicationKeyStores];
    [v21 setValue:v18 forKey:v12];

    objc_sync_exit(v19);
    v22 = v18;
  }

  return v18;
}

- (id)createApplicationKeyStore:(id)a3 keyStoreResponse:(id)a4 dataStore:(id)a5 contextStore:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [KTApplicationPublicKeyStore alloc];
  v17 = [(KTPublicKeyStore *)self settings];
  v18 = [(KTApplicationPublicKeyStore *)v16 initWithApplication:v12 dataStore:v14 response:v13 contextStore:v15 settings:v17 error:a7];

  if (v18)
  {
    v19 = [(KTPublicKeyStore *)self _applicationKeyStores];
    objc_sync_enter(v19);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(KTApplicationPublicKeyStore *)v18 setDelegate:WeakRetained];

    v21 = [(KTPublicKeyStore *)self _applicationKeyStores];
    [v21 setValue:v18 forKey:v12];

    objc_sync_exit(v19);
    v22 = v18;
  }

  return v18;
}

- (void)fetchKeyStore:(id)a3 application:(id)a4 contextStore:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23 = 0;
  v14 = [TransparencyRPCRequestBuilder buildPublicKeysRequest:v11 error:&v23];
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
    v22 = v13;
    v18[4] = self;
    v19 = v11;
    v20 = v10;
    v21 = v12;
    [v20 fetchPublicKeys:v14 completionHandler:v18];
  }

  else
  {
    (*(v13 + 2))(v13, v15);
  }
}

- (void)configureWithClient:(id)a3 ignoreCachedKeys:(BOOL)a4 dataStore:(id)a5 contextStore:(id)a6 applicationHandler:(id)a7 completionHandler:(id)a8
{
  v44 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a4)
  {
    v42 = v14;
    v18 = 0;
LABEL_16:
    v43 = v16;
    v25 = [(KTPublicKeyStore *)self applications];
    v26 = [v25 count];

    if (v26)
    {
      v27 = 0;
      do
      {
        v28 = [(KTPublicKeyStore *)self configureGroup];
        dispatch_group_enter(v28);

        ++v27;
        v29 = [(KTPublicKeyStore *)self applications];
        v30 = [v29 count];
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
          v36 = v15;
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
          v15 = v36;
          [(KTPublicKeyStore *)self fetchKeyStore:v44 application:v39 contextStore:v36 completionHandler:v47];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v33);
    }

    v40 = [(KTPublicKeyStore *)self configureGroup];
    v41 = [(KTPublicKeyStore *)self configureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002071C0;
    block[3] = &unk_10031BCC0;
    v46 = v17;
    dispatch_group_notify(v40, v41, block);

    v14 = v42;
    v16 = v43;
    goto LABEL_27;
  }

  v57 = 0;
  v19 = [(KTPublicKeyStore *)self configureWithDisk:v14 contextStore:v15 error:&v57];
  v18 = v57;
  if (!v19)
  {
    v42 = v14;
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

        if (v16)
        {
          (*(v16 + 2))(v16, *(*(&v53 + 1) + 8 * j), v18);
        }
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v22);
  }

  if (v17)
  {
    (*(v17 + 2))(v17, v18);
  }

LABEL_27:
}

- (BOOL)configureWithDisk:(id)a3 contextStore:(id)a4 error:(id *)a5
{
  v34 = a3;
  v33 = a4;
  v8 = [(KTPublicKeyStore *)self readPublicKeyStoreFromDisk:a5];
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

      v15 = self;
      objc_sync_enter(v15);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = v15->_applications;
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
              v27 = [(KTPublicKeyStore *)v15 createApplicationKeyStore:v24 keyStoreData:v26 dataStore:v34 contextStore:v33 error:a5];

              if (v27)
              {
                [(KTPublicKeyStore *)v15 updateTLTKeyStoreWithApplicationKeyStore:v27];
              }

              else
              {
                [(KTPublicKeyStore *)v15 clearDiskApplicationKeyStore:v24 error:a5];
                v32 = 0;
              }
            }

            else
            {
              if (a5)
              {
                *a5 = [TransparencyError errorWithDomain:v31 code:-39 underlyingError:*a5 description:@"On-disk key store not found for %@", v24];
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

      objc_sync_exit(v15);
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
      v14 = [v34 clearState:&v39];
      v15 = v39;
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
          v42 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to clear DB state: %@", buf, 0xCu);
        }
      }

      v32 = 0;
    }
  }

  else
  {
    [(KTPublicKeyStore *)self setForceRefresh:1];
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-38 underlyingError:*a5 description:@"On-disk key store not found"];
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

- (KTPublicKeyStore)initWithDataStore:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(KTPublicKeyStore *)v8 applications];
  v11 = [v10 count];

  if (v11 == 3)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(KTPublicKeyStore *)v8 set_applicationKeyStores:v12];

    v13 = dispatch_group_create();
    [(KTPublicKeyStore *)v8 setConfigureGroup:v13];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.transparency.keyStoreConfiguration", v14);
    [(KTPublicKeyStore *)v8 setConfigureQueue:v15];

    [(KTPublicKeyStore *)v8 setSettings:v7];
    v21 = 0;
    LOBYTE(v15) = [(KTPublicKeyStore *)v8 configureWithDisk:v6 contextStore:0 error:&v21];
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

- (void)clearApplicationState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTPublicKeyStore *)self applicationKeyStores];
  v8 = [v7 objectForKeyedSubscript:v6];

  if ([v6 isEqualToString:kKTApplicationIdentifierTLT])
  {
    v9 = [(KTPublicKeyStore *)self tltKeyStore];

    v8 = v9;
  }

  if (v8)
  {
    [v8 clearState:a4];
    v10 = [v8 application];
    [(KTPublicKeyStore *)self clearDiskApplicationKeyStore:v10 error:a4];
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
      v13 = v6;
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
  v3 = [(KTPublicKeyStore *)self applications];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [(KTPublicKeyStore *)self applicationKeyStores];
        v11 = [v10 objectForKeyedSubscript:v9];

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
      v6 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  v15 = [(KTPublicKeyStore *)self tltKeyStore];

  if (v15)
  {
    v16 = [(KTPublicKeyStore *)self tltKeyStore];
    v20 = 0;
    [v16 clearState:&v20];
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
  v3 = [(KTPublicKeyStore *)self applicationKeyStores];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(KTPublicKeyStore *)self applications];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v10 = [v9 storeExpired];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = [(KTPublicKeyStore *)self tltKeyStore];
  v11 = [v4 storeExpired];
LABEL_11:

  return v11;
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
        v6 = [v5 BOOLValue];
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

        v6 = 0;
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

      v6 = 0;
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

    v6 = 0;
  }

  return v6;
}

@end