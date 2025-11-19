@interface NEKReminderStore
- (BOOL)_saveEventStore:(id)a3;
- (BOOL)_updateAccount:(id)a3 withSourceWrapper:(id)a4 store:(id)a5;
- (BOOL)_updateList:(id)a3 withCalendarWrapper:(id)a4;
- (BOOL)shouldSendReminder:(id)a3;
- (NEKReminderStore)initWithEnvironment:(id)a3;
- (id)_createListForWrapper:(id)a3 store:(id)a4;
- (id)_deletableAccountsForStore:(id)a3;
- (id)_deletableListsForStore:(id)a3;
- (id)deduplicateICSWrappers:(id)a3;
- (id)freshEventStoreFor:(id)a3;
- (id)getDefaultListForStore:(id)a3;
- (id)listCacheForStore:(id)a3 wrappers:(id)a4;
- (id)reminderCacheForStore:(id)a3 wrappers:(id)a4;
- (id)saveRequestForStore:(id)a3 needsPurgeDeletedObjectsAfterSave:(BOOL)a4;
- (void)ICSWrappersForChangeSet:(id)a3 movedReminderAndListMapping:(id)a4 pipe:(id)a5;
- (void)_createAccountForWrapper:(id)a3 store:(id)a4;
- (void)_deleteAccountWithIdentifier:(id)a3 store:(id)a4;
- (void)_deleteListWithIdentifier:(id)a3 store:(id)a4;
- (void)_deleteReminderWithIdentifier:(id)a3 store:(id)a4;
- (void)_ensureReminderInList:(id)a3 saveRequest:(id)a4 inICSWrapper:(id)a5;
- (void)applySidePropertiesToReminderChangeItem:(id)a3 withWrapper:(id)a4 session:(id)a5;
- (void)deleteAccount:(id)a3;
- (void)deleteItem:(id)a3 store:(id)a4;
- (void)deleteItemWithIdentifier:(id)a3 store:(id)a4;
- (void)deleteList:(id)a3;
- (void)deleteReminder:(id)a3;
- (void)handleReminderWithUniqueIdentifierFromGizmo:(id)a3 saveRequest:(id)a4 list:(id)a5 wrapper:(id)a6;
- (void)handleUpdatedReminderFromGizmo:(id)a3 withSaveRequest:(id)a4 withWrapper:(id)a5;
- (void)listWrappersForChangeSet:(id)a3 pipe:(id)a4;
- (void)performUpdateWithICSWrappers:(id)a3 store:(id)a4 session:(id)a5;
- (void)removeAllItems;
- (void)removeAllRemindersInList:(id)a3;
- (void)removeDeletableAccounts:(id)a3;
- (void)removeDeletableLists:(id)a3;
- (void)saveEventStore:(id)a3;
- (void)storeWrapperForCloudKitAccount:(id)a3 pipe:(id)a4;
- (void)updateCalendar:(id)a3 store:(id)a4;
- (void)updateICS:(id)a3 store:(id)a4 session:(id)a5;
- (void)updateSource:(id)a3 store:(id)a4;
@end

@implementation NEKReminderStore

- (NEKReminderStore)initWithEnvironment:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEKReminderStore;
  v5 = [(NEKStore *)&v12 initWithEnvironment:v4];
  if (v5)
  {
    v6 = sub_100004B98("com.apple.eventkitsync.nekreminderstore");
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [NEKChangeObserver changeObserverForReminderWithQueue:v5->_queue databaseController:v5 environment:v4];
    [(NEKStore *)v5 setChangeObserver:v8];

    v9 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:0];
    saveRequests = v5->_saveRequests;
    v5->_saveRequests = v9;
  }

  return v5;
}

- (id)freshEventStoreFor:(id)a3
{
  v4 = +[REMStore eks_storeForSyncing];
  v5 = [(NEKReminderStore *)self saveRequests];
  v6 = +[NSMutableArray array];
  [v5 setObject:v6 forKey:v4];

  return v4;
}

