@interface _REMNSPersistentHistoryTrackingAbstract
- (id)_accountIDForPersistenceStoreID:(id)d;
- (id)_accountIdentifierForPersistenceStoreID:(id)d;
- (id)_changeTokenFromCDTrackingState:(id)state error:(id *)error;
- (id)_currentREMChangeTokenFromNSPersistentStores:(id)stores persistentStoreCoordinator:(id)coordinator;
- (id)_errorChangeSetWithError:(id)error;
- (id)_executeDeleteHistoryRequest:(id)request;
- (id)_fetchCDAuxiliaryChangeInfosWithObjectID:(id)d inManagedObjectContext:(id)context error:(id *)error;
- (id)_fetchCDTrackingStateWithClientID:(id)d andPerformBlock:(id)block;
- (id)_fetchRequestWithPredicateUsingEntityNames:(id)names managedObjectContext:(id)context error:(id *)error;
- (id)_persistenceStoreForAccountID:(id)d;
- (id)_persistenceStoreIDForAccountID:(id)d;
- (id)_persistenceStoreIDsForAccountTypes:(int64_t)types;
- (id)_persistenceStoresForAccountTypes:(id)types;
- (id)_resultChangeSetByExecutingRequest:(id)request managedObjectContext:(id)context error:(id *)error;
- (id)currentChangeToken;
- (id)currentChangeTokenForAccountID:(id)d;
- (id)currentChangeTokenForAccountTypes:(int64_t)types;
- (id)earliestChangeTokenForAccountID:(id)d;
- (void)_resolveObjectIDsInChanges:(id)changes deletedObjectsIDMap:(id)map inManagedObjectContext:(id)context;
- (void)deleteHistoryBeforeDate:(id)date completionHandler:(id)handler;
- (void)deleteHistoryBeforeToken:(id)token completionHandler:(id)handler;
- (void)fetchAuxiliaryChangeInfos:(id)infos completionHandler:(id)handler;
- (void)fetchHistoryAfterDate:(id)date entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchHistoryAfterToken:(id)token entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)getTrackingStateWithClientID:(id)d completionHandler:(id)handler;
- (void)saveTrackingState:(id)state withClientID:(id)d completionHandler:(id)handler;
- (void)withManagedObjectContext:(id)context;
@end

@implementation _REMNSPersistentHistoryTrackingAbstract

- (void)withManagedObjectContext:(id)context
{
  contextCopy = context;
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

- (id)currentChangeTokenForAccountTypes:(int64_t)types
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
  v5[6] = types;
  v5[4] = self;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)currentChangeTokenForAccountID:(id)d
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
  selfCopy = self;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)selfCopy withManagedObjectContext:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)earliestChangeTokenForAccountID:(id)d
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
  selfCopy = self;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)selfCopy withManagedObjectContext:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)getTrackingStateWithClientID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
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
  handlerCopy[2](handlerCopy, v13[5], v10);

  _Block_object_dispose(&v12, 8);
}

- (void)saveTrackingState:(id)state withClientID:(id)d completionHandler:(id)handler
{
  stateCopy = state;
  dCopy = d;
  handlerCopy = handler;
  objc_opt_class();
  v11 = REMCheckedDynamicCast();
  v12 = +[REMLog changeTracking];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100769D88();
  }

  lastConsumedChangeToken = [stateCopy lastConsumedChangeToken];
  v25 = 0;
  v14 = [NSKeyedArchiver archivedDataWithRootObject:lastConsumedChangeToken requiringSecureCoding:1 error:&v25];
  v15 = v25;

  if (v14)
  {
    accountIdentifier = [v11 accountIdentifier];
    v17 = [(_REMNSPersistentHistoryTrackingAbstract *)self _persistenceStoreForAccountID:accountIdentifier];

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

  handlerCopy[2](handlerCopy, v18);
}

- (void)fetchHistoryAfterDate:(id)date entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler
{
  dateCopy = date;
  namesCopy = names;
  handlerCopy = handler;
  if (limit && [namesCopy count])
  {
    sub_100769FA4();
  }

  v13 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:dateCopy];
  v14 = v13;
  if (limit)
  {
    [v13 setFetchLimit:limit];
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
  v15 = namesCopy;
  v18 = v15;
  v20 = &v22;
  v16 = v14;
  v19 = v16;
  v21 = &v28;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v17];
  handlerCopy[2](handlerCopy, v29[5], v23[5]);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

