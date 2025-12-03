@interface NEKReminderStore
- (BOOL)_saveEventStore:(id)store;
- (BOOL)_updateAccount:(id)account withSourceWrapper:(id)wrapper store:(id)store;
- (BOOL)_updateList:(id)list withCalendarWrapper:(id)wrapper;
- (BOOL)shouldSendReminder:(id)reminder;
- (NEKReminderStore)initWithEnvironment:(id)environment;
- (id)_createListForWrapper:(id)wrapper store:(id)store;
- (id)_deletableAccountsForStore:(id)store;
- (id)_deletableListsForStore:(id)store;
- (id)deduplicateICSWrappers:(id)wrappers;
- (id)freshEventStoreFor:(id)for;
- (id)getDefaultListForStore:(id)store;
- (id)listCacheForStore:(id)store wrappers:(id)wrappers;
- (id)reminderCacheForStore:(id)store wrappers:(id)wrappers;
- (id)saveRequestForStore:(id)store needsPurgeDeletedObjectsAfterSave:(BOOL)save;
- (void)ICSWrappersForChangeSet:(id)set movedReminderAndListMapping:(id)mapping pipe:(id)pipe;
- (void)_createAccountForWrapper:(id)wrapper store:(id)store;
- (void)_deleteAccountWithIdentifier:(id)identifier store:(id)store;
- (void)_deleteListWithIdentifier:(id)identifier store:(id)store;
- (void)_deleteReminderWithIdentifier:(id)identifier store:(id)store;
- (void)_ensureReminderInList:(id)list saveRequest:(id)request inICSWrapper:(id)wrapper;
- (void)applySidePropertiesToReminderChangeItem:(id)item withWrapper:(id)wrapper session:(id)session;
- (void)deleteAccount:(id)account;
- (void)deleteItem:(id)item store:(id)store;
- (void)deleteItemWithIdentifier:(id)identifier store:(id)store;
- (void)deleteList:(id)list;
- (void)deleteReminder:(id)reminder;
- (void)handleReminderWithUniqueIdentifierFromGizmo:(id)gizmo saveRequest:(id)request list:(id)list wrapper:(id)wrapper;
- (void)handleUpdatedReminderFromGizmo:(id)gizmo withSaveRequest:(id)request withWrapper:(id)wrapper;
- (void)listWrappersForChangeSet:(id)set pipe:(id)pipe;
- (void)performUpdateWithICSWrappers:(id)wrappers store:(id)store session:(id)session;
- (void)removeAllItems;
- (void)removeAllRemindersInList:(id)list;
- (void)removeDeletableAccounts:(id)accounts;
- (void)removeDeletableLists:(id)lists;
- (void)saveEventStore:(id)store;
- (void)storeWrapperForCloudKitAccount:(id)account pipe:(id)pipe;
- (void)updateCalendar:(id)calendar store:(id)store;
- (void)updateICS:(id)s store:(id)store session:(id)session;
- (void)updateSource:(id)source store:(id)store;
@end

@implementation NEKReminderStore

- (NEKReminderStore)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = NEKReminderStore;
  v5 = [(NEKStore *)&v12 initWithEnvironment:environmentCopy];
  if (v5)
  {
    v6 = sub_100004B98("com.apple.eventkitsync.nekreminderstore");
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [NEKChangeObserver changeObserverForReminderWithQueue:v5->_queue databaseController:v5 environment:environmentCopy];
    [(NEKStore *)v5 setChangeObserver:v8];

    v9 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:0];
    saveRequests = v5->_saveRequests;
    v5->_saveRequests = v9;
  }

  return v5;
}

- (id)freshEventStoreFor:(id)for
{
  v4 = +[REMStore eks_storeForSyncing];
  saveRequests = [(NEKReminderStore *)self saveRequests];
  v6 = +[NSMutableArray array];
  [saveRequests setObject:v6 forKey:v4];

  return v4;
}

