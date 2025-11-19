@interface NEKResultsFetcher
- (NEKResultsFetcher)init;
- (id)eventChangeObserver;
- (id)reminderChangeObserver;
- (void)fetchChangesIntoPipe:(id)a3 deferrable:(BOOL)a4;
- (void)fetchEverythingIntoPipe:(id)a3;
- (void)fetchNightlyIntoPipe:(id)a3;
- (void)join;
@end

@implementation NEKResultsFetcher

- (NEKResultsFetcher)init
{
  v6.receiver = self;
  v6.super_class = NEKResultsFetcher;
  v2 = [(NEKResultsFetcher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    terminateSemaphore = v2->_terminateSemaphore;
    v2->_terminateSemaphore = v3;
  }

  return v2;
}

- (id)eventChangeObserver
{
  v2 = [(NEKResultsFetcher *)self nekEventStore];
  v3 = [v2 changeObserver];

  return v3;
}

- (id)reminderChangeObserver
{
  v2 = [(NEKResultsFetcher *)self nekReminderStore];
  v3 = [v2 changeObserver];

  return v3;
}

- (void)fetchEverythingIntoPipe:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073894();
  }

  v5 = [(NEKResultsFetcher *)self nekEventStore];
  v6 = [v5 environment];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000482DC;
  v40[3] = &unk_1000B5B10;
  v40[4] = self;
  v7 = objc_retainBlock(v40);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100048348;
  v39[3] = &unk_1000B5B38;
  v39[4] = self;
  v8 = objc_retainBlock(v39);
  v9 = [NEKSyncWindow alloc];
  v10 = [v6 tinyStore];
  v11 = [(NEKSyncWindow *)v9 initForFullSync:1 tinyStore:v10];

  v12 = [(NEKResultsFetcher *)self eventChangeObserver];
  v13 = [v12 eventDatabaseController];

  v14 = [(NEKResultsFetcher *)self eventChangeObserver];
  [v14 restartTrackingChanges];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000483B4;
  v37[3] = &unk_1000B4B90;
  v15 = v13;
  v38 = v15;
  [v4 addCompletion:v37];
  v16 = [(NEKResultsFetcher *)self reminderChangeObserver];
  v17 = [v16 changeStateMap];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000483BC;
  v35[3] = &unk_1000B4BB8;
  v35[4] = self;
  v18 = v17;
  v36 = v18;
  [v4 addCompletion:v35];
  v19 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "fetchEverythingIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v20 = [NSThread alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100048410;
  v28[3] = &unk_1000B5B60;
  v29 = v15;
  v30 = self;
  v31 = v4;
  v32 = v11;
  v33 = v7;
  v34 = v8;
  v21 = v8;
  v22 = v11;
  v23 = v7;
  v24 = v4;
  v25 = v15;
  v26 = [v20 initWithBlock:v28];
  [(NEKResultsFetcher *)self setBackgroundThread:v26];

  v27 = [(NEKResultsFetcher *)self backgroundThread];
  [v27 start];
}

- (void)fetchNightlyIntoPipe:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073920();
  }

  v5 = [(NEKResultsFetcher *)self nekEventStore];
  v6 = [v5 environment];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000489F0;
  v35[3] = &unk_1000B5B10;
  v35[4] = self;
  v7 = objc_retainBlock(v35);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100048AD8;
  v34[3] = &unk_1000B5B38;
  v34[4] = self;
  v8 = objc_retainBlock(v34);
  v9 = [NEKSyncWindow alloc];
  v10 = [v6 tinyStore];
  v11 = [(NEKSyncWindow *)v9 initForFullSync:0 tinyStore:v10];

  v12 = [(NEKResultsFetcher *)self eventChangeObserver];
  v13 = [v12 eventDatabaseController];

  [v13 startMappingEntities];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100048B44;
  v32[3] = &unk_1000B4B90;
  v14 = v13;
  v33 = v14;
  [v4 addCompletion:v32];
  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fetchNightlyIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v16 = [NSThread alloc];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100048B80;
  v26 = &unk_1000B5B88;
  v27 = self;
  v28 = v4;
  v29 = v11;
  v30 = v7;
  v31 = v8;
  v17 = v8;
  v18 = v11;
  v19 = v7;
  v20 = v4;
  v21 = [v16 initWithBlock:&v23];
  [(NEKResultsFetcher *)self setBackgroundThread:v21, v23, v24, v25, v26, v27];

  v22 = [(NEKResultsFetcher *)self backgroundThread];
  [v22 start];
}

- (void)fetchChangesIntoPipe:(id)a3 deferrable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000739AC();
  }

  v7 = [(NEKResultsFetcher *)self eventChangeObserver];
  v8 = [v7 fetchEventChangeSet];

  v9 = [(NEKResultsFetcher *)self reminderChangeObserver];
  v10 = [v9 fetchReminderChangeSet];

  v11 = [NEKSourceChangeAggregator alloc];
  v12 = [(NEKResultsFetcher *)self nekEventStore];
  v13 = [(NEKSourceChangeAggregator *)v11 initWithNEKEventStore:v12 eventChanges:v8 reminderChanges:v10];

  if ([v8 truncated])
  {
    [v10 setTruncated:1];
  }

  if ([v10 truncated])
  {
    [v8 setTruncated:1];
  }

  if ([v8 hasChangesInNext24hrs])
  {
    [v6 markAsAffectingNext24hrs];
  }

  v14 = [v8 completion];
  if (v14)
  {
    [v6 addCompletion:v14];
  }

  v15 = [v10 completion];
  if (v15)
  {
    [v6 addCompletion:v15];
  }

  if (![v8 isEmpty] || (objc_msgSend(v10, "isEmpty") & 1) == 0)
  {
    [v6 markAsNotEffectivelyEmpty];
  }

  if ([v8 truncated])
  {
    [v6 markAsTruncated];
  }

  else if ([v10 isEmpty] && v4 && objc_msgSend(v8, "isDeferrable"))
  {
    [v6 markAsDeferrable];
  }

  if (([v8 truncated] & 1) != 0 || objc_msgSend(v8, "isEmpty") && objc_msgSend(v10, "isEmpty"))
  {
    v16 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = v6;
      v17 = "Finishing pipe (empty changesets): %p";
      v18 = v16;
      v19 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }

LABEL_31:
    [v6 finish];
    goto LABEL_32;
  }

  if ([v6 isDeferrable])
  {
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Finishing pipe. Changeset is deferrable.";
      v18 = v20;
      v19 = 2;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v28 = [(NEKResultsFetcher *)self nekEventStore];
  v21 = [(NEKResultsFetcher *)self nekReminderStore];
  v22 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "fetchChangesIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v23 = [NSThread alloc];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100049224;
  v29[3] = &unk_1000B5BB0;
  v30 = v28;
  v31 = v8;
  v32 = v13;
  v33 = v6;
  v34 = v21;
  v35 = v10;
  v36 = self;
  v27 = v21;
  v24 = v28;
  v25 = [v23 initWithBlock:v29];
  [(NEKResultsFetcher *)self setBackgroundThread:v25];

  v26 = [(NEKResultsFetcher *)self backgroundThread];
  [v26 start];

LABEL_32:
}

- (void)join
{
  v3 = [(NEKResultsFetcher *)self backgroundThread];

  if (v3)
  {
    v4 = [(NEKResultsFetcher *)self terminateSemaphore];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

    [(NEKResultsFetcher *)self setBackgroundThread:0];
  }
}

@end