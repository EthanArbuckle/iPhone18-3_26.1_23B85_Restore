@interface MAKVStore
+ (BOOL)queryOutputToArrayOfDictionaries:(id)a3 results:(id)a4 error:(id *)a5;
+ (id)queryOutputToArrayOfDictionaries:(id)a3 error:(id *)a4;
+ (id)rowToDictionary:(id)a3 error:(id *)a4;
+ (id)singleColumnQueryOutputToArray:(id)a3 error:(id *)a4;
- (BOOL)batchDeleteFor:(id)a3 attributes:(id)a4 error:(id *)a5;
- (BOOL)batchQueryFor:(id)a3 attributes:(id)a4 records:(id *)a5 error:(id *)a6;
- (BOOL)deleteFor:(id)a3 attributes:(id)a4 error:(id *)a5;
- (BOOL)deleteStore:(id)a3 error:(id *)a4;
- (BOOL)existsWithError:(id *)a3;
- (BOOL)getBaseStoreName:(id *)a3 baseGroup:(id *)a4 baseProfile:(id *)a5 error:(id *)a6;
- (BOOL)put:(id)a3 attributes:(id)a4 error:(id *)a5;
- (BOOL)putDictionay:(id)a3 attributes:(id)a4 error:(id *)a5;
- (BOOL)queryFor:(id)a3 attributes:(id)a4 records:(id *)a5 error:(id *)a6;
- (BOOL)queryForColumn:(id)a3 column:(id)a4 attributes:(id)a5 values:(id *)a6 error:(id *)a7;
- (BOOL)saveBaseStoreInfoWithError:(id *)a3;
- (BOOL)updateFor:(id)a3 value:(id)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)verifyColumnNamesInArray:(id)a3 error:(id *)a4;
- (BOOL)verifyColumnNamesInBatchRequest:(id)a3 error:(id *)a4;
- (BOOL)verifyColumnNamesInDictionary:(id)a3 error:(id *)a4;
- (BOOL)verifyColumnNamesInRecordArray:(id)a3 error:(id *)a4;
- (MAKVGroupDB)db;
- (MAKVStore)initWithName:(id)a3 identifier:(id)a4 profile:(id)a5 db:(id)a6 attributes:(id)a7 error:(id *)a8;
- (id)applyStagingFilterOnKeys:(id)a3 attributes:(id)a4;
- (id)columnNamesWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createWith:(id)a3 attributes:(id)a4 error:(id *)a5;
- (id)description;
- (id)queryDictionaryFor:(id)a3 attributes:(id)a4 error:(id *)a5;
- (id)queryRowDictionariesFor:(id)a3 attributes:(id)a4 error:(id *)a5;
- (void)addOverlayStore:(id)a3;
- (void)removeOverlayStore:(id)a3;
@end

@implementation MAKVStore

- (MAKVStore)initWithName:(id)a3 identifier:(id)a4 profile:(id)a5 db:(id)a6 attributes:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v56.receiver = self;
  v56.super_class = MAKVStore;
  v19 = [(MAKVStore *)&v56 init];
  if (v19)
  {
    v20 = [v14 copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [v18 objectForKeyedSubscript:kMAGroupKey];
    v55 = v14;
    v53 = v16;
    v50 = v18;
    obj = v17;
    v49 = v22;
    if (v22)
    {
      v23 = [v22 copy];
    }

    else
    {
      v23 = @"private";
    }

    group = v19->_group;
    v19->_group = &v23->isa;

    v54 = v15;
    v25 = [v15 copy];
    identifier = v19->_identifier;
    v19->_identifier = v25;

    objc_storeStrong(&v19->_profile, a5);
    v52 = v19;
    v27 = v19->_name;
    v28 = v19->_group;
    v29 = v27;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = qword_100129408;
    v31 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v58;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v57 + 1) + 8 * i);
          v36 = [v35 name];
          if (([(NSString *)v29 isEqual:v36]& 1) != 0)
          {
            v37 = [v35 group];
            v38 = [(NSString *)v28 isEqual:v37];

            if (v38)
            {
              v39 = v35;

              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v32);
    }

    v39 = [[MAKVStoreConfig alloc] initWithName:v29 group:v28];
