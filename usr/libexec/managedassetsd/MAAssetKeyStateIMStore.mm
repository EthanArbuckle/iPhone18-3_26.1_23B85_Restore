@interface MAAssetKeyStateIMStore
- (BOOL)addRecord:(id)a3 assetId:(id)a4 createdDate:(unint64_t)a5 expiresDate:(unint64_t)a6 assetKeyPath:(id)a7 encAssetPath:(id)a8 encAssetHash:(id)a9 error:(id *)a10;
- (BOOL)checkAndDeleteExpiredRecord:(id)a3 currentSeconds:(unint64_t)a4 error:(id *)a5;
- (BOOL)clearAllAssetKeyStatesWithError:(id *)a3;
- (BOOL)deleteEntries:(id)a3 assetId:(id)a4 error:(id *)a5;
- (BOOL)ensureStoreExist:(id *)a3;
- (BOOL)getActiveAssetId:(id)a3 assetIdOut:(id *)a4 assetKeyPathOut:(id *)a5 encAssetPathOut:(id *)a6 encAssetHashOut:(id *)a7 stateOut:(unint64_t *)a8 mmcsMetadataOut:(id *)a9 error:(id *)a10;
- (BOOL)queryAssetKeyState:(id)a3 assetId:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)updateRecordUploaded:(id)a3 assetId:(id)a4 mmcsMetadata:(id)a5 error:(id *)a6;
- (MAAssetKeyStateIMStore)initWithStorage:(id)a3 remoteAssetManager:(id)a4;
- (MAKVStore)store;
- (id)createStore:(id *)a3;
- (void)checkRecordsForAsset:(id)a3 currentSeconds:(unint64_t)a4 records:(id)a5;
- (void)checkupWithDeviceUnlocked:(BOOL)a3;
@end

@implementation MAAssetKeyStateIMStore

- (MAAssetKeyStateIMStore)initWithStorage:(id)a3 remoteAssetManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MAAssetKeyStateIMStore;
  v9 = [(MAAssetKeyStateIMStore *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
    store = v10->_store;
    v10->_store = 0;

    name = v10->_name;
    v10->_name = @"assetKeyStateIMStore";

    v13 = +[NSFileManager defaultManager];
    fileMgr = v10->_fileMgr;
    v10->_fileMgr = v13;

    objc_storeStrong(&v10->_remoteAssetManager, a4);
    v15 = v10;
  }

  return v10;
}

- (id)createStore:(id *)a3
{
  v4 = self;
  v5 = [(MAStorage *)self->_storage dbInClassC];
  v6 = v5;
  name = v4->_name;
  if (v5)
  {
    v33 = v4;
    v34 = a3;
    v35 = v5;
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
      v4 = v33;
      a3 = v34;
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      v25 = v4->_name;
      v17 = createManagedAssetError();
      goto LABEL_7;
    }

    v18 = [MAKVStore alloc];
    v4 = v33;
    v19 = v33->_name;
    v36 = v17;
    v20 = [(MAKVStore *)v18 initWithName:v19 identifier:v19 profile:0 db:v35 attributes:0 error:&v36];
    v21 = v36;

    v17 = v21;
    a3 = v34;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24 = v4->_name;
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
  *a3 = v17;
  v21 = v17;
LABEL_10:

  return v20;
}

- (BOOL)ensureStoreExist:(id *)a3
{
  if (self->_store)
  {
    return 1;
  }

  v5 = [(MAAssetKeyStateIMStore *)self createStore:a3];
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

- (BOOL)addRecord:(id)a3 assetId:(id)a4 createdDate:(unint64_t)a5 expiresDate:(unint64_t)a6 assetKeyPath:(id)a7 encAssetPath:(id)a8 encAssetHash:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:a10])
  {
    v21 = v16;
    store = self->_store;
    v38[0] = @"assetHandle";
    v38[1] = @"assetId";
    v31 = v21;
    v39[0] = v21;
    v39[1] = v17;
    v38[2] = @"version";
    v38[3] = @"state";
    v39[2] = &off_10011DAD8;
    v39[3] = &off_10011DAF0;
    v38[4] = @"createdDate";
    v23 = [NSNumber numberWithUnsignedInteger:a5];
    v39[4] = v23;
    v38[5] = @"expiresDate";
    v24 = [NSNumber numberWithUnsignedInteger:a6];
    v39[5] = v24;
    v39[6] = v18;
    v38[6] = @"assetKeyPath";
    v38[7] = @"encAssetPath";
    v38[8] = @"encAssetHash";
    v39[7] = v19;
    v39[8] = v20;
    v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:9];
    LOBYTE(store) = [(MAKVStore *)store putDictionay:v25 attributes:0 error:a10];

    v26 = off_100127CD0;
    if (store)
    {
      v27 = 1;
      v16 = v31;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "added entry to MAAssetKeyStateStore, assetId=%@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        v30 = *a10;
        *buf = 138412802;
        v33 = name;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v30;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to add record to %@, assetId=%@, error: %@", buf, 0x20u);
      }

      v27 = 0;
      v16 = v31;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, a10);
    }

    v27 = 0;
  }

  return v27;
}

