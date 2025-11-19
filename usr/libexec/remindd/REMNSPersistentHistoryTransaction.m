@interface REMNSPersistentHistoryTransaction
- (id)initWithPersistentHistoryTransaction:(id)a3;
@end

@implementation REMNSPersistentHistoryTransaction

- (id)initWithPersistentHistoryTransaction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v43 = 0;
    goto LABEL_34;
  }

  v5 = objc_alloc_init(_REMNSPersistentHistoryTransactionStorage);
  v6 = [REMNSPersistentHistoryToken alloc];
  v7 = [v4 token];
  v8 = [v6 initWithPersistentHistoryToken:v7];
  [v5 setToken:v8];

  [v5 setChanges:0];
  v9 = [v4 timestamp];
  [v5 setTimestamp:v9];

  [v5 setTransactionNumber:{objc_msgSend(v4, "transactionNumber")}];
  v10 = [v4 storeID];
  [v5 setStoreID:v10];

  v11 = [v4 bundleID];
  [v5 setBundleID:v11];

  v12 = [v4 processID];
  [v5 setProcessID:v12];

  v13 = [v4 contextName];
  [v5 setContextName:v13];

  v14 = [v4 author];
  [v5 setAuthor:v14];

  v15 = [(REMNSPersistentHistoryTransaction *)self initWithStorage:v5];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = [REMChangeTracking entityNamesToIncludeFromTrackingWithOptionProvider:objc_opt_class()];
  v50 = [NSSet setWithArray:v16];

  v17 = [v4 changes];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_29;
  }

  v49 = v15;
  v46 = v5;
  v47 = v4;
  v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v45 = v18;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = *v52;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v52 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v51 + 1) + 8 * i);
      v25 = [v24 changedObjectID];
      v26 = [v25 entity];

      v27 = [v26 name];
      if (v27 && (v28 = v27, [v26 name], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v50, "containsObject:", v29), v29, v28, (v30 & 1) != 0))
      {
        v31 = [v26 managedObjectClassName];
        v32 = v31;
        if (v31)
        {
          v33 = NSClassFromString(v31);
        }

        else
        {
          v33 = 0;
        }

        if (objc_opt_respondsToSelector() & 1) != 0 && (([(objc_class *)v33 methodForSelector:"conformsToREMChangeTrackingIdentifiable"])(v33, "conformsToREMChangeTrackingIdentifiable"))
        {
          v35 = [[REMNSPersistentHistoryChange alloc] initWithPersistentHistoryChange:v24];
          v34 = v35;
          if (v35)
          {
            [v35 setInternal_ChangeTransaction:v49];
            [v48 addObject:v34];
          }
        }

        else
        {
          v34 = os_log_create("com.apple.reminderkit", "default");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v36 = [v26 name];
            *buf = 138543362;
            v56 = v36;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Changed object does not conform to REMChangeTrackingIdentifiable is excluded from change tracking (%{public}@)", buf, 0xCu);
          }
        }
      }

      else
      {
        v32 = os_log_create("com.apple.reminderkit", "default");
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v34 = [v26 name];
        *buf = 138543362;
        v56 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Not an REM change tracking allowlisted entity, excluding this entity from change tracking? (%{public}@)", buf, 0xCu);
      }

LABEL_23:
    }

    v21 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
  }

  while (v21);
LABEL_25:

  v37 = [v48 count];
  v15 = v49;
  v38 = [(REMNSPersistentHistoryTransaction *)v49 storage];
  v39 = v38;
  if (v37)
  {
    v40 = v48;
  }

  else
  {
    v40 = 0;
  }

  [v38 setChanges:v40];

  v5 = v46;
  v4 = v47;
  v18 = v45;
LABEL_29:

LABEL_30:
  v41 = [(REMNSPersistentHistoryTransaction *)v15 storage];
  v42 = [v41 changes];

  if (!v42)
  {

    v15 = 0;
  }

  self = v15;

  v43 = self;
LABEL_34:

  return v43;
}

@end