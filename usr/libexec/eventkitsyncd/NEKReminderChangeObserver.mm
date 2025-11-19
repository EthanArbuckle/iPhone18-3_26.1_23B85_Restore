@interface NEKReminderChangeObserver
- (BOOL)_fetchChangesInto:(id)a3 from:(id)a4 inside:(id)a5 outDeletedReminderAndListMapping:(id *)a6 outMovedReminderAndListMapping:(id *)a7;
- (BOOL)allCloudKitAccountsInto:(id)a3;
- (BOOL)allListsInto:(id)a3;
- (BOOL)allRemindersInto:(id)a3 filter:(id)a4 window:(id)a5;
- (NEKReminderChangeObserver)initWithQueue:(id)a3 environment:(id)a4;
- (NEKReminderStore)weakReminderDatabaseController;
- (id)_aggregateIntoInserts:(id)a3 updates:(id)a4 deletes:(id)a5;
- (id)changeStateMap;
- (id)fetchReminderChangeSet;
- (id)loadChangeTrackingStateMapWithStore:(id)a3;
- (id)previousDefaultReminderListID;
- (void)beginObservingChanges;
- (void)dealloc;
- (void)notifyForDatabaseUpdates;
- (void)saveChangeTrackingStateMap:(id)a3;
- (void)setPreviousDefaultReminderListID:(id)a3;
- (void)stopObservingChanges;
- (void)storeDidChange;
@end

@implementation NEKReminderChangeObserver

- (NEKReminderChangeObserver)initWithQueue:(id)a3 environment:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NEKReminderChangeObserver;
  v8 = [(NEKChangeObserver *)&v11 initWithEnvironment:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    [(NEKReminderChangeObserver *)v9 beginObservingChanges];
  }

  return v9;
}

- (void)dealloc
{
  [(NEKReminderChangeObserver *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = NEKReminderChangeObserver;
  [(NEKReminderChangeObserver *)&v3 dealloc];
}

- (void)beginObservingChanges
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = +[REMStore storeDidChangeNotificationName];
  [v4 addObserver:self selector:"storeDidChange" name:v3 object:0];
}

- (void)stopObservingChanges
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = +[REMStore storeDidChangeNotificationName];
  [v4 removeObserver:self name:v3 object:0];
}

- (void)storeDidChange
{
  objc_initWeak(&location, self);
  v3 = os_transaction_create();
  v4 = [(NEKChangeObserver *)self environment];
  v5 = [v4 syncCoordinator];
  v6 = [v5 okToPerformDeltaSync];

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062F48;
    block[3] = &unk_1000B5138;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    dispatch_async(queue, block);

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = @"REMStore";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] storeDidChange: ignoring delta sync request, sync coordinator says it is not time", buf, 0xCu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)notifyForDatabaseUpdates
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NEKReminderChangeObserver notifyForDatabaseUpdates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v4 = [(NEKChangeObserver *)self delegate];
  [v4 changeObserverDidObserveChanges:self];
}

- (id)_aggregateIntoInserts:(id)a3 updates:(id)a4 deletes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v51[0] = &off_1000BB850;
  v51[1] = &off_1000BB880;
  v52[0] = &off_1000BB868;
  v52[1] = &off_1000BB868;
  v51[2] = &off_1000BB898;
  v52[2] = &off_1000BB868;
  v10 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
  v11 = [v10 mutableCopy];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100063420;
  v46[3] = &unk_1000B5F10;
  v12 = v11;
  v47 = v12;
  v13 = objc_retainBlock(v46);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (v13[2])(v13, *(*(&v42 + 1) + 8 * i), 1);
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v16);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        (v13[2])(v13, *(*(&v38 + 1) + 8 * j), 2);
      }

      v21 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v21);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v9;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        (v13[2])(v13, *(*(&v34 + 1) + 8 * k), 4);
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v26);
  }

  v29 = [v12 objectForKeyedSubscript:&off_1000BB850];
  v30 = [v12 objectForKeyedSubscript:&off_1000BB880];
  v31 = [v12 objectForKeyedSubscript:&off_1000BB898];
  v32 = [NSString stringWithFormat:@"+%@, *%@, -%@", v29, v30, v31];

  return v32;
}

