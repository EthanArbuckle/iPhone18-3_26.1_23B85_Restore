@interface _REMNSPersistentHistoryTrackingAbstract
- (id)_accountIDForPersistenceStoreID:(id)a3;
- (id)_accountIdentifierForPersistenceStoreID:(id)a3;
- (id)_changeTokenFromCDTrackingState:(id)a3 error:(id *)a4;
- (id)_currentREMChangeTokenFromNSPersistentStores:(id)a3 persistentStoreCoordinator:(id)a4;
- (id)_errorChangeSetWithError:(id)a3;
- (id)_executeDeleteHistoryRequest:(id)a3;
- (id)_fetchCDAuxiliaryChangeInfosWithObjectID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (id)_fetchCDTrackingStateWithClientID:(id)a3 andPerformBlock:(id)a4;
- (id)_fetchRequestWithPredicateUsingEntityNames:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)_persistenceStoreForAccountID:(id)a3;
- (id)_persistenceStoreIDForAccountID:(id)a3;
- (id)_persistenceStoreIDsForAccountTypes:(int64_t)a3;
- (id)_persistenceStoresForAccountTypes:(id)a3;
- (id)_resultChangeSetByExecutingRequest:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)currentChangeToken;
- (id)currentChangeTokenForAccountID:(id)a3;
- (id)currentChangeTokenForAccountTypes:(int64_t)a3;
- (id)earliestChangeTokenForAccountID:(id)a3;
- (void)_resolveObjectIDsInChanges:(id)a3 deletedObjectsIDMap:(id)a4 inManagedObjectContext:(id)a5;
- (void)deleteHistoryBeforeDate:(id)a3 completionHandler:(id)a4;
- (void)deleteHistoryBeforeToken:(id)a3 completionHandler:(id)a4;
- (void)fetchAuxiliaryChangeInfos:(id)a3 completionHandler:(id)a4;
- (void)fetchHistoryAfterDate:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchHistoryAfterToken:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6;
- (void)getTrackingStateWithClientID:(id)a3 completionHandler:(id)a4;
- (void)saveTrackingState:(id)a3 withClientID:(id)a4 completionHandler:(id)a5;
- (void)withManagedObjectContext:(id)a3;
@end

@implementation _REMNSPersistentHistoryTrackingAbstract

- (void)withManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)currentChangeToken
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000B9784;
  v9 = sub_1000B9794;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B979C;
  v4[3] = &unk_1008DBC08;
  v4[4] = self;
  v4[5] = &v5;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)currentChangeTokenForAccountTypes:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000B9784;
  v10 = sub_1000B9794;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B9930;
  v5[3] = &unk_1008DBC30;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)currentChangeTokenForAccountID:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000B9784;
  v14 = sub_1000B9794;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B9C14;
  v6[3] = &unk_1008DBC58;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)v7 withManagedObjectContext:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)earliestChangeTokenForAccountID:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000B9784;
  v14 = sub_1000B9794;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B9E5C;
  v6[3] = &unk_1008DBC58;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)v7 withManagedObjectContext:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)getTrackingStateWithClientID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = REMCheckedDynamicCast();
  v9 = +[REMLog changeTracking];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100769D14();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000B9784;
  v16 = sub_1000B9794;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BA27C;
  v11[3] = &unk_1008DBC80;
  v11[4] = self;
  v11[5] = &v12;
  v10 = [(_REMNSPersistentHistoryTrackingAbstract *)self _fetchCDTrackingStateWithClientID:v8 andPerformBlock:v11];
  v7[2](v7, v13[5], v10);

  _Block_object_dispose(&v12, 8);
}

- (void)saveTrackingState:(id)a3 withClientID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = REMCheckedDynamicCast();
  v12 = +[REMLog changeTracking];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100769D88();
  }

  v13 = [v8 lastConsumedChangeToken];
  v25 = 0;
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v25];
  v15 = v25;

  if (v14)
  {
    v16 = [v11 accountIdentifier];
    v17 = [(_REMNSPersistentHistoryTrackingAbstract *)self _persistenceStoreForAccountID:v16];

    if (v17)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000BA5DC;
      v21[3] = &unk_1008DBCA8;
      v22 = v17;
      v23 = v11;
      v24 = v14;
      v18 = [(_REMNSPersistentHistoryTrackingAbstract *)self _fetchCDTrackingStateWithClientID:v23 andPerformBlock:v21];
    }

    else
    {
      v20 = +[REMLog changeTracking];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100769E0C();
      }

      v18 = [NSError errorWithREMChangeErrorCode:7];
    }
  }

  else
  {
    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100769E74(v11, v15);
    }

    v18 = [NSError errorWithREMChangeErrorCode:9 underlyingError:v15];
  }

  v10[2](v10, v18);
}

