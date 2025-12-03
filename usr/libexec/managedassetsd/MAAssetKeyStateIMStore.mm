@interface MAAssetKeyStateIMStore
- (BOOL)addRecord:(id)record assetId:(id)id createdDate:(unint64_t)date expiresDate:(unint64_t)expiresDate assetKeyPath:(id)path encAssetPath:(id)assetPath encAssetHash:(id)hash error:(id *)self0;
- (BOOL)checkAndDeleteExpiredRecord:(id)record currentSeconds:(unint64_t)seconds error:(id *)error;
- (BOOL)clearAllAssetKeyStatesWithError:(id *)error;
- (BOOL)deleteEntries:(id)entries assetId:(id)id error:(id *)error;
- (BOOL)ensureStoreExist:(id *)exist;
- (BOOL)getActiveAssetId:(id)id assetIdOut:(id *)out assetKeyPathOut:(id *)pathOut encAssetPathOut:(id *)assetPathOut encAssetHashOut:(id *)hashOut stateOut:(unint64_t *)stateOut mmcsMetadataOut:(id *)metadataOut error:(id *)self0;
- (BOOL)queryAssetKeyState:(id)state assetId:(id)id results:(id *)results error:(id *)error;
- (BOOL)updateRecordUploaded:(id)uploaded assetId:(id)id mmcsMetadata:(id)metadata error:(id *)error;
- (MAAssetKeyStateIMStore)initWithStorage:(id)storage remoteAssetManager:(id)manager;
- (MAKVStore)store;
- (id)createStore:(id *)store;
- (void)checkRecordsForAsset:(id)asset currentSeconds:(unint64_t)seconds records:(id)records;
- (void)checkupWithDeviceUnlocked:(BOOL)unlocked;
@end

@implementation MAAssetKeyStateIMStore