- (BOOL)allCloudKitAccountsInto:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100075868();
  }

  if (sub_10000A57C())
  {
    v4 = +[REMStore eks_storeForSyncing];
    v27 = 0;
    v5 = [v4 fetchAccountsWithError:&v27];
    v6 = v27;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v6;
      v22 = v4;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if ([v12 type] == 2)
          {
            v13 = [[NEKSourceWrapper alloc] initWithChangeType:1 account:v12];
            v14 = *(qword_1000D18A8 + 8);
            if (v13)
            {
              if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
              {
                v15 = v14;
                v16 = [v12 remObjectID];
                *buf = 138543618;
                v29 = @"REMStore";
                v30 = 2114;
                v31 = v16;
                _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] allCloudKitAccountsInto: sending source wrapper for CloudKit account [%{public}@]", buf, 0x16u);
              }

              if (![v3 push:v13])
              {

                v19 = 0;
                goto LABEL_22;
              }
            }

            else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
            {
              v17 = v14;
              v18 = [v12 remObjectID];
              *buf = 138543618;
              v29 = @"REMStore";
              v30 = 2114;
              v31 = v18;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] allCloudKitAccountsInto: failed to create source wrapper for CloudKit account [%{public}@]", buf, 0x16u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v9);
      v19 = 1;
LABEL_22:
      v6 = v21;
      v4 = v22;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)allListsInto:(id)a3
{
  v42 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000758F4();
  }

  v4 = +[REMStore eks_storeForSyncing];
  v52 = 0;
  v5 = [v4 fetchAccountsWithError:&v52];
  v6 = v52;
  v7 = [(NEKReminderChangeObserver *)self reminderDatabaseController];
  v8 = [v7 getDefaultListForStore:v4];

  if (v6)
  {
    v9 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100075980(v9, v6);
    }
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v5;
    v36 = [v11 countByEnumeratingWithState:&v48 objects:v60 count:16];
    v6 = 0;
    if (v36)
    {
      v12 = *v49;
      v34 = *v49;
      v35 = v4;
      v38 = v11;
      v39 = v5;
      do
      {
        v13 = 0;
        v14 = v6;
        do
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v37 = v13;
          v15 = *(*(&v48 + 1) + 8 * v13);
          context = objc_autoreleasePoolPush();
          v47 = v14;
          v16 = [v15 fetchListsWithError:&v47];
          v41 = v47;

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v44;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v44 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v43 + 1) + 8 * i);
                if (sub_10000A63C(v22))
                {
                  v23 = [[NEKCalendarWrapper alloc] initWithChangeType:1 list:v22];
                  v24 = [v22 remObjectID];
                  v25 = [v8 remObjectID];
                  v26 = [v24 isEqual:v25];

                  if (v26)
                  {
                    v27 = *(qword_1000D18A8 + 8);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      v28 = v27;
                      v29 = [v22 name];
                      v30 = sub_10002CDF8(v29);
                      v31 = [v22 objectID];
                      *buf = 138543874;
                      v54 = @"REMStore";
                      v55 = 2114;
                      v56 = v30;
                      v57 = 2114;
                      v58 = v31;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] allListsInto: marking [%{public}@] as defaultTaskCalendar, objectID: [%{public}@]", buf, 0x20u);
                    }

                    [(NEKCalendarWrapper *)v23 setIsDefaultTaskCalendar:1, v34];
                  }

                  v32 = [v42 push:{v23, v34}];

                  if (!v32)
                  {

                    objc_autoreleasePoolPop(context);
                    v10 = 0;
                    v4 = v35;
                    v5 = v39;
                    v6 = v41;
                    goto LABEL_29;
                  }
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v43 objects:v59 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          v13 = v37 + 1;
          v6 = v41;
          v14 = v41;
          v11 = v38;
          v5 = v39;
          v12 = v34;
        }

        while ((v37 + 1) != v36);
        v4 = v35;
        v36 = [v38 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v36);
    }
  }

  v10 = 1;
LABEL_29:

  return v10;
}

- (BOOL)allRemindersInto:(id)a3 filter:(id)a4 window:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100075A30();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v11 = +[REMStore eks_storeForSyncing];
  v12 = [(NEKReminderChangeObserver *)self reminderDatabaseController];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100063E18;
  v19[3] = &unk_1000B5F38;
  v13 = v10;
  v20 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v8;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v24 = &v25;
  [v11 enumerateAllRemindersWithBlock:v19];
  v17 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v17;
}

- (id)fetchReminderChangeSet
{
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100075ABC();
  }

  v3 = +[NEKChangeSet changeSetForReminder];
  v4 = [(NEKReminderChangeObserver *)self reminderDatabaseController];
  context = objc_autoreleasePoolPush();
  [v3 setTruncated:0];
  v5 = +[REMStore eks_storeForSyncing];
  v6 = [(NEKReminderChangeObserver *)self loadChangeTrackingStateMapWithStore:v5];

  v7 = [v6 deletedAccountIDsFromLoadedMap];
  if ([v6 hasChangeTrackingTokens])
  {
    v38 = 0;
    v39 = 0;
    v8 = [(NEKReminderChangeObserver *)self _fetchChangesInto:v3 from:v6 inside:v4 outDeletedReminderAndListMapping:&v39 outMovedReminderAndListMapping:&v38];
    v9 = v39;
    v10 = v38;
    if (v8)
    {
      [v3 setDeletionMap:v9];
      [v3 setMoveMap:v10];
    }

    else
    {
      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100075B48(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = !self->_sawSeqnoFailure;
      *buf = 138543618;
      v42 = @"REMStore";
      v43 = 1024;
      LODWORD(v44) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchReminderChangeSet: pulled nil from changeTrackingStateMap, requesting one (and only one) full sync? [%{BOOL}d]", buf, 0x12u);
    }

    if (self->_sawSeqnoFailure)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = @"REMStore";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchReminderChangeSet: saw sequence number failure already, still waiting for corrective full sync to complete", buf, 0xCu);
      }

      [v3 setTruncated:0];
      v10 = 0;
      v9 = 0;
    }

    else
    {
      self->_sawSeqnoFailure = 1;
      [v3 setTruncated:1];
      v10 = 0;
      v9 = 0;
    }
  }

  if ([v7 count])
  {
    v22 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = @"REMStore";
      v43 = 2114;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchReminderChangeSet: synthesizing delete for REMAccount %{public}@", buf, 0x16u);
    }

    v23 = [v3 deletes];
    v24 = [v23 mutableCopy];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v7;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v24 addObject:*(*(&v34 + 1) + 8 * i)];
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v27);
    }

    v30 = [v24 copy];
    [v3 setDeletes:v30];

    v4 = v32;
  }

  objc_autoreleasePoolPop(context);

  return v3;
}

