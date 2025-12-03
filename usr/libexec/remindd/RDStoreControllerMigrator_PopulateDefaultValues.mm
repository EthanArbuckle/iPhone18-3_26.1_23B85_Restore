@interface RDStoreControllerMigrator_PopulateDefaultValues
- (void)migrateStore:(id)store;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_PopulateDefaultValues

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"RDStoreControllerMigrator_PopulateDefaultValues"];
  integerValue = [v7 integerValue];

  if (integerValue <= 0)
  {
    [(RDStoreControllerMigrator_PopulateDefaultValues *)self migrateStore:neededCopy];
    [metadataCopy setObject:&off_100905190 forKeyedSubscript:@"RDStoreControllerMigrator_PopulateDefaultValues"];
  }
}

- (void)migrateStore:(id)store
{
  storeCopy = store;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = storeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PopulateDefaultValuesMigration BEGIN {store: %@}", buf, 0xCu);
  }

  v39 = storeCopy;
  persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  v32 = managedObjectModel;
  entitiesByName = [managedObjectModel entitiesByName];
  v40 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v35 = entitiesByName;
  obj = [entitiesByName allKeys];
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
        attributesByName = [v42 attributesByName];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        allKeys = [attributesByName allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v51 objects:v66 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v14 = *(*(&v51 + 1) + 8 * i);
              v15 = [attributesByName objectForKeyedSubscript:v14];
              if (([v15 isOptional] & 1) == 0)
              {
                defaultValue = [v15 defaultValue];
                if (defaultValue)
                {
                  superentity = [v42 superentity];
                  attributesByName2 = [superentity attributesByName];
                  v19 = [attributesByName2 objectForKey:v14];

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
                    v61 = defaultValue;
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

            v11 = [allKeys countByEnumeratingWithState:&v51 objects:v66 count:16];
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