- (MAAssetKeyStateIMStore)initWithStorage:(id)storage remoteAssetManager:(id)manager
{
  storageCopy = storage;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = MAAssetKeyStateIMStore;
  v9 = [(MAAssetKeyStateIMStore *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    store = v10->_store;
    v10->_store = 0;

    name = v10->_name;
    v10->_name = @"assetKeyStateIMStore";

    v13 = +[NSFileManager defaultManager];
    fileMgr = v10->_fileMgr;
    v10->_fileMgr = v13;

    objc_storeStrong(&v10->_remoteAssetManager, manager);
    v15 = v10;
  }

  return v10;
}

- (id)createStore:(id *)store
{
  selfCopy = self;
  dbInClassC = [(MAStorage *)self->_storage dbInClassC];
  v6 = dbInClassC;
  name = selfCopy->_name;
  if (dbInClassC)
  {
    v33 = selfCopy;
    storeCopy = store;
    v35 = dbInClassC;
    v51[0] = @"assetHandle";
    v51[1] = &off_10011DB08;
    v51[2] = &off_10011DB20;
    v32 = name;
    v31 = [NSArray arrayWithObjects:v51 count:3];
    v52[0] = v31;
    v50[0] = @"assetId";
    v50[1] = &off_10011DB08;
    v50[2] = &off_10011DB20;
    v30 = [NSArray arrayWithObjects:v50 count:3];
    v52[1] = v30;
    v49[0] = @"version";
    v49[1] = &off_10011DB20;
    v49[2] = &off_10011DAF0;
    v29 = [NSArray arrayWithObjects:v49 count:3];
    v52[2] = v29;
    v48[0] = @"state";
    v48[1] = &off_10011DB20;
    v48[2] = &off_10011DAF0;
    v28 = [NSArray arrayWithObjects:v48 count:3];
    v52[3] = v28;
    v47[0] = @"createdDate";
    v47[1] = &off_10011DB20;
    v47[2] = &off_10011DAF0;
    v27 = [NSArray arrayWithObjects:v47 count:3];
    v52[4] = v27;
    v46[0] = @"expiresDate";
    v46[1] = &off_10011DB20;
    v46[2] = &off_10011DAF0;
    v26 = [NSArray arrayWithObjects:v46 count:3];
    v52[5] = v26;
    v45[0] = @"uploadedDate";
    v45[1] = &off_10011DB20;
    v45[2] = &off_10011DAF0;
    v8 = [NSArray arrayWithObjects:v45 count:3];
    v52[6] = v8;
    v44[0] = @"assetKeyPath";
    v44[1] = &off_10011DB08;
    v44[2] = &off_10011DAF0;
    v9 = [NSArray arrayWithObjects:v44 count:3];
    v52[7] = v9;
    v43[0] = @"encAssetPath";
    v43[1] = &off_10011DB08;
    v43[2] = &off_10011DAF0;
    v10 = [NSArray arrayWithObjects:v43 count:3];
    v52[8] = v10;
    v42[0] = @"encAssetHash";
    v42[1] = &off_10011DB38;
    v42[2] = &off_10011DAF0;
    v11 = [NSArray arrayWithObjects:v42 count:3];
    v52[9] = v11;
    v41[0] = @"ownerID";
    v41[1] = &off_10011DB08;
    v41[2] = &off_10011DAF0;
    v12 = [NSArray arrayWithObjects:v41 count:3];
    v52[10] = v12;
    v40[0] = @"signature";
    v40[1] = &off_10011DB38;
    v40[2] = &off_10011DAF0;
    v13 = [NSArray arrayWithObjects:v40 count:3];
    v52[11] = v13;
    v39[0] = @"requestURL";
    v39[1] = &off_10011DB08;
    v39[2] = &off_10011DAF0;
    v14 = [NSArray arrayWithObjects:v39 count:3];
    v52[12] = v14;
    v38[0] = @"fileSize";
    v38[1] = &off_10011DB20;
    v38[2] = &off_10011DAF0;
    v15 = [NSArray arrayWithObjects:v38 count:3];
    v52[13] = v15;
    v16 = [NSArray arrayWithObjects:v52 count:14];

    v6 = v35;
    v37 = 0;
    LODWORD(v13) = [v35 upgradeTable:v32 fields:v16 attributes:0 missingNewColumn:@"encAssetHash" hasDeletedColumn:0 migrateData:0 error:&v37];
    v17 = v37;

    if (!v13)
    {
      selfCopy = v33;
      store = storeCopy;
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      v25 = selfCopy->_name;
      v17 = createManagedAssetError();
      goto LABEL_7;
    }

    v18 = [MAKVStore alloc];
    selfCopy = v33;
    v19 = v33->_name;
    v36 = v17;
    v20 = [(MAKVStore *)v18 initWithName:v19 identifier:v19 profile:0 db:v35 attributes:0 error:&v36];
    v21 = v36;

    v17 = v21;
    store = storeCopy;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24 = selfCopy->_name;
    v17 = createManagedAssetError();
  }

  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000DEF4();
  }

  v22 = v17;
  v20 = 0;
  *store = v17;
  v21 = v17;
LABEL_10:

  return v20;
}

- (BOOL)ensureStoreExist:(id *)exist
{
  if (self->_store)
  {
    return 1;
  }

  v5 = [(MAAssetKeyStateIMStore *)self createStore:exist];
  store = self->_store;
  self->_store = v5;

  return self->_store != 0;
}

- (MAKVStore)store
{
  store = self->_store;
  if (!store)
  {
    v8 = 0;
    v4 = [(MAAssetKeyStateIMStore *)self createStore:&v8];
    v5 = v8;
    v6 = self->_store;
    self->_store = v4;

    if (v5 && os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DF5C(self);
    }

    store = self->_store;
  }

  return store;
}

- (BOOL)addRecord:(id)record assetId:(id)id createdDate:(unint64_t)date expiresDate:(unint64_t)expiresDate assetKeyPath:(id)path encAssetPath:(id)assetPath encAssetHash:(id)hash error:(id *)self0
{
  recordCopy = record;
  idCopy = id;
  pathCopy = path;
  assetPathCopy = assetPath;
  hashCopy = hash;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:error])
  {
    v21 = recordCopy;
    store = self->_store;
    v38[0] = @"assetHandle";
    v38[1] = @"assetId";
    v31 = v21;
    v39[0] = v21;
    v39[1] = idCopy;
    v38[2] = @"version";
    v38[3] = @"state";
    v39[2] = &off_10011DAD8;
    v39[3] = &off_10011DAF0;
    v38[4] = @"createdDate";
    v23 = [NSNumber numberWithUnsignedInteger:date];
    v39[4] = v23;
    v38[5] = @"expiresDate";
    v24 = [NSNumber numberWithUnsignedInteger:expiresDate];
    v39[5] = v24;
    v39[6] = pathCopy;
    v38[6] = @"assetKeyPath";
    v38[7] = @"encAssetPath";
    v38[8] = @"encAssetHash";
    v39[7] = assetPathCopy;
    v39[8] = hashCopy;
    v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:9];
    LOBYTE(store) = [(MAKVStore *)store putDictionay:v25 attributes:0 error:error];

    v26 = off_100127CD0;
    if (store)
    {
      v27 = 1;
      recordCopy = v31;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = idCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "added entry to MAAssetKeyStateStore, assetId=%@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        v30 = *error;
        *buf = 138412802;
        v33 = name;
        v34 = 2112;
        v35 = idCopy;
        v36 = 2112;
        v37 = v30;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to add record to %@, assetId=%@, error: %@", buf, 0x20u);
      }

      v27 = 0;
      recordCopy = v31;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, error);
    }

    v27 = 0;
  }

  return v27;
}

