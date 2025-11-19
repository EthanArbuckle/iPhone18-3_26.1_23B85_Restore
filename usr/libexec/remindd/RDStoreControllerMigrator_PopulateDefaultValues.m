@interface RDStoreControllerMigrator_PopulateDefaultValues
- (void)migrateStore:(id)a3;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_PopulateDefaultValues

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"RDStoreControllerMigrator_PopulateDefaultValues"];
  v8 = [v7 integerValue];

  if (v8 <= 0)
  {
    [(RDStoreControllerMigrator_PopulateDefaultValues *)self migrateStore:v9];
    [v6 setObject:&off_100905190 forKeyedSubscript:@"RDStoreControllerMigrator_PopulateDefaultValues"];
  }
}

- (void)migrateStore:(id)a3
{
  v3 = a3;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PopulateDefaultValuesMigration BEGIN {store: %@}", buf, 0xCu);
  }

  v39 = v3;
  v5 = [v3 persistentStoreCoordinator];
  v6 = [v5 managedObjectModel];

  v32 = v6;
  v7 = [v6 entitiesByName];
  v40 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v35 = v7;
  obj = [v7 allKeys];
  v36 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v36)
  {
    v34 = *v56;
    v38 = RDStoreControllerDefaultValuesMigrationAuthor;
    do
    {
      v8 = 0;
      do
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v41 = *(*(&v55 + 1) + 8 * v8);
        v42 = [v35 objectForKeyedSubscript:?];
        v9 = [v42 attributesByName];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v43 = [v9 allKeys];
        v10 = [v43 countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v52;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v52 != v12)
              {
                objc_enumerationMutation(v43);
              }

              v14 = *(*(&v51 + 1) + 8 * i);
              v15 = [v9 objectForKeyedSubscript:v14];
              if (([v15 isOptional] & 1) == 0)
              {
                v16 = [v15 defaultValue];
                if (v16)
                {
                  v17 = [v42 superentity];
                  v18 = [v17 attributesByName];
                  v19 = [v18 objectForKey:v14];

                  v20 = +[REMLogStore container];
                  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
                  if (v19)
                  {
                    if (v21)
                    {
                      *buf = 138412546;
                      v63 = v41;
                      v64 = 2112;
                      v65 = v14;
                      v22 = v20;
                      v23 = OS_LOG_TYPE_INFO;
                      v24 = "Attribute belongs to super entity. Skipping {entityName: %@, attributeName: %@}";
                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    if (v21)
                    {
                      *buf = 138412546;
                      v63 = v41;
                      v64 = 2112;
                      v65 = v14;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "PopulateDefaultValues BEGIN {entity: %@, attributeName: %@}", buf, 0x16u);
                    }

                    v25 = [[NSBatchUpdateRequest alloc] initWithEntity:v42];
                    v26 = [NSPredicate predicateWithFormat:@"%K == NULL", v14];
                    [v25 setPredicate:v26];

                    [v25 setIncludesSubentities:1];
                    [v25 setResultType:2];
                    v60 = v15;
                    v61 = v16;
                    v27 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                    [v25 setPropertiesToUpdate:v27];

                    v59 = v39;
                    v28 = [NSArray arrayWithObjects:&v59 count:1];
                    [v25 setAffectedStores:v28];

                    v29 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
                    [v29 setTransactionAuthor:v38];
                    v44[0] = _NSConcreteStackBlock;
                    v44[1] = 3221225472;
                    v44[2] = sub_1000E2AD0;
                    v44[3] = &unk_1008DAEE8;
                    v45 = v39;
                    v46 = v25;
                    v47 = v29;
                    v48 = v40;
                    v49 = v41;
                    v50 = v14;
                    v30 = v29;
                    v20 = v25;
                    [v30 performBlockAndWait:v44];
                  }
                }

                else
                {
                  v20 = +[REMLogStore container];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v63 = v41;
                    v64 = 2112;
                    v65 = v14;
                    v22 = v20;
                    v23 = OS_LOG_TYPE_DEFAULT;
                    v24 = "Non-optional attribute has no default value. Skipping {entityName: %@, attributeName: %@}";
LABEL_20:
                    _os_log_impl(&_mh_execute_header, v22, v23, v24, buf, 0x16u);
                  }
                }
              }
            }

            v11 = [v43 countByEnumeratingWithState:&v51 objects:v66 count:16];
          }

          while (v11);
        }

        v8 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v36);
  }

  v31 = +[REMLogStore container];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v39;
    v64 = 2112;
    v65 = v40;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "PopulateDefaultValuesMigration END {store: %@, populateAttributeNames: %@}", buf, 0x16u);
  }
}

@end