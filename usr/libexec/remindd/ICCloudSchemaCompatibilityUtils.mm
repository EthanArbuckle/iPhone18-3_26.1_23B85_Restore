@interface ICCloudSchemaCompatibilityUtils
+ (BOOL)_isCloudSchemaCatchUpSyncNeededForExistingCloudObject:(id)object persistenceCloudSchemaVersion:(int64_t)version outIncompatiblePropertyKeys:(id *)keys;
+ (BOOL)cloudSchemaCatchUpSyncDidCompleteWithAccountIdentifier:(id)identifier context:(id)context;
+ (BOOL)isCloudSchemaCatchUpSyncNeededForAccountIdentifier:(id)identifier context:(id)context outPersistenceCloudSchemaVersion:(int64_t *)version;
+ (id)incompatiblePropertyKeysForCloudObject:(id)object persistenceCloudSchemaVersion:(int64_t)version;
+ (int64_t)persistenceCloudSchemaVersionWithAccountIdentifier:(id)identifier context:(id)context;
@end

@implementation ICCloudSchemaCompatibilityUtils

+ (BOOL)isCloudSchemaCatchUpSyncNeededForAccountIdentifier:(id)identifier context:(id)context outPersistenceCloudSchemaVersion:(int64_t *)version
{
  identifierCopy = identifier;
  v9 = [self persistenceCloudSchemaVersionWithAccountIdentifier:identifierCopy context:context];
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = identifierCopy;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = 20250728;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ICCSCU: isCloudSchemaCatchUpSyncNeeded? {accountIdentifier: %{public}@, persistence: %lld, runtime: %lld}", &v12, 0x20u);
  }

  if (version)
  {
    *version = v9;
  }

  return v9 < 20250728;
}

+ (BOOL)cloudSchemaCatchUpSyncDidCompleteWithAccountIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v8 = [self persistenceCloudSchemaVersionWithAccountIdentifier:identifierCopy context:contextCopy];
  v9 = +[REMLog cloudkit];
  v10 = v9;
  if (v8 >= 20250728)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1007679C8(identifierCopy, v8, v10);
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      v22 = 20250728;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: Will update account.persistenceCloudSchemaVersion {accountIdentifier: %{public}@, persistence: %lld, runtime: %lld}", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v22) = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000AE200;
    v15[3] = &unk_1008D9EE0;
    v11 = identifierCopy;
    v16 = v11;
    v17 = contextCopy;
    v18 = buf;
    [v17 performBlockAndWait:v15];
    if (*(*&buf[8] + 24) == 1)
    {
      v12 = +[REMLog cloudkit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 138543362;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: ckAccount.persistenceCloudSchemaVersion updated SUCCESS {accountID: %{public}@}", v19, 0xCu);
      }
    }

    else
    {
      v12 = +[REMLog cloudkit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100767A60(v11, v12);
      }
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v13 & 1;
}

+ (id)incompatiblePropertyKeysForCloudObject:(id)object persistenceCloudSchemaVersion:(int64_t)version
{
  objectCopy = object;
  v7 = +[NSArray array];
  v11 = v7;
  [self _isCloudSchemaCatchUpSyncNeededForExistingCloudObject:objectCopy persistenceCloudSchemaVersion:version outIncompatiblePropertyKeys:&v11];

  v8 = v11;
  v9 = v11;

  return v8;
}

+ (BOOL)_isCloudSchemaCatchUpSyncNeededForExistingCloudObject:(id)object persistenceCloudSchemaVersion:(int64_t)version outIncompatiblePropertyKeys:(id *)keys
{
  objectCopy = object;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000AE628;
  v30 = sub_1000AE638;
  if (keys)
  {
    v9 = +[NSMutableArray array];
  }

  else
  {
    v9 = 0;
  }

  v31 = v9;
  cdEntityName = [objc_opt_class() cdEntityName];
  if (cdEntityName)
  {
    v11 = cloudKitSchemaVersionIncompatibilityInfoMap();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AE640;
    v19[3] = &unk_1008DB990;
    versionCopy = version;
    v20 = cdEntityName;
    v21 = objectCopy;
    v22 = &v32;
    v25 = keys != 0;
    v23 = &v26;
    [v11 enumerateKeysAndObjectsUsingBlock:v19];
    if (keys)
    {
      *keys = [NSArray arrayWithArray:v27[5]];
    }

    v12 = *(v33 + 24);
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = [NSString stringWithFormat:@"%@.%@", v16, v17];
      *buf = 138543618;
      v37 = v18;
      v38 = 2080;
      v39 = "existingCloudObjectEntityName";
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[%{public}@] Passing in nil '%s'", buf, 0x16u);
    }

    NSLog(@"'%s' is unexpectedly nil", "existingCloudObjectEntityName");
    v12 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v12 & 1;
}

+ (int64_t)persistenceCloudSchemaVersionWithAccountIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AE8EC;
  v11[3] = &unk_1008D9EE0;
  v7 = identifierCopy;
  v12 = v7;
  v8 = contextCopy;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

@end