LABEL_18:

    v19 = v52;
    config = v52->_config;
    v52->_config = v39;
    v41 = v39;

    v52->_cloudSync = [(MAKVStoreConfig *)v41 syncToCloud];
    v42 = [(MAKVStoreConfig *)v41 recordHandleField];
    recordHandleField = v52->_recordHandleField;
    v52->_recordHandleField = v42;

    v52->_hasStaging = [(MAKVStoreConfig *)v41 hasStaging];
    v52->_autoUpdateRecordTimestamp = [(MAKVStoreConfig *)v41 autoUpdateTimeStamp];
    v52->_autoInsertUpdatedDate = [(MAKVStoreConfig *)v41 autoInsertUpdatedDate];
    v52->_assetType = [(MAKVStoreConfig *)v41 assetType];
    baseStore = v52->_baseStore;
    v52->_baseStore = 0;

    overlays = v52->_overlays;
    v52->_overlays = 0;

    v17 = obj;
    objc_storeWeak(&v52->_db, obj);
    columns = v52->_columns;
    v52->_columns = 0;

    v47 = v52;
    v15 = v54;
    v14 = v55;
    v16 = v53;
    v18 = v50;
  }

  else
  {
    *a8 = createManagedAssetError();
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MAKVStore alloc];
  name = self->_name;
  identifier = self->_identifier;
  profile = self->_profile;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  group = self->_group;
  v18 = kMAGroupKey;
  v19 = group;
  v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = 0;
  v11 = [(MAKVStore *)v4 initWithName:name identifier:identifier profile:profile db:WeakRetained attributes:v10 error:&v17];
  v12 = v17;

  v13 = 0;
  if (!v12 && v11)
  {
    objc_storeStrong(&v11->_baseStore, self->_baseStore);
    v14 = [(NSSet *)self->_columns copy];
    columns = v11->_columns;
    v11->_columns = v14;

    v13 = v11;
  }

  return v13;
}

- (id)columnNamesWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10001E2EC;
  v20 = sub_10001E2FC;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10001E2EC;
  v14 = sub_10001E2FC;
  v15 = 0;
  v5 = +[MAKVStoreManager defaultManager];
  v6 = [v5 serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C68;
  block[3] = &unk_100116250;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v16;
  dispatch_sync(v6, block);

  *a3 = v11[5];
  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (BOOL)verifyColumnNamesInDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v6 count])
    {
      v7 = [(MAKVStore *)self columnNamesWithError:a4];
      if (v7 && !*a4)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        obj = v6;
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v18 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [v13 lowercaseString];
                v15 = [v7 containsObject:v14];

                if (v15)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *a4 = v8 = 0;
              goto LABEL_21;
            }

            v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
            v8 = 1;
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v8 = 1;
        }

LABEL_21:
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    createManagedAssetError();
    *a4 = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInArray:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v6 count])
    {
      v7 = [(MAKVStore *)self columnNamesWithError:a4];
      if (v7 && !*a4)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        obj = v6;
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v18 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [v13 lowercaseString];
                v15 = [v7 containsObject:v14];

                if (v15)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *a4 = v8 = 0;
              goto LABEL_21;
            }

            v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
            v8 = 1;
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v8 = 1;
        }

LABEL_21:
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    createManagedAssetError();
    *a4 = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInBatchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(MAKVStore *)self columnNamesWithError:a4];
    if (v7 && !*a4)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        v13 = &_s8CloudKit12CKSyncEngineC5EventO13AccountChangeV0G4TypeO6signInyAISo10CKRecordIDC_tcAImFWC_ptr;
        while (2)
        {
          v14 = 0;
          v27 = v11;
          do
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v28 = v14;
            v15 = *(*(&v34 + 1) + 8 * v14);
            if (!v15 || (v16 = v13[100], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v15 count])
            {
              createManagedAssetError();
              *a4 = v8 = 0;
              goto LABEL_29;
            }

            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v17 = v15;
            v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v31;
              v29 = v9;
              v26 = v12;
              while (2)
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v31 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v30 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v23 = [v22 lowercaseString];
                    v24 = [v7 containsObject:v23];

                    if (v24)
                    {
                      continue;
                    }
                  }

                  *a4 = createManagedAssetError();

                  v8 = 0;
                  v9 = v29;
                  goto LABEL_29;
                }

                v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
                v9 = v29;
                v12 = v26;
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v14 = v28 + 1;
            v13 = &_s8CloudKit12CKSyncEngineC5EventO13AccountChangeV0G4TypeO6signInyAISo10CKRecordIDC_tcAImFWC_ptr;
          }

          while ((v28 + 1) != v27);
          v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
          v8 = 1;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v8 = 1;
      }