- (void)fetchHistoryAfterDate:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 && [v11 count])
  {
    sub_100769FA4();
  }

  v13 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:v10];
  v14 = v13;
  if (a5)
  {
    [v13 setFetchLimit:a5];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000B9784;
  v32 = sub_1000B9794;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000B9784;
  v26 = sub_1000B9794;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BA994;
  v17[3] = &unk_1008DBCD0;
  v17[4] = self;
  v15 = v11;
  v18 = v15;
  v20 = &v22;
  v16 = v14;
  v19 = v16;
  v21 = &v28;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v17];
  v12[2](v12, v29[5], v23[5]);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

- (void)fetchHistoryAfterToken:(id)a3 entityNames:(id)a4 transactionFetchLimit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 && [v11 count])
  {
    sub_100769FA4();
  }

  v13 = v10;
  objc_opt_class();
  v14 = REMSpecificCast();

  v15 = v13;
  if (v14)
  {

    v15 = 0;
  }

  objc_opt_class();
  v16 = REMDynamicCast();
  v17 = v16;
  if (!v15 || v16)
  {
    if (v15)
    {
      v20 = [v16 token];
    }

    else
    {
      v20 = 0;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_1000B9784;
    v38 = sub_1000B9794;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1000B9784;
    v32 = sub_1000B9794;
    v33 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000BAD48;
    v21[3] = &unk_1008DBCF8;
    v18 = v20;
    v22 = v18;
    v23 = self;
    v24 = v11;
    v25 = &v28;
    v26 = &v34;
    v27 = a5;
    [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v21];
    v12[2](v12, v35[5], v29[5]);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v18 = [NSError errorWithREMChangeErrorCode:0];
    v19 = [(_REMNSPersistentHistoryTrackingAbstract *)self _errorChangeSetWithError:v18];
    v12[2](v12, v19, v18);
  }
}

- (id)_fetchRequestWithPredicateUsingEntityNames:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    v27 = v9;
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [NSEntityDescription entityForName:v15 inManagedObjectContext:v8];
          if (v16)
          {
            [v9 addObject:v16];
          }

          else
          {
            v17 = +[REMLog changeTracking];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v33 = v15;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Failed to find entity name in -fetchHistoryAfterToken:entityName: {name: %{public}@}", buf, 0xCu);
            }

            v18 = [REMError invalidParameterErrorWithDescription:@"Failed to find entity name in -fetchHistoryAfterToken:entityName."];
            if (a5)
            {
              *a5 = [NSError errorWithREMChangeErrorCode:1 underlyingError:v18];
            }

            v9 = v27;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v19 = [NSPersistentHistoryChange entityDescriptionWithContext:v8];
      v20 = [v19 propertiesByName];
      v21 = [v20 valueForKey:@"changedEntity"];

      v22 = objc_alloc_init(NSFetchRequest);
      [v22 setEntity:v19];
      v23 = [v21 name];
      v24 = [NSPredicate predicateWithFormat:@"%K IN %@", v23, v27];
      [v22 setPredicate:v24];

      v9 = v27;
    }

    else
    {
      v22 = 0;
    }

    v7 = v26;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)deleteHistoryBeforeDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:a3];
  v7 = [(_REMNSPersistentHistoryTrackingAbstract *)self _executeDeleteHistoryRequest:v8];
  v6[2](v6, v7);
}

- (void)deleteHistoryBeforeToken:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = v6;
  objc_opt_class();
  v8 = REMSpecificCast();

  v9 = v15;
  if (v8)
  {

    v9 = 0;
  }

  objc_opt_class();
  v10 = REMDynamicCast();
  v11 = v10;
  if (!v9 || v10)
  {
    if (v9)
    {
      v12 = [v10 token];
    }

    else
    {
      v12 = 0;
    }

    v13 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:v12];
    v14 = [(_REMNSPersistentHistoryTrackingAbstract *)self _executeDeleteHistoryRequest:v13];
    v7[2](v7, v14);
  }

  else
  {
    v12 = [NSError errorWithREMChangeErrorCode:0];
    v7[2](v7, v12);
  }
}