- (BOOL)updateRecordUploaded:(id)uploaded assetId:(id)id mmcsMetadata:(id)metadata error:(id *)error
{
  uploadedCopy = uploaded;
  idCopy = id;
  metadataCopy = metadata;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:error])
  {
    v28 = +[NSDate now];
    [v28 timeIntervalSinceReferenceDate];
    v14 = v13;
    v34[0] = @"assetHandle";
    v34[1] = @"assetId";
    v29 = uploadedCopy;
    v35[0] = uploadedCopy;
    v35[1] = idCopy;
    v26 = idCopy;
    v15 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    store = self->_store;
    v33[0] = &off_10011DAD8;
    v32[0] = @"state";
    v32[1] = @"uploadedDate";
    v17 = [NSNumber numberWithUnsignedInteger:v14];
    v33[1] = v17;
    v32[2] = @"ownerID";
    ownerID = [metadataCopy ownerID];
    v33[2] = ownerID;
    v32[3] = @"signature";
    signature = [metadataCopy signature];
    v33[3] = signature;
    v32[4] = @"requestURL";
    requestURL = [metadataCopy requestURL];
    v33[4] = requestURL;
    v32[5] = @"fileSize";
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy fileSize]);
    v33[5] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:6];
    v27 = v15;
    v23 = [(MAKVStore *)store updateFor:v15 value:v22 attributes:0 error:error];

    v24 = off_100127CD0;
    if (v23)
    {
      idCopy = v26;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "updated cloud upload record for assetId: %@", buf, 0xCu);
      }
    }

    else
    {
      idCopy = v26;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000E034(v26, error);
      }
    }

    uploadedCopy = v29;
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, error);
    }

    v23 = 0;
  }

  return v23;
}

- (BOOL)checkAndDeleteExpiredRecord:(id)record currentSeconds:(unint64_t)seconds error:(id *)error
{
  recordCopy = record;
  v8 = [recordCopy objectForKeyedSubscript:@"assetId"];
  v9 = [recordCopy objectForKeyedSubscript:@"uploadedDate"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  v11 = [recordCopy objectForKeyedSubscript:@"version"];
  unsignedLongLongValue2 = [v11 unsignedLongLongValue];

  if (unsignedLongLongValue2 == 1)
  {
    if (!unsignedLongLongValue || unsignedLongLongValue + 2505600 > seconds)
    {
      v19 = [recordCopy objectForKeyedSubscript:@"expiresDate"];
      unsignedLongLongValue3 = [v19 unsignedLongLongValue];

      if (unsignedLongLongValue3 > seconds || ([recordCopy objectForKeyedSubscript:@"state"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "unsignedLongLongValue"), v21, v22 == 1))
      {
        v14 = 0;
        goto LABEL_13;
      }

      v13 = off_100127CD0;
      v14 = 1;
      if (!os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v40 = v8;
      v15 = "assetId %@ expired and not uploaded to server, removing it locally";
      goto LABEL_6;
    }

    v13 = off_100127CD0;
    v14 = 1;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v8;
      v15 = "assetId %@ expired on server, removing it locally";
LABEL_6:
      v16 = v13;
      v17 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
    }
  }

  else
  {
    v18 = off_100127CD0;
    v14 = 1;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v40 = v8;
      v41 = 2048;
      v42 = unsignedLongLongValue2;
      v43 = 1024;
      v44 = 1;
      v15 = "record with assetId %@ version %lu mismatch expected %d";
      v16 = v18;
      v17 = 28;
      goto LABEL_9;
    }
  }

LABEL_13:
  v23 = [recordCopy objectForKeyedSubscript:@"assetKeyPath"];
  v24 = [recordCopy objectForKeyedSubscript:@"encAssetPath"];
  if (!v23 || ![(NSFileManager *)self->_fileMgr fileExistsAtPath:v23])
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E0AC();
    }

    v14 = 1;
  }

  if (v24 && [(NSFileManager *)self->_fileMgr fileExistsAtPath:v24])
  {
    if (!v14)
    {
      v25 = 0;
      goto LABEL_29;
    }
  }

  else if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000E120();
  }

  store = self->_store;
  v37 = @"assetId";
  v38 = v8;
  v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v36 = 0;
  [(MAKVStore *)store deleteFor:v27 attributes:0 error:&v36];
  v28 = v36;

  if (v23)
  {
    fileMgr = self->_fileMgr;
    v35 = v28;
    [(NSFileManager *)fileMgr removeItemAtPath:v23 error:&v35];
    v30 = v35;

    v28 = v30;
  }

  if (v24)
  {
    v31 = self->_fileMgr;
    v34 = v28;
    [(NSFileManager *)v31 removeItemAtPath:v24 error:&v34];
    v32 = v34;

    v28 = v32;
  }

  v25 = 1;