- (void)saveEventStore:(id)store
{
  storeCopy = store;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053DE0;
  v7[3] = &unk_1000B4BB8;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)_saveEventStore:(id)store
{
  storeCopy = store;
  dispatch_assert_queue_V2(self->_queue);
  v26 = os_transaction_create();
  v24 = objc_alloc_init(NDTPerf);
  kdebug_trace();
  context = objc_autoreleasePoolPush();
  saveRequests = [(NEKReminderStore *)self saveRequests];
  v6 = [saveRequests objectForKey:storeCopy];
  v7 = [v6 copy];

  [v7 count];
  selfCopy = self;
  saveRequests2 = [(NEKReminderStore *)self saveRequests];
  v9 = +[NSMutableArray array];
  [saveRequests2 setObject:v9 forKey:storeCopy];

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
  if ([(NEKReminderStore *)selfCopy saveRequestsNeedPurgeDeletedObjectsAfterSave]&& os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074180();
  }

  [(NEKReminderStore *)selfCopy setSaveRequestsNeedPurgeDeletedObjectsAfterSave:0];
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

- (id)saveRequestForStore:(id)store needsPurgeDeletedObjectsAfterSave:(BOOL)save
{
  saveCopy = save;
  storeCopy = store;
  if (!storeCopy)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
    {
      sub_100074294();
    }

    storeCopy = [(NEKReminderStore *)self freshEventStoreFor:@"saveRequestForStore(Reminders)"];
  }

  v7 = [[REMSaveRequest alloc] initWithStore:storeCopy];
  environment = [(NEKStore *)self environment];
  clientName = [environment clientName];
  [v7 setAuthor:clientName];

  saveRequests = [(NEKReminderStore *)self saveRequests];
  v11 = [saveRequests objectForKey:storeCopy];
  [v11 addObject:v7];

  if (saveCopy)
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Save request created with needsPurgeDeletedObjectsAfterSave=YES. The next save will be slow.", v14, 2u);
    }
  }

  [(NEKReminderStore *)self setSaveRequestsNeedPurgeDeletedObjectsAfterSave:[(NEKReminderStore *)self saveRequestsNeedPurgeDeletedObjectsAfterSave]| saveCopy];

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