- (void)fetchAuxiliaryChangeInfos:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000B9784;
  v20 = sub_1000B9794;
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BB52C;
  v11[3] = &unk_1008DBD20;
  v9 = v6;
  v12 = v9;
  v13 = self;
  v15 = &v16;
  v10 = v8;
  v14 = v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v11];
  v7[2](v7, v10, v17[5]);

  _Block_object_dispose(&v16, 8);
}

- (id)_persistenceStoreForAccountID:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_persistenceStoresForAccountTypes:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_accountIdentifierForPersistenceStoreID:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_persistenceStoreIDForAccountID:(id)a3
{
  v3 = [(_REMNSPersistentHistoryTrackingAbstract *)self _persistenceStoreForAccountID:a3];
  v4 = [v3 identifier];

  return v4;
}

- (id)_persistenceStoreIDsForAccountTypes:(int64_t)a3
{
  v4 = [REMAccount _accountTypeMaskWithBitMask:a3];
  v5 = +[NSMutableArray array];
  v6 = [(_REMNSPersistentHistoryTrackingAbstract *)self _persistenceStoresForAccountTypes:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) identifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_accountIDForPersistenceStoreID:(id)a3
{
  v4 = a3;
  v5 = [(_REMNSPersistentHistoryTrackingAbstract *)self cachedAccountIDsByStoreIDsMap];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(_REMNSPersistentHistoryTrackingAbstract *)self _accountIdentifierForPersistenceStoreID:v4];
    v8 = [[NSUUID alloc] initWithUUIDString:v7];
    v9 = v8;
    if (v7 && v8)
    {
      v6 = [REMAccount objectIDWithUUID:v8];
      v10 = [(_REMNSPersistentHistoryTrackingAbstract *)self cachedAccountIDsByStoreIDsMap];
      [v10 setObject:v6 forKey:v4];
    }
  }

  return v6;
}