LABEL_29:
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    createManagedAssetError();
    *a4 = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInRecordArray:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      v8 = [(MAKVStore *)self columnNamesWithError:a4];
      if (v8 && !*a4)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        obj = v7;
        v11 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v19 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 lowercaseString];
                v17 = [v8 containsObject:v16];

                if (v17)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *a4 = v9 = 0;
              goto LABEL_25;
            }

            v12 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
            v9 = 1;
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v9 = 1;
        }

LABEL_25:
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      [v7 count];
      createManagedAssetError();
      *a4 = v9 = 0;
    }
  }

  else
  {
    createManagedAssetError();
    *a4 = v9 = 0;
  }

  return v9;
}

- (id)createWith:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  [WeakRetained addTable:self->_name fields:v9 attributes:v8 error:a5];

  if (*a5)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[MAKVStoreManager defaultManager];
    v13 = [v12 registerStore:self isCreateOp:1 storeChain:0 error:a5];

    if (v13)
    {
      [v13 saveBaseStoreInfoWithError:a5];
    }

    if (*a5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }
  }

  return v11;
}

- (id)description
{
  identifier = self->_identifier;
  v3 = [(MAKVStore *)self->_baseStore identifier];
  v4 = [NSString stringWithFormat:@"MAKVStore.id=%@ baseStore=%@", identifier, v3];

  return v4;
}

- (BOOL)saveBaseStoreInfoWithError:(id *)a3
{
  baseStore = self->_baseStore;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v7 = WeakRetained;
  if (baseStore)
  {
    name = self->_name;
    v9 = [(MAKVStore *)self->_baseStore group];
    v10 = [(MAKVStore *)self->_baseStore name];
    v11 = [(MAKVStore *)self->_baseStore profile];
    [v7 addBaseStoreToTable:name baseGroup:v9 baseStore:v10 baseProfile:v11 error:a3];

LABEL_5:
    return *a3 == 0;
  }

  v12 = [WeakRetained tableExists:@"__masd_meta" error:a3];

  if (v12)
  {
    v7 = objc_loadWeakRetained(&self->_db);
    v13 = self->_name;
    v16 = @"tablename";
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v7 deleteData:@"__masd_meta" keys:v14 error:a3];

    goto LABEL_5;
  }

  return *a3 == 0;
}

- (BOOL)put:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v11 = [WeakRetained verifyTableName:self->_name error:a5];

  if (v11 && [(MAKVStore *)self verifyColumnNamesInRecordArray:v8 error:a5])
  {
    if (sub_100023CF4(v9, self->_autoUpdateRecordTimestamp))
    {
      v12 = 5;
    }

    else
    {
      v12 = 0;
    }

    if (sub_100023CF4(v9, self->_autoInsertUpdatedDate))
    {
      v12 |= 3uLL;
    }

    v13 = objc_loadWeakRetained(&self->_db);
    v14 = [v13 upsert:self->_name records:v8 tsOptions:v12 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)putDictionay:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        [v10 addObject:{v17, v22}];
        v18 = [v12 objectForKeyedSubscript:v17];
        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v14);
  }

  v26[0] = v10;
  v26[1] = v11;
  v19 = [NSArray arrayWithObjects:v26 count:2];
  v20 = [(MAKVStore *)self put:v19 attributes:v9 error:a5];

  return v20;
}