- (BOOL)_fetchChangesInto:(id)a3 from:(id)a4 inside:(id)a5 outDeletedReminderAndListMapping:(id *)a6 outMovedReminderAndListMapping:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  self->_sawSeqnoFailure = 0;
  v15 = dispatch_semaphore_create(0);
  objc_initWeak(location, self);
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100064620;
  v50 = sub_100064630;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100064620;
  v44 = sub_100064630;
  v45 = 0;
  kdebug_trace();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100064638;
  v31[3] = &unk_1000B5F60;
  v16 = v13;
  v32 = v16;
  v37 = &v46;
  v38 = &v40;
  v17 = v12;
  v33 = v17;
  v34 = self;
  v18 = v14;
  v35 = v18;
  objc_copyWeak(&v39, location);
  v19 = v15;
  v36 = v19;
  [v16 fetchChangedObjectIDs:v31];
  if (a6)
  {
    *a6 = v47[5];
  }

  if (a7)
  {
    *a7 = v41[5];
  }

  v20 = dispatch_time(0, 1200000000000);
  v21 = dispatch_semaphore_wait(v19, v20);
  if (v21)
  {
    v22 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100075BC0(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  objc_destroyWeak(&v39);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  objc_destroyWeak(location);

  return v21 == 0;
}

- (id)loadChangeTrackingStateMapWithStore:(id)a3
{
  v4 = a3;
  v5 = [(NEKChangeObserver *)self environment];
  v6 = [v5 tinyStore];
  v7 = [(NEKReminderChangeObserver *)self _sequenceKey];
  v8 = [v6 getStringValueForKey:v7 default:0];

  if (v8 && (v9 = [[NSData alloc] initWithBase64EncodedString:v8 options:0]) != 0)
  {
    v10 = v9;
    v11 = [NEKReminderChangeTrackingStateMap alloc];
    v12 = [(NEKChangeObserver *)self environment];
    v13 = [v12 clientName];
    v14 = [(NEKReminderChangeTrackingStateMap *)v11 initWithData:v10 store:v4 clientName:v13];

    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded change tracking state map %@", &v17, 0xCu);
    }
  }

  else
  {
    v14 = objc_alloc_init(NEKReminderChangeTrackingStateMap);
  }

  return v14;
}

- (void)saveChangeTrackingStateMap:(id)a3
{
  v4 = [a3 persistToData:0];
  v5 = [v4 base64EncodedStringWithOptions:0];
  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved change tracking state map %@", &v11, 0xCu);
  }

  v7 = [(NEKChangeObserver *)self environment];
  v8 = [v7 tinyStore];
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_1000B7928;
  }

  v10 = [(NEKReminderChangeObserver *)self _sequenceKey];
  [v8 setStringValue:v9 forKey:v10];
}

- (id)previousDefaultReminderListID
{
  v3 = [(NEKChangeObserver *)self environment];
  v4 = [v3 tinyStore];
  v5 = [(NEKReminderChangeObserver *)self _reminderListKey];
  v6 = [v4 getStringValueForKey:v5 default:0];

  if (v6)
  {
    v7 = [[NSUUID alloc] initWithUUIDString:v6];
    if (!v7 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
    {
      sub_100075CB0();
    }

    v8 = [REMList objectIDWithUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setPreviousDefaultReminderListID:(id)a3
{
  v4 = a3;
  v9 = [(NEKChangeObserver *)self environment];
  v5 = [v9 tinyStore];
  v6 = [v4 uuid];

  v7 = [v6 UUIDString];
  v8 = [(NEKReminderChangeObserver *)self _reminderListKey];
  [v5 setStringValue:v7 forKey:v8];
}

- (id)changeStateMap
{
  v3 = objc_alloc_init(NEKReminderChangeTrackingStateMap);
  v4 = +[REMStore eks_storeForSyncing];
  v5 = [(NEKChangeObserver *)self environment];
  v6 = [v5 clientName];
  [(NEKReminderChangeTrackingStateMap *)v3 beginTrackingFromNowForStore:v4 clientName:v6];

  return v3;
}

- (NEKReminderStore)weakReminderDatabaseController
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReminderDatabaseController);

  return WeakRetained;
}

@end