- (BOOL)updateRecordUploaded:(id)a3 assetId:(id)a4 mmcsMetadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:a6])
  {
    v28 = +[NSDate now];
    [v28 timeIntervalSinceReferenceDate];
    v14 = v13;
    v34[0] = @"assetHandle";
    v34[1] = @"assetId";
    v29 = v10;
    v35[0] = v10;
    v35[1] = v11;
    v26 = v11;
    v15 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    store = self->_store;
    v33[0] = &off_10011DAD8;
    v32[0] = @"state";
    v32[1] = @"uploadedDate";
    v17 = [NSNumber numberWithUnsignedInteger:v14];
    v33[1] = v17;
    v32[2] = @"ownerID";
    v18 = [v12 ownerID];
    v33[2] = v18;
    v32[3] = @"signature";
    v19 = [v12 signature];
    v33[3] = v19;
    v32[4] = @"requestURL";
    v20 = [v12 requestURL];
    v33[4] = v20;
    v32[5] = @"fileSize";
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 fileSize]);
    v33[5] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:6];
    v27 = v15;
    v23 = [(MAKVStore *)store updateFor:v15 value:v22 attributes:0 error:a6];

    v24 = off_100127CD0;
    if (v23)
    {
      v11 = v26;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "updated cloud upload record for assetId: %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = v26;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000E034(v26, a6);
      }
    }

    v10 = v29;
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, a6);
    }

    v23 = 0;
  }

  return v23;
}

- (BOOL)checkAndDeleteExpiredRecord:(id)a3 currentSeconds:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"assetId"];
  v9 = [v7 objectForKeyedSubscript:@"uploadedDate"];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v7 objectForKeyedSubscript:@"version"];
  v12 = [v11 unsignedLongLongValue];

  if (v12 == 1)
  {
    if (!v10 || v10 + 2505600 > a4)
    {
      v19 = [v7 objectForKeyedSubscript:@"expiresDate"];
      v20 = [v19 unsignedLongLongValue];

      if (v20 > a4 || ([v7 objectForKeyedSubscript:@"state"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "unsignedLongLongValue"), v21, v22 == 1))
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
      v42 = v12;
      v43 = 1024;
      v44 = 1;
      v15 = "record with assetId %@ version %lu mismatch expected %d";
      v16 = v18;
      v17 = 28;
      goto LABEL_9;
    }
  }

LABEL_13:
  v23 = [v7 objectForKeyedSubscript:@"assetKeyPath"];
  v24 = [v7 objectForKeyedSubscript:@"encAssetPath"];
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