- (void)removeDeletableAccounts:(id)accounts
{
  v4 = [(NEKReminderStore *)self _deletableAccountsForStore:accounts];
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

- (id)_deletableAccountsForStore:(id)store
{
  v8 = 0;
  v3 = [store fetchAccountsWithError:&v8];
  v4 = v8;
  if (!v3 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000742D0();
  }

  v5 = [NSPredicate predicateWithBlock:&stru_1000B5CA8];
  v6 = [v3 filteredArrayUsingPredicate:v5];

  return v6;
}

- (void)removeDeletableLists:(id)lists
{
  listsCopy = lists;
  v5 = [(NEKReminderStore *)self _deletableListsForStore:listsCopy];
  eks_defaultLocalList = [listsCopy eks_defaultLocalList];
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

        if (*(*(&v12 + 1) + 8 * v11) != eks_defaultLocalList)
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

  if (eks_defaultLocalList)
  {
    [(NEKReminderStore *)self removeAllRemindersInList:eks_defaultLocalList];
  }
}

- (void)removeAllRemindersInList:(id)list
{
  listCopy = list;
  store = [listCopy store];
  v6 = [(NEKReminderStore *)self saveRequestForStore:store];

  v19 = 0;
  v7 = [listCopy fetchRemindersWithError:&v19];
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

- (id)_deletableListsForStore:(id)store
{
  storeCopy = store;
  v27 = +[NSMutableArray array];
  v37 = 0;
  v4 = [storeCopy fetchAccountsWithError:&v37];
  v5 = v37;
  if (!v4 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000742D0();
  }

  eks_localAccount = [storeCopy eks_localAccount];
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
            objectID = [v12 objectID];
            *buf = 138543362;
            v39 = objectID;
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

          if (v12 == eks_localAccount)
          {
            eks_defaultLocalList = [storeCopy eks_defaultLocalList];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v30[0] = sub_100054DDC;
            v30[1] = &unk_1000B5CD0;
            v31 = eks_defaultLocalList;
            v20 = eks_defaultLocalList;
            v21 = [NSPredicate predicateWithBlock:v29];
            [v16 filteredArrayUsingPredicate:v21];
            v23 = v22 = storeCopy;

            v16 = v23;
            storeCopy = v22;
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

- (id)getDefaultListForStore:(id)store
{
  storeCopy = store;
  v4 = [storeCopy fetchDefaultListWithError:0];
  eks_defaultLocalList = [storeCopy eks_defaultLocalList];

  if (eks_defaultLocalList)
  {
    remObjectID = [v4 remObjectID];
    remObjectID2 = [eks_defaultLocalList remObjectID];
    v8 = [remObjectID isEqual:remObjectID2];

    if (v8)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldSendReminder:(id)reminder
{
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    reminderCopy = reminder;
    objectID = [reminderCopy objectID];
    daCalendarItemUniqueIdentifier = [reminderCopy daCalendarItemUniqueIdentifier];

    v10 = 138543618;
    v11 = objectID;
    v12 = 2114;
    v13 = daCalendarItemUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selecting reminder (id=%{public}@, calendarUniqueId=%{public}@)", &v10, 0x16u);
  }

  return 1;
}

- (void)updateSource:(id)source store:(id)store
{
  sourceCopy = source;
  storeCopy = store;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005509C;
  v13[3] = &unk_1000B5098;
  v14 = sourceCopy;
  v15 = storeCopy;
  selfCopy = self;
  v17 = v8;
  v10 = v8;
  v11 = storeCopy;
  v12 = sourceCopy;
  dispatch_sync(queue, v13);
}

- (void)updateCalendar:(id)calendar store:(id)store
{
  calendarCopy = calendar;
  storeCopy = store;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000555AC;
  v13[3] = &unk_1000B5098;
  v14 = calendarCopy;
  v15 = storeCopy;
  selfCopy = self;
  v17 = v8;
  v10 = v8;
  v11 = storeCopy;
  v12 = calendarCopy;
  dispatch_sync(queue, v13);
}

- (void)updateICS:(id)s store:(id)store session:(id)session
{
  sCopy = s;
  storeCopy = store;
  sessionCopy = session;
  v11 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055A78;
  block[3] = &unk_1000B5070;
  block[4] = self;
  v18 = sCopy;
  v19 = storeCopy;
  v20 = sessionCopy;
  v21 = v11;
  v13 = v11;
  v14 = sessionCopy;
  v15 = storeCopy;
  v16 = sCopy;
  dispatch_sync(queue, block);
}

- (void)deleteItemWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = os_transaction_create();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100055B78;
  v13[3] = &unk_1000B5098;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = storeCopy;
  v16 = v8;
  v10 = v8;
  v11 = storeCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)deleteItem:(id)item store:(id)store
{
  itemCopy = item;
  storeCopy = store;
  objectIdentifier = [itemCopy objectIdentifier];
  type = [itemCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      [(NEKReminderStore *)self _deleteAccountWithIdentifier:objectIdentifier store:storeCopy];
      goto LABEL_11;
    }

    if (type == 2)
    {
      [(NEKReminderStore *)self _deleteListWithIdentifier:objectIdentifier store:storeCopy];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (type == 3)
  {
    [(NEKReminderStore *)self _deleteReminderWithIdentifier:objectIdentifier store:storeCopy];
    goto LABEL_11;
  }

  if (type != 4)
  {
LABEL_7:
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000746D0();
    }
  }

LABEL_11:
}

- (void)handleUpdatedReminderFromGizmo:(id)gizmo withSaveRequest:(id)request withWrapper:(id)wrapper
{
  gizmoCopy = gizmo;
  requestCopy = request;
  wrapperCopy = wrapper;
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    title = [gizmoCopy title];
    v13 = sub_10002CDF8(title);
    daCalendarItemUniqueIdentifier = [gizmoCopy daCalendarItemUniqueIdentifier];
    v20 = 138543618;
    v21 = v13;
    v22 = 2114;
    v23 = daCalendarItemUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling updated reminder from gizmo with summary %{public}@ and identifier %{public}@", &v20, 0x16u);
  }

  if ([wrapperCopy isTaskCompleted])
  {
    [wrapperCopy taskCompletionDate];
    v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v16 = [requestCopy updateReminder:gizmoCopy];
    [v16 setCompletionDate:v15];
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      daCalendarItemUniqueIdentifier2 = [gizmoCopy daCalendarItemUniqueIdentifier];
      v20 = 138543618;
      v21 = daCalendarItemUniqueIdentifier2;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Reminder with identifier %{public}@ is completed, completion date is %{public}@", &v20, 0x16u);
    }
  }
}

- (void)handleReminderWithUniqueIdentifierFromGizmo:(id)gizmo saveRequest:(id)request list:(id)list wrapper:(id)wrapper
{
  gizmoCopy = gizmo;
  requestCopy = request;
  wrapperCopy = wrapper;
  listCopy = list;
  store = [requestCopy store];
  v18 = 0;
  v15 = [store fetchReminderWithDACalendarItemUniqueIdentifier:gizmoCopy inList:listCopy error:&v18];

  v16 = v18;
  if (v15)
  {
    [(NEKReminderStore *)self handleUpdatedReminderFromGizmo:v15 withSaveRequest:requestCopy withWrapper:wrapperCopy];
  }

  else
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100074738(gizmoCopy, v17, wrapperCopy);
    }
  }
}