- (id)applyStagingFilterOnKeys:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_hasStaging)
  {
    goto LABEL_14;
  }

  v9 = v7;
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = kMAKVStoreOptionsKey;
  v12 = [v9 objectForKeyedSubscript:kMAKVStoreOptionsKey];
  if (!v12)
  {
    v13 = 0;
LABEL_8:
    LOBYTE(v14) = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = v12;
    v13 = createManagedAssetError();
    v15 = v13;
    goto LABEL_8;
  }

  v13 = 0;
  v14 = ([v12 unsignedIntValue] >> 3) & 1;
LABEL_9:

  v16 = v13;
  if (v16)
  {
    v17 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v22 = v17;
      v23 = [v10 objectForKeyedSubscript:v11];
      *buf = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);
    }
  }

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_13:
  v18 = kMAKVCol_stagingFrom;
  v19 = [v6 objectForKeyedSubscript:{kMAKVCol_stagingFrom, v24}];

  if (v19)
  {
LABEL_14:
    v20 = v6;
    goto LABEL_15;
  }

  v20 = [v6 mutableCopy];
  [v20 setObject:&off_10011DBB0 forKeyedSubscript:v18];
LABEL_15:

  return v20;
}

- (BOOL)updateFor:(id)a3 value:(id)a4 attributes:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v14 = [WeakRetained verifyTableName:self->_name error:a6];

  if (v14 && [(MAKVStore *)self verifyColumnNamesInDictionary:v10 error:a6]&& [(MAKVStore *)self verifyColumnNamesInDictionary:v11 error:a6])
  {
    if (self->_cloudSync && ([v11 objectForKeyedSubscript:self->_recordHandleField], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      recordHandleField = self->_recordHandleField;
      name = self->_name;
      createManagedAssetError();
      *a6 = v16 = 0;
    }

    else
    {
      if (sub_100023CF4(v12, self->_autoUpdateRecordTimestamp))
      {
        v18 = 6;
      }

      else
      {
        v18 = 0;
      }

      if (sub_100023CF4(v12, self->_autoInsertUpdatedDate))
      {
        v18 |= 2uLL;
      }

      v19 = objc_loadWeakRetained(&self->_db);
      v20 = self->_name;
      v21 = [(MAKVStore *)self applyStagingFilterOnKeys:v10 attributes:v12];
      v16 = [v19 updateData:v20 key:v21 value:v11 tsOptions:v18 error:a6];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)queryFor:(id)a3 attributes:(id)a4 records:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v13 = [WeakRetained verifyTableName:self->_name error:a6];

  if (v13 && [(MAKVStore *)self verifyColumnNamesInDictionary:v10 error:a6])
  {
    v14 = [v11 objectForKeyedSubscript:kMAKVStoreDesiredKeys];
    if (v14)
    {
      v15 = v14;
      if (![(MAKVStore *)self verifyColumnNamesInArray:v14 error:a6])
      {
        v16 = 0;
        goto LABEL_31;
      }

      if (![(NSArray *)v15 count])
      {
        name = self->_name;
        createManagedAssetError();
        *a6 = v16 = 0;
LABEL_31:

        goto LABEL_32;
      }

LABEL_24:
      v27 = [v11 objectForKeyedSubscript:{kMAKVStoreNonNullKeys, v33}];
      if (v27)
      {
        if (![(MAKVStore *)self verifyColumnNamesInArray:v27 error:a6])
        {
          v16 = 0;
          goto LABEL_30;
        }

        if (![v27 count])
        {
          v35 = self->_name;
          createManagedAssetError();
          *a6 = v16 = 0;
          goto LABEL_30;
        }
      }

      v28 = objc_loadWeakRetained(&self->_db);
      v29 = self->_name;
      v30 = [(MAKVStore *)self applyStagingFilterOnKeys:v10 attributes:v11];
      v16 = [v28 query:v29 keys:v30 desiredKeys:v15 nonNullKeys:v27 records:a5 error:a6];

LABEL_30:
      goto LABEL_31;
    }

    v17 = v11;
    v15 = v17;
    if (!v17)
    {
      goto LABEL_24;
    }

    v36 = kMAKVStoreOptionsKey;
    v18 = [(NSArray *)v17 objectForKeyedSubscript:?];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = 0;
        v20 = ([v18 unsignedIntValue] >> 8) & 1;
        goto LABEL_16;
      }

      v33 = v18;
      v19 = createManagedAssetError();
      v21 = v19;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
LABEL_16:

    v22 = v19;
    if (v22)
    {
      v23 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        v32 = v23;
        v37 = [(NSArray *)v15 objectForKeyedSubscript:v36];
        *buf = 138412546;
        v39 = v37;
        v40 = 2112;
        v41 = v22;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "invalid kvstore options in attributes: %@ error: %@", buf, 0x16u);
      }
    }

    if (v20)
    {
      v24 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
      {
        exportableColumns = self->_exportableColumns;
        v26 = self->_name;
        *buf = 138412546;
        v39 = exportableColumns;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Set kMAKVStoreDesiredKeys=%@ for export query for store: %@", buf, 0x16u);
      }

      v15 = self->_exportableColumns;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_24;
  }

  v16 = 0;