- (id)_currentREMChangeTokenFromNSPersistentStores:(id)a3 persistentStoreCoordinator:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v6 currentPersistentHistoryTokenFromStores:v5];
    v8 = [[REMNSPersistentHistoryToken alloc] initWithPersistentHistoryToken:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_errorChangeSetWithError:(id)a3
{
  if (a3)
  {
    v3 = [REMChangeSet errorChangeSetWithError:?];
  }

  else
  {
    sub_10076A008(&v5);
    v3 = v5;
  }

  return v3;
}

- (id)_resultChangeSetByExecutingRequest:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v65 = objc_autoreleasePoolPush();
  v10 = +[REMLog changeTracking];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 transactionAuthor];
    *buf = 138543362;
    v80 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "REMNSPersistentHistoryTracking resultChangeSet: Will fetch transactions {author: %{public}@}", buf, 0xCu);
  }

  v12 = +[NSDate now];
  [v8 setResultType:5];
  v75 = 0;
  v13 = [v9 executeRequest:v8 error:&v75];
  v14 = v75;
  if (v14)
  {
    v15 = v14;
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v57 = [v9 transactionAuthor];
      v58 = +[NSDate now];
      [v58 timeIntervalSinceDate:v12];
      *buf = 138543874;
      v80 = v57;
      v81 = 2048;
      v82 = v59 * 1000.0;
      v83 = 2112;
      v84 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "REMNSPersistentHistoryTracking resultChangeSet: Failed to fetch transactions {author: %{public}@, elapsedTime: %.4lf ms, error: %@}", buf, 0x20u);
    }

    if ([v15 code] == 134301)
    {
      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    v54 = [NSError errorWithREMChangeErrorCode:v17 underlyingError:v15];
    v46 = 0;
    v18 = v65;
  }

  else
  {
    v18 = v65;
    if (!v13)
    {
      sub_10076A0C4();
    }

    objc_opt_class();
    v19 = [v13 result];
    v15 = REMDynamicCast();

    v20 = +[REMLog changeTracking];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v9 transactionAuthor];
      v22 = +[NSDate now];
      [v22 timeIntervalSinceDate:v12];
      v24 = v23 * 1000.0;
      v25 = [v15 count];
      *buf = 138543874;
      v80 = v21;
      v81 = 2048;
      v82 = v24;
      v83 = 2048;
      v84 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "REMNSPersistentHistoryTracking resultChangeSet: Did fetch transactions {author: %{public}@, elapsedTime: %.4lf ms, transactions.count: %llu}", buf, 0x20u);

      v18 = v65;
    }

    if (v15)
    {
      v61 = v13;
      v62 = v12;
      v67 = v9;
      v63 = v8;
      v64 = a5;
      v68 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
      v66 = +[NSMutableDictionary dictionary];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v60 = v15;
      obj = [v15 reverseObjectEnumerator];
      v26 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v72;
        v29 = REMCRMergeableOrderedSet_ptr;
        do
        {
          v30 = 0;
          v69 = v27;
          do
          {
            if (*v72 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v71 + 1) + 8 * v30);
            v32 = objc_autoreleasePoolPush();
            v33 = v31;
            v34 = [objc_alloc(v29[58]) initWithPersistentHistoryTransaction:v33];
            v35 = v34;
            if (v34)
            {
              v36 = [v34 storeID];
              if (v36)
              {
                v37 = v28;
                v38 = v29;
                v39 = [(_REMNSPersistentHistoryTrackingAbstract *)self _accountIDForPersistenceStoreID:v36];
                v40 = self;
                if (v39)
                {
                  [v35 _resolveAccountID:v39];
                  v41 = [v35 changes];
                  [(_REMNSPersistentHistoryTrackingAbstract *)v40 _resolveObjectIDsInChanges:v41 deletedObjectsIDMap:v66 inManagedObjectContext:v67];

                  [v68 addObject:v35];
                }

                else
                {
                  v42 = +[REMLog changeTracking];
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    sub_10076A164(v76, v35);
                  }
                }

                self = v40;
                v29 = v38;
                v28 = v37;
                v27 = v69;
              }

              else
              {
                v39 = +[REMLog changeTracking];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  sub_10076A1C0(v77, v35);
                }
              }
            }

            objc_autoreleasePoolPop(v32);
            v30 = v30 + 1;
          }

          while (v27 != v30);
          v27 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
        }

        while (v27);
      }

      v43 = [REMChangeSet alloc];
      v44 = [v68 reverseObjectEnumerator];
      v45 = [v44 allObjects];
      v46 = [v43 initWithChangeTransactions:v45];

      v47 = +[REMLog changeTracking];
      v9 = v67;
      v12 = v62;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v67 transactionAuthor];
        v49 = +[NSDate now];
        [v49 timeIntervalSinceDate:v62];
        v51 = v50 * 1000.0;
        v52 = [v46 transactions];
        v53 = [v52 count];
        *buf = 138543874;
        v80 = v48;
        v81 = 2048;
        v82 = v51;
        v83 = 2048;
        v84 = v53;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "REMNSPersistentHistoryTracking resultChangeSet: Did generate changeSet for transactions {author: %{public}@, cumulativeElapsedTime: %.4lf ms, transactions.count: %llu}", buf, 0x20u);
      }

      v54 = 0;
      v8 = v63;
      a5 = v64;
      v18 = v65;
      v15 = v60;
      v13 = v61;
    }

    else
    {
      v54 = [NSError errorWithREMChangeErrorCode:2];
      v46 = 0;
    }
  }

  objc_autoreleasePoolPop(v18);
  if (!v46)
  {
    v46 = [(_REMNSPersistentHistoryTrackingAbstract *)self _errorChangeSetWithError:v54];
  }

  if (a5)
  {
    v55 = v54;
    *a5 = v54;
  }

  return v46;
}

