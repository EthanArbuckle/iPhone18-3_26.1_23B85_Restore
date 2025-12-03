@interface CKKSUpdateCurrentItemPointerOperation
- (CKKSUpdateCurrentItemPointerOperation)initWithCKKSOperationDependencies:(id)dependencies viewState:(id)state newItem:(id)item hash:(id)hash accessGroup:(id)group identifier:(id)identifier replacing:(id)replacing hash:(id)self0 ckoperationGroup:(id)self1;
- (SecDbItem)_onqueueFindSecDbItem:(id)item accessGroup:(id)group error:(id *)error;
- (SecDbItem)_onqueueFindSecDbItemWithQuery:(id)query error:(id *)error;
- (SecDbItem)_onqueueFindSecDbItemWithUUID:(id)d accessGroup:(id)group error:(id *)error;
- (void)_fetchAndUpdateMirrorEntry:(id)entry;
- (void)dealloc;
- (void)groupStart;
@end

@implementation CKKSUpdateCurrentItemPointerOperation

- (SecDbItem)_onqueueFindSecDbItemWithQuery:(id)query error:(id *)error
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v33 = 0;
  cf = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1001A51CC;
  v32 = sub_1001A51DC;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001A51E4;
  v23[3] = &unk_100343948;
  queryCopy = query;
  v24 = queryCopy;
  selfCopy = self;
  v26 = &v28;
  v27 = &v35;
  v7 = sub_100008A70(1, 1, 0, &cf, v23);
  v8 = v29[5];
  if (!v7)
  {
    if (!v8)
    {
      viewState = [(CKKSUpdateCurrentItemPointerOperation *)self viewState];
      zoneID = [viewState zoneID];
      zoneName = [zoneID zoneName];
      v18 = sub_100019104(@"ckkscurrent", zoneName);

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = cf;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Query failed, cferror is %@", buf, 0xCu);
      }

      v19 = cf;
      v20 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:@"couldn't run query" underlying:cf];
      v21 = v29[5];
      v29[5] = v20;

      cf = 0;
      if (!*error)
      {
        goto LABEL_17;
      }

LABEL_14:
      *error = v29[5];
LABEL_15:
      if (cf)
      {
        CFRelease(cf);
      }

LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

LABEL_7:
    viewState2 = [(CKKSUpdateCurrentItemPointerOperation *)self viewState];
    zoneID2 = [viewState2 zoneID];
    zoneName2 = [zoneID2 zoneName];
    v13 = sub_100019104(@"ckkscurrent", zoneName2);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v29[5];
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Query failed: %@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = v36[3];
LABEL_18:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);

  return v9;
}

- (SecDbItem)_onqueueFindSecDbItemWithUUID:(id)d accessGroup:(id)group error:(id *)error
{
  dCopy = d;
  groupCopy = group;
  v7 = kSecAttrTombstone;
  v8 = kSecAttrUUID;
  v9 = &off_10033C738;
  v10 = off_10033E8C8;
  while (1)
  {
    if (*(v9 + 8) == 1)
    {
      v18[0] = kSecClass;
      v19[0] = *v9;
      v19[1] = kSecAttrSynchronizableAny;
      v18[1] = kSecAttrSynchronizable;
      v18[2] = v7;
      v19[2] = &__kCFBooleanFalse;
      v19[3] = dCopy;
      v18[3] = v8;
      v18[4] = kSecAttrAccessGroup;
      v19[4] = groupCopy;
      v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
      v12 = [(CKKSUpdateCurrentItemPointerOperation *)self _onqueueFindSecDbItemWithQuery:v11 error:error];

      if (v12)
      {
        break;
      }
    }

    v13 = *v10++;
    v9 = v13;
    if (!v13)
    {
      v12 = 0;
      break;
    }
  }

  return v12;
}

- (SecDbItem)_onqueueFindSecDbItem:(id)item accessGroup:(id)group error:(id *)error
{
  v13[0] = kSecValuePersistentRef;
  v13[1] = kSecAttrAccessGroup;
  v14[0] = item;
  v14[1] = group;
  groupCopy = group;
  itemCopy = item;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [(CKKSUpdateCurrentItemPointerOperation *)self _onqueueFindSecDbItemWithQuery:v10 error:error];
  return v11;
}