- (void)saveEventStore:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053DE0;
  v7[3] = &unk_1000B4BB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)_saveEventStore:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v26 = os_transaction_create();
  v24 = objc_alloc_init(NDTPerf);
  kdebug_trace();
  context = objc_autoreleasePoolPush();
  v5 = [(NEKReminderStore *)self saveRequests];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 copy];

  [v7 count];
  v25 = self;
  v8 = [(NEKReminderStore *)self saveRequests];
  v9 = +[NSMutableArray array];
  [v8 setObject:v9 forKey:v4];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        [(__CFString *)v16 saveSynchronouslyWithError:&v27];
        v17 = v27;
        if (v17)
        {
          v18 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v33 = v16;
            v34 = 2114;
            v35 = v17;
            _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Error saving save request %@: %{public}@", buf, 0x16u);
          }

          v14 = 0;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  objc_autoreleasePoolPop(context);
  if ([(NEKReminderStore *)v25 saveRequestsNeedPurgeDeletedObjectsAfterSave]&& os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074180();
  }

  [(NEKReminderStore *)v25 setSaveRequestsNeedPurgeDeletedObjectsAfterSave:0];
  kdebug_trace();
  v19 = [NDTPerf nowMinusPrevious:v24];

  v20 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000741BC(v20, v19);
    if ((v14 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = @"REMStore";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveEventStore: database changes saved successfully", buf, 0xCu);
  }

LABEL_21:

  return v14 & 1;
}

- (id)saveRequestForStore:(id)a3 needsPurgeDeletedObjectsAfterSave:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
    {
      sub_100074294();
    }

    v6 = [(NEKReminderStore *)self freshEventStoreFor:@"saveRequestForStore(Reminders)"];
  }

  v7 = [[REMSaveRequest alloc] initWithStore:v6];
  v8 = [(NEKStore *)self environment];
  v9 = [v8 clientName];
  [v7 setAuthor:v9];

  v10 = [(NEKReminderStore *)self saveRequests];
  v11 = [v10 objectForKey:v6];
  [v11 addObject:v7];

  if (v4)
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Save request created with needsPurgeDeletedObjectsAfterSave=YES. The next save will be slow.", v14, 2u);
    }
  }

  [(NEKReminderStore *)self setSaveRequestsNeedPurgeDeletedObjectsAfterSave:[(NEKReminderStore *)self saveRequestsNeedPurgeDeletedObjectsAfterSave]| v4];

  return v7;
}

- (void)removeAllItems
{
  v3 = os_transaction_create();
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000543E8;
  v6[3] = &unk_1000B4BB8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

- (void)removeDeletableAccounts:(id)a3
{
  v4 = [(NEKReminderStore *)self _deletableAccountsForStore:a3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NEKReminderStore *)self deleteAccount:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_deletableAccountsForStore:(id)a3
{
  v8 = 0;
  v3 = [a3 fetchAccountsWithError:&v8];
  v4 = v8;
  if (!v3 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000742D0();
  }

  v5 = [NSPredicate predicateWithBlock:&stru_1000B5CA8];
  v6 = [v3 filteredArrayUsingPredicate:v5];

  return v6;
}

- (void)removeDeletableLists:(id)a3
{
  v4 = a3;
  v5 = [(NEKReminderStore *)self _deletableListsForStore:v4];
  v6 = [v4 eks_defaultLocalList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v12 + 1) + 8 * v11) != v6)
        {
          [(NEKReminderStore *)self deleteList:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    [(NEKReminderStore *)self removeAllRemindersInList:v6];
  }
}

- (void)removeAllRemindersInList:(id)a3
{
  v4 = a3;
  v5 = [v4 store];
  v6 = [(NEKReminderStore *)self saveRequestForStore:v5];

  v19 = 0;
  v7 = [v4 fetchRemindersWithError:&v19];
  v8 = v19;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v6 updateReminder:{*(*(&v15 + 1) + 8 * v13), v15}];
        [v14 removeFromList];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)_deletableListsForStore:(id)a3
{
  v3 = a3;
  v27 = +[NSMutableArray array];
  v37 = 0;
  v4 = [v3 fetchAccountsWithError:&v37];
  v5 = v37;
  if (!v4 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000742D0();
  }

  v28 = [v3 eks_localAccount];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v26 = v30;
    v10 = v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        if ([v12 type] == 2)
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [v12 objectID];
            *buf = 138543362;
            v39 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skip deleting list in CloudKit account with ID %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v32 = v5;
          v16 = [v12 fetchListsWithError:&v32];
          v17 = v32;

          if (!v16)
          {
            v18 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v39 = v17;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching lists: %{public}@", buf, 0xCu);
            }
          }

          if (v12 == v28)
          {
            v19 = [v3 eks_defaultLocalList];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v30[0] = sub_100054DDC;
            v30[1] = &unk_1000B5CD0;
            v31 = v19;
            v20 = v19;
            v21 = [NSPredicate predicateWithBlock:v29];
            [v16 filteredArrayUsingPredicate:v21];
            v23 = v22 = v3;

            v16 = v23;
            v3 = v22;
            v10 = v27;
          }

          [v10 addObjectsFromArray:v16];

          v5 = v17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = v27;
  }

  v24 = [v10 copy];

  return v24;
}