- (void)_resolveObjectIDsInChanges:(id)a3 deletedObjectsIDMap:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v33 = a4;
  v8 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v7;
  obj = [v7 reverseObjectEnumerator];
  v37 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v37)
  {
    v36 = *v40;
    v32 = v8;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        objc_opt_class();
        v12 = REMCheckedDynamicCast();
        v13 = [v12 changedManagedObjectID];
        v14 = [v13 entity];
        v15 = [v14 name];

        if (v15)
        {
          v38 = 0;
          v16 = [v8 existingObjectWithID:v13 error:&v38];
          v17 = v38;
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_respondsToSelector() & 1) != 0 && (v34 = v11, v18 = [objc_opt_class() methodForSelector:"conformsToREMChangeTrackingIdentifiable"], v19 = objc_opt_class(), (v18(v19, "conformsToREMChangeTrackingIdentifiable")))
            {
              v20 = v16;
              v21 = [v20 remChangedObjectID];
              v22 = v21;
              if (v21)
              {
                v23 = [v21 uuid];
                v24 = [v22 entityName];
                [v12 resolveObjectIDWithUUID:v23 entityName:v24];
              }

              else
              {
                v23 = +[REMLog changeTracking];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v44 = v13;
                  v45 = 2112;
                  v46 = v12;
                  v47 = 2112;
                  v48 = v20;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Changed object has nil remChangedObjectID {mID: %{public}@, change: %@, managedObject: %@}", buf, 0x20u);
                }
              }

              v8 = v32;
              v11 = v34;
            }

            else
            {
              v20 = +[REMLog changeTracking];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543618;
                v44 = v13;
                v45 = 2112;
                v46 = v12;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Changed object does not conform to REMChangeTrackingIdentifiable, skip resolving objectID {mID: %{public}@, change: %@}", buf, 0x16u);
              }
            }

            [v8 refreshObject:v16 mergeChanges:0];
            goto LABEL_32;
          }

          v25 = [v12 tombstone];
          v26 = [v25 objectIdentifier];

          if (v26)
          {
            v27 = [v26 UUIDString];
            [v33 setObject:v27 forKey:v13];

            goto LABEL_18;
          }

          v28 = [v33 objectForKeyedSubscript:v13];
          if (v28)
          {
            v29 = v28;
            v26 = [[NSUUID alloc] initWithUUIDString:v28];

            if (!v26)
            {
              goto LABEL_29;
            }

LABEL_18:
            [v12 resolveObjectIDWithUUID:v26 entityName:v15];
          }

          else
          {
            v30 = +[REMLog changeTracking];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v13;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "We may have found a race condition where object got deleted in context before we could fetch a deletion change history! {mID: %@}", buf, 0xCu);
            }

LABEL_29:
            v26 = +[REMLog changeTracking];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = v13;
              v45 = 2112;
              v46 = v12;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not find the REMChangedObjectIdentifying ID of the managed object previously deleted in the same change set {mID: %@, change: %@}", buf, 0x16u);
            }
          }

LABEL_32:
          goto LABEL_33;
        }

        v17 = +[REMLog changeTracking];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v44 = v12;
          _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Failed to get entity name from persistent history change {change: %@}", buf, 0xCu);
        }

LABEL_33:

        objc_autoreleasePoolPop(v11);
      }

      v37 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v37);
  }
}

- (id)_executeDeleteHistoryRequest:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000B9784;
  v14 = sub_1000B9794;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BCC8C;
  v7[3] = &unk_1008DBD48;
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_fetchCDTrackingStateWithClientID:(id)a3 andPerformBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000B9784;
  v20 = sub_1000B9794;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BCF3C;
  v12[3] = &unk_1008DBD70;
  v8 = v6;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_changeTokenFromCDTrackingState:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 lastConsumedChangeTokenData];
  if (v6)
  {
    v12 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
    v8 = v12;
    if (!v7)
    {
      v9 = +[REMLog changeTracking];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10076A408(v5, v8);
      }

      if (a4)
      {
        *a4 = [NSError errorWithREMChangeErrorCode:9 underlyingError:v8];
      }
    }
  }

  else
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076A4E4(v5);
    }

    if (a4)
    {
      [NSError errorWithREMChangeErrorCode:9];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_fetchCDAuxiliaryChangeInfosWithObjectID:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [a3 uuid];
  v8 = +[REMCDAuxiliaryChangeInfo fetchRequest];
  v9 = [NSPredicate predicateWithFormat:@"identifier == %@", v7];
  [v8 setPredicate:v9];

  v16 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v16];

  v11 = v16;
  if (v11)
  {
    v12 = +[REMLog changeTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10076A598(v7, v11);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v10 || ![v10 count])
  {
    v12 = +[REMLog changeTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10076A63C();
    }

    goto LABEL_8;
  }

LABEL_9:
  v13 = [v10 firstObject];
  if (!v13)
  {
    v14 = +[REMLog changeTracking];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076A63C();
    }
  }

  return v13;
}

@end