- (void)_fetchAndUpdateMirrorEntry:(id)entry
{
  entryCopy = entry;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(NSBlockOperation);
  [v5 setName:@"updateCurrentItemPointer-fetchRecordsComplete"];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];
  deps = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  cloudKitClassDependencies = [deps cloudKitClassDependencies];
  v8 = [objc_msgSend(cloudKitClassDependencies "fetchRecordsOperationClass")];
  item = [entryCopy item];
  storedCKRecord = [item storedCKRecord];
  recordID = [storedCKRecord recordID];
  v31 = recordID;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v13 = [v8 initWithRecordIDs:v12];
  [(CKKSUpdateCurrentItemPointerOperation *)self setFetchRecordsOperation:v13];

  fetchRecordsOperation = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  configuration = [fetchRecordsOperation configuration];
  [configuration setIsCloudKitSupportOperation:1];

  fetchRecordsOperation2 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [fetchRecordsOperation2 setQualityOfService:25];

  ckoperationGroup = [(CKKSUpdateCurrentItemPointerOperation *)self ckoperationGroup];
  fetchRecordsOperation3 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [fetchRecordsOperation3 setGroup:ckoperationGroup];

  objc_copyWeak(&v29, &location);
  v19 = v5;
  v27 = v19;
  v20 = entryCopy;
  v28 = v20;
  v21 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation:_NSConcreteStackBlock];
  [v21 setFetchRecordsCompletionBlock:&v26];

  fetchRecordsOperation4 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:fetchRecordsOperation4];

  deps2 = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  ckdatabase = [deps2 ckdatabase];
  fetchRecordsOperation5 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [ckdatabase addOperation:fetchRecordsOperation5];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  deps = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  databaseProvider = [deps databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6120;
  v5[3] = &unk_1003438D0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [databaseProvider dispatchSyncWithSQLTransaction:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  if (self)
  {
    newItem = self->_newItem;
    if (newItem)
    {
      self->_newItem = 0;
      CFRelease(newItem);
    }

    oldItem = self->_oldItem;
    if (oldItem)
    {
      self->_oldItem = 0;
      CFRelease(oldItem);
    }
  }

  v5.receiver = self;
  v5.super_class = CKKSUpdateCurrentItemPointerOperation;
  [(CKKSGroupOperation *)&v5 dealloc];
}

- (CKKSUpdateCurrentItemPointerOperation)initWithCKKSOperationDependencies:(id)dependencies viewState:(id)state newItem:(id)item hash:(id)hash accessGroup:(id)group identifier:(id)identifier replacing:(id)replacing hash:(id)self0 ckoperationGroup:(id)self1
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  itemCopy = item;
  hashCopy = hash;
  obj = group;
  groupCopy = group;
  identifierCopy = identifier;
  replacingCopy = replacing;
  v27 = a10;
  ckoperationGroupCopy = ckoperationGroup;
  v33.receiver = self;
  v33.super_class = CKKSUpdateCurrentItemPointerOperation;
  v21 = [(CKKSGroupOperation *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_deps, dependencies);
    objc_storeStrong(&v22->_viewState, state);
    objc_storeStrong(&v22->_newerItemPersistentRef, item);
    objc_storeStrong(&v22->_newerItemSHA1, hash);
    objc_storeStrong(&v22->_oldItemPersistentRef, replacing);
    objc_storeStrong(&v22->_oldItemSHA1, a10);
    objc_storeStrong(&v22->_accessGroup, obj);
    identifierCopy = [NSString stringWithFormat:@"%@-%@", groupCopy, identifierCopy];
    currentPointerIdentifier = v22->_currentPointerIdentifier;
    v22->_currentPointerIdentifier = identifierCopy;

    objc_storeStrong(&v22->_ckoperationGroup, ckoperationGroup);
    [(CKKSUpdateCurrentItemPointerOperation *)v22 setQualityOfService:25];
  }

  return v22;
}

@end