- (id)getDefaultListForStore:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchDefaultListWithError:0];
  v5 = [v3 eks_defaultLocalList];

  if (v5)
  {
    v6 = [v4 remObjectID];
    v7 = [v5 remObjectID];
    v8 = [v6 isEqual:v7];

    if (v8)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldSendReminder:(id)a3
{
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = a3;
    v7 = [v6 objectID];
    v8 = [v6 daCalendarItemUniqueIdentifier];

    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selecting reminder (id=%{public}@, calendarUniqueId=%{public}@)", &v10, 0x16u);
  }

  return 1;
}

- (void)updateSource:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005509C;
  v13[3] = &unk_1000B5098;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_sync(queue, v13);
}

- (void)updateCalendar:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000555AC;
  v13[3] = &unk_1000B5098;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_sync(queue, v13);
}

- (void)updateICS:(id)a3 store:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055A78;
  block[3] = &unk_1000B5070;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_sync(queue, block);
}

- (void)deleteItemWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100055B78;
  v13[3] = &unk_1000B5098;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(queue, v13);
}

- (void)deleteItem:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectIdentifier];
  v9 = [v6 type];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      [(NEKReminderStore *)self _deleteAccountWithIdentifier:v8 store:v7];
      goto LABEL_11;
    }

    if (v9 == 2)
    {
      [(NEKReminderStore *)self _deleteListWithIdentifier:v8 store:v7];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v9 == 3)
  {
    [(NEKReminderStore *)self _deleteReminderWithIdentifier:v8 store:v7];
    goto LABEL_11;
  }

  if (v9 != 4)
  {
LABEL_7:
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000746D0();
    }
  }

LABEL_11:
}

- (void)handleUpdatedReminderFromGizmo:(id)a3 withSaveRequest:(id)a4 withWrapper:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v7 title];
    v13 = sub_10002CDF8(v12);
    v14 = [v7 daCalendarItemUniqueIdentifier];
    v20 = 138543618;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling updated reminder from gizmo with summary %{public}@ and identifier %{public}@", &v20, 0x16u);
  }

  if ([v9 isTaskCompleted])
  {
    [v9 taskCompletionDate];
    v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v16 = [v8 updateReminder:v7];
    [v16 setCompletionDate:v15];
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v7 daCalendarItemUniqueIdentifier];
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Reminder with identifier %{public}@ is completed, completion date is %{public}@", &v20, 0x16u);
    }
  }
}

- (void)handleReminderWithUniqueIdentifierFromGizmo:(id)a3 saveRequest:(id)a4 list:(id)a5 wrapper:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v11 store];
  v18 = 0;
  v15 = [v14 fetchReminderWithDACalendarItemUniqueIdentifier:v10 inList:v13 error:&v18];

  v16 = v18;
  if (v15)
  {
    [(NEKReminderStore *)self handleUpdatedReminderFromGizmo:v15 withSaveRequest:v11 withWrapper:v12];
  }

  else
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100074738(v10, v17, v12);
    }
  }
}

- (id)deduplicateICSWrappers:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableOrderedSet orderedSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v3 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectIdentifier];
        if ([v4 containsObject:v12])
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v22 = v12;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Received ICS wrappers with the same identifier %{public}@ in the same batch. Deduplicating. ", buf, 0xCu);
          }
        }

        else
        {
          [v4 addObject:v12];
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v5 reverseObjectEnumerator];
  v15 = [v14 allObjects];

  return v15;
}