- (id)deduplicateICSWrappers:(id)wrappers
{
  wrappersCopy = wrappers;
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableOrderedSet orderedSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  reverseObjectEnumerator = [wrappersCopy reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objectIdentifier = [v11 objectIdentifier];
        if ([v4 containsObject:objectIdentifier])
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v22 = objectIdentifier;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Received ICS wrappers with the same identifier %{public}@ in the same batch. Deduplicating. ", buf, 0xCu);
          }
        }

        else
        {
          [v4 addObject:objectIdentifier];
          [v5 addObject:v11];
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  reverseObjectEnumerator2 = [v5 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator2 allObjects];

  return allObjects;
}

- (id)listCacheForStore:(id)store wrappers:(id)wrappers
{
  storeCopy = store;
  wrappersCopy = wrappers;
  v7 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = wrappersCopy;
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

        calendarIdentifier = [*(*(&v33 + 1) + 8 * i) calendarIdentifier];
        [v7 addObject:calendarIdentifier];
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
        v22 = [NEKCalendarID listInStore:storeCopy withNEKCalendarID:v21];
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
    allKeys = [v15 allKeys];
    *buf = 138543362;
    v39 = allKeys;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Built list cache for wrappers %{public}@", buf, 0xCu);
  }

  v26 = [v15 copy];

  return v26;
}

- (id)reminderCacheForStore:(id)store wrappers:(id)wrappers
{
  storeCopy = store;
  wrappersCopy = wrappers;
  v6 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = wrappersCopy;
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

        objectIdentifier = [*(*(&v24 + 1) + 8 * i) objectIdentifier];
        if ([v6 containsObject:objectIdentifier])
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v29 = objectIdentifier;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Received ICS wrappers with the same identifier %{public}@ in the same batch", buf, 0xCu);
          }
        }

        [v6 addObject:objectIdentifier];
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

  allObjects = [v6 allObjects];
  v23 = 0;
  v16 = [storeCopy fetchRemindersWithDACalendarItemUniqueIdentifiers:allObjects inList:0 error:&v23];
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
    allKeys = [v16 allKeys];
    *buf = 138543362;
    v29 = allKeys;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Built reminder cache for wrappers %{public}@", buf, 0xCu);
  }

  return v16;
}

