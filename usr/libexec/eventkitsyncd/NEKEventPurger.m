@interface NEKEventPurger
- (NEKEventPurger)initWithStore:(id)a3 recordMap:(id)a4;
- (void)_deleteCalendarById:(id)a3;
- (void)_deleteEventById:(id)a3;
- (void)_deleteStoreById:(id)a3;
- (void)finalizeDatabasesAfterResetSync;
@end

@implementation NEKEventPurger

- (NEKEventPurger)initWithStore:(id)a3 recordMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NEKEventPurger;
  v8 = [(NEKEventPurger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NEKEventPurger *)v8 setStore:v6];
    [(NEKEventPurger *)v9 setRecordMap:v7];
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

  v4 = [(NEKEventPurger *)self recordMap];
  v5 = [(NEKEventPurger *)self store];
  v6 = [v5 _deletableSources];

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  obj = v6;
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
        v10 = [v8 objectID];
        if (v10 && ([v4 identifierForRecordID:v10], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
        {
          [(NEKEventPurger *)self _deleteStoreById:v10];
        }

        else
        {
          v31 = v10;
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
                v20 = [v18 objectID];
                if (v20 && ([v4 identifierForRecordID:v20], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
                {
                  [(NEKEventPurger *)self _deleteCalendarById:v20];
                }

                else
                {
                  v22 = [(NEKEventPurger *)self store];
                  v23 = [v22 predicateForMasterEventsInCalendar:v18];

                  v24 = [(NEKEventPurger *)self store];
                  v35[0] = _NSConcreteStackBlock;
                  v35[1] = 3221225472;
                  v35[2] = sub_100069B24;
                  v35[3] = &unk_1000B5378;
                  v36 = v4;
                  v37 = self;
                  [v24 enumerateEventsMatchingPredicate:v23 usingBlock:v35];
                }

                objc_autoreleasePoolPop(v19);
              }

              v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          v9 = v32;
          i = v33;
          v10 = v31;
        }

        objc_autoreleasePoolPop(v9);
      }

      v30 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v30);
  }

  v25 = [(NEKEventPurger *)self store];
  v34 = 0;
  [v25 commit:&v34];
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

- (void)_deleteStoreById:(id)a3
{
  v4 = a3;
  v5 = [(NEKEventPurger *)self store];
  v6 = [v5 publicObjectWithObjectID:v4];

  if (v6 && [v4 entityType] == 6)
  {
    v7 = v6;
    v8 = [(NEKEventPurger *)self store];
    v15 = 0;
    [v8 removeSource:v7 commit:0 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    v11 = [v7 sourceIdentifier];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ sourceIdentifier=%@; type=%ld", v4, v10, v11, [v7 sourceType]);;

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
      sub_100076034(v14, v4);
    }
  }
}

- (void)_deleteCalendarById:(id)a3
{
  v4 = a3;
  v5 = [(NEKEventPurger *)self store];
  v6 = [v5 publicObjectWithObjectID:v4];

  if (v6 && [v4 entityType] == 1)
  {
    v7 = v6;
    v8 = [(NEKEventPurger *)self store];
    v15 = 0;
    [v8 removeCalendar:v7 commit:0 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    v11 = [v7 calendarIdentifier];
    v12 = [NSString stringWithFormat:@"%@ %@ calendarIdentifier=%@", v4, v10, v11];;

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
      sub_100076128(v14, v4);
    }
  }
}

- (void)_deleteEventById:(id)a3
{
  v4 = a3;
  v5 = [(NEKEventPurger *)self store];
  v6 = [v5 publicObjectWithObjectID:v4];

  if (v6 && [v4 entityType] == 2)
  {
    v7 = v6;
    v8 = [(NEKEventPurger *)self store];
    v15 = 0;
    [v8 removeEvent:v7 span:1 error:&v15];
    v9 = v15;

    v10 = sub_10002CDF8([v7 title]);
    v11 = [v7 recurrenceIdentifier];
    v12 = [NSString stringWithFormat:@"%@ %@ eventIdentifier=%@", v4, v10, v11];;

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
      sub_10007621C(v14, v4);
    }
  }
}

@end