- (id)listCacheForStore:(id)a3 wrappers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v33 + 1) + 8 * i) calendarIdentifier];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v10);
  }

  v28 = v8;

  v14 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Going to build list cache for IDs %{public}@", buf, 0xCu);
  }

  v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [v7 copy];
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = [NEKCalendarID listInStore:v5 withNEKCalendarID:v21];
        if (v22)
        {
          [v15 setObject:v22 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  v23 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = [v15 allKeys];
    *buf = 138543362;
    v39 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Built list cache for wrappers %{public}@", buf, 0xCu);
  }

  v26 = [v15 copy];

  return v26;
}

- (id)reminderCacheForStore:(id)a3 wrappers:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * i) objectIdentifier];
        if ([v6 containsObject:v12])
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v29 = v12;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Received ICS wrappers with the same identifier %{public}@ in the same batch", buf, 0xCu);
          }
        }

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v14 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Going to build reminder cache for IDs %{public}@", buf, 0xCu);
  }

  v15 = [v6 allObjects];
  v23 = 0;
  v16 = [v22 fetchRemindersWithDACalendarItemUniqueIdentifiers:v15 inList:0 error:&v23];
  v17 = v23;

  if (!v16)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074808();
    }

    v16 = +[NSDictionary dictionary];
  }

  v18 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v16 allKeys];
    *buf = 138543362;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Built reminder cache for wrappers %{public}@", buf, 0xCu);
  }

  return v16;
}