LABEL_29:

  return v25;
}

- (BOOL)getActiveAssetId:(id)id assetIdOut:(id *)out assetKeyPathOut:(id *)pathOut encAssetPathOut:(id *)assetPathOut encAssetHashOut:(id *)hashOut stateOut:(unint64_t *)stateOut mmcsMetadataOut:(id *)metadataOut error:(id *)self0
{
  idCopy = id;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:error])
  {
    v97[0] = @"assetHandle";
    v97[1] = @"version";
    v98[0] = idCopy;
    v98[1] = &off_10011DAD8;
    v17 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
    selfCopy = self;
    store = self->_store;
    v91 = 0;
    v19 = [(MAKVStore *)store queryFor:v17 attributes:0 records:&v91 error:error];
    v20 = v91;
    if (v19)
    {
      assetPathOutCopy = assetPathOut;
      v81 = v17;
      outCopy = out;
      pathOutCopy = pathOut;
      v22 = +[NSDate now];
      [v22 timeIntervalSinceReferenceDate];
      v24 = v23;
      [MAKVStore queryOutputToArrayOfDictionaries:v20 error:error];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v25 = v90 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v26)
      {
        v27 = v26;
        stateOutCopy = stateOut;
        hashOutCopy = hashOut;
        v74 = outCopy;
        v75 = v22;
        v76 = v20;
        v77 = v19;
        v78 = idCopy;
        v82 = 0;
        v83 = 0;
        metadataOutCopy = metadataOut;
        v28 = v24;
        v29 = *v88;
        v30 = @"assetId";
        v84 = v25;
        errorCopy3 = error;
        v32 = selfCopy;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v88 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v34 = *(*(&v87 + 1) + 8 * i);
            v35 = [v34 objectForKeyedSubscript:{v30, metadataOutCopy}];
            if (![(MAAssetKeyStateIMStore *)v32 checkAndDeleteExpiredRecord:v34 currentSeconds:v28 error:errorCopy3])
            {
              v86 = v35;
              v36 = v27;
              v37 = v30;
              v38 = [v34 objectForKeyedSubscript:@"state"];
              unsignedLongLongValue = [v38 unsignedLongLongValue];

              v40 = [v34 objectForKeyedSubscript:@"createdDate"];
              unsignedLongLongValue2 = [v40 unsignedLongLongValue];

              v42 = [v34 objectForKeyedSubscript:@"expiresDate"];
              unsignedLongLongValue3 = [v42 unsignedLongLongValue];

              if (unsignedLongLongValue2 <= v28)
              {
                v32 = selfCopy;
                if (unsignedLongLongValue3 <= v28)
                {
                  v44 = v83;
                  v83 = v34;
                }

                else
                {
                  if (unsignedLongLongValue == 1)
                  {
                    v56 = v86;
                    *v74 = v86;
                    *pathOutCopy = [v34 objectForKeyedSubscript:@"assetKeyPath"];
                    *assetPathOutCopy = [v34 objectForKeyedSubscript:@"encAssetPath"];
                    *hashOutCopy = [v34 objectForKeyedSubscript:@"encAssetHash"];
                    *stateOutCopy = 1;
                    v46 = objc_opt_new();
                    v57 = [v34 objectForKeyedSubscript:@"ownerID"];
                    [v46 setOwnerID:v57];

                    v58 = [v34 objectForKeyedSubscript:@"signature"];
                    [v46 setSignature:v58];

                    v59 = [v34 objectForKeyedSubscript:@"requestURL"];
                    [v46 setRequestURL:v59];

                    v60 = [v34 objectForKeyedSubscript:@"fileSize"];
                    unsignedLongLongValue4 = [v60 unsignedLongLongValue];

                    [v46 setFileSize:unsignedLongLongValue4];
                    v62 = v46;
                    *metadataOutCopy = v46;
                    v63 = off_100127CD0;
                    idCopy = v78;
                    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v93 = v78;
                      v94 = 2112;
                      v95 = v86;
                      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "return an active record uploaded to cloud for assetHandle %@ assetId %@", buf, 0x16u);
                    }

                    v25 = v84;
                    v19 = v77;
                    v17 = v81;
                    v54 = v75;
                    v20 = v76;
                    goto LABEL_40;
                  }

                  v44 = v82;
                  v82 = v34;
                }

                v45 = v34;

                v25 = v84;
                errorCopy3 = error;
                v30 = v37;
                v27 = v36;
                v35 = v86;
                v28 = v24;
              }

              else
              {
                v25 = v84;
                errorCopy3 = error;
                v30 = v37;
                v27 = v36;
                v32 = selfCopy;
                v35 = v86;
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v87 objects:v96 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

        if (v83)
        {
          *v74 = [v83 objectForKeyedSubscript:@"assetId"];
          *pathOutCopy = [v83 objectForKeyedSubscript:@"assetKeyPath"];
          *assetPathOutCopy = [v83 objectForKeyedSubscript:@"encAssetPath"];
          *hashOutCopy = [v83 objectForKeyedSubscript:@"encAssetHash"];
          *stateOutCopy = 1;
          v46 = objc_opt_new();
          v47 = [v83 objectForKeyedSubscript:@"ownerID"];
          [v46 setOwnerID:v47];

          v48 = [v83 objectForKeyedSubscript:@"signature"];
          [v46 setSignature:v48];

          v49 = [v83 objectForKeyedSubscript:@"requestURL"];
          [v46 setRequestURL:v49];

          v50 = [v83 objectForKeyedSubscript:@"fileSize"];
          unsignedLongLongValue5 = [v50 unsignedLongLongValue];

          [v46 setFileSize:unsignedLongLongValue5];
          v52 = v46;
          *metadataOutCopy = v46;
          v53 = off_100127CD0;
          idCopy = v78;
          v19 = v77;
          v17 = v81;
          v54 = v75;
          if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
          {
            v55 = *v74;
            *buf = 138412546;
            v93 = v78;
            v94 = 2112;
            v95 = v55;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "return a serverUnexpired record uploaded to cloud for assetHandle %@ assetId %@", buf, 0x16u);
          }

          v20 = v76;
        }

        else
        {
          idCopy = v78;
          v19 = v77;
          v17 = v81;
          v54 = v75;
          v20 = v76;
          v64 = v74;
          if (!v82)
          {
            goto LABEL_32;
          }

          *v74 = [v82 objectForKeyedSubscript:@"assetId"];
          *pathOutCopy = [v82 objectForKeyedSubscript:@"assetKeyPath"];
          *assetPathOutCopy = [v82 objectForKeyedSubscript:@"encAssetPath"];
          *hashOutCopy = [v82 objectForKeyedSubscript:@"encAssetHash"];
          v66 = [v82 objectForKeyedSubscript:@"state"];
          unsignedLongLongValue6 = [v66 unsignedLongLongValue];

          *stateOutCopy = unsignedLongLongValue6;
          v68 = off_100127CD0;
          if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
          {
            v69 = *v74;
            *buf = 138412546;
            v93 = v78;
            v94 = 2112;
            v95 = v69;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "return an active record not yet uploaded to cloud for assetHandle %@ assetId %@", buf, 0x16u);
          }

          v46 = 0;
        }

        v25 = v84;
      }

      else
      {

        v54 = v22;
        v64 = outCopy;
        v17 = v81;
LABEL_32:
        v65 = off_100127CD0;
        if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v93 = idCopy;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "return nil assetId as no active record found for assetHandle %@", buf, 0xCu);
        }

        v46 = 0;
        *v64 = 0;
      }

