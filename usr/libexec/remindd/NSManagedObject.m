@interface NSManagedObject
+ (id)_ic_objectsFromObjectIDs:(id)a3 propertiesToFetch:(id)a4 relationshipKeyPathsForPrefetching:(id)a5 context:(id)a6;
+ (id)_ic_resultsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 resultType:(unint64_t)a5 fetchBatchSize:(unint64_t)a6 propertiesToFetch:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 context:(id)a9;
+ (id)ic_objectFromObjectID:(id)a3 context:(id)a4;
+ (id)ic_objectIDsFromObjects:(id)a3;
+ (id)ic_permanentObjectIDsFromObjects:(id)a3;
- (BOOL)ic_obtainPermanentObjectIDIfNecessary;
- (id)ic_permanentObjectID;
- (id)ic_postNotificationOnMainThreadAfterSaveWithName:(id)a3;
- (void)ic_postNotificationOnMainThreadWithName:(id)a3;
@end

@implementation NSManagedObject

+ (id)ic_objectFromObjectID:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    v14 = 0;
    v7 = [v6 existingObjectWithID:v5 error:&v14];
    v8 = v14;
    v9 = REMCheckedDynamicCast();

    if (v8)
    {
      v10 = [v8 code];
      v11 = +[REMLog cloudkit];
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v10 == 133000)
      {
        if (v12)
        {
          sub_1007666B8();
        }
      }

      else if (v12)
      {
        sub_100766634();
      }
    }
  }

  else
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10076672C(v8);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)ic_objectIDsFromObjects:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) objectID];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)ic_permanentObjectIDsFromObjects:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = [v4 ic_objectsPassingTest:&stru_1008DB7B8];
    v7 = [v5 managedObjectContext];
    v13 = 0;
    v8 = [v7 obtainPermanentIDsForObjects:v6 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1007667C8();
      }
    }
  }

  v11 = [a1 ic_objectIDsFromObjects:v4];

  return v11;
}

- (BOOL)ic_obtainPermanentObjectIDIfNecessary
{
  v3 = [(NSManagedObject *)self objectID];
  v4 = [v3 isTemporaryID];

  if (!v4)
  {
    return 1;
  }

  v5 = [(NSManagedObject *)self managedObjectContext];
  v12 = self;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = 0;
  v7 = [v5 obtainPermanentIDsForObjects:v6 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076683C(self, v8, v9);
    }
  }

  return v7;
}

- (id)ic_permanentObjectID
{
  [(NSManagedObject *)self ic_obtainPermanentObjectIDIfNecessary];

  return [(NSManagedObject *)self objectID];
}

- (void)ic_postNotificationOnMainThreadWithName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSManagedObject *)self managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7AF8;
  v7[3] = &unk_1008D9B20;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)ic_postNotificationOnMainThreadAfterSaveWithName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3042000000;
  v18 = sub_1000A7DE8;
  v19 = sub_1000A7DF4;
  v20 = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [(NSManagedObject *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A7DFC;
  v11[3] = &unk_1008DB7E0;
  objc_copyWeak(&v14, &location);
  v7 = v4;
  v12 = v7;
  v13 = &v15;
  v8 = [v5 addObserverForName:NSManagedObjectContextDidSaveObjectIDsNotification object:v6 queue:0 usingBlock:v11];
  objc_storeWeak(v16 + 5, v8);

  WeakRetained = objc_loadWeakRetained(v16 + 5);
  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return WeakRetained;
}

+ (id)_ic_objectsFromObjectIDs:(id)a3 propertiesToFetch:(id)a4 relationshipKeyPathsForPrefetching:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a1 entity];
  v15 = [v14 name];

  if (!v15)
  {
    sub_100767860();
  }

  v16 = [NSFetchRequest fetchRequestWithEntityName:v15];
  [v16 setIncludesSubentities:1];
  v17 = [NSPredicate predicateWithFormat:@"SELF in %@", v10];
  [v16 setPredicate:v17];

  [v16 setPropertiesToFetch:v13];
  [v16 setRelationshipKeyPathsForPrefetching:v12];

  v22 = 0;
  v18 = [v11 executeFetchRequest:v16 error:&v22];

  v19 = v22;
  if (v19)
  {
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1007678D4(v10, v19, v20);
    }
  }

  return v18;
}

+ (id)_ic_resultsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 resultType:(unint64_t)a5 fetchBatchSize:(unint64_t)a6 propertiesToFetch:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 context:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000AD248;
  v36 = sub_1000AD258;
  v37 = [a1 fetchRequest];
  v20 = v33[5];
  if (!v20)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000AD260;
    v31[3] = &unk_1008DB948;
    v31[4] = &v32;
    v31[5] = a1;
    [v19 performBlockAndWait:v31];
    v20 = v33[5];
  }

  [v20 setPredicate:v15];
  [v33[5] setResultType:a5];
  [v33[5] setFetchBatchSize:a6];
  [v33[5] setSortDescriptors:v16];
  [v33[5] setRelationshipKeyPathsForPrefetching:v18];
  if (v17)
  {
    [v33[5] setPropertiesToFetch:v17];
  }

  v21 = v33[5];
  v30 = 0;
  v22 = [v19 executeFetchRequest:v21 error:&v30];
  v23 = v30;
  if (v23)
  {
    v24 = +[REMLog cloudkit];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      *buf = 138544130;
      v39 = v28;
      v40 = 2112;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
      v44 = 2114;
      v45 = v23;
      v29 = v28;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error fetching %{public}@ (predicate=%@ sortDescriptors=%{public}@): %{public}@", buf, 0x2Au);
    }

LABEL_8:

    goto LABEL_10;
  }

  if (!v22)
  {
    v24 = +[REMLog cloudkit];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      *buf = 138544130;
      v39 = v26;
      v40 = 2112;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
      v44 = 2114;
      v45 = v19;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Nil objects array fetching %{public}@ (predicate=%@ sortDescriptors=%{public}@ context=%{public}@)", buf, 0x2Au);
    }

    goto LABEL_8;
  }

LABEL_10:

  _Block_object_dispose(&v32, 8);

  return v22;
}

@end