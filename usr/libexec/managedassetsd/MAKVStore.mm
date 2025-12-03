@interface MAKVStore
+ (BOOL)queryOutputToArrayOfDictionaries:(id)dictionaries results:(id)results error:(id *)error;
+ (id)queryOutputToArrayOfDictionaries:(id)dictionaries error:(id *)error;
+ (id)rowToDictionary:(id)dictionary error:(id *)error;
+ (id)singleColumnQueryOutputToArray:(id)array error:(id *)error;
- (BOOL)batchDeleteFor:(id)for attributes:(id)attributes error:(id *)error;
- (BOOL)batchQueryFor:(id)for attributes:(id)attributes records:(id *)records error:(id *)error;
- (BOOL)deleteFor:(id)for attributes:(id)attributes error:(id *)error;
- (BOOL)deleteStore:(id)store error:(id *)error;
- (BOOL)existsWithError:(id *)error;
- (BOOL)getBaseStoreName:(id *)name baseGroup:(id *)group baseProfile:(id *)profile error:(id *)error;
- (BOOL)put:(id)put attributes:(id)attributes error:(id *)error;
- (BOOL)putDictionay:(id)dictionay attributes:(id)attributes error:(id *)error;
- (BOOL)queryFor:(id)for attributes:(id)attributes records:(id *)records error:(id *)error;
- (BOOL)queryForColumn:(id)column column:(id)a4 attributes:(id)attributes values:(id *)values error:(id *)error;
- (BOOL)saveBaseStoreInfoWithError:(id *)error;
- (BOOL)updateFor:(id)for value:(id)value attributes:(id)attributes error:(id *)error;
- (BOOL)verifyColumnNamesInArray:(id)array error:(id *)error;
- (BOOL)verifyColumnNamesInBatchRequest:(id)request error:(id *)error;
- (BOOL)verifyColumnNamesInDictionary:(id)dictionary error:(id *)error;
- (BOOL)verifyColumnNamesInRecordArray:(id)array error:(id *)error;
- (MAKVGroupDB)db;
- (MAKVStore)initWithName:(id)name identifier:(id)identifier profile:(id)profile db:(id)db attributes:(id)attributes error:(id *)error;
- (id)applyStagingFilterOnKeys:(id)keys attributes:(id)attributes;
- (id)columnNamesWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createWith:(id)with attributes:(id)attributes error:(id *)error;
- (id)description;
- (id)queryDictionaryFor:(id)for attributes:(id)attributes error:(id *)error;
- (id)queryRowDictionariesFor:(id)for attributes:(id)attributes error:(id *)error;
- (void)addOverlayStore:(id)store;
- (void)removeOverlayStore:(id)store;
@end

@implementation MAKVStore