LABEL_32:

  return v16;
}

- (id)queryDictionaryFor:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v10 = 0;
  v6 = [(MAKVStore *)self queryFor:a3 attributes:a4 records:&v10 error:a5];
  v7 = v10;
  v8 = 0;
  if (v6)
  {
    v8 = [MAKVStore rowToDictionary:v7 error:a5];
  }

  return v8;
}

- (id)queryRowDictionariesFor:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v10 = 0;
  v6 = [(MAKVStore *)self queryFor:a3 attributes:a4 records:&v10 error:a5];
  v7 = v10;
  v8 = 0;
  if (v6)
  {
    v8 = [MAKVStore queryOutputToArrayOfDictionaries:v7 error:a5];
  }

  return v8;
}

- (BOOL)queryForColumn:(id)a3 column:(id)a4 attributes:(id)a5 values:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mutableCopy];
    v24 = v13;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    [v16 setObject:v17 forKeyedSubscript:kMAKVStoreDesiredKeys];
  }

  else
  {
    v25 = v13;
    v26 = kMAKVStoreDesiredKeys;
    v17 = [NSArray arrayWithObjects:&v25 count:1];
    v27 = v17;
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  v23 = 0;
  v18 = [(MAKVStore *)self queryFor:v12 attributes:v16 records:&v23 error:a7];
  v19 = v23;
  if (v18)
  {
    v20 = [MAKVStore singleColumnQueryOutputToArray:v19 error:a7];
    *a6 = v20;
    v21 = v20 != 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100026094(a7);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)batchQueryFor:(id)a3 attributes:(id)a4 records:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v13 = [WeakRetained verifyTableName:self->_name error:a6];

  if (v13 && [(MAKVStore *)self verifyColumnNamesInBatchRequest:v10 error:a6])
  {
    v14 = objc_loadWeakRetained(&self->_db);
    v15 = [v14 batchQuery:self->_name batchKeys:v10 attributes:v11 records:a5 error:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)deleteFor:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v11 = [WeakRetained verifyTableName:self->_name error:a5];

  if (v11 && [(MAKVStore *)self verifyColumnNamesInDictionary:v8 error:a5])
  {
    v12 = objc_loadWeakRetained(&self->_db);
    name = self->_name;
    v14 = [(MAKVStore *)self applyStagingFilterOnKeys:v8 attributes:v9];
    v15 = [v12 deleteData:name keys:v14 error:a5];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)batchDeleteFor:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v9 = [WeakRetained verifyTableName:self->_name error:a5];

  if (v9 && [(MAKVStore *)self verifyColumnNamesInBatchRequest:v7 error:a5])
  {
    v10 = objc_loadWeakRetained(&self->_db);
    v11 = [v10 batchDeleteData:self->_name batchKeys:v7 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deleteStore:(id)a3 error:(id *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v7 = [WeakRetained verifyTableName:self->_name error:a4];

  if (!v7)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_db);
  [v8 deleteTable:self->_name error:a4];

  if (*a4)
  {
    return 0;
  }

  columns = self->_columns;
  self->_columns = 0;

  v12 = objc_loadWeakRetained(&self->_db);
  v13 = [v12 tableExists:@"__masd_meta" error:a4];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_db);
    name = self->_name;
    v18 = @"tablename";
    v19 = name;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v14 deleteData:@"__masd_meta" keys:v16 error:a4];
  }

  v17 = +[MAKVStoreManager defaultManager];
  v9 = [v17 removeStore:self error:a4];

  return v9;
}