- (void)performUpdateWithICSWrappers:(id)a3 store:(id)a4 session:(id)a5
{
  v8 = a3;
  v79 = a4;
  v9 = a5;
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 67109120;
    LODWORD(v118) = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "performUpdateWithICSWrappers received %d items", buf, 8u);
  }

  v12 = [(NEKReminderStore *)self saveRequestForStore:v79];
  v13 = [(NEKReminderStore *)self deduplicateICSWrappers:v8];

  v14 = [(NEKReminderStore *)self listCacheForStore:v79 wrappers:v13];
  v78 = [(NEKReminderStore *)self reminderCacheForStore:v79 wrappers:v13];
  v83 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
  v85 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v13;
  v80 = v12;
  v82 = v14;
  v90 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
  if (v90)
  {
    v88 = *v112;
    do
    {
      for (i = 0; i != v90; i = i + 1)
      {
        if (*v112 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v111 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v17 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v118 = *&v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received ICS wrapper: %{public}@", buf, 0xCu);
        }

        v18 = *(qword_1000D18B0 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_100070290(v123, v18, v16, &v124);
        }

        v19 = [v16 calendarIdentifier];
        v20 = [v14 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v16 ICSData];

          v22 = *(qword_1000D18A8 + 8);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Processing add/update from companion, or a new record from the watch", buf, 2u);
            }

            v24 = [v16 oldCalendarIdentifier];
            if (!v24)
            {
              goto LABEL_25;
            }

            v25 = v24;
            v26 = [v16 calendarIdentifier];
            v27 = [v26 identifier];

            if (v27)
            {
              v28 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                v30 = [v16 oldCalendarIdentifier];
                v31 = [v16 calendarIdentifier];
                v32 = [v31 identifier];
                *buf = 138543618;
                v118 = *&v30;
                v119 = 2114;
                v120 = v32;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Got an update/add for reminder, old list id = %{public}@, current list id = %{public}@", buf, 0x16u);
              }

              v33 = [v16 oldCalendarIdentifier];
              v34 = [v16 calendarIdentifier];
              v35 = [v34 identifier];
              v36 = [v33 isEqualToString:v35];

              v37 = *(qword_1000D18A8 + 8);
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
              if (v36)
              {
                v14 = v82;
                if (v38)
                {
                  v39 = v37;
                  v40 = [v16 oldCalendarIdentifier];
                  v41 = [v16 calendarIdentifier];
                  v42 = [v41 identifier];
                  *buf = 138543618;
                  v118 = *&v40;
                  v119 = 2114;
                  v120 = v42;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Lists match, so reminder didn't move: old list id = %{public}@, current list id = %{public}@", buf, 0x16u);

                  v14 = v82;
                }
              }

              else
              {
                if (v38)
                {
                  v52 = v37;
                  v53 = [v16 oldCalendarIdentifier];
                  v54 = [v16 calendarIdentifier];
                  v55 = [v54 identifier];
                  *buf = 138543618;
                  v118 = *&v53;
                  v119 = 2114;
                  v120 = v55;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Lists don't match, so deleting from old list: old list id = %{public}@, current list id = %{public}@", buf, 0x16u);
                }

                [(NEKReminderStore *)self _ensureReminderInList:v20 saveRequest:v12 inICSWrapper:v16];
                v14 = v82;
              }
            }

            else
            {
LABEL_25:
              v44 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = v44;
                v46 = [v16 title];
                v47 = sub_10002CDF8(v46);
                v48 = [v16 calendarIdentifier];
                v49 = [v48 identifier];
                *buf = 138543618;
                v118 = *&v47;
                v119 = 2114;
                v120 = v49;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Got an update/add for reminder %{public}@, no old list id was sent, so this is from an old record map and falling back to old code to check and delete from any old list. The current list id = %{public}@", buf, 0x16u);

                v12 = v80;
                v14 = v82;
              }

              [(NEKReminderStore *)self _ensureReminderInList:v20 saveRequest:v12 inICSWrapper:v16];
            }

            [v83 addObject:v16];
            [v85 addObject:v20];
          }

          else
          {
            if (v23)
            {
              v50 = v22;
              v51 = [v16 objectIdentifier];
              *buf = 138543362;
              v118 = *&v51;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Processing update from the watch, main identifier is %{public}@", buf, 0xCu);
            }

            v108[0] = _NSConcreteStackBlock;
            v108[1] = 3221225472;
            v108[2] = sub_1000574C8;
            v108[3] = &unk_1000B50C0;
            v108[4] = v16;
            v108[5] = self;
            v109 = v12;
            v110 = v20;
            [v16 enumerateCalendarItemIdentifiersUsingBlock:v108];
          }
        }

        else
        {
          v43 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            sub_100074870(v121, v43, v16, &v122);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v90 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
    }

    while (v90);
  }

  v56 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v83, "count")}];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v57 = v83;
  v58 = [v57 countByEnumeratingWithState:&v104 objects:v116 count:16];
  contexta = v57;
  if (v58)
  {
    v59 = v58;
    v60 = *v105;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v105 != v60)
        {
          objc_enumerationMutation(contexta);
        }

        v62 = [*(*(&v104 + 1) + 8 * j) ICSData];
        [v56 addObject:v62];
      }

      v57 = contexta;
      v59 = [contexta countByEnumeratingWithState:&v104 objects:v116 count:16];
    }

    while (v59);
  }

  if ([v57 count])
  {
    v81 = os_transaction_create();
    kdebug_trace();
    Current = CFAbsoluteTimeGetCurrent();
    v64 = +[NSMutableArray array];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100057574;
    v98[3] = &unk_1000B5CF8;
    v99 = v78;
    v87 = v57;
    v100 = v87;
    v101 = v12;
    v102 = v85;
    v65 = v64;
    v103 = v65;
    [v56 enumerateObjectsUsingBlock:v98];
    kdebug_trace();
    v66 = CFAbsoluteTimeGetCurrent();
    v67 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v118 = v66 - Current;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "ICS Import: %fs #perf", buf, 0xCu);
    }

    if ([v65 count])
    {
      v68 = 0;
      v84 = v65;
      do
      {
        v89 = objc_autoreleasePoolPush();
        v69 = [v87 objectAtIndex:v68];
        v91 = v68;
        v70 = [v65 objectAtIndex:v68];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v71 = v70;
        v72 = [v71 countByEnumeratingWithState:&v94 objects:v115 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v95;
          do
          {
            for (k = 0; k != v73; k = k + 1)
            {
              if (*v95 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v94 + 1) + 8 * k);
              v77 = objc_autoreleasePoolPush();
              [(NEKReminderStore *)self handleNewReminderChangeItem:v76 withWrapper:v69 session:v9];
              objc_autoreleasePoolPop(v77);
            }

            v73 = [v71 countByEnumeratingWithState:&v94 objects:v115 count:16];
          }

          while (v73);
        }

        objc_autoreleasePoolPop(v89);
        v68 = v91 + 1;
        v65 = v84;
      }

      while (v91 + 1 < [v84 count]);
    }

    v12 = v80;
    v57 = contexta;
  }
}

- (void)_ensureReminderInList:(id)a3 saveRequest:(id)a4 inICSWrapper:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057978;
    v12[3] = &unk_1000B5110;
    v13 = v7;
    v14 = v10;
    v15 = v8;
    [v14 enumerateCalendarItemIdentifiersUsingBlock:v12];
  }

  else
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Input to _ensureReminderInList is nil (%@, %@, %@). Skipping.", buf, 0x20u);
    }
  }
}