- (MAKVStore)initWithName:(id)name identifier:(id)identifier profile:(id)profile db:(id)db attributes:(id)attributes error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  profileCopy = profile;
  dbCopy = db;
  attributesCopy = attributes;
  v56.receiver = self;
  v56.super_class = MAKVStore;
  v19 = [(MAKVStore *)&v56 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [attributesCopy objectForKeyedSubscript:kMAGroupKey];
    v55 = nameCopy;
    v53 = profileCopy;
    v50 = attributesCopy;
    obj = dbCopy;
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

    v54 = identifierCopy;
    v25 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v25;

    objc_storeStrong(&v19->_profile, profile);
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
          name = [v35 name];
          if (([(NSString *)v29 isEqual:name]& 1) != 0)
          {
            group = [v35 group];
            v38 = [(NSString *)v28 isEqual:group];

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
    recordHandleField = [(MAKVStoreConfig *)v41 recordHandleField];
    recordHandleField = v52->_recordHandleField;
    v52->_recordHandleField = recordHandleField;

    v52->_hasStaging = [(MAKVStoreConfig *)v41 hasStaging];
    v52->_autoUpdateRecordTimestamp = [(MAKVStoreConfig *)v41 autoUpdateTimeStamp];
    v52->_autoInsertUpdatedDate = [(MAKVStoreConfig *)v41 autoInsertUpdatedDate];
    v52->_assetType = [(MAKVStoreConfig *)v41 assetType];
    baseStore = v52->_baseStore;
    v52->_baseStore = 0;

    overlays = v52->_overlays;
    v52->_overlays = 0;

    dbCopy = obj;
    objc_storeWeak(&v52->_db, obj);
    columns = v52->_columns;
    v52->_columns = 0;

    v47 = v52;
    identifierCopy = v54;
    nameCopy = v55;
    profileCopy = v53;
    attributesCopy = v50;
  }

  else
  {
    *error = createManagedAssetError();
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)columnNamesWithError:(id *)error
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
  serialQueue = [v5 serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C68;
  block[3] = &unk_100116250;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v16;
  dispatch_sync(serialQueue, block);

  *error = v11[5];
  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (BOOL)verifyColumnNamesInDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([dictionaryCopy count])
    {
      v7 = [(MAKVStore *)self columnNamesWithError:error];
      if (v7 && !*error)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        obj = dictionaryCopy;
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
                lowercaseString = [v13 lowercaseString];
                v15 = [v7 containsObject:lowercaseString];

                if (v15)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *error = v8 = 0;
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
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInArray:(id)array error:(id *)error
{
  arrayCopy = array;
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([arrayCopy count])
    {
      v7 = [(MAKVStore *)self columnNamesWithError:error];
      if (v7 && !*error)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        obj = arrayCopy;
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
                lowercaseString = [v13 lowercaseString];
                v15 = [v7 containsObject:lowercaseString];

                if (v15)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *error = v8 = 0;
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
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInBatchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (requestCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(MAKVStore *)self columnNamesWithError:error];
    if (v7 && !*error)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = requestCopy;
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
              *error = v8 = 0;
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
                    lowercaseString = [v22 lowercaseString];
                    v24 = [v7 containsObject:lowercaseString];

                    if (v24)
                    {
                      continue;
                    }
                  }

                  *error = createManagedAssetError();

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
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)verifyColumnNamesInRecordArray:(id)array error:(id *)error
{
  arrayCopy = array;
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [arrayCopy count])
  {
    v7 = [arrayCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      v8 = [(MAKVStore *)self columnNamesWithError:error];
      if (v8 && !*error)
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
                lowercaseString = [v15 lowercaseString];
                v17 = [v8 containsObject:lowercaseString];

                if (v17)
                {
                  continue;
                }
              }

              createManagedAssetError();
              *error = v9 = 0;
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
      *error = v9 = 0;
    }
  }

  else
  {
    createManagedAssetError();
    *error = v9 = 0;
  }

  return v9;
}

- (id)createWith:(id)with attributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  withCopy = with;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  [WeakRetained addTable:self->_name fields:withCopy attributes:attributesCopy error:error];

  if (*error)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[MAKVStoreManager defaultManager];
    v13 = [v12 registerStore:self isCreateOp:1 storeChain:0 error:error];

    if (v13)
    {
      [v13 saveBaseStoreInfoWithError:error];
    }

    if (*error)
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
  identifier = [(MAKVStore *)self->_baseStore identifier];
  v4 = [NSString stringWithFormat:@"MAKVStore.id=%@ baseStore=%@", identifier, identifier];

  return v4;
}

- (BOOL)saveBaseStoreInfoWithError:(id *)error
{
  baseStore = self->_baseStore;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v7 = WeakRetained;
  if (baseStore)
  {
    name = self->_name;
    group = [(MAKVStore *)self->_baseStore group];
    name = [(MAKVStore *)self->_baseStore name];
    profile = [(MAKVStore *)self->_baseStore profile];
    [v7 addBaseStoreToTable:name baseGroup:group baseStore:name baseProfile:profile error:error];

LABEL_5:
    return *error == 0;
  }

  v12 = [WeakRetained tableExists:@"__masd_meta" error:error];

  if (v12)
  {
    v7 = objc_loadWeakRetained(&self->_db);
    v13 = self->_name;
    v16 = @"tablename";
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v7 deleteData:@"__masd_meta" keys:v14 error:error];

    goto LABEL_5;
  }

  return *error == 0;
}