- (void)performUpdateWithICSWrappers:(id)wrappers store:(id)store session:(id)session
{
  wrappersCopy = wrappers;
  storeCopy = store;
  sessionCopy = session;
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 67109120;
    LODWORD(v118) = [wrappersCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "performUpdateWithICSWrappers received %d items", buf, 8u);
  }

  v12 = [(NEKReminderStore *)self saveRequestForStore:storeCopy];
  v13 = [(NEKReminderStore *)self deduplicateICSWrappers:wrappersCopy];

  v14 = [(NEKReminderStore *)self listCacheForStore:storeCopy wrappers:v13];
  v78 = [(NEKReminderStore *)self reminderCacheForStore:storeCopy wrappers:v13];
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

        calendarIdentifier = [v16 calendarIdentifier];
        v20 = [v14 objectForKeyedSubscript:calendarIdentifier];

        if (v20)
        {
          iCSData = [v16 ICSData];

          v22 = *(qword_1000D18A8 + 8);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (iCSData)
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Processing add/update from companion, or a new record from the watch", buf, 2u);
            }

            oldCalendarIdentifier = [v16 oldCalendarIdentifier];
            if (!oldCalendarIdentifier)
            {
              goto LABEL_25;
            }

            v25 = oldCalendarIdentifier;
            calendarIdentifier2 = [v16 calendarIdentifier];
            identifier = [calendarIdentifier2 identifier];

            if (identifier)
            {
              v28 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                oldCalendarIdentifier2 = [v16 oldCalendarIdentifier];
                calendarIdentifier3 = [v16 calendarIdentifier];
                identifier2 = [calendarIdentifier3 identifier];
                *buf = 138543618;
                v118 = *&oldCalendarIdentifier2;
                v119 = 2114;
                v120 = identifier2;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Got an update/add for reminder, old list id = %{public}@, current list id = %{public}@", buf, 0x16u);
              }

              oldCalendarIdentifier3 = [v16 oldCalendarIdentifier];
              calendarIdentifier4 = [v16 calendarIdentifier];
              identifier3 = [calendarIdentifier4 identifier];
              v36 = [oldCalendarIdentifier3 isEqualToString:identifier3];

              v37 = *(qword_1000D18A8 + 8);
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
              if (v36)
              {
                v14 = v82;
                if (v38)
                {
                  v39 = v37;
                  oldCalendarIdentifier4 = [v16 oldCalendarIdentifier];
                  calendarIdentifier5 = [v16 calendarIdentifier];
                  identifier4 = [calendarIdentifier5 identifier];
                  *buf = 138543618;
                  v118 = *&oldCalendarIdentifier4;
                  v119 = 2114;
                  v120 = identifier4;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Lists match, so reminder didn't move: old list id = %{public}@, current list id = %{public}@", buf, 0x16u);

                  v14 = v82;
                }
              }

              else
              {
                if (v38)
                {
                  v52 = v37;
                  oldCalendarIdentifier5 = [v16 oldCalendarIdentifier];
                  calendarIdentifier6 = [v16 calendarIdentifier];
                  identifier5 = [calendarIdentifier6 identifier];
                  *buf = 138543618;
                  v118 = *&oldCalendarIdentifier5;
                  v119 = 2114;
                  v120 = identifier5;
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
                title = [v16 title];
                v47 = sub_10002CDF8(title);
                calendarIdentifier7 = [v16 calendarIdentifier];
                identifier6 = [calendarIdentifier7 identifier];
                *buf = 138543618;
                v118 = *&v47;
                v119 = 2114;
                v120 = identifier6;
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
              objectIdentifier = [v16 objectIdentifier];
              *buf = 138543362;
              v118 = *&objectIdentifier;
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

        iCSData2 = [*(*(&v104 + 1) + 8 * j) ICSData];
        [v56 addObject:iCSData2];
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
              [(NEKReminderStore *)self handleNewReminderChangeItem:v76 withWrapper:v69 session:sessionCopy];
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

- (void)_ensureReminderInList:(id)list saveRequest:(id)request inICSWrapper:(id)wrapper
{
  listCopy = list;
  requestCopy = request;
  wrapperCopy = wrapper;
  v10 = wrapperCopy;
  if (listCopy && requestCopy && wrapperCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057978;
    v12[3] = &unk_1000B5110;
    v13 = listCopy;
    v14 = v10;
    v15 = requestCopy;
    [v14 enumerateCalendarItemIdentifiersUsingBlock:v12];
  }

  else
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v17 = listCopy;
      v18 = 2112;
      v19 = requestCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Input to _ensureReminderInList is nil (%@, %@, %@). Skipping.", buf, 0x20u);
    }
  }
}

- (void)applySidePropertiesToReminderChangeItem:(id)item withWrapper:(id)wrapper session:(id)session
{
  itemCopy = item;
  wrapperCopy = wrapper;
  daCalendarItemUniqueIdentifier = [itemCopy daCalendarItemUniqueIdentifier];
  v9 = [wrapperCopy externalIDForIdentifier:daCalendarItemUniqueIdentifier];

  v10 = *(qword_1000D18A8 + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = daCalendarItemUniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setting externalID %{public}@ for event with identifier %{public}@", &v12, 0x16u);
    }

    [itemCopy setExternalIdentifier:v9];
  }

  else if (v11)
  {
    v12 = 138543362;
    v13 = daCalendarItemUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No externalID in metadata for event with identifier %{public}@", &v12, 0xCu);
  }
}