LABEL_40:
    }

    else
    {
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000E194(selfCopy, error);
      }

      v46 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, error);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)deleteEntries:(id)entries assetId:(id)id error:(id *)error
{
  entriesCopy = entries;
  idCopy = id;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:error])
  {
    if (entriesCopy)
    {
      if (idCopy)
      {
        v29[0] = @"assetHandle";
        v29[1] = @"assetId";
        v30[0] = entriesCopy;
        v30[1] = idCopy;
        v10 = v30;
        v11 = v29;
        v12 = 2;
LABEL_12:
        v14 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];
        v13 = [(MAKVStore *)self->_store deleteFor:v14 attributes:0 error:error];
        v15 = off_100127CD0;
        if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
        {
          name = self->_name;
          v17 = *error;
          v19 = 138412802;
          v20 = name;
          v21 = 2112;
          v22 = v14;
          v23 = 2112;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "remove %@ entry: %@ error: %@", &v19, 0x20u);
        }

        goto LABEL_15;
      }

      v27 = @"assetHandle";
      v28 = entriesCopy;
      v10 = &v28;
      v11 = &v27;
    }

    else
    {
      if (!idCopy)
      {
        v13 = 1;
        goto LABEL_15;
      }

      v25 = @"assetId";
      v26 = idCopy;
      v10 = &v26;
      v11 = &v25;
    }

    v12 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000DFCC(self, error);
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (void)checkRecordsForAsset:(id)asset currentSeconds:(unint64_t)seconds records:(id)records
{
  assetCopy = asset;
  recordsCopy = records;
  v10 = off_100127CD0;
  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v85 = assetCopy;
    v86 = 2048;
    secondsCopy = seconds;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "checkRecordsForAsset assetHandle: %@ currentSeconds: %lu", buf, 0x16u);
  }

  v64 = +[NSMutableArray array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = recordsCopy;
  v12 = [v11 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (!v12)
  {

    v14 = 0;
LABEL_51:
    v59 = off_100127CD0;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = assetCopy;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "no active record, scheduleAssetKeyRoll immediately, assetHandle %@", buf, 0xCu);
    }

    v56 = 0;
    p_remoteAssetManager = &self->_remoteAssetManager;
    goto LABEL_54;
  }

  v13 = v12;
  v66 = assetCopy;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v14 = 0;
  v15 = *v79;
  v60 = &self->_remoteAssetManager;
  v65 = v11;
  secondsCopy2 = seconds;
  do
  {
    v16 = 0;
    v17 = v14;
    do
    {
      if (*v79 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v78 + 1) + 8 * v16);
      v77 = v17;
      v19 = [(MAAssetKeyStateIMStore *)self checkAndDeleteExpiredRecord:v18 currentSeconds:seconds error:&v77];
      v14 = v77;

      if ((v19 & 1) == 0)
      {
        obj = v14;
        selfCopy = self;
        v21 = v13;
        v22 = [v18 objectForKeyedSubscript:@"assetId"];
        v23 = [v18 objectForKeyedSubscript:@"state"];
        unsignedLongLongValue = [v23 unsignedLongLongValue];

        v25 = [v18 objectForKeyedSubscript:@"createdDate"];
        unsignedLongLongValue2 = [v25 unsignedLongLongValue];

        v27 = [v18 objectForKeyedSubscript:@"expiresDate"];
        unsignedLongLongValue3 = [v27 unsignedLongLongValue];

        seconds = secondsCopy2;
        if (unsignedLongLongValue3 <= secondsCopy2)
        {
          v35 = off_100127CD0;
          if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v85 = v22;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "add assetId %@ to expiredRecords", buf, 0xCu);
          }

          [v64 addObject:v18];
          v11 = v65;
        }

        else
        {
          if (unsignedLongLongValue2 <= secondsCopy2)
          {
            if (unsignedLongLongValue == 1)
            {
              ++v61;
            }

            else
            {
              v36 = off_100127CD0;
              if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v22;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "scheduleCloudUpload immediately for active record, assetId %@", buf, 0xCu);
              }

              v37 = *v60;
              v38 = [v18 objectForKeyedSubscript:@"assetId"];
              v39 = [v18 objectForKeyedSubscript:@"assetKeyPath"];
              v40 = [v18 objectForKeyedSubscript:@"encAssetPath"];
              [(MARemoteAssetsManager *)v37 scheduleIMTransferUpload:v66 assetId:v38 createdDateInSecs:0 assetKeyPath:v39 encAssetPath:v40];
            }

            ++HIDWORD(v63);
            v41 = v62;
            if (unsignedLongLongValue3 > v62)
            {
              v41 = unsignedLongLongValue3;
            }

            v62 = v41;
          }

          else
          {
            v29 = off_100127CD0;
            if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v85 = v22;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "assetId %@ is a future record", buf, 0xCu);
            }

            if ((unsignedLongLongValue2 - secondsCopy2) >> 7 <= 0x2A2)
            {
              v30 = off_100127CD0;
              if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v22;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "scheduleCloudUpload for near future record, assetId %@", buf, 0xCu);
              }

              v31 = *v60;
              v32 = [v18 objectForKeyedSubscript:@"assetId"];
              v33 = [v18 objectForKeyedSubscript:@"assetKeyPath"];
              v34 = [v18 objectForKeyedSubscript:@"encAssetPath"];
              [(MARemoteAssetsManager *)v31 scheduleIMTransferUpload:v66 assetId:v32 createdDateInSecs:unsignedLongLongValue2 assetKeyPath:v33 encAssetPath:v34];
            }

            LODWORD(v63) = v63 + 1;
          }

          v11 = v65;
          seconds = secondsCopy2;
        }

        v13 = v21;
        self = selfCopy;
        v14 = obj;
      }

      v16 = v16 + 1;
      v17 = v14;
    }

    while (v13 != v16);
    v13 = [v11 countByEnumeratingWithState:&v78 objects:v83 count:16];
  }

  while (v13);

  if (v61 >= 1)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obja = v64;
    v42 = [obja countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v74;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v74 != v44)
          {
            objc_enumerationMutation(obja);
          }

          v46 = *(*(&v73 + 1) + 8 * i);
          v47 = [v46 objectForKeyedSubscript:@"assetId"];
          v48 = [v46 objectForKeyedSubscript:@"assetKeyPath"];
          v49 = [v46 objectForKeyedSubscript:@"encAssetPath"];
          v50 = off_100127CD0;
          if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v85 = v47;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "delete expired record, assetId %@", buf, 0xCu);
          }

          v72 = 0;
          [(MAAssetKeyStateIMStore *)self deleteEntries:v66 assetId:v47 error:&v72];
          v51 = v72;
          fileMgr = self->_fileMgr;
          v71 = v51;
          [(NSFileManager *)fileMgr removeItemAtPath:v48 error:&v71];
          v53 = v71;

          v54 = self->_fileMgr;
          v70 = v53;
          [(NSFileManager *)v54 removeItemAtPath:v49 error:&v70];
          v55 = v70;
        }

        v43 = [obja countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v43);
    }

    v11 = v65;
    seconds = secondsCopy2;
  }

  assetCopy = v66;
  if (!HIDWORD(v63))
  {
    goto LABEL_51;
  }

  if (!v63)
  {
    v56 = v62;
    if (v62 > seconds)
    {
      v57 = off_100127CD0;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v85 = v62;
        v86 = 2112;
        secondsCopy = v66;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "no future key record, scheduleAssetKeyRoll for createTime %lu, assetHandle %@", buf, 0x16u);
      }

      p_remoteAssetManager = v60;