- (void)fetchHistoryAfterToken:(id)token entityNames:(id)names transactionFetchLimit:(unint64_t)limit completionHandler:(id)handler
{
  tokenCopy = token;
  namesCopy = names;
  handlerCopy = handler;
  if (limit && [namesCopy count])
  {
    sub_100769FA4();
  }

  v13 = tokenCopy;
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
      token = [v16 token];
    }

    else
    {
      token = 0;
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
    v18 = token;
    v22 = v18;
    selfCopy = self;
    v24 = namesCopy;
    v25 = &v28;
    v26 = &v34;
    limitCopy = limit;
    [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v21];
    handlerCopy[2](handlerCopy, v35[5], v29[5]);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v18 = [NSError errorWithREMChangeErrorCode:0];
    v19 = [(_REMNSPersistentHistoryTrackingAbstract *)self _errorChangeSetWithError:v18];
    handlerCopy[2](handlerCopy, v19, v18);
  }
}

- (id)_fetchRequestWithPredicateUsingEntityNames:(id)names managedObjectContext:(id)context error:(id *)error
{
  namesCopy = names;
  contextCopy = context;
  if ([namesCopy count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [namesCopy count]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = namesCopy;
    v10 = namesCopy;
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
          v16 = [NSEntityDescription entityForName:v15 inManagedObjectContext:contextCopy];
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
            if (error)
            {
              *error = [NSError errorWithREMChangeErrorCode:1 underlyingError:v18];
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
      v19 = [NSPersistentHistoryChange entityDescriptionWithContext:contextCopy];
      propertiesByName = [v19 propertiesByName];
      v21 = [propertiesByName valueForKey:@"changedEntity"];

      v22 = objc_alloc_init(NSFetchRequest);
      [v22 setEntity:v19];
      name = [v21 name];
      v24 = [NSPredicate predicateWithFormat:@"%K IN %@", name, v27];
      [v22 setPredicate:v24];

      v9 = v27;
    }

    else
    {
      v22 = 0;
    }

    namesCopy = v26;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)deleteHistoryBeforeDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:date];
  v7 = [(_REMNSPersistentHistoryTrackingAbstract *)self _executeDeleteHistoryRequest:v8];
  handlerCopy[2](handlerCopy, v7);
}

- (void)deleteHistoryBeforeToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v15 = tokenCopy;
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
      token = [v10 token];
    }

    else
    {
      token = 0;
    }

    v13 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:token];
    v14 = [(_REMNSPersistentHistoryTrackingAbstract *)self _executeDeleteHistoryRequest:v13];
    handlerCopy[2](handlerCopy, v14);
  }

  else
  {
    token = [NSError errorWithREMChangeErrorCode:0];
    handlerCopy[2](handlerCopy, token);
  }
}

- (void)fetchAuxiliaryChangeInfos:(id)infos completionHandler:(id)handler
{
  infosCopy = infos;
  handlerCopy = handler;
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
  v9 = infosCopy;
  v12 = v9;
  selfCopy = self;
  v15 = &v16;
  v10 = v8;
  v14 = v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v11];
  handlerCopy[2](handlerCopy, v10, v17[5]);

  _Block_object_dispose(&v16, 8);
}