- (BOOL)existsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  LOBYTE(a3) = [WeakRetained tableExists:self->_name error:a3];

  return a3;
}

- (BOOL)getBaseStoreName:(id *)a3 baseGroup:(id *)a4 baseProfile:(id *)a5 error:(id *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  LOBYTE(a6) = [WeakRetained getBaseStoreNameFor:self->_name baseGroup:a4 baseStore:a3 baseProfile:a5 error:a6];

  return a6;
}

- (void)addOverlayStore:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->_overlays)
  {
    v5 = +[NSMutableArray array];
    overlays = self->_overlays;
    self->_overlays = v5;

    v4 = v8;
  }

  v7 = [v4 identifier];
  if (([(NSMutableArray *)self->_overlays containsObject:v7]& 1) == 0)
  {
    [(NSMutableArray *)self->_overlays addObject:v7];
  }
}

- (void)removeOverlayStore:(id)a3
{
  overlays = self->_overlays;
  v4 = [a3 identifier];
  [(NSMutableArray *)overlays removeObject:v4];
}

+ (BOOL)queryOutputToArrayOfDictionaries:(id)a3 results:(id)a4 error:(id *)a5
{
  v7 = a3;
  v24 = a4;
  v8 = [v7 count];
  if (v8 == 1)
  {
    *a5 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_1000260FC(a5);
    }

    v11 = 0;
  }

  else
  {
    v9 = v8;
    if (v8)
    {
      v12 = [v7 objectAtIndexedSubscript:0];
      v13 = [v12 count];
      v14 = [NSMutableDictionary dictionaryWithCapacity:v13];
      v15 = [v7 objectAtIndexedSubscript:1];
      if ([v15 count] == v13)
      {
        v23 = a5;
        v16 = 1;
        while (1)
        {
          if (v13)
          {
            for (i = 0; i != v13; ++i)
            {
              v18 = [v15 objectAtIndexedSubscript:i];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v20 = [v15 objectAtIndexedSubscript:i];
                v21 = [v12 objectAtIndexedSubscript:i];
                [v14 setObject:v20 forKeyedSubscript:v21];
              }
            }
          }

          if ([v14 count])
          {
            [v24 addObject:v14];
          }

          if (++v16 == v9)
          {
            break;
          }

          v14 = [NSMutableDictionary dictionaryWithCapacity:v13];
          v15 = [v7 objectAtIndexedSubscript:v16];
          if ([v15 count] != v13)
          {
            v11 = v9 <= v16;
            a5 = v23;
            goto LABEL_22;
          }
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
LABEL_22:
        *a5 = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
        {
          sub_1000260FC(a5);
        }
      }
    }

    else
    {
      v10 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
      {
        sub_100026164(v10);
      }

      v11 = 1;
    }
  }

  return v11;
}

+ (id)singleColumnQueryOutputToArray:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    if (v6 == 1)
    {
      *a4 = createManagedAssetError();
      v8 = 0;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        sub_1000260FC(a4);
        v8 = 0;
      }
    }

    else
    {
      v8 = [NSMutableArray arrayWithCapacity:v6 - 1];
      v9 = 1;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        v11 = [v10 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v13 = [v10 objectAtIndexedSubscript:0];
          [v8 addObject:v13];
        }

        ++v9;
      }

      while (v7 != v9);
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

+ (id)queryOutputToArrayOfDictionaries:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray array];
  LODWORD(a4) = [a1 queryOutputToArrayOfDictionaries:v6 results:v7 error:a4];

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)rowToDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray array];
  LODWORD(a1) = [a1 queryOutputToArrayOfDictionaries:v6 results:v7 error:a4];

  if (a1)
  {
    if (![v7 count])
    {
      v8 = &__NSDictionary0__struct;
      goto LABEL_9;
    }

    if ([v7 count] == 1)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      goto LABEL_9;
    }

    [v7 count];
    *a4 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_1000260FC(a4);
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (MAKVGroupDB)db
{
  WeakRetained = objc_loadWeakRetained(&self->_db);

  return WeakRetained;
}

@end