LABEL_54:
      [(MARemoteAssetsManager *)*p_remoteAssetManager scheduleAssetKeyRoll:assetCopy createTime:v56];
    }
  }
}

- (void)checkupWithDeviceUnlocked:(BOOL)unlocked
{
  unlockedCopy = unlocked;
  v50 = 0;
  v5 = [(MAAssetKeyStateIMStore *)self ensureStoreExist:&v50];
  v6 = v50;
  v7 = off_100127CD0;
  if (v5)
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v54 = unlockedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "checkupWithDeviceUnlocked starts, unlocked=%d", buf, 8u);
    }

    v8 = +[NSDate now];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = +[NSMutableDictionary dictionary];
    store = self->_store;
    v48 = v6;
    v49 = 0;
    v13 = [(MAKVStore *)store queryFor:&__NSDictionary0__struct attributes:0 records:&v49 error:&v48];
    v14 = v49;
    v15 = v48;

    if (v13)
    {
      v36 = v14;
      v37 = v8;
      v38 = unlockedCopy;
      v47 = v15;
      v16 = [MAKVStore queryOutputToArrayOfDictionaries:v14 error:&v47];
      v35 = v47;

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v23 = [v22 objectForKeyedSubscript:{@"assetHandle", v35}];
            v24 = [v11 objectForKeyedSubscript:v23];

            if (!v24)
            {
              v24 = +[NSMutableArray array];
              v25 = [v22 objectForKeyedSubscript:@"assetHandle"];
              [v11 setObject:v24 forKeyedSubscript:v25];
            }

            [v24 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v19);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v11;
      v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v40;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v40 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v39 + 1) + 8 * j);
            v32 = [v26 objectForKeyedSubscript:{v31, v35}];
            [(MAAssetKeyStateIMStore *)self checkRecordsForAsset:v31 currentSeconds:v10 records:v32];
          }

          v28 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v28);
      }

      v14 = v36;
      v8 = v37;
      if (v38)
      {
        v33 = off_100127CD0;
        if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "unlocked, trigger performScheduleAssetKeyRoll for any scheduled key rolls", buf, 2u);
        }

        [(MARemoteAssetsManager *)self->_remoteAssetManager performScheduleAssetKeyRoll];
      }

      v34 = off_100127CD0;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v54 = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "checkupWithDeviceUnlocked ends, unlocked=%d", buf, 8u);
      }

      v15 = v35;
    }

    else if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E26C();
    }

    v6 = v15;
  }

  else if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000E1FC(self);
  }
}