- (id)_persistenceStoreForAccountID:(id)d
{
  dCopy = d;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_persistenceStoresForAccountTypes:(id)types
{
  typesCopy = types;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_accountIdentifierForPersistenceStoreID:(id)d
{
  dCopy = d;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_persistenceStoreIDForAccountID:(id)d
{
  v3 = [(_REMNSPersistentHistoryTrackingAbstract *)self _persistenceStoreForAccountID:d];
  identifier = [v3 identifier];

  return identifier;
}

- (id)_persistenceStoreIDsForAccountTypes:(int64_t)types
{
  v4 = [REMAccount _accountTypeMaskWithBitMask:types];
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

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        [v5 addObject:identifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_accountIDForPersistenceStoreID:(id)d
{
  dCopy = d;
  cachedAccountIDsByStoreIDsMap = [(_REMNSPersistentHistoryTrackingAbstract *)self cachedAccountIDsByStoreIDsMap];
  v6 = [cachedAccountIDsByStoreIDsMap objectForKey:dCopy];

  if (!v6)
  {
    v7 = [(_REMNSPersistentHistoryTrackingAbstract *)self _accountIdentifierForPersistenceStoreID:dCopy];
    v8 = [[NSUUID alloc] initWithUUIDString:v7];
    v9 = v8;
    if (v7 && v8)
    {
      v6 = [REMAccount objectIDWithUUID:v8];
      cachedAccountIDsByStoreIDsMap2 = [(_REMNSPersistentHistoryTrackingAbstract *)self cachedAccountIDsByStoreIDsMap];
      [cachedAccountIDsByStoreIDsMap2 setObject:v6 forKey:dCopy];
    }
  }

  return v6;
}

- (id)_currentREMChangeTokenFromNSPersistentStores:(id)stores persistentStoreCoordinator:(id)coordinator
{
  storesCopy = stores;
  coordinatorCopy = coordinator;
  if ([storesCopy count])
  {
    v7 = [coordinatorCopy currentPersistentHistoryTokenFromStores:storesCopy];
    v8 = [[REMNSPersistentHistoryToken alloc] initWithPersistentHistoryToken:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_errorChangeSetWithError:(id)error
{
  if (error)
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

- (id)_resultChangeSetByExecutingRequest:(id)request managedObjectContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  v65 = objc_autoreleasePoolPush();
  v10 = +[REMLog changeTracking];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    transactionAuthor = [contextCopy transactionAuthor];
    *buf = 138543362;
    v80 = transactionAuthor;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "REMNSPersistentHistoryTracking resultChangeSet: Will fetch transactions {author: %{public}@}", buf, 0xCu);
  }

  v12 = +[NSDate now];
  [requestCopy setResultType:5];
  v75 = 0;
  v13 = [contextCopy executeRequest:requestCopy error:&v75];
  v14 = v75;
  if (v14)
  {
    v15 = v14;
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      transactionAuthor2 = [contextCopy transactionAuthor];
      v58 = +[NSDate now];
      [v58 timeIntervalSinceDate:v12];
      *buf = 138543874;
      v80 = transactionAuthor2;
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
    result = [v13 result];
    v15 = REMDynamicCast();

    v20 = +[REMLog changeTracking];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      transactionAuthor3 = [contextCopy transactionAuthor];
      v22 = +[NSDate now];
      [v22 timeIntervalSinceDate:v12];
      v24 = v23 * 1000.0;
      v25 = [v15 count];
      *buf = 138543874;
      v80 = transactionAuthor3;
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
      v67 = contextCopy;
      v63 = requestCopy;
      errorCopy = error;
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
              storeID = [v34 storeID];
              if (storeID)
              {
                v37 = v28;
                v38 = v29;
                v39 = [(_REMNSPersistentHistoryTrackingAbstract *)self _accountIDForPersistenceStoreID:storeID];
                selfCopy = self;
                if (v39)
                {
                  [v35 _resolveAccountID:v39];
                  changes = [v35 changes];
                  [(_REMNSPersistentHistoryTrackingAbstract *)selfCopy _resolveObjectIDsInChanges:changes deletedObjectsIDMap:v66 inManagedObjectContext:v67];

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

                self = selfCopy;
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
      reverseObjectEnumerator = [v68 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v46 = [v43 initWithChangeTransactions:allObjects];

      v47 = +[REMLog changeTracking];
      contextCopy = v67;
      v12 = v62;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        transactionAuthor4 = [v67 transactionAuthor];
        v49 = +[NSDate now];
        [v49 timeIntervalSinceDate:v62];
        v51 = v50 * 1000.0;
        transactions = [v46 transactions];
        v53 = [transactions count];
        *buf = 138543874;
        v80 = transactionAuthor4;
        v81 = 2048;
        v82 = v51;
        v83 = 2048;
        v84 = v53;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "REMNSPersistentHistoryTracking resultChangeSet: Did generate changeSet for transactions {author: %{public}@, cumulativeElapsedTime: %.4lf ms, transactions.count: %llu}", buf, 0x20u);
      }

      v54 = 0;
      requestCopy = v63;
      error = errorCopy;
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

  if (error)
  {
    v55 = v54;
    *error = v54;
  }

  return v46;
}

- (void)_resolveObjectIDsInChanges:(id)changes deletedObjectsIDMap:(id)map inManagedObjectContext:(id)context
{
  changesCopy = changes;
  mapCopy = map;
  contextCopy = context;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = changesCopy;
  obj = [changesCopy reverseObjectEnumerator];
  v37 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v37)
  {
    v36 = *v40;
    v32 = contextCopy;
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
        changedManagedObjectID = [v12 changedManagedObjectID];
        entity = [changedManagedObjectID entity];
        name = [entity name];

        if (name)
        {
          v38 = 0;
          v16 = [contextCopy existingObjectWithID:changedManagedObjectID error:&v38];
          v17 = v38;
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_respondsToSelector() & 1) != 0 && (v34 = v11, v18 = [objc_opt_class() methodForSelector:"conformsToREMChangeTrackingIdentifiable"], v19 = objc_opt_class(), (v18(v19, "conformsToREMChangeTrackingIdentifiable")))
            {
              v20 = v16;
              remChangedObjectID = [v20 remChangedObjectID];
              v22 = remChangedObjectID;
              if (remChangedObjectID)
              {
                uuid = [remChangedObjectID uuid];
                entityName = [v22 entityName];
                [v12 resolveObjectIDWithUUID:uuid entityName:entityName];
              }

              else
              {
                uuid = +[REMLog changeTracking];
                if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v44 = changedManagedObjectID;
                  v45 = 2112;
                  v46 = v12;
                  v47 = 2112;
                  v48 = v20;
                  _os_log_error_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_ERROR, "Changed object has nil remChangedObjectID {mID: %{public}@, change: %@, managedObject: %@}", buf, 0x20u);
                }
              }

              contextCopy = v32;
              v11 = v34;
            }

            else
            {
              v20 = +[REMLog changeTracking];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543618;
                v44 = changedManagedObjectID;
                v45 = 2112;
                v46 = v12;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Changed object does not conform to REMChangeTrackingIdentifiable, skip resolving objectID {mID: %{public}@, change: %@}", buf, 0x16u);
              }
            }

            [contextCopy refreshObject:v16 mergeChanges:0];
            goto LABEL_32;
          }

          tombstone = [v12 tombstone];
          objectIdentifier = [tombstone objectIdentifier];

          if (objectIdentifier)
          {
            uUIDString = [objectIdentifier UUIDString];
            [mapCopy setObject:uUIDString forKey:changedManagedObjectID];

            goto LABEL_18;
          }

          v28 = [mapCopy objectForKeyedSubscript:changedManagedObjectID];
          if (v28)
          {
            v29 = v28;
            objectIdentifier = [[NSUUID alloc] initWithUUIDString:v28];

            if (!objectIdentifier)
            {
              goto LABEL_29;
            }

LABEL_18:
            [v12 resolveObjectIDWithUUID:objectIdentifier entityName:name];
          }

          else
          {
            v30 = +[REMLog changeTracking];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = changedManagedObjectID;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "We may have found a race condition where object got deleted in context before we could fetch a deletion change history! {mID: %@}", buf, 0xCu);
            }

LABEL_29:
            objectIdentifier = +[REMLog changeTracking];
            if (os_log_type_enabled(objectIdentifier, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = changedManagedObjectID;
              v45 = 2112;
              v46 = v12;
              _os_log_error_impl(&_mh_execute_header, objectIdentifier, OS_LOG_TYPE_ERROR, "Could not find the REMChangedObjectIdentifying ID of the managed object previously deleted in the same change set {mID: %@, change: %@}", buf, 0x16u);
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

- (id)_executeDeleteHistoryRequest:(id)request
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
  requestCopy = request;
  v8 = requestCopy;
  v9 = &v10;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_fetchCDTrackingStateWithClientID:(id)d andPerformBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
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
  v8 = dCopy;
  v13 = v8;
  v15 = &v16;
  v9 = blockCopy;
  v14 = v9;
  [(_REMNSPersistentHistoryTrackingAbstract *)self withManagedObjectContext:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_changeTokenFromCDTrackingState:(id)state error:(id *)error
{
  stateCopy = state;
  lastConsumedChangeTokenData = [stateCopy lastConsumedChangeTokenData];
  if (lastConsumedChangeTokenData)
  {
    v12 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:lastConsumedChangeTokenData error:&v12];
    v8 = v12;
    if (!v7)
    {
      v9 = +[REMLog changeTracking];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10076A408(stateCopy, v8);
      }

      if (error)
      {
        *error = [NSError errorWithREMChangeErrorCode:9 underlyingError:v8];
      }
    }
  }

  else
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076A4E4(stateCopy);
    }

    if (error)
    {
      [NSError errorWithREMChangeErrorCode:9];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_fetchCDAuxiliaryChangeInfosWithObjectID:(id)d inManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  uuid = [d uuid];
  v8 = +[REMCDAuxiliaryChangeInfo fetchRequest];
  v9 = [NSPredicate predicateWithFormat:@"identifier == %@", uuid];
  [v8 setPredicate:v9];

  v16 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v16];

  v11 = v16;
  if (v11)
  {
    v12 = +[REMLog changeTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10076A598(uuid, v11);
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
  firstObject = [v10 firstObject];
  if (!firstObject)
  {
    v14 = +[REMLog changeTracking];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076A63C();
    }
  }

  return firstObject;
}

@end