- (BOOL)getActiveAssetId:(id)a3 assetIdOut:(id *)a4 assetKeyPathOut:(id *)a5 encAssetPathOut:(id *)a6 encAssetHashOut:(id *)a7 stateOut:(unint64_t *)a8 mmcsMetadataOut:(id *)a9 error:(id *)a10
{
  v16 = a3;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:a10])
  {
    v97[0] = @"assetHandle";
    v97[1] = @"version";
    v98[0] = v16;
    v98[1] = &off_10011DAD8;
    v17 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
    v85 = self;
    store = self->_store;
    v91 = 0;
    v19 = [(MAKVStore *)store queryFor:v17 attributes:0 records:&v91 error:a10];
    v20 = v91;
    if (v19)
    {
      v80 = a6;
      v81 = v17;
      v21 = a4;
      v79 = a5;
      v22 = +[NSDate now];
      [v22 timeIntervalSinceReferenceDate];
      v24 = v23;
      [MAKVStore queryOutputToArrayOfDictionaries:v20 error:a10];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v25 = v90 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v26)
      {
        v27 = v26;
        v72 = a8;
        v73 = a7;
        v74 = v21;
        v75 = v22;
        v76 = v20;
        v77 = v19;
        v78 = v16;
        v82 = 0;
        v83 = 0;
        v71 = a9;
        v28 = v24;
        v29 = *v88;
        v30 = @"assetId";
        v84 = v25;
        v31 = a10;
        v32 = v85;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v88 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v34 = *(*(&v87 + 1) + 8 * i);
            v35 = [v34 objectForKeyedSubscript:{v30, v71}];
            if (![(MAAssetKeyStateIMStore *)v32 checkAndDeleteExpiredRecord:v34 currentSeconds:v28 error:v31])
            {
              v86 = v35;
              v36 = v27;
              v37 = v30;
              v38 = [v34 objectForKeyedSubscript:@"state"];
              v39 = [v38 unsignedLongLongValue];

              v40 = [v34 objectForKeyedSubscript:@"createdDate"];
              v41 = [v40 unsignedLongLongValue];

              v42 = [v34 objectForKeyedSubscript:@"expiresDate"];
              v43 = [v42 unsignedLongLongValue];

              if (v41 <= v28)
              {
                v32 = v85;
                if (v43 <= v28)
                {
                  v44 = v83;
                  v83 = v34;
                }

                else
                {
                  if (v39 == 1)
                  {
                    v56 = v86;
                    *v74 = v86;
                    *v79 = [v34 objectForKeyedSubscript:@"assetKeyPath"];
                    *v80 = [v34 objectForKeyedSubscript:@"encAssetPath"];
                    *v73 = [v34 objectForKeyedSubscript:@"encAssetHash"];
                    *v72 = 1;
                    v46 = objc_opt_new();
                    v57 = [v34 objectForKeyedSubscript:@"ownerID"];
                    [v46 setOwnerID:v57];

                    v58 = [v34 objectForKeyedSubscript:@"signature"];
                    [v46 setSignature:v58];

                    v59 = [v34 objectForKeyedSubscript:@"requestURL"];
                    [v46 setRequestURL:v59];

                    v60 = [v34 objectForKeyedSubscript:@"fileSize"];
                    v61 = [v60 unsignedLongLongValue];

                    [v46 setFileSize:v61];
                    v62 = v46;
                    *v71 = v46;
                    v63 = off_100127CD0;
                    v16 = v78;
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
                v31 = a10;
                v30 = v37;
                v27 = v36;
                v35 = v86;
                v28 = v24;
              }

              else
              {
                v25 = v84;
                v31 = a10;
                v30 = v37;
                v27 = v36;
                v32 = v85;
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
          *v79 = [v83 objectForKeyedSubscript:@"assetKeyPath"];
          *v80 = [v83 objectForKeyedSubscript:@"encAssetPath"];
          *v73 = [v83 objectForKeyedSubscript:@"encAssetHash"];
          *v72 = 1;
          v46 = objc_opt_new();
          v47 = [v83 objectForKeyedSubscript:@"ownerID"];
          [v46 setOwnerID:v47];

          v48 = [v83 objectForKeyedSubscript:@"signature"];
          [v46 setSignature:v48];

          v49 = [v83 objectForKeyedSubscript:@"requestURL"];
          [v46 setRequestURL:v49];

          v50 = [v83 objectForKeyedSubscript:@"fileSize"];
          v51 = [v50 unsignedLongLongValue];

          [v46 setFileSize:v51];
          v52 = v46;
          *v71 = v46;
          v53 = off_100127CD0;
          v16 = v78;
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
          v16 = v78;
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
          *v79 = [v82 objectForKeyedSubscript:@"assetKeyPath"];
          *v80 = [v82 objectForKeyedSubscript:@"encAssetPath"];
          *v73 = [v82 objectForKeyedSubscript:@"encAssetHash"];
          v66 = [v82 objectForKeyedSubscript:@"state"];
          v67 = [v66 unsignedLongLongValue];

          *v72 = v67;
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
        v64 = v21;
        v17 = v81;
LABEL_32:
        v65 = off_100127CD0;
        if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v93 = v16;
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
        sub_10000E194(v85, a10);
      }

      v46 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFCC(self, a10);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)deleteEntries:(id)a3 assetId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:a5])
  {
    if (v8)
    {
      if (v9)
      {
        v29[0] = @"assetHandle";
        v29[1] = @"assetId";
        v30[0] = v8;
        v30[1] = v9;
        v10 = v30;
        v11 = v29;
        v12 = 2;
LABEL_12:
        v14 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];
        v13 = [(MAKVStore *)self->_store deleteFor:v14 attributes:0 error:a5];
        v15 = off_100127CD0;
        if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
        {
          name = self->_name;
          v17 = *a5;
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
      v28 = v8;
      v10 = &v28;
      v11 = &v27;
    }

    else
    {
      if (!v9)
      {
        v13 = 1;
        goto LABEL_15;
      }

      v25 = @"assetId";
      v26 = v9;
      v10 = &v26;
      v11 = &v25;
    }

    v12 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000DFCC(self, a5);
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (void)checkRecordsForAsset:(id)a3 currentSeconds:(unint64_t)a4 records:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = off_100127CD0;
  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v85 = v8;
    v86 = 2048;
    v87 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "checkRecordsForAsset assetHandle: %@ currentSeconds: %lu", buf, 0x16u);
  }

  v64 = +[NSMutableArray array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (!v12)
  {

    v14 = 0;
LABEL_51:
    v59 = off_100127CD0;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v85 = v8;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "no active record, scheduleAssetKeyRoll immediately, assetHandle %@", buf, 0xCu);
    }

    v56 = 0;
    p_remoteAssetManager = &self->_remoteAssetManager;
    goto LABEL_54;
  }

  v13 = v12;
  v66 = v8;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v14 = 0;
  v15 = *v79;
  v60 = &self->_remoteAssetManager;
  v65 = v11;
  v67 = a4;
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
      v19 = [(MAAssetKeyStateIMStore *)self checkAndDeleteExpiredRecord:v18 currentSeconds:a4 error:&v77];
      v14 = v77;

      if ((v19 & 1) == 0)
      {
        obj = v14;
        v20 = self;
        v21 = v13;
        v22 = [v18 objectForKeyedSubscript:@"assetId"];
        v23 = [v18 objectForKeyedSubscript:@"state"];
        v24 = [v23 unsignedLongLongValue];

        v25 = [v18 objectForKeyedSubscript:@"createdDate"];
        v26 = [v25 unsignedLongLongValue];

        v27 = [v18 objectForKeyedSubscript:@"expiresDate"];
        v28 = [v27 unsignedLongLongValue];

        a4 = v67;
        if (v28 <= v67)
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
          if (v26 <= v67)
          {
            if (v24 == 1)
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
            if (v28 > v62)
            {
              v41 = v28;
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

            if ((v26 - v67) >> 7 <= 0x2A2)
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
              [(MARemoteAssetsManager *)v31 scheduleIMTransferUpload:v66 assetId:v32 createdDateInSecs:v26 assetKeyPath:v33 encAssetPath:v34];
            }

            LODWORD(v63) = v63 + 1;
          }

          v11 = v65;
          a4 = v67;
        }

        v13 = v21;
        self = v20;
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
    a4 = v67;
  }

  v8 = v66;
  if (!HIDWORD(v63))
  {
    goto LABEL_51;
  }

  if (!v63)
  {
    v56 = v62;
    if (v62 > a4)
    {
      v57 = off_100127CD0;
      if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v85 = v62;
        v86 = 2112;
        v87 = v66;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "no future key record, scheduleAssetKeyRoll for createTime %lu, assetHandle %@", buf, 0x16u);
      }

      p_remoteAssetManager = v60;