- (void)storeWrapperForCloudKitAccount:(id)account pipe:(id)pipe
{
  accountCopy = account;
  pipeCopy = pipe;
  if ([accountCopy isEmpty])
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
    v10 = pipeCopy;
    v14 = v10;
    [(NEKReminderStore *)self batchedEnumerateAccountsForStore:v9 changeSet:accountCopy changeType:2 withBlock:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100058AA0;
    v11[3] = &unk_1000B5D98;
    v11[4] = self;
    v12 = v10;
    [(NEKReminderStore *)self batchedEnumerateAccountsForStore:v9 changeSet:accountCopy changeType:1 withBlock:v11];
  }
}

- (void)listWrappersForChangeSet:(id)set pipe:(id)pipe
{
  setCopy = set;
  pipeCopy = pipe;
  if ([setCopy isEmpty])
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
    [(NEKReminderStore *)self _batchEnumerateChangeSet:setCopy intoPipe:pipeCopy forChangeType:1];
    [(NEKReminderStore *)self _batchEnumerateChangeSet:setCopy intoPipe:pipeCopy forChangeType:2];
  }
}

- (void)ICSWrappersForChangeSet:(id)set movedReminderAndListMapping:(id)mapping pipe:(id)pipe
{
  mappingCopy = mapping;
  pipeCopy = pipe;
  setCopy = set;
  v11 = [NEKSyncWindow alloc];
  environment = [(NEKStore *)self environment];
  tinyStore = [environment tinyStore];
  v14 = [(NEKSyncWindow *)v11 initForFullSync:0 tinyStore:tinyStore];

  v15 = [(NEKReminderStore *)self freshEventStoreFor:@"ICSWrappersForChangeSet(Reminders)"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100059500;
  v26[3] = &unk_1000B5DE8;
  v16 = v14;
  v27 = v16;
  selfCopy = self;
  v17 = pipeCopy;
  v29 = v17;
  [(NEKReminderStore *)self batchedEnumerateRemindersForStore:v15 changeSet:setCopy changeType:1 withBlock:v26];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100059614;
  v21[3] = &unk_1000B5E10;
  v22 = v16;
  selfCopy2 = self;
  v24 = mappingCopy;
  v25 = v17;
  v18 = v17;
  v19 = mappingCopy;
  v20 = v16;
  [(NEKReminderStore *)self batchedEnumerateRemindersForStore:v15 changeSet:setCopy changeType:2 withBlock:v21];
}

- (void)_deleteAccountWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %{public}@", buf, 0xCu);
  }

  v9 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  if (!v9 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074D24();
  }

  v10 = [REMAccount objectIDWithUUID:v9];
  v16 = 0;
  v11 = [storeCopy fetchAccountWithObjectID:v10 error:&v16];
  v12 = v16;
  if (v11)
  {
    if ([v11 type] == 1)
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = identifierCopy;
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
      v14 = [(NEKReminderStore *)self saveRequestForStore:storeCopy];
      v15 = [v14 updateAccount:v11];
      [v15 removeFromStore];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074E08();
  }
}

- (void)_deleteListWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  if (!v8 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074E70();
  }

  v9 = [REMList objectIDWithUUID:v8];
  v10 = [(NEKReminderStore *)self saveRequestForStore:storeCopy needsPurgeDeletedObjectsAfterSave:1];
  v14 = 0;
  v11 = [storeCopy fetchListWithObjectID:v9 error:&v14];

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

- (void)_deleteReminderWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [(NEKReminderStore *)self saveRequestForStore:storeCopy];
  v12 = 0;
  v9 = [storeCopy fetchReminderWithDACalendarItemUniqueIdentifier:identifierCopy inList:0 error:&v12];

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

- (BOOL)_updateAccount:(id)account withSourceWrapper:(id)wrapper store:(id)store
{
  wrapperCopy = wrapper;
  accountCopy = account;
  store = [accountCopy store];
  v10 = [(NEKReminderStore *)self saveRequestForStore:store];

  attributes = [wrapperCopy attributes];

  LOBYTE(wrapperCopy) = [NEKSourceAttributes configureAccount:accountCopy withSaveRequest:v10 withAttributes:attributes];
  return wrapperCopy;
}

