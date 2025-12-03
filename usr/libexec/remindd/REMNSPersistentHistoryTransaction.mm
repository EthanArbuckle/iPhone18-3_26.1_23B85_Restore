@interface REMNSPersistentHistoryTransaction
- (id)initWithPersistentHistoryTransaction:(id)transaction;
@end

@implementation REMNSPersistentHistoryTransaction

- (id)initWithPersistentHistoryTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    selfCopy = 0;
    goto LABEL_34;
  }

  v5 = objc_alloc_init(_REMNSPersistentHistoryTransactionStorage);
  v6 = [REMNSPersistentHistoryToken alloc];
  token = [transactionCopy token];
  v8 = [v6 initWithPersistentHistoryToken:token];
  [v5 setToken:v8];

  [v5 setChanges:0];
  timestamp = [transactionCopy timestamp];
  [v5 setTimestamp:timestamp];

  [v5 setTransactionNumber:{objc_msgSend(transactionCopy, "transactionNumber")}];
  storeID = [transactionCopy storeID];
  [v5 setStoreID:storeID];

  bundleID = [transactionCopy bundleID];
  [v5 setBundleID:bundleID];

  processID = [transactionCopy processID];
  [v5 setProcessID:processID];

  contextName = [transactionCopy contextName];
  [v5 setContextName:contextName];

  author = [transactionCopy author];
  [v5 setAuthor:author];

  v15 = [(REMNSPersistentHistoryTransaction *)self initWithStorage:v5];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = [REMChangeTracking entityNamesToIncludeFromTrackingWithOptionProvider:objc_opt_class()];
  v50 = [NSSet setWithArray:v16];

  changes = [transactionCopy changes];
  v18 = changes;
  if (!changes)
  {
    goto LABEL_29;
  }

  v49 = v15;
  v46 = v5;
  v47 = transactionCopy;
  v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [changes count]);
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
      changedObjectID = [v24 changedObjectID];
      entity = [changedObjectID entity];

      name = [entity name];
      if (name && (v28 = name, [entity name], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v50, "containsObject:", v29), v29, v28, (v30 & 1) != 0))
      {
        managedObjectClassName = [entity managedObjectClassName];
        v32 = managedObjectClassName;
        if (managedObjectClassName)
        {
          v33 = NSClassFromString(managedObjectClassName);
        }

        else
        {
          v33 = 0;
        }

        if (objc_opt_respondsToSelector() & 1) != 0 && (([(objc_class *)v33 methodForSelector:"conformsToREMChangeTrackingIdentifiable"])(v33, "conformsToREMChangeTrackingIdentifiable"))
        {
          v35 = [[REMNSPersistentHistoryChange alloc] initWithPersistentHistoryChange:v24];
          name3 = v35;
          if (v35)
          {
            [v35 setInternal_ChangeTransaction:v49];
            [v48 addObject:name3];
          }
        }

        else
        {
          name3 = os_log_create("com.apple.reminderkit", "default");
          if (os_log_type_enabled(name3, OS_LOG_TYPE_INFO))
          {
            name2 = [entity name];
            *buf = 138543362;
            v56 = name2;
            _os_log_impl(&_mh_execute_header, name3, OS_LOG_TYPE_INFO, "Changed object does not conform to REMChangeTrackingIdentifiable is excluded from change tracking (%{public}@)", buf, 0xCu);
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

        name3 = [entity name];
        *buf = 138543362;
        v56 = name3;
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
  storage = [(REMNSPersistentHistoryTransaction *)v49 storage];
  v39 = storage;
  if (v37)
  {
    v40 = v48;
  }

  else
  {
    v40 = 0;
  }

  [storage setChanges:v40];

  v5 = v46;
  transactionCopy = v47;
  v18 = v45;
LABEL_29:

LABEL_30:
  storage2 = [(REMNSPersistentHistoryTransaction *)v15 storage];
  changes2 = [storage2 changes];

  if (!changes2)
  {

    v15 = 0;
  }

  self = v15;

  selfCopy = self;
LABEL_34:

  return selfCopy;
}

@end