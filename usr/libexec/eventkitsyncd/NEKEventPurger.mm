@interface NEKEventPurger
- (NEKEventPurger)initWithStore:(id)store recordMap:(id)map;
- (void)_deleteCalendarById:(id)id;
- (void)_deleteEventById:(id)id;
- (void)_deleteStoreById:(id)id;
- (void)finalizeDatabasesAfterResetSync;
@end

@implementation NEKEventPurger

- (NEKEventPurger)initWithStore:(id)store recordMap:(id)map
{
  storeCopy = store;
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = NEKEventPurger;
  v8 = [(NEKEventPurger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NEKEventPurger *)v8 setStore:storeCopy];
    [(NEKEventPurger *)v9 setRecordMap:mapCopy];
  }

  return v9;
}

- (void)finalizeDatabasesAfterResetSync
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v49 = "[NEKEventPurger finalizeDatabasesAfterResetSync]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  recordMap = [(NEKEventPurger *)self recordMap];
  store = [(NEKEventPurger *)self store];
  _deletableSources = [store _deletableSources];

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  obj = _deletableSources;
  v30 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v30)
  {
    v29 = *v43;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        objectID = [v8 objectID];
        if (objectID && ([recordMap identifierForRecordID:objectID], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
        {
          [(NEKEventPurger *)self _deleteStoreById:objectID];
        }

        else
        {
          v31 = objectID;
          v32 = v9;
          v33 = i;
          v12 = [v8 calendarsForEntityType:0];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v38 + 1) + 8 * j);
                v19 = objc_autoreleasePoolPush();
                objectID2 = [v18 objectID];
                if (objectID2 && ([recordMap identifierForRecordID:objectID2], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
                {
                  [(NEKEventPurger *)self _deleteCalendarById:objectID2];
                }

                else
                {
                  store2 = [(NEKEventPurger *)self store];
                  v23 = [store2 predicateForMasterEventsInCalendar:v18];

                  store3 = [(NEKEventPurger *)self store];
                  v35[0] = _NSConcreteStackBlock;
                  v35[1] = 3221225472;
                  v35[2] = sub_100069B24;
                  v35[3] = &unk_1000B5378;
                  v36 = recordMap;
                  selfCopy = self;
                  [store3 enumerateEventsMatchingPredicate:v23 usingBlock:v35];
                }

                objc_autoreleasePoolPop(v19);
              }

              v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          v9 = v32;
          i = v33;
          objectID = v31;
        }

        objc_autoreleasePoolPop(v9);
      }

      v30 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v30);
  }

  store4 = [(NEKEventPurger *)self store];
  v34 = 0;
  [store4 commit:&v34];
  v26 = v34;

  if (v26)
  {
    v27 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100075F88(v27);
    }
  }
}

- (void)_deleteStoreById:(id)id
{
  idCopy = id;
  store = [(NEKEventPurger *)self store];
  v6 = [store publicObjectWithObjectID:idCopy];

  if (v6 && [idCopy entityType] == 6)
  {
    v7 = v6;
    store2 = [(NEKEventPurger *)self store];
    v15 = 0;
    [store2 removeSource:v7 commit:0 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    sourceIdentifier = [v7 sourceIdentifier];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ sourceIdentifier=%@; type=%ld", idCopy, v10, sourceIdentifier, [v7 sourceType]);;

    v13 = *(qword_1000D18A8 + 8);
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100075FCC();
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PURGE: Successfully deleted stale source %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100076034(v14, idCopy);
    }
  }
}

- (void)_deleteCalendarById:(id)id
{
  idCopy = id;
  store = [(NEKEventPurger *)self store];
  v6 = [store publicObjectWithObjectID:idCopy];

  if (v6 && [idCopy entityType] == 1)
  {
    v7 = v6;
    store2 = [(NEKEventPurger *)self store];
    v15 = 0;
    [store2 removeCalendar:v7 commit:0 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    calendarIdentifier = [v7 calendarIdentifier];
    v12 = [NSString stringWithFormat:@"%@ %@ calendarIdentifier=%@", idCopy, v10, calendarIdentifier];;

    v13 = *(qword_1000D18A8 + 8);
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000760C0();
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PURGE: Successfully deleted stale calendar %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100076128(v14, idCopy);
    }
  }
}

- (void)_deleteEventById:(id)id
{
  idCopy = id;
  store = [(NEKEventPurger *)self store];
  v6 = [store publicObjectWithObjectID:idCopy];

  if (v6 && [idCopy entityType] == 2)
  {
    v7 = v6;
    store2 = [(NEKEventPurger *)self store];
    v15 = 0;
    [store2 removeEvent:v7 span:1 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    recurrenceIdentifier = [v7 recurrenceIdentifier];
    v12 = [NSString stringWithFormat:@"%@ %@ eventIdentifier=%@", idCopy, v10, recurrenceIdentifier];;

    v13 = *(qword_1000D18A8 + 8);
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000761B4();
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PURGE: Successfully deleted stale event %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007621C(v14, idCopy);
    }
  }
}

@end