- (void)applySidePropertiesToReminderChangeItem:(id)a3 withWrapper:(id)a4 session:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 daCalendarItemUniqueIdentifier];
  v9 = [v7 externalIDForIdentifier:v8];

  v10 = *(qword_1000D18A8 + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setting externalID %{public}@ for event with identifier %{public}@", &v12, 0x16u);
    }

    [v6 setExternalIdentifier:v9];
  }

  else if (v11)
  {
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No externalID in metadata for event with identifier %{public}@", &v12, 0xCu);
  }
}

- (void)storeWrapperForCloudKitAccount:(id)a3 pipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEmpty])
  {
    v8 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping storeWrapperForCloudKitAccount as changeSet is empty", buf, 2u);
    }
  }

  else if (sub_10000A57C())
  {
    v9 = [(NEKReminderStore *)self freshEventStoreFor:@"storeWrapperForCloudKitAccount"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100058A8C;
    v13[3] = &unk_1000B5D98;
    v13[4] = self;
    v10 = v7;
    v14 = v10;
    [(NEKReminderStore *)self batchedEnumerateAccountsForStore:v9 changeSet:v6 changeType:2 withBlock:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100058AA0;
    v11[3] = &unk_1000B5D98;
    v11[4] = self;
    v12 = v10;
    [(NEKReminderStore *)self batchedEnumerateAccountsForStore:v9 changeSet:v6 changeType:1 withBlock:v11];
  }
}

- (void)listWrappersForChangeSet:(id)a3 pipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEmpty])
  {
    v8 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping listWrappersForChangeSet as changeSet is empty", v9, 2u);
    }
  }

  else
  {
    [(NEKReminderStore *)self _batchEnumerateChangeSet:v6 intoPipe:v7 forChangeType:1];
    [(NEKReminderStore *)self _batchEnumerateChangeSet:v6 intoPipe:v7 forChangeType:2];
  }
}

- (void)ICSWrappersForChangeSet:(id)a3 movedReminderAndListMapping:(id)a4 pipe:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [NEKSyncWindow alloc];
  v12 = [(NEKStore *)self environment];
  v13 = [v12 tinyStore];
  v14 = [(NEKSyncWindow *)v11 initForFullSync:0 tinyStore:v13];

  v15 = [(NEKReminderStore *)self freshEventStoreFor:@"ICSWrappersForChangeSet(Reminders)"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100059500;
  v26[3] = &unk_1000B5DE8;
  v16 = v14;
  v27 = v16;
  v28 = self;
  v17 = v9;
  v29 = v17;
  [(NEKReminderStore *)self batchedEnumerateRemindersForStore:v15 changeSet:v10 changeType:1 withBlock:v26];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100059614;
  v21[3] = &unk_1000B5E10;
  v22 = v16;
  v23 = self;
  v24 = v8;
  v25 = v17;
  v18 = v17;
  v19 = v8;
  v20 = v16;
  [(NEKReminderStore *)self batchedEnumerateRemindersForStore:v15 changeSet:v10 changeType:2 withBlock:v21];
}

- (void)_deleteAccountWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %{public}@", buf, 0xCu);
  }

  v9 = [[NSUUID alloc] initWithUUIDString:v6];
  if (!v9 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074D24();
  }

  v10 = [REMAccount objectIDWithUUID:v9];
  v16 = 0;
  v11 = [v7 fetchAccountWithObjectID:v10 error:&v16];
  v12 = v16;
  if (v11)
  {
    if ([v11 type] == 1)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot delete; account with identifier %{public}@ is a local account", buf, 0xCu);
      }
    }

    else if ([v11 type] == 5)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100074DA0();
      }
    }

    else
    {
      v14 = [(NEKReminderStore *)self saveRequestForStore:v7];
      v15 = [v14 updateAccount:v11];
      [v15 removeFromStore];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074E08();
  }
}

- (void)_deleteListWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSUUID alloc] initWithUUIDString:v6];
  if (!v8 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074E70();
  }

  v9 = [REMList objectIDWithUUID:v8];
  v10 = [(NEKReminderStore *)self saveRequestForStore:v7 needsPurgeDeletedObjectsAfterSave:1];
  v14 = 0;
  v11 = [v7 fetchListWithObjectID:v9 error:&v14];

  v12 = v14;
  if (v11)
  {
    v13 = [v10 updateList:v11];
    [v13 removeFromParent];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074EEC();
  }
}