- (BOOL)queryAssetKeyState:(id)state assetId:(id)id results:(id *)results error:(id *)error
{
  stateCopy = state;
  idCopy = id;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:error])
  {
    v12 = +[NSMutableDictionary dictionary];
    v13 = v12;
    if (stateCopy)
    {
      [v12 setObject:stateCopy forKeyedSubscript:@"assetHandle"];
    }

    if (idCopy)
    {
      [v13 setObject:idCopy forKeyedSubscript:@"assetId"];
    }

    store = self->_store;
    v28 = 0;
    v15 = [(MAKVStore *)store queryFor:v13 attributes:0 records:&v28 error:error];
    v16 = v28;
    if (v15)
    {
      v17 = [MAKVStore queryOutputToArrayOfDictionaries:v16 error:error];
      if (v17)
      {
        v18 = v17;
        *results = v18;

        v19 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v20 = off_100127CD0;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000E2D4(error, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    v19 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000DFCC(self, error);
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (BOOL)clearAllAssetKeyStatesWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  v37 = 0;
  v6 = [(MAAssetKeyStateIMStore *)self queryAssetKeyState:0 assetId:0 results:&v37 error:error];
  v7 = v37;
  if (!v6)
  {
    goto LABEL_21;
  }

  selfCopy = self;
  v28 = v7;
  errorCopy = error;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *v34;
  do
  {
    v11 = 0;
    do
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      v13 = [v12 objectForKeyedSubscript:{@"assetKeyPath", selfCopy}];
      v14 = [v12 objectForKeyedSubscript:@"encAssetPath"];
      v15 = v14;
      if (v13)
      {
        v32 = 0;
        [v5 removeItemAtPath:v13 error:&v32];
        v16 = v32;
        if (!v15)
        {
          goto LABEL_10;
        }

LABEL_9:
        v31 = v16;
        [v5 removeItemAtPath:v15 error:&v31];
        v17 = v31;

        v16 = v17;
        goto LABEL_10;
      }

      v16 = 0;
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_10:

      v11 = v11 + 1;
    }

    while (v9 != v11);
    v18 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    v9 = v18;
  }

  while (v18);
LABEL_15:

  if ([(MAKVStore *)selfCopy->_store deleteFor:&__NSDictionary0__struct attributes:0 error:errorCopy])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v19 = off_100127CD0;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E344(errorCopy, v19, v20, v21, v22, v23, v24, v25);
    }

    LOBYTE(v6) = 0;
  }

  v7 = v28;
LABEL_21:

  return v6;
}

@end