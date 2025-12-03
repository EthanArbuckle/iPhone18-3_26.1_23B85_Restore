@interface NEKResultsFetcher
- (NEKResultsFetcher)init;
- (id)eventChangeObserver;
- (id)reminderChangeObserver;
- (void)fetchChangesIntoPipe:(id)pipe deferrable:(BOOL)deferrable;
- (void)fetchEverythingIntoPipe:(id)pipe;
- (void)fetchNightlyIntoPipe:(id)pipe;
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
  nekEventStore = [(NEKResultsFetcher *)self nekEventStore];
  changeObserver = [nekEventStore changeObserver];

  return changeObserver;
}

- (id)reminderChangeObserver
{
  nekReminderStore = [(NEKResultsFetcher *)self nekReminderStore];
  changeObserver = [nekReminderStore changeObserver];

  return changeObserver;
}

- (void)fetchEverythingIntoPipe:(id)pipe
{
  pipeCopy = pipe;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073894();
  }

  nekEventStore = [(NEKResultsFetcher *)self nekEventStore];
  environment = [nekEventStore environment];

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
  tinyStore = [environment tinyStore];
  v11 = [(NEKSyncWindow *)v9 initForFullSync:1 tinyStore:tinyStore];

  eventChangeObserver = [(NEKResultsFetcher *)self eventChangeObserver];
  eventDatabaseController = [eventChangeObserver eventDatabaseController];

  eventChangeObserver2 = [(NEKResultsFetcher *)self eventChangeObserver];
  [eventChangeObserver2 restartTrackingChanges];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000483B4;
  v37[3] = &unk_1000B4B90;
  v15 = eventDatabaseController;
  v38 = v15;
  [pipeCopy addCompletion:v37];
  reminderChangeObserver = [(NEKResultsFetcher *)self reminderChangeObserver];
  changeStateMap = [reminderChangeObserver changeStateMap];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000483BC;
  v35[3] = &unk_1000B4BB8;
  v35[4] = self;
  v18 = changeStateMap;
  v36 = v18;
  [pipeCopy addCompletion:v35];
  v19 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = pipeCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "fetchEverythingIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v20 = [NSThread alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100048410;
  v28[3] = &unk_1000B5B60;
  v29 = v15;
  selfCopy = self;
  v31 = pipeCopy;
  v32 = v11;
  v33 = v7;
  v34 = v8;
  v21 = v8;
  v22 = v11;
  v23 = v7;
  v24 = pipeCopy;
  v25 = v15;
  v26 = [v20 initWithBlock:v28];
  [(NEKResultsFetcher *)self setBackgroundThread:v26];

  backgroundThread = [(NEKResultsFetcher *)self backgroundThread];
  [backgroundThread start];
}

- (void)fetchNightlyIntoPipe:(id)pipe
{
  pipeCopy = pipe;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073920();
  }

  nekEventStore = [(NEKResultsFetcher *)self nekEventStore];
  environment = [nekEventStore environment];

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
  tinyStore = [environment tinyStore];
  v11 = [(NEKSyncWindow *)v9 initForFullSync:0 tinyStore:tinyStore];

  eventChangeObserver = [(NEKResultsFetcher *)self eventChangeObserver];
  eventDatabaseController = [eventChangeObserver eventDatabaseController];

  [eventDatabaseController startMappingEntities];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100048B44;
  v32[3] = &unk_1000B4B90;
  v14 = eventDatabaseController;
  v33 = v14;
  [pipeCopy addCompletion:v32];
  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = pipeCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fetchNightlyIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v16 = [NSThread alloc];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100048B80;
  v26 = &unk_1000B5B88;
  selfCopy = self;
  v28 = pipeCopy;
  v29 = v11;
  v30 = v7;
  v31 = v8;
  v17 = v8;
  v18 = v11;
  v19 = v7;
  v20 = pipeCopy;
  v21 = [v16 initWithBlock:&v23];
  [(NEKResultsFetcher *)self setBackgroundThread:v21, v23, v24, v25, v26, selfCopy];

  backgroundThread = [(NEKResultsFetcher *)self backgroundThread];
  [backgroundThread start];
}