- (void)_deleteReminderWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEKReminderStore *)self saveRequestForStore:v7];
  v12 = 0;
  v9 = [v7 fetchReminderWithDACalendarItemUniqueIdentifier:v6 inList:0 error:&v12];

  v10 = v12;
  if (v9)
  {
    v11 = [v8 updateReminder:v9];
    [v11 removeFromList];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074F54();
  }
}

- (BOOL)_updateAccount:(id)a3 withSourceWrapper:(id)a4 store:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 store];
  v10 = [(NEKReminderStore *)self saveRequestForStore:v9];

  v11 = [v7 attributes];

  LOBYTE(v7) = [NEKSourceAttributes configureAccount:v8 withSaveRequest:v10 withAttributes:v11];
  return v7;
}

- (void)_createAccountForWrapper:(id)a3 store:(id)a4
{
  v6 = a3;
  v8 = [(NEKReminderStore *)self saveRequestForStore:a4];
  v7 = [v6 attributes];

  [NEKSourceAttributes createAccountWithSaveRequest:v8 withAttributes:v7];
}

- (BOOL)_updateList:(id)a3 withCalendarWrapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 attributes];
  v9 = v8;
  if (v8 && [v8 supportedEntityTypes] == 2)
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v7 attributes];
      v13 = [v12 title];
      v14 = sub_10002CDF8(v13);
      v15 = [v7 calendarIdentifier];
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating list with title %{public}@, identifier %{public}@", &v22, 0x16u);
    }

    v16 = [v6 store];
    v17 = [(NEKReminderStore *)self saveRequestForStore:v16];

    v18 = [NEKCalendarAttributes configureList:v6 withSaveRequest:v17 withAttributes:v9];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v6 store];
  v20 = [(NEKReminderStore *)self _checkAndSetDefaultList:v6 calendarWrapper:v7 store:v19];

  return v18 | v20;
}

- (id)_createListForWrapper:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 attributes];
  v9 = v8;
  if (!v8 || [v8 supportedEntityTypes] != 2)
  {
    v21 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v6 calendarIdentifier];
      v24 = [v6 storeIdentifier];
      v26 = 138543618;
      v27 = v23;
      v28 = 2114;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Asked to set a nonexistent list as the default. Ignoring. List identifier = %{public}@, account identifier = %{public}@", &v26, 0x16u);
    }

    goto LABEL_12;
  }

  v10 = [v6 storeIdentifier];

  if (v10)
  {
    v11 = [v6 storeIdentifier];
    v12 = [NEKSourceID accountForStore:v7 identifier:v11];

    if (v12)
    {
      goto LABEL_7;
    }
  }

  v13 = [v7 eks_localAccount];
  if (!v13)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074FBC();
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = v13;
LABEL_7:
  v14 = [(NEKReminderStore *)self saveRequestForStore:v7];
  v15 = [NEKCalendarAttributes createListInAccount:v12 withSaveRequest:v14 withAttributes:v9];
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v12 name];
    v19 = sub_10002CDF8(v18);
    v20 = [v15 objectID];
    v26 = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created list with title %{public}@, identifier %{public}@", &v26, 0x16u);
  }

LABEL_13:

  return v15;
}

- (void)deleteAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 objectID];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %{public}@", &v11, 0xCu);
    }

    v8 = [v4 store];
    v9 = [(NEKReminderStore *)self saveRequestForStore:v8];

    v10 = [v9 updateAccount:v4];
    [v10 removeFromStore];
  }
}

- (void)deleteList:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 store];
    v7 = [(NEKReminderStore *)self saveRequestForStore:v5 needsPurgeDeletedObjectsAfterSave:1];

    v6 = [v7 updateList:v4];

    [v6 removeFromParent];
  }
}

- (void)deleteReminder:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 store];
    v6 = [(NEKReminderStore *)self saveRequestForStore:v5];

    v7 = [v6 updateReminder:v4];

    [v7 removeFromList];
    v9 = 0;
    [v6 saveSynchronouslyWithError:&v9];
    v8 = v9;
    if (v8)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100074FFC();
      }
    }
  }
}

@end