@interface CKKSUpdateCurrentItemPointerOperation
- (CKKSUpdateCurrentItemPointerOperation)initWithCKKSOperationDependencies:(id)a3 viewState:(id)a4 newItem:(id)a5 hash:(id)a6 accessGroup:(id)a7 identifier:(id)a8 replacing:(id)a9 hash:(id)a10 ckoperationGroup:(id)a11;
- (SecDbItem)_onqueueFindSecDbItem:(id)a3 accessGroup:(id)a4 error:(id *)a5;
- (SecDbItem)_onqueueFindSecDbItemWithQuery:(id)a3 error:(id *)a4;
- (SecDbItem)_onqueueFindSecDbItemWithUUID:(id)a3 accessGroup:(id)a4 error:(id *)a5;
- (void)_fetchAndUpdateMirrorEntry:(id)a3;
- (void)dealloc;
- (void)groupStart;
@end

@implementation CKKSUpdateCurrentItemPointerOperation

- (SecDbItem)_onqueueFindSecDbItemWithQuery:(id)a3 error:(id *)a4
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
  v6 = a3;
  v24 = v6;
  v25 = self;
  v26 = &v28;
  v27 = &v35;
  v7 = sub_100008A70(1, 1, 0, &cf, v23);
  v8 = v29[5];
  if (!v7)
  {
    if (!v8)
    {
      v15 = [(CKKSUpdateCurrentItemPointerOperation *)self viewState];
      v16 = [v15 zoneID];
      v17 = [v16 zoneName];
      v18 = sub_100019104(@"ckkscurrent", v17);

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
      if (!*a4)
      {
        goto LABEL_17;
      }

LABEL_14:
      *a4 = v29[5];
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
    v10 = [(CKKSUpdateCurrentItemPointerOperation *)self viewState];
    v11 = [v10 zoneID];
    v12 = [v11 zoneName];
    v13 = sub_100019104(@"ckkscurrent", v12);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v29[5];
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Query failed: %@", buf, 0xCu);
    }

    if (!a4)
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

- (SecDbItem)_onqueueFindSecDbItemWithUUID:(id)a3 accessGroup:(id)a4 error:(id *)a5
{
  v17 = a3;
  v6 = a4;
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
      v19[3] = v17;
      v18[3] = v8;
      v18[4] = kSecAttrAccessGroup;
      v19[4] = v6;
      v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
      v12 = [(CKKSUpdateCurrentItemPointerOperation *)self _onqueueFindSecDbItemWithQuery:v11 error:a5];

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

- (SecDbItem)_onqueueFindSecDbItem:(id)a3 accessGroup:(id)a4 error:(id *)a5
{
  v13[0] = kSecValuePersistentRef;
  v13[1] = kSecAttrAccessGroup;
  v14[0] = a3;
  v14[1] = a4;
  v8 = a4;
  v9 = a3;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [(CKKSUpdateCurrentItemPointerOperation *)self _onqueueFindSecDbItemWithQuery:v10 error:a5];
  return v11;
}

- (void)_fetchAndUpdateMirrorEntry:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(NSBlockOperation);
  [v5 setName:@"updateCurrentItemPointer-fetchRecordsComplete"];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];
  v6 = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  v7 = [v6 cloudKitClassDependencies];
  v8 = [objc_msgSend(v7 "fetchRecordsOperationClass")];
  v9 = [v4 item];
  v10 = [v9 storedCKRecord];
  v11 = [v10 recordID];
  v31 = v11;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v13 = [v8 initWithRecordIDs:v12];
  [(CKKSUpdateCurrentItemPointerOperation *)self setFetchRecordsOperation:v13];

  v14 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  v15 = [v14 configuration];
  [v15 setIsCloudKitSupportOperation:1];

  v16 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [v16 setQualityOfService:25];

  v17 = [(CKKSUpdateCurrentItemPointerOperation *)self ckoperationGroup];
  v18 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [v18 setGroup:v17];

  objc_copyWeak(&v29, &location);
  v19 = v5;
  v27 = v19;
  v20 = v4;
  v28 = v20;
  v21 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation:_NSConcreteStackBlock];
  [v21 setFetchRecordsCompletionBlock:&v26];

  v22 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v22];

  v23 = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  v24 = [v23 ckdatabase];
  v25 = [(CKKSUpdateCurrentItemPointerOperation *)self fetchRecordsOperation];
  [v24 addOperation:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [(CKKSUpdateCurrentItemPointerOperation *)self deps];
  v4 = [v3 databaseProvider];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6120;
  v5[3] = &unk_1003438D0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [v4 dispatchSyncWithSQLTransaction:v5];

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

- (CKKSUpdateCurrentItemPointerOperation)initWithCKKSOperationDependencies:(id)a3 viewState:(id)a4 newItem:(id)a5 hash:(id)a6 accessGroup:(id)a7 identifier:(id)a8 replacing:(id)a9 hash:(id)a10 ckoperationGroup:(id)a11
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  obj = a7;
  v18 = a7;
  v19 = a8;
  v28 = a9;
  v27 = a10;
  v20 = a11;
  v33.receiver = self;
  v33.super_class = CKKSUpdateCurrentItemPointerOperation;
  v21 = [(CKKSGroupOperation *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_deps, a3);
    objc_storeStrong(&v22->_viewState, a4);
    objc_storeStrong(&v22->_newerItemPersistentRef, a5);
    objc_storeStrong(&v22->_newerItemSHA1, a6);
    objc_storeStrong(&v22->_oldItemPersistentRef, a9);
    objc_storeStrong(&v22->_oldItemSHA1, a10);
    objc_storeStrong(&v22->_accessGroup, obj);
    v23 = [NSString stringWithFormat:@"%@-%@", v18, v19];
    currentPointerIdentifier = v22->_currentPointerIdentifier;
    v22->_currentPointerIdentifier = v23;

    objc_storeStrong(&v22->_ckoperationGroup, a11);
    [(CKKSUpdateCurrentItemPointerOperation *)v22 setQualityOfService:25];
  }

  return v22;
}

@end