LABEL_54:
      [(MARemoteAssetsManager *)*p_remoteAssetManager scheduleAssetKeyRoll:v8 createTime:v56];
    }
  }
}

- (void)checkupWithDeviceUnlocked:(BOOL)a3
{
  v3 = a3;
  v50 = 0;
  v5 = [(MAAssetKeyStateIMStore *)self ensureStoreExist:&v50];
  v6 = v50;
  v7 = off_100127CD0;
  if (v5)
  {
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v54 = v3;
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
      v38 = v3;
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

- (BOOL)queryAssetKeyState:(id)a3 assetId:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([(MAAssetKeyStateIMStore *)self ensureStoreExist:a6])
  {
    v12 = +[NSMutableDictionary dictionary];
    v13 = v12;
    if (v10)
    {
      [v12 setObject:v10 forKeyedSubscript:@"assetHandle"];
    }

    if (v11)
    {
      [v13 setObject:v11 forKeyedSubscript:@"assetId"];
    }

    store = self->_store;
    v28 = 0;
    v15 = [(MAKVStore *)store queryFor:v13 attributes:0 records:&v28 error:a6];
    v16 = v28;
    if (v15)
    {
      v17 = [MAKVStore queryOutputToArrayOfDictionaries:v16 error:a6];
      if (v17)
      {
        v18 = v17;
        *a5 = v18;

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
        sub_10000E2D4(a6, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    v19 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
  {
    sub_10000DFCC(self, a6);
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (BOOL)clearAllAssetKeyStatesWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v37 = 0;
  v6 = [(MAAssetKeyStateIMStore *)self queryAssetKeyState:0 assetId:0 results:&v37 error:a3];
  v7 = v37;
  if (!v6)
  {
    goto LABEL_21;
  }

  v27 = self;
  v28 = v7;
  v29 = a3;
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
      v13 = [v12 objectForKeyedSubscript:{@"assetKeyPath", v27}];
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

  if ([(MAKVStore *)v27->_store deleteFor:&__NSDictionary0__struct attributes:0 error:v29])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v19 = off_100127CD0;
    if (os_log_type_enabled(off_100127CD0, OS_LOG_TYPE_ERROR))
    {
      sub_10000E344(v29, v19, v20, v21, v22, v23, v24, v25);
    }

    LOBYTE(v6) = 0;
  }

  v7 = v28;
LABEL_21:

  return v6;
}

@end