- (BOOL)put:(id)put attributes:(id)attributes error:(id *)error
{
  putCopy = put;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v11 = [WeakRetained verifyTableName:self->_name error:error];

  if (v11 && [(MAKVStore *)self verifyColumnNamesInRecordArray:putCopy error:error])
  {
    if (sub_100023CF4(attributesCopy, self->_autoUpdateRecordTimestamp))
    {
      v12 = 5;
    }

    else
    {
      v12 = 0;
    }

    if (sub_100023CF4(attributesCopy, self->_autoInsertUpdatedDate))
    {
      v12 |= 3uLL;
    }

    v13 = objc_loadWeakRetained(&self->_db);
    v14 = [v13 upsert:self->_name records:putCopy tsOptions:v12 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)putDictionay:(id)dictionay attributes:(id)attributes error:(id *)error
{
  dictionayCopy = dictionay;
  attributesCopy = attributes;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = dictionayCopy;
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
  v20 = [(MAKVStore *)self put:v19 attributes:attributesCopy error:error];

  return v20;
}

- (id)applyStagingFilterOnKeys:(id)keys attributes:(id)attributes
{
  keysCopy = keys;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (!self->_hasStaging)
  {
    goto LABEL_14;
  }

  v9 = attributesCopy;
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
  v19 = [keysCopy objectForKeyedSubscript:{kMAKVCol_stagingFrom, v24}];

  if (v19)
  {
LABEL_14:
    v20 = keysCopy;
    goto LABEL_15;
  }

  v20 = [keysCopy mutableCopy];
  [v20 setObject:&off_10011DBB0 forKeyedSubscript:v18];
LABEL_15:

  return v20;
}

- (BOOL)updateFor:(id)for value:(id)value attributes:(id)attributes error:(id *)error
{
  forCopy = for;
  valueCopy = value;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v14 = [WeakRetained verifyTableName:self->_name error:error];

  if (v14 && [(MAKVStore *)self verifyColumnNamesInDictionary:forCopy error:error]&& [(MAKVStore *)self verifyColumnNamesInDictionary:valueCopy error:error])
  {
    if (self->_cloudSync && ([valueCopy objectForKeyedSubscript:self->_recordHandleField], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      recordHandleField = self->_recordHandleField;
      name = self->_name;
      createManagedAssetError();
      *error = v16 = 0;
    }

    else
    {
      if (sub_100023CF4(attributesCopy, self->_autoUpdateRecordTimestamp))
      {
        v18 = 6;
      }

      else
      {
        v18 = 0;
      }

      if (sub_100023CF4(attributesCopy, self->_autoInsertUpdatedDate))
      {
        v18 |= 2uLL;
      }

      v19 = objc_loadWeakRetained(&self->_db);
      v20 = self->_name;
      v21 = [(MAKVStore *)self applyStagingFilterOnKeys:forCopy attributes:attributesCopy];
      v16 = [v19 updateData:v20 key:v21 value:valueCopy tsOptions:v18 error:error];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)queryFor:(id)for attributes:(id)attributes records:(id *)records error:(id *)error
{
  forCopy = for;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v13 = [WeakRetained verifyTableName:self->_name error:error];

  if (v13 && [(MAKVStore *)self verifyColumnNamesInDictionary:forCopy error:error])
  {
    v14 = [attributesCopy objectForKeyedSubscript:kMAKVStoreDesiredKeys];
    if (v14)
    {
      v15 = v14;
      if (![(MAKVStore *)self verifyColumnNamesInArray:v14 error:error])
      {
        v16 = 0;
        goto LABEL_31;
      }

      if (![(NSArray *)v15 count])
      {
        name = self->_name;
        createManagedAssetError();
        *error = v16 = 0;
LABEL_31:

        goto LABEL_32;
      }

LABEL_24:
      v27 = [attributesCopy objectForKeyedSubscript:{kMAKVStoreNonNullKeys, v33}];
      if (v27)
      {
        if (![(MAKVStore *)self verifyColumnNamesInArray:v27 error:error])
        {
          v16 = 0;
          goto LABEL_30;
        }

        if (![v27 count])
        {
          v35 = self->_name;
          createManagedAssetError();
          *error = v16 = 0;
          goto LABEL_30;
        }
      }

      v28 = objc_loadWeakRetained(&self->_db);
      v29 = self->_name;
      v30 = [(MAKVStore *)self applyStagingFilterOnKeys:forCopy attributes:attributesCopy];
      v16 = [v28 query:v29 keys:v30 desiredKeys:v15 nonNullKeys:v27 records:records error:error];

LABEL_30:
      goto LABEL_31;
    }

    v17 = attributesCopy;
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

- (id)queryDictionaryFor:(id)for attributes:(id)attributes error:(id *)error
{
  v10 = 0;
  v6 = [(MAKVStore *)self queryFor:for attributes:attributes records:&v10 error:error];
  v7 = v10;
  v8 = 0;
  if (v6)
  {
    v8 = [MAKVStore rowToDictionary:v7 error:error];
  }

  return v8;
}

- (id)queryRowDictionariesFor:(id)for attributes:(id)attributes error:(id *)error
{
  v10 = 0;
  v6 = [(MAKVStore *)self queryFor:for attributes:attributes records:&v10 error:error];
  v7 = v10;
  v8 = 0;
  if (v6)
  {
    v8 = [MAKVStore queryOutputToArrayOfDictionaries:v7 error:error];
  }

  return v8;
}

- (BOOL)queryForColumn:(id)column column:(id)a4 attributes:(id)attributes values:(id *)values error:(id *)error
{
  columnCopy = column;
  v13 = a4;
  attributesCopy = attributes;
  v15 = attributesCopy;
  if (attributesCopy)
  {
    v16 = [attributesCopy mutableCopy];
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
  v18 = [(MAKVStore *)self queryFor:columnCopy attributes:v16 records:&v23 error:error];
  v19 = v23;
  if (v18)
  {
    v20 = [MAKVStore singleColumnQueryOutputToArray:v19 error:error];
    *values = v20;
    v21 = v20 != 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100026094(error);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)batchQueryFor:(id)for attributes:(id)attributes records:(id *)records error:(id *)error
{
  forCopy = for;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v13 = [WeakRetained verifyTableName:self->_name error:error];

  if (v13 && [(MAKVStore *)self verifyColumnNamesInBatchRequest:forCopy error:error])
  {
    v14 = objc_loadWeakRetained(&self->_db);
    v15 = [v14 batchQuery:self->_name batchKeys:forCopy attributes:attributesCopy records:records error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)deleteFor:(id)for attributes:(id)attributes error:(id *)error
{
  forCopy = for;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v11 = [WeakRetained verifyTableName:self->_name error:error];

  if (v11 && [(MAKVStore *)self verifyColumnNamesInDictionary:forCopy error:error])
  {
    v12 = objc_loadWeakRetained(&self->_db);
    name = self->_name;
    v14 = [(MAKVStore *)self applyStagingFilterOnKeys:forCopy attributes:attributesCopy];
    v15 = [v12 deleteData:name keys:v14 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)batchDeleteFor:(id)for attributes:(id)attributes error:(id *)error
{
  forCopy = for;
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v9 = [WeakRetained verifyTableName:self->_name error:error];

  if (v9 && [(MAKVStore *)self verifyColumnNamesInBatchRequest:forCopy error:error])
  {
    v10 = objc_loadWeakRetained(&self->_db);
    v11 = [v10 batchDeleteData:self->_name batchKeys:forCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deleteStore:(id)store error:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  v7 = [WeakRetained verifyTableName:self->_name error:error];

  if (!v7)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_db);
  [v8 deleteTable:self->_name error:error];

  if (*error)
  {
    return 0;
  }

  columns = self->_columns;
  self->_columns = 0;

  v12 = objc_loadWeakRetained(&self->_db);
  v13 = [v12 tableExists:@"__masd_meta" error:error];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_db);
    name = self->_name;
    v18 = @"tablename";
    v19 = name;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v14 deleteData:@"__masd_meta" keys:v16 error:error];
  }

  v17 = +[MAKVStoreManager defaultManager];
  v9 = [v17 removeStore:self error:error];

  return v9;
}

- (BOOL)existsWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  LOBYTE(error) = [WeakRetained tableExists:self->_name error:error];

  return error;
}

- (BOOL)getBaseStoreName:(id *)name baseGroup:(id *)group baseProfile:(id *)profile error:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_db);
  LOBYTE(error) = [WeakRetained getBaseStoreNameFor:self->_name baseGroup:group baseStore:name baseProfile:profile error:error];

  return error;
}

- (void)addOverlayStore:(id)store
{
  storeCopy = store;
  v8 = storeCopy;
  if (!self->_overlays)
  {
    v5 = +[NSMutableArray array];
    overlays = self->_overlays;
    self->_overlays = v5;

    storeCopy = v8;
  }

  identifier = [storeCopy identifier];
  if (([(NSMutableArray *)self->_overlays containsObject:identifier]& 1) == 0)
  {
    [(NSMutableArray *)self->_overlays addObject:identifier];
  }
}

- (void)removeOverlayStore:(id)store
{
  overlays = self->_overlays;
  identifier = [store identifier];
  [(NSMutableArray *)overlays removeObject:identifier];
}

+ (BOOL)queryOutputToArrayOfDictionaries:(id)dictionaries results:(id)results error:(id *)error
{
  dictionariesCopy = dictionaries;
  resultsCopy = results;
  v8 = [dictionariesCopy count];
  if (v8 == 1)
  {
    *error = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_1000260FC(error);
    }

    v11 = 0;
  }

  else
  {
    v9 = v8;
    if (v8)
    {
      v12 = [dictionariesCopy objectAtIndexedSubscript:0];
      v13 = [v12 count];
      v14 = [NSMutableDictionary dictionaryWithCapacity:v13];
      v15 = [dictionariesCopy objectAtIndexedSubscript:1];
      if ([v15 count] == v13)
      {
        errorCopy = error;
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
            [resultsCopy addObject:v14];
          }

          if (++v16 == v9)
          {
            break;
          }

          v14 = [NSMutableDictionary dictionaryWithCapacity:v13];
          v15 = [dictionariesCopy objectAtIndexedSubscript:v16];
          if ([v15 count] != v13)
          {
            v11 = v9 <= v16;
            error = errorCopy;
            goto LABEL_22;
          }
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
LABEL_22:
        *error = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
        {
          sub_1000260FC(error);
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

+ (id)singleColumnQueryOutputToArray:(id)array error:(id *)error
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  if (v6)
  {
    v7 = v6;
    if (v6 == 1)
    {
      *error = createManagedAssetError();
      v8 = 0;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        sub_1000260FC(error);
        v8 = 0;
      }
    }

    else
    {
      v8 = [NSMutableArray arrayWithCapacity:v6 - 1];
      v9 = 1;
      do
      {
        v10 = [arrayCopy objectAtIndexedSubscript:v9];
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

+ (id)queryOutputToArrayOfDictionaries:(id)dictionaries error:(id *)error
{
  dictionariesCopy = dictionaries;
  v7 = +[NSMutableArray array];
  LODWORD(error) = [self queryOutputToArrayOfDictionaries:dictionariesCopy results:v7 error:error];

  if (error)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)rowToDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = +[NSMutableArray array];
  LODWORD(self) = [self queryOutputToArrayOfDictionaries:dictionaryCopy results:v7 error:error];

  if (self)
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
    *error = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_1000260FC(error);
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