- (void)_createAccountForWrapper:(id)wrapper store:(id)store
{
  wrapperCopy = wrapper;
  v8 = [(NEKReminderStore *)self saveRequestForStore:store];
  attributes = [wrapperCopy attributes];

  [NEKSourceAttributes createAccountWithSaveRequest:v8 withAttributes:attributes];
}

- (BOOL)_updateList:(id)list withCalendarWrapper:(id)wrapper
{
  listCopy = list;
  wrapperCopy = wrapper;
  attributes = [wrapperCopy attributes];
  v9 = attributes;
  if (attributes && [attributes supportedEntityTypes] == 2)
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      attributes2 = [wrapperCopy attributes];
      title = [attributes2 title];
      v14 = sub_10002CDF8(title);
      calendarIdentifier = [wrapperCopy calendarIdentifier];
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = calendarIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating list with title %{public}@, identifier %{public}@", &v22, 0x16u);
    }

    store = [listCopy store];
    v17 = [(NEKReminderStore *)self saveRequestForStore:store];

    v18 = [NEKCalendarAttributes configureList:listCopy withSaveRequest:v17 withAttributes:v9];
  }

  else
  {
    v18 = 0;
  }

  store2 = [listCopy store];
  v20 = [(NEKReminderStore *)self _checkAndSetDefaultList:listCopy calendarWrapper:wrapperCopy store:store2];

  return v18 | v20;
}

- (id)_createListForWrapper:(id)wrapper store:(id)store
{
  wrapperCopy = wrapper;
  storeCopy = store;
  attributes = [wrapperCopy attributes];
  v9 = attributes;
  if (!attributes || [attributes supportedEntityTypes] != 2)
  {
    v21 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      calendarIdentifier = [wrapperCopy calendarIdentifier];
      storeIdentifier = [wrapperCopy storeIdentifier];
      v26 = 138543618;
      v27 = calendarIdentifier;
      v28 = 2114;
      v29 = storeIdentifier;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Asked to set a nonexistent list as the default. Ignoring. List identifier = %{public}@, account identifier = %{public}@", &v26, 0x16u);
    }

    goto LABEL_12;
  }

  storeIdentifier2 = [wrapperCopy storeIdentifier];

  if (storeIdentifier2)
  {
    storeIdentifier3 = [wrapperCopy storeIdentifier];
    v12 = [NEKSourceID accountForStore:storeCopy identifier:storeIdentifier3];

    if (v12)
    {
      goto LABEL_7;
    }
  }

  eks_localAccount = [storeCopy eks_localAccount];
  if (!eks_localAccount)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074FBC();
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = eks_localAccount;
LABEL_7:
  v14 = [(NEKReminderStore *)self saveRequestForStore:storeCopy];
  v15 = [NEKCalendarAttributes createListInAccount:v12 withSaveRequest:v14 withAttributes:v9];
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    name = [v12 name];
    v19 = sub_10002CDF8(name);
    objectID = [v15 objectID];
    v26 = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = objectID;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created list with title %{public}@, identifier %{public}@", &v26, 0x16u);
  }

LABEL_13:

  return v15;
}

- (void)deleteAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      objectID = [accountCopy objectID];
      v11 = 138543362;
      v12 = objectID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %{public}@", &v11, 0xCu);
    }

    store = [accountCopy store];
    v9 = [(NEKReminderStore *)self saveRequestForStore:store];

    v10 = [v9 updateAccount:accountCopy];
    [v10 removeFromStore];
  }
}

- (void)deleteList:(id)list
{
  if (list)
  {
    listCopy = list;
    store = [listCopy store];
    v7 = [(NEKReminderStore *)self saveRequestForStore:store needsPurgeDeletedObjectsAfterSave:1];

    v6 = [v7 updateList:listCopy];

    [v6 removeFromParent];
  }
}

- (void)deleteReminder:(id)reminder
{
  if (reminder)
  {
    reminderCopy = reminder;
    store = [reminderCopy store];
    v6 = [(NEKReminderStore *)self saveRequestForStore:store];

    v7 = [v6 updateReminder:reminderCopy];

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