@interface NSOperationQueue
- (BOOL)containsOperationToDeleteRecordID:(id)d;
- (BOOL)containsOperationToFetchRecordID:(id)d;
- (BOOL)containsOperationToSaveRecordID:(id)d;
- (id)existingOperationToDeleteRecordID:(id)d;
- (id)existingOperationToFetchRecordID:(id)d;
- (id)existingOperationToSaveRecordID:(id)d;
- (id)iterativelyCancelDependentOperations:(id)operations;
@end

@implementation NSOperationQueue

- (id)existingOperationToDeleteRecordID:(id)d
{
  dCopy = d;
  operations = [(NSOperationQueue *)self operations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CB8BC;
  v9[3] = &unk_1008DC478;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToDeleteRecordID:(id)d
{
  v3 = [(NSOperationQueue *)self existingOperationToDeleteRecordID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)existingOperationToFetchRecordID:(id)d
{
  dCopy = d;
  operations = [(NSOperationQueue *)self operations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CBA3C;
  v9[3] = &unk_1008DC478;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToFetchRecordID:(id)d
{
  v3 = [(NSOperationQueue *)self existingOperationToFetchRecordID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)existingOperationToSaveRecordID:(id)d
{
  dCopy = d;
  operations = [(NSOperationQueue *)self operations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CBBBC;
  v9[3] = &unk_1008DC478;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToSaveRecordID:(id)d
{
  v3 = [(NSOperationQueue *)self existingOperationToSaveRecordID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)iterativelyCancelDependentOperations:(id)operations
{
  operationsCopy = operations;
  v5 = [NSMutableArray arrayWithObject:operationsCopy];
  operations = [(NSOperationQueue *)self operations];
  v7 = [operations mutableCopy];

  v8 = +[NSMutableArray array];
  v26 = v5;
  lastObject = [v5 lastObject];
  if (lastObject)
  {
    v10 = lastObject;
    v24 = v7;
    do
    {
      if (![v7 count])
      {
        break;
      }

      [v26 removeLastObject];
      lastObject2 = [v26 lastObject];

      v11 = +[NSMutableArray array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            dependencies = [v17 dependencies];
            if ([dependencies containsObject:operationsCopy])
            {
              isCancelled = [v17 isCancelled];

              if ((isCancelled & 1) == 0)
              {
                v20 = +[REMLog cloudkit];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  ic_loggingDescription = [v17 ic_loggingDescription];
                  *buf = 138412290;
                  v32 = ic_loggingDescription;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Canceling operation: %@", buf, 0xCu);
                }

                [v17 cancel];
                [v26 addObject:v17];
                [v11 addObject:v17];
                [v8 addObject:v17];
              }
            }

            else
            {
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v14);
      }

      [v12 removeObjectsInArray:v11];
      v7 = v24;
      v10 = lastObject2;
    }

    while (lastObject2);
  }

  v22 = [v8 copy];

  return v22;
}

@end