@interface RDStoreControllerMigrator_JSONProperties
- (id)reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)a3 listID:(id)a4;
- (void)migrateCRDTsInAccount:(id)a3;
- (void)migrateCRDTsInList:(id)a3;
- (void)migrateCRDTsInObject:(id)a3;
- (void)migrateStore:(id)a3;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
- (void)migrateTokenResolutionMapInObject:(id)a3;
@end

@implementation RDStoreControllerMigrator_JSONProperties

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"RDStoreControllerMigrator_JSONProperties"];
  v8 = [v7 integerValue];

  if (v8 <= 2)
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateStore:v9];
    [v6 setObject:&off_100905130 forKeyedSubscript:@"RDStoreControllerMigrator_JSONProperties"];
  }
}

- (void)migrateStore:(id)a3
{
  v4 = a3;
  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "JSONPropertiesMigration BEGIN {store: %@}", buf, 0xCu);
  }

  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v7 = [v4 persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:v7];

  [v6 setTransactionAuthor:RDStoreControllerJSONPropertiesMigrationAuthor];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B85D0;
  v15[3] = &unk_1008D9C10;
  v8 = v4;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  v18 = self;
  [v9 performBlockAndWait:v15];
  v10 = +[REMLogStore container];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(RDStoreControllerMigrator_JSONProperties *)self totalMigratedCount];
    v12 = [(RDStoreControllerMigrator_JSONProperties *)self totalListCount];
    v13 = [(RDStoreControllerMigrator_JSONProperties *)self migratedAccount];
    v14 = [(RDStoreControllerMigrator_JSONProperties *)self migratedListsCount];
    *buf = 134219010;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 1024;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "JSONPropertiesMigration END {totalMigratedCount: %ld, totalListCount: %ld, migratedAccount: %d. migratedListsCount: %ld, store: %@}", buf, 0x30u);
  }
}

- (void)migrateTokenResolutionMapInObject:(id)a3
{
  v7 = a3;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7 primitiveValueForKey:@"resolutionTokenMap_v3_JSONData"];
  if (!v4)
  {
    v5 = [v7 primitiveValueForKey:@"resolutionTokenMap_v2_JSON"];
    if (v5)
    {
      [v7 setResolutionTokenMap:v5];
      [v7 willChangeValueForKey:@"resolutionTokenMap_v2_JSON"];
      [v7 setPrimitiveValue:0 forKey:@"resolutionTokenMap_v2_JSON"];
      [v7 didChangeValueForKey:@"resolutionTokenMap_v2_JSON"];
    }

    else
    {
      v6 = [v7 primitiveValueForKey:@"resolutionTokenMap"];
      if (v6)
      {
        [v7 setResolutionTokenMap:v6];
        [v7 willChangeValueForKey:@"resolutionTokenMap"];
        [v7 setPrimitiveValue:0 forKey:@"resolutionTokenMap"];
        [v7 didChangeValueForKey:@"resolutionTokenMap"];
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)migrateCRDTsInObject:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateCRDTsInAccount:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RDStoreControllerMigrator_JSONProperties *)self migrateCRDTsInList:v5];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)migrateCRDTsInAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 primitiveValueForKey:@"listIDsMergeableOrdering_v2"];
  if (!v5)
  {
    v6 = [v4 remObjectID];
    v7 = [[REMReplicaIDSource alloc] initWithAccountID:v6 objectID:v6 property:@"listIDsMergeableOrdering"];
    v8 = [v4 primitiveValueForKey:@"listIDsMergeableOrdering"];
    v35 = 0;
    v9 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v7 serializedData:v8 error:&v35];
    v10 = v35;
    v11 = v10;
    if (v9)
    {
      v25 = self;
      v26 = v9;
      v27 = v10;
      v28 = v8;
      v29 = v6;
      v30 = v4;
      v12 = [v9 orderedSet];
      v13 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v12;
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
            v20 = [v19 uuid];
            v21 = [v20 UUIDString];
            [v13 addObject:v21];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v19];
              goto LABEL_15;
            }

            v20 = +[REMLogStore container];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v37 = v19;
              _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Failed to create NSUUID from item in legacyOrderedSet. Skipping {item: %@}", buf, 0xCu);
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
          v23 = [v22 serializedData];
          if (v23)
          {
            v4 = v30;
            [v30 willChangeValueForKey:@"listIDsMergeableOrdering_v2"];
            [v30 setPrimitiveValue:v23 forKey:@"listIDsMergeableOrdering_v2"];
            [v30 didChangeValueForKey:@"listIDsMergeableOrdering_v2"];
            [v30 willChangeValueForKey:@"listIDsMergeableOrdering"];
            [v30 setPrimitiveValue:0 forKey:@"listIDsMergeableOrdering"];
            [v30 didChangeValueForKey:@"listIDsMergeableOrdering"];
            [(RDStoreControllerMigrator_JSONProperties *)v25 setMigratedAccount:1];
            v6 = v29;
            v5 = 0;
            v11 = v27;
          }

          else
          {
            v24 = +[REMLogStore container];
            v4 = v30;
            v6 = v29;
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

- (void)migrateCRDTsInList:(id)a3
{
  v4 = a3;
  [(RDStoreControllerMigrator_JSONProperties *)self setTotalListCount:[(RDStoreControllerMigrator_JSONProperties *)self totalListCount]+ 1];
  v5 = [v4 primitiveValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  if (!v5)
  {
    v6 = [v4 account];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 remObjectID];
      v9 = [v4 remObjectID];
      v10 = [(RDStoreControllerMigrator_JSONProperties *)self reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:v8 listID:v9];

      v11 = [v4 primitiveValueForKey:@"reminderIDsMergeableOrdering"];
      v38 = 0;
      v12 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v10 serializedData:v11 error:&v38];
      v13 = v38;
      v14 = v13;
      if (v12)
      {
        v27 = self;
        v28 = v13;
        v30 = v11;
        v31 = v10;
        v32 = v7;
        v29 = v12;
        v15 = [v12 orderedSet];
        v16 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = v15;
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
          [v4 willChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [v4 setPrimitiveValue:v25 forKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [v4 didChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
          [v4 willChangeValueForKey:@"reminderIDsMergeableOrdering"];
          [v4 setPrimitiveValue:0 forKey:@"reminderIDsMergeableOrdering"];
          [v4 didChangeValueForKey:@"reminderIDsMergeableOrdering"];
          [(RDStoreControllerMigrator_JSONProperties *)v27 setMigratedListsCount:[(RDStoreControllerMigrator_JSONProperties *)v27 migratedListsCount]+ 1];
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
        sub_100769B54(v4, v14);
      }
    }
  }
}

- (id)reminderIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)a3 listID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReplicaIDSource alloc] initWithAccountID:v6 objectID:v5 property:@"reminderIDsMergeableOrdering"];

  return v7;
}

@end