- (void)fetchChangesIntoPipe:(id)pipe deferrable:(BOOL)deferrable
{
  deferrableCopy = deferrable;
  pipeCopy = pipe;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000739AC();
  }

  eventChangeObserver = [(NEKResultsFetcher *)self eventChangeObserver];
  fetchEventChangeSet = [eventChangeObserver fetchEventChangeSet];

  reminderChangeObserver = [(NEKResultsFetcher *)self reminderChangeObserver];
  fetchReminderChangeSet = [reminderChangeObserver fetchReminderChangeSet];

  v11 = [NEKSourceChangeAggregator alloc];
  nekEventStore = [(NEKResultsFetcher *)self nekEventStore];
  v13 = [(NEKSourceChangeAggregator *)v11 initWithNEKEventStore:nekEventStore eventChanges:fetchEventChangeSet reminderChanges:fetchReminderChangeSet];

  if ([fetchEventChangeSet truncated])
  {
    [fetchReminderChangeSet setTruncated:1];
  }

  if ([fetchReminderChangeSet truncated])
  {
    [fetchEventChangeSet setTruncated:1];
  }

  if ([fetchEventChangeSet hasChangesInNext24hrs])
  {
    [pipeCopy markAsAffectingNext24hrs];
  }

  completion = [fetchEventChangeSet completion];
  if (completion)
  {
    [pipeCopy addCompletion:completion];
  }

  completion2 = [fetchReminderChangeSet completion];
  if (completion2)
  {
    [pipeCopy addCompletion:completion2];
  }

  if (![fetchEventChangeSet isEmpty] || (objc_msgSend(fetchReminderChangeSet, "isEmpty") & 1) == 0)
  {
    [pipeCopy markAsNotEffectivelyEmpty];
  }

  if ([fetchEventChangeSet truncated])
  {
    [pipeCopy markAsTruncated];
  }

  else if ([fetchReminderChangeSet isEmpty] && deferrableCopy && objc_msgSend(fetchEventChangeSet, "isDeferrable"))
  {
    [pipeCopy markAsDeferrable];
  }

  if (([fetchEventChangeSet truncated] & 1) != 0 || objc_msgSend(fetchEventChangeSet, "isEmpty") && objc_msgSend(fetchReminderChangeSet, "isEmpty"))
  {
    v16 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = pipeCopy;
      v17 = "Finishing pipe (empty changesets): %p";
      v18 = v16;
      v19 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }

LABEL_31:
    [pipeCopy finish];
    goto LABEL_32;
  }

  if ([pipeCopy isDeferrable])
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

  nekEventStore2 = [(NEKResultsFetcher *)self nekEventStore];
  nekReminderStore = [(NEKResultsFetcher *)self nekReminderStore];
  v22 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = pipeCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "fetchChangesIntoPipe:PipeBefore: %{public}@", buf, 0xCu);
  }

  v23 = [NSThread alloc];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100049224;
  v29[3] = &unk_1000B5BB0;
  v30 = nekEventStore2;
  v31 = fetchEventChangeSet;
  v32 = v13;
  v33 = pipeCopy;
  v34 = nekReminderStore;
  v35 = fetchReminderChangeSet;
  selfCopy = self;
  v27 = nekReminderStore;
  v24 = nekEventStore2;
  v25 = [v23 initWithBlock:v29];
  [(NEKResultsFetcher *)self setBackgroundThread:v25];

  backgroundThread = [(NEKResultsFetcher *)self backgroundThread];
  [backgroundThread start];

LABEL_32:
}

- (void)join
{
  backgroundThread = [(NEKResultsFetcher *)self backgroundThread];

  if (backgroundThread)
  {
    terminateSemaphore = [(NEKResultsFetcher *)self terminateSemaphore];
    dispatch_semaphore_wait(terminateSemaphore, 0xFFFFFFFFFFFFFFFFLL);

    [(NEKResultsFetcher *)self setBackgroundThread:0];
  }
}

@end