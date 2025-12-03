@interface RDStoreControllerMigrator_JSONProperties
- (id)reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)d listID:(id)iD;
- (void)migrateCRDTsInAccount:(id)account;
- (void)migrateCRDTsInList:(id)list;
- (void)migrateCRDTsInObject:(id)object;
- (void)migrateStore:(id)store;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
- (void)migrateTokenResolutionMapInObject:(id)object;
@end

@implementation RDStoreControllerMigrator_JSONProperties

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"RDStoreControllerMigrator_JSONProperties"];
  integerValue = [v7 integerValue];

  if (integerValue <= 2)
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateStore:neededCopy];
    [metadataCopy setObject:&off_100905130 forKeyedSubscript:@"RDStoreControllerMigrator_JSONProperties"];
  }
}

- (void)migrateStore:(id)store
{
  storeCopy = store;
  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = storeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "JSONPropertiesMigration BEGIN {store: %@}", buf, 0xCu);
  }

  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v6 setTransactionAuthor:RDStoreControllerJSONPropertiesMigrationAuthor];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B85D0;
  v15[3] = &unk_1008D9C10;
  v8 = storeCopy;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  selfCopy = self;
  [v9 performBlockAndWait:v15];
  v10 = +[REMLogStore container];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    totalMigratedCount = [(RDStoreControllerMigrator_JSONProperties *)self totalMigratedCount];
    totalListCount = [(RDStoreControllerMigrator_JSONProperties *)self totalListCount];
    migratedAccount = [(RDStoreControllerMigrator_JSONProperties *)self migratedAccount];
    migratedListsCount = [(RDStoreControllerMigrator_JSONProperties *)self migratedListsCount];
    *buf = 134219010;
    v20 = totalMigratedCount;
    v21 = 2048;
    v22 = totalListCount;
    v23 = 1024;
    v24 = migratedAccount;
    v25 = 2048;
    v26 = migratedListsCount;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "JSONPropertiesMigration END {totalMigratedCount: %ld, totalListCount: %ld, migratedAccount: %d. migratedListsCount: %ld, store: %@}", buf, 0x30u);
  }
}

- (void)migrateTokenResolutionMapInObject:(id)object
{
  objectCopy = object;
  v3 = objc_autoreleasePoolPush();
  v4 = [objectCopy primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
  if (!v4)
  {
    v5 = [objectCopy primitiveValueForKey:@"resolutionTokenMap_v2_JSON"];
    if (v5)
    {
      [objectCopy setResolutionTokenMap:v5];
      [objectCopy willChangeValueForKey:@"resolutionTokenMap_v2_JSON"];
      [objectCopy setPrimitiveValue:0 forKey:@"resolutionTokenMap_v2_JSON"];
      [objectCopy didChangeValueForKey:@"resolutionTokenMap_v2_JSON"];
    }

    else
    {
      v6 = [objectCopy primitiveValueForKey:@"resolutionTokenMap"];
      if (v6)
      {
        [objectCopy setResolutionTokenMap:v6];
        [objectCopy willChangeValueForKey:@"resolutionTokenMap"];
        [objectCopy setPrimitiveValue:0 forKey:@"resolutionTokenMap"];
        [objectCopy didChangeValueForKey:@"resolutionTokenMap"];
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)migrateCRDTsInObject:(id)object
{
  objectCopy = object;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateCRDTsInAccount:objectCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateCRDTsInList:objectCopy];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)migrateCRDTsInAccount:(id)account
{
  accountCopy = account;
  v5 = [accountCopy primitiveValueForKey:@"listIDsMergeableOrdering_v2"];
  if (!v5)
  {
    remObjectID = [accountCopy remObjectID];
    v7 = [[REMReplicaIDSource alloc] initWithAccountID:remObjectID objectID:remObjectID property:@"listIDsMergeableOrdering"];
    v8 = [accountCopy primitiveValueForKey:@"listIDsMergeableOrdering"];
    v35 = 0;
    v9 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v7 serializedData:v8 error:&v35];
    v10 = v35;
    v11 = v10;
    if (v9)
    {
      selfCopy = self;
      v26 = v9;
      v27 = v10;
      v28 = v8;
      v29 = remObjectID;
      v30 = accountCopy;
      orderedSet = [v9 orderedSet];
      v13 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(orderedSet, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = orderedSet;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = *v32;
      while (1)
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            uuid = [v19 uuid];
            uUIDString = [uuid UUIDString];
            [v13 addObject:uUIDString];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v19];
              goto LABEL_15;
            }

            uuid = +[REMLogStore container];
            if (os_log_type_enabled(uuid, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v37 = v19;
              _os_log_fault_impl(&_mh_execute_header, uuid, OS_LOG_TYPE_FAULT, "Failed to create NSUUID from item in legacyOrderedSet. Skipping {item: %@}", buf, 0xCu);
            }
          }

LABEL_15:
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
        if (!v16)
        {
LABEL_17:

          v22 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v7 orderedSet:v13];
          serializedData = [v22 serializedData];
          if (serializedData)
          {
            accountCopy = v30;
            [v30 willChangeValueForKey:@"listIDsMergeableOrdering_v2"];
            [v30 setPrimitiveValue:serializedData forKey:@"listIDsMergeableOrdering_v2"];
            [v30 didChangeValueForKey:@"listIDsMergeableOrdering_v2"];
            [v30 willChangeValueForKey:@"listIDsMergeableOrdering"];
            [v30 setPrimitiveValue:0 forKey:@"listIDsMergeableOrdering"];
            [v30 didChangeValueForKey:@"listIDsMergeableOrdering"];
            [(RDStoreControllerMigrator_JSONProperties *)selfCopy setMigratedAccount:1];
            remObjectID = v29;
            v5 = 0;
            v11 = v27;
          }

          else
          {
            v24 = +[REMLogStore container];
            accountCopy = v30;
            remObjectID = v29;
            v11 = v27;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1007699B4();
            }

            v5 = 0;
          }

          v8 = v28;
          v9 = v26;
          goto LABEL_25;
        }
      }
    }

    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100769A1C();
    }

LABEL_25:
  }
}

- (void)migrateCRDTsInList:(id)list
{
  listCopy = list;
  [(RDStoreControllerMigrator_JSONProperties *)self setTotalListCount:[(RDStoreControllerMigrator_JSONProperties *)self totalListCount]+ 1];
  v5 = [listCopy primitiveValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  if (!v5)
  {
    account = [listCopy account];
    v7 = account;
    if (account)
    {
      remObjectID = [account remObjectID];
      remObjectID2 = [listCopy remObjectID];
      v10 = [(RDStoreControllerMigrator_JSONProperties *)self reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:remObjectID listID:remObjectID2];

      v11 = [listCopy primitiveValueForKey:@"reminderIDsMergeableOrdering"];
      v38 = 0;
      v12 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v10 serializedData:v11 error:&v38];
      v13 = v38;
      v14 = v13;
      if (v12)
      {
        selfCopy = self;
        v28 = v13;
        v30 = v11;
        v31 = v10;
        v32 = v7;
        v29 = v12;
        orderedSet = [v12 orderedSet];
        v16 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(orderedSet, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = orderedSet;
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v35;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v34 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v16 addObject:v22];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = [[NSUUID alloc] initWithUUIDString:v22];
                  if (v23)
                  {
                    v24 = [REMReminder objectIDWithUUID:v23];
                    [v16 addObject:v24];
                  }

                  else
                  {
                    v24 = +[REMLogStore container];
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v40 = v22;
                      _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Failed to create NSUUID from item in legacyOrderedSet. Skipping {item: %@}", buf, 0xCu);
                    }
                  }
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v34 objects:v41 count:16];
          }

          while (v19);
        }

        v33 = v28;
        v25 = [REMListStorage reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v16 error:&v33];
        v14 = v33;

        if (v25)
        {
          [listCopy willChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [listCopy setPrimitiveValue:v25 forKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [listCopy didChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [listCopy willChangeValueForKey:@"reminderIDsMergeableOrdering"];
          [listCopy setPrimitiveValue:0 forKey:@"reminderIDsMergeableOrdering"];
          [listCopy didChangeValueForKey:@"reminderIDsMergeableOrdering"];
          [(RDStoreControllerMigrator_JSONProperties *)selfCopy setMigratedListsCount:[(RDStoreControllerMigrator_JSONProperties *)selfCopy migratedListsCount]+ 1];
        }

        else
        {
          v26 = +[REMLogStore container];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100769A84();
          }
        }

        v7 = v32;
        v5 = 0;

        v11 = v30;
        v10 = v31;
        v12 = v29;
      }

      else
      {
        v17 = +[REMLogStore container];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100769AEC();
        }
      }
    }

    else
    {
      v14 = +[REMLogStore container];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100769B54(listCopy, v14);
      }
    }
  }
}

- (id)reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)d listID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:dCopy objectID:iDCopy property:@"reminderIDsMergeableOrdering"];

  return v7;
}

@end