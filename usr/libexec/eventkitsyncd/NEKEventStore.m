@interface NEKEventStore
- (BOOL)_shouldSendEvent:(id)a3;
- (BOOL)_shouldSendReminder:(id)a3;
- (BOOL)_updateCalendar:(id)a3 withCalendarWrapper:(id)a4;
- (BOOL)_updateSource:(id)a3 withSourceWrapper:(id)a4 store:(id)a5;
- (BOOL)hasRowMappingForEntity:(id)a3;
- (BOOL)shouldSendEntity:(id)a3;
- (BOOL)updateEvent:(id)a3 identifier:(id)a4 eventStore:(id)a5 occurrenceDate:(id)a6 participationStatus:(int64_t)a7 masterIdentifier:(id)a8 isMaster:(BOOL)a9;
- (BOOL)updateMasterEvent:(id)a3 masterIdentifier:(id)a4 calendarIdentifier:(id)a5 masterParticipationStatus:(int64_t)a6 detachedEvents:(id)a7;
- (NEKEventStore)initWithEnvironment:(id)a3;
- (NEKRecordMap)recordMap;
- (NEKSeenMap)seenMap;
- (id)_ICSLogTestForWrapper:(id)a3;
- (id)_createCalendarForWrapper:(id)a3 store:(id)a4;
- (id)_createSourceForWrapper:(id)a3 store:(id)a4;
- (id)_filterOutInvalidICSWrappers:(id)a3 store:(id)a4 calendars:(id *)a5;
- (id)_identifierInRowMapping:(id)a3;
- (id)calendarIdentifierInRowMappingForEventOrTask:(id)a3;
- (id)calendarIdentifierInRowMappingForRecordIDRef:(id)a3;
- (id)detacheesForIdentifierCreatingIfNeeded:(id)a3 detachedEventMap:(id)a4;
- (id)freshEventStoreFor:(id)a3;
- (id)identifierInRowMappingForEventOrTask:(id)a3;
- (id)identifierInRowMappingForRecordIDRef:(id)a3;
- (void)ICSWrappersForChangeSet:(id)a3 pipe:(id)a4;
- (void)_commitPendingRecordMapChanges;
- (void)_deleteAndLogEvent:(id)a3 identifier:(id)a4 store:(id)a5;
- (void)_deleteCalendarItemsInICSWrapperFromOldCalendar:(id)a3 store:(id)a4;
- (void)_deleteCalendarItemsMovedToCalendar:(id)a3 inICSWrapper:(id)a4;
- (void)_deleteCalendarWithIdentifier:(id)a3 store:(id)a4;
- (void)_deleteDetachedCalendarItemsFromOldCalendar:(id)a3 deletedEvents:(id)a4;
- (void)_deleteEventWithIdentifier:(id)a3 calendarIdentifier:(id)a4 store:(id)a5;
- (void)_deleteReminderWithIdentifier:(id)a3 calendarIdentifier:(id)a4 store:(id)a5;
- (void)_deleteSourceWithIdentifier:(id)a3 store:(id)a4;
- (void)_didCreateEntity:(id)a3;
- (void)_processArrayOfArrayOfICSWrappers:(id)a3 batchWrappers:(id)a4 session:(id)a5;
- (void)_processUpdateFromWatch:(id)a3 calendar:(id)a4 store:(id)a5;
- (void)_processUpdateWithICS:(id)a3 store:(id)a4 calendar:(id)a5 resultWrappers:(id)a6 resultCalendars:(id)a7;
- (void)_pushSource:(id)a3 wrapper:(id)a4 intoPipe:(id)a5;
- (void)_removeIdentifierForDeletedEntity:(id)a3;
- (void)_sendChangesIfAvailable;
- (void)_sendDefaultCalendarsIfNeededInPipe:(id)a3 setDefaultEventCalendar:(BOOL)a4 setDefaultTaskCalendar:(BOOL)a5 defaultEventCalendar:(id)a6 defaultTaskCalendar:(id)a7;
- (void)addAttendeeEvents:(id)a3;
- (void)applySidePropertiesToEntity:(id)a3 withWrapper:(id)a4 session:(id)a5;
- (void)calendarWrappersForChangeSet:(id)a3 pipe:(id)a4;
- (void)deleteItem:(id)a3 store:(id)a4;
- (void)deleteItemWithIdentifier:(id)a3 store:(id)a4;
- (void)deletionWrappersForChangeSet:(id)a3 skipSourceDeletions:(BOOL)a4 pipe:(id)a5;
- (void)deletionWrappersForSourceAggregator:(id)a3 pipe:(id)a4;
- (void)endMappingEntities;
- (void)getDefaultTaskCalendar:(id *)a3 defaultEventCalendar:(id *)a4 store:(id)a5;
- (void)handleCalendarEventWithUniqueIdentifierFromGizmo:(id)a3 calendar:(id)a4 wrapper:(id)a5 detachedEventMap:(id)a6;
- (void)handleCalendarTaskWithUniqueIdentifierFromGizmo:(id)a3 calendar:(id)a4 wrapper:(id)a5;
- (void)handleNewEntity:(id)a3 withWrapper:(id)a4 session:(id)a5;
- (void)handleUpdatedItemFromGizmo:(id)a3 type:(int64_t)a4 withWrapper:(id)a5 identifier:(id)a6;
- (void)performUpdateWithICSWrappers:(id)a3 store:(id)a4 session:(id)a5;
- (void)purgeRecordMap;
- (void)removeIdentifiersForDeletedRecordIDs:(id)a3;
- (void)saveEventStore:(id)a3;
- (void)startMappingEntities;
- (void)storeWrappersForSourceAggregator:(id)a3 pipe:(id)a4;
- (void)sweepSeenMap;
- (void)updateCalendar:(id)a3 store:(id)a4;
- (void)updateICS:(id)a3 store:(id)a4 session:(id)a5;
- (void)updateInvitationStatusForCalendarItem:(id)a3 identifier:(id)a4 withWrapper:(id)a5 session:(id)a6;
- (void)updateRowMappingForEntity:(id)a3;
- (void)updateSelfAttendeeForCalendarItem:(id)a3 identifier:(id)a4 withWrapper:(id)a5;
- (void)updateSource:(id)a3 store:(id)a4;
@end

@implementation NEKEventStore

- (NEKEventStore)initWithEnvironment:(id)a3
{
  v14.receiver = self;
  v14.super_class = NEKEventStore;
  v3 = [(NEKStore *)&v14 initWithEnvironment:a3];
  if (v3)
  {
    v4 = sub_100004B98("com.apple.eventkitsync.nekeventstore");
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = v3->_queue;
    v7 = [(NEKStore *)v3 environment];
    v8 = [NEKChangeObserver changeObserverForEventWithQueue:v6 databaseController:v3 environment:v7];
    [(NEKStore *)v3 setChangeObserver:v8];

    v9 = objc_alloc_init(NSMutableArray);
    createdEntities = v3->_createdEntities;
    v3->_createdEntities = v9;

    v3->_createdEntitiesLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(NSMutableDictionary);
    alertSupressionCache = v3->_alertSupressionCache;
    v3->_alertSupressionCache = v11;
  }

  return v3;
}

- (NEKRecordMap)recordMap
{
  v2 = [(NEKStore *)self environment];
  v3 = [v2 recordMap];

  return v3;
}

- (NEKSeenMap)seenMap
{
  v2 = [(NEKStore *)self environment];
  v3 = [v2 seenMap];

  return v3;
}

- (id)freshEventStoreFor:(id)a3
{
  v4 = a3;
  v5 = [EKChangeTrackingClientId alloc];
  v6 = [(NEKStore *)self environment];
  v7 = [v6 clientName];
  v8 = [v5 initWithCustomClientId:v7];

  v9 = [EKEventStore eks_eventOnlyStoreIgnoringExternalChangesFor:v4 withClientId:v8];

  return v9;
}

- (void)saveEventStore:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_alloc_init(NDTPerf);
  kdebug_trace();
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  [v4 commit:&v12];
  v8 = v12;
  objc_autoreleasePoolPop(v7);
  kdebug_trace();
  v9 = [NDTPerf nowMinusPrevious:v6];

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10006F7AC(v10, v9);
  }

  v11 = *(qword_1000D18A8 + 8);
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10006F884();
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveEventStore: database changes saved successfully", buf, 0xCu);
    }

    [(NEKEventStore *)self _commitPendingRecordMapChanges];
  }
}

- (void)purgeRecordMap
{
  v2 = [(NEKEventStore *)self recordMap];
  [v2 removeAllRecords];
}

- (void)getDefaultTaskCalendar:(id *)a3 defaultEventCalendar:(id *)a4 store:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = [v8 defaultCalendarForNewReminders];
    v10 = [(NEKStore *)self environment];
    v11 = [v10 isReminderKitEnabled];

    if (v11)
    {
      v12 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10006F908(v12);
      }

      v9 = 0;
    }

    v13 = [v8 defaultCalendarForNewEvents];
    v14 = [v8 defaultLocalCalendar];

    if (v14)
    {
      if ([v9 isEqual:v14])
      {

        v9 = 0;
      }

      if ([v13 isEqual:v14])
      {

        v13 = 0;
      }
    }

    v15 = v9;
    *a3 = v9;
    v16 = v13;
    *a4 = v13;
  }
}

- (BOOL)_shouldSendEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueId];
  v6 = [v5 copy];

  if (!v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006FB14();
    }

    goto LABEL_8;
  }

  if (![v4 isPhantom])
  {
    if ([v4 isDetached])
    {
      v11 = [v4 originalItem];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 uniqueId];
        v14 = [v13 copy];

        v15 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v4 eks_debugDesc];
          v34 = 138543874;
          v35 = v17;
          v36 = 2114;
          v37 = v6;
          v38 = 2114;
          v39 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_shouldSendEvent: Entity with summary %{public}@ identifier %{public}@ is detached, master identifier is %{public}@", &v34, 0x20u);
        }
      }

      else
      {
        v18 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = [v4 eks_debugDesc];
          v34 = 138543618;
          v35 = v20;
          v36 = 2114;
          v37 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_shouldSendEvent: Entity with summary %{public}@ identifier %{public}@ is detached, but can't get master, so using the actual detached event", &v34, 0x16u);
        }

        v14 = v6;
      }

      v6 = v14;
    }

    v21 = [v4 calendar];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 calendarIdentifier];
      v24 = [v23 copy];

      if (v24)
      {
        v25 = [(NSMutableDictionary *)self->_syncedEntityUniqueIdentifiers objectForKey:v24];
        if (!v25)
        {
          v25 = [[NSMutableSet alloc] initWithCapacity:8];
          [(NSMutableDictionary *)self->_syncedEntityUniqueIdentifiers setObject:v25 forKey:v24];
        }

        if (v6)
        {
          v26 = [v25 containsObject:v6];
          v27 = *(qword_1000D18A8 + 8);
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            if (v28)
            {
              v29 = v27;
              v30 = [v4 eks_debugDesc];
              v34 = 138543874;
              v35 = v30;
              v36 = 2114;
              v37 = v6;
              v38 = 2114;
              v39 = v24;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Entity with summary %{public}@ and identifier %{public}@ already in set for calendar with identifier %{public}@, not sending again", &v34, 0x20u);
            }

            v10 = 0;
            goto LABEL_38;
          }

          if (v28)
          {
            v31 = v27;
            v32 = [v4 eks_debugDesc];
            v34 = 138543874;
            v35 = v32;
            v36 = 2114;
            v37 = v6;
            v38 = 2114;
            v39 = v24;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Entity with summary %{public}@ and identifier %{public}@ not in set for calendar with identifier %{public}@, adding", &v34, 0x20u);
          }

          [v25 addObject:v6];
        }

        else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10006F98C();
        }

        v10 = 1;
LABEL_38:

        goto LABEL_39;
      }

      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10006F9CC();
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006FA70();
    }

    v10 = 1;
LABEL_39:

    goto LABEL_40;
  }

  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v4 eks_debugDesc];
    v34 = 138543618;
    v35 = v9;
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Entity with summary %{public}@ identifier %{public}@ is a phantom master.  Ignoring.", &v34, 0x16u);
  }

LABEL_8:
  v10 = 0;
LABEL_40:

  return v10;
}

- (BOOL)_shouldSendReminder:(id)a3
{
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [a3 eks_debugDesc];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selecting reminder %{public}@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)shouldSendEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v5 entityType];

  if (v6 == 2)
  {
    v7 = [(NEKEventStore *)self _shouldSendEvent:v4];
  }

  else
  {
    v7 = [(NEKEventStore *)self _shouldSendReminder:v4];
  }

  v8 = v7;

  return v8;
}

- (void)startMappingEntities
{
  v3 = +[NSMutableDictionary dictionary];
  syncedEntityUniqueIdentifiers = self->_syncedEntityUniqueIdentifiers;
  self->_syncedEntityUniqueIdentifiers = v3;

  _objc_release_x1();
}

- (void)endMappingEntities
{
  syncedEntityUniqueIdentifiers = self->_syncedEntityUniqueIdentifiers;
  self->_syncedEntityUniqueIdentifiers = 0;
  _objc_release_x1();
}

- (void)updateSource:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018044;
  block[3] = &unk_1000B4D58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)updateCalendar:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 calendarIdentifier];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100018888;
  v19[4] = sub_100018898;
  v20 = [v7 calendarWithIdentifier:v8];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188A0;
  block[3] = &unk_1000B5048;
  v17 = v8;
  v18 = v19;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_sync(queue, block);

  _Block_object_dispose(v19, 8);
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
  block[2] = sub_100018C10;
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
  v13[2] = sub_100018D10;
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
      [(NEKEventStore *)self _deleteSourceWithIdentifier:v8 store:v7];
    }

    else if (v9 == 2)
    {
      [(NEKEventStore *)self _deleteCalendarWithIdentifier:v8 store:v7];
    }

    goto LABEL_14;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      goto LABEL_14;
    }

    v10 = [v6 calendarIdentifier];
    [(NEKEventStore *)self _deleteEventWithIdentifier:v8 calendarIdentifier:v10 store:v7];
LABEL_13:

    goto LABEL_14;
  }

  v11 = [(NEKStore *)self environment];
  v12 = [v11 isReminderKitEnabled];

  if ((v12 & 1) == 0)
  {
    v10 = [v6 calendarIdentifier];
    [(NEKEventStore *)self _deleteReminderWithIdentifier:v8 calendarIdentifier:v10 store:v7];
    goto LABEL_13;
  }

  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v6 identifier];
    v16 = 136446466;
    v17 = "[NEKEventStore deleteItem:store:]";
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", &v16, 0x16u);
  }

LABEL_14:
}

- (void)handleNewEntity:(id)a3 withWrapper:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectID];
  if ([v11 entityType] != 2)
  {

    goto LABEL_6;
  }

  v12 = [v8 isPhantom];

  if (!v12)
  {
LABEL_6:
    [(NEKEventStore *)self applySidePropertiesToEntity:v8 withWrapper:v9 session:v10];
    goto LABEL_7;
  }

  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v8 uniqueId];
    v18 = 136446466;
    v19 = "[NEKEventStore handleNewEntity:withWrapper:session:]";
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring sidecar data for phantom master with identifier: [%{public}@]", &v18, 0x16u);
  }

LABEL_7:
  v16 = [v8 objectID];
  v17 = v16;
  if (v16)
  {
    if ([v16 isTemporary])
    {
      [(NEKEventStore *)self _didCreateEntity:v8];
    }

    else
    {
      [(NEKEventStore *)self updateRowMappingForEntity:v8];
    }
  }
}

- (void)handleUpdatedItemFromGizmo:(id)a3 type:(int64_t)a4 withWrapper:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 eventStore];
  if (a4 == 3)
  {
    v23 = [(NEKStore *)self environment];
    v24 = [v23 isReminderKitEnabled];

    if ((v24 & 1) == 0)
    {
      v14 = v10;
      v26 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = sub_10002CDF8([v14 title]);
        *buf = 138543618;
        *v36 = v28;
        *&v36[8] = 2114;
        *&v36[10] = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Handling updated task from gizmo with summary %{public}@ and identifier %{public}@", buf, 0x16u);
      }

      if (![v11 isTaskCompleted])
      {
        goto LABEL_30;
      }

      [v11 taskCompletionDate];
      v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v14 setCompletionDate:v18];
      v29 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *v36 = v12;
        *&v36[8] = 2114;
        *&v36[10] = v18;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Task with identifier %{public}@ is completed, completion date is %{public}@", buf, 0x16u);
      }

      goto LABEL_29;
    }

    v25 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *v36 = "[NEKEventStore handleUpdatedItemFromGizmo:type:withWrapper:identifier:]";
      *&v36[8] = 2114;
      *&v36[10] = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", buf, 0x16u);
    }
  }

  else if (a4 == 2)
  {
    v14 = v10;
    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v14 eks_debugDesc];
      *buf = 138543618;
      *v36 = v17;
      *&v36[8] = 2114;
      *&v36[10] = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling updated event from gizmo with summary %{public}@ and identifier %{public}@", buf, 0x16u);
    }

    v18 = [v14 selfAttendee];
    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = [v11 attendeeStatusForIdentifier:v12];
    if (v19 != [v18 participantStatus])
    {
      [v14 setParticipationStatus:v19];
      v30 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v36 = v19;
        *&v36[4] = 2114;
        *&v36[6] = v12;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Set self attendee status to 0x%08x for event with identifier %{public}@", buf, 0x12u);
      }

      if (v19 == 1)
      {
        goto LABEL_29;
      }

      v31 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v36 = v12;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Set invitation status to none for event with identifier %{public}@", buf, 0xCu);
      }

      [v14 setInvitationStatus:0];
      v32 = objc_autoreleasePoolPush();
      if ([v14 isMasterOrDetachedOccurrence])
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      v34 = 0;
      [v13 saveEvent:v14 span:v33 commit:1 error:&v34];
      v21 = v34;
      objc_autoreleasePoolPop(v32);
      if (v21 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10006FE90();
      }

      goto LABEL_28;
    }

    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v11 attendeeStatusForIdentifier:v12];
      *buf = 67109378;
      *v36 = v22;
      *&v36[4] = 2114;
      *&v36[6] = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No need to set attendee status, synced value is the same as existing value: 0x%08x for event with identifier %{public}@", buf, 0x12u);
LABEL_28:
    }

LABEL_29:

LABEL_30:
  }
}

- (BOOL)updateEvent:(id)a3 identifier:(id)a4 eventStore:(id)a5 occurrenceDate:(id)a6 participationStatus:(int64_t)a7 masterIdentifier:(id)a8 isMaster:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if ([v14 participationStatus] == a7)
  {
    v19 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v14 externalID];
      *buf = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Participant status did not change. No need to save event with identifier %{public}@, externalID is %{public}@", buf, 0x16u);
    }

    LOBYTE(v22) = 1;
  }

  else
  {
    [v14 setParticipationStatus:a7];
    if (a7 >= 2)
    {
      [v14 setInvitationStatus:0];
      v23 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Set invitation status to none for event with identifier %{public}@", buf, 0xCu);
      }
    }

    v24 = objc_autoreleasePoolPush();
    if (a9)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v31 = 0;
    v22 = [v16 saveEvent:v14 span:v25 commit:0 error:&v31];
    v26 = v31;
    objc_autoreleasePoolPop(v24);
    v27 = *(qword_1000D18A8 + 8);
    if (v22)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
        v29 = [v14 externalID];
        *buf = 138543618;
        v33 = v15;
        v34 = 2114;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Saved event with identifier %{public}@, externalID is %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10006FEF8();
    }
  }

  return v22;
}

- (BOOL)updateMasterEvent:(id)a3 masterIdentifier:(id)a4 calendarIdentifier:(id)a5 masterParticipationStatus:(int64_t)a6 detachedEvents:(id)a7
{
  v11 = a3;
  v12 = a4;
  v76 = a5;
  v13 = a7;
  v14 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = sub_10002CDF8([v11 title]);
    *buf = 67109634;
    *v101 = a6;
    *&v101[4] = 2114;
    *&v101[6] = v16;
    *&v101[14] = 2114;
    *&v101[16] = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handling updated master event from gizmo with participationStatus %d, summary %{public}@, and identifier %{public}@", buf, 0x1Cu);
  }

  v17 = [v11 objectID];
  v18 = [v17 rowID];

  if (v18 == -1)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070038();
    }

    v67 = 0;
  }

  else
  {
    v73 = v11;
    v19 = [EKEventStore eks_eventOnlyStoreFor:@"updateMasterEvent:blah..."];
    v78 = [NSNumber numberWithInt:v18];
    v74 = v13;
    v83 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);
    v81 = v19;
    v77 = v12;
    [v19 calendarItemsWithExternalIdentifier:v12];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v96 = 0u;
    v20 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v94;
LABEL_6:
      v23 = 0;
      while (1)
      {
        if (*v94 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v93 + 1) + 8 * v23);
        v25 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v24 eks_debugDesc];
          v28 = [v24 calendarItemExternalIdentifier];
          *buf = 138543618;
          *v101 = v27;
          *&v101[8] = 2114;
          *&v101[10] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Checking for calendar match for event %{public}@ with identifier %{public}@", buf, 0x16u);
        }

        v29 = [v24 calendar];
        v30 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [v29 calendarIdentifier];
          *buf = 138543618;
          *v101 = v76;
          *&v101[8] = 2114;
          *&v101[10] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Checking for match on calendar, we want %{public}@, calendarIdentifier is %{public}@", buf, 0x16u);
        }

        v33 = [v29 calendarIdentifier];
        v34 = [v33 isEqualToString:v76];

        if (v34)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
          if (v21)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }
      }

      v35 = v24;

      if (!v35)
      {
        goto LABEL_28;
      }

      v36 = *(qword_1000D18A8 + 8);
      v12 = v77;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [v35 eks_debugDesc];
        *buf = 67109634;
        *v101 = a6;
        *&v101[4] = 2114;
        *&v101[6] = v38;
        *&v101[14] = 2114;
        *&v101[16] = v77;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Handling master event from gizmo with participation status %d, summary %{public}@, and identifier %{public}@", buf, 0x1Cu);
      }

      v39 = [v73 startDate];
      LOBYTE(v70) = 1;
      [(NEKEventStore *)self updateEvent:v35 identifier:v77 eventStore:v81 occurrenceDate:v39 participationStatus:a6 masterIdentifier:v77 isMaster:v70];

      v72 = v35;
      v40 = [v35 detachedItems];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v89 objects:v98 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v90;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v90 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v89 + 1) + 8 * i);
            v46 = [v45 originalStartDate];
            [v83 setObject:v45 forKey:v46];
          }

          v42 = [v40 countByEnumeratingWithState:&v89 objects:v98 count:16];
        }

        while (v42);
      }

      v47 = v74;
    }

    else
    {
LABEL_16:

LABEL_28:
      v12 = v77;
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10006FF64();
      }

      v72 = 0;
      v47 = v74;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = v47;
    v82 = [v48 countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (v82)
    {
      v80 = *v86;
      do
      {
        for (j = 0; j != v82; j = j + 1)
        {
          if (*v86 != v80)
          {
            objc_enumerationMutation(v48);
          }

          v50 = *(*(&v85 + 1) + 8 * j);
          v51 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v50 longLongValue]);
          [v51 timeIntervalSinceReferenceDate];
          v53 = [NSString stringWithFormat:@"%@%@%llu", v12, @"/RID=", v52];
          v54 = [v48 objectForKeyedSubscript:v50];
          v55 = [v83 objectForKey:v51];
          v56 = [v55 persistentObject];

          v57 = *(qword_1000D18A8 + 8);
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
          if (v56)
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Using existing detached event", buf, 2u);
            }

            v59 = [[EKEvent alloc] initWithPersistentObject:v56 occurrenceDate:0];
          }

          else
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Grabbing recurrence to use for detached event", buf, 2u);
            }

            v59 = [v81 eventForUID:v78 occurrenceDate:v51];
          }

          v60 = v59;
          v61 = *(qword_1000D18A8 + 8);
          if (v59)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = v61;
              v63 = [v54 intValue];
              v64 = [v60 eks_debugDesc];
              *buf = 67109634;
              *v101 = v63;
              *&v101[4] = 2114;
              *&v101[6] = v64;
              *&v101[14] = 2114;
              *&v101[16] = v53;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Handling updated detached event from gizmo with participation status %d, summary %{public}@, and identifier %{public}@.", buf, 0x1Cu);

              v12 = v77;
            }

            LOBYTE(v71) = 0;
            -[NEKEventStore updateEvent:identifier:eventStore:occurrenceDate:participationStatus:masterIdentifier:isMaster:](self, "updateEvent:identifier:eventStore:occurrenceDate:participationStatus:masterIdentifier:isMaster:", v60, v53, v81, v51, [v54 intValue], v12, v71);
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v65 = v61;
            v66 = [v54 intValue];
            *buf = 138543618;
            *v101 = v53;
            *&v101[8] = 1024;
            *&v101[10] = v66;
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to get/create event with identifier %{public}@ to set attendee status %d, skipping event", buf, 0x12u);
          }
        }

        v82 = [v48 countByEnumeratingWithState:&v85 objects:v97 count:16];
      }

      while (v82);
    }

    v84 = 0;
    v67 = [v81 commit:&v84];
    v68 = v84;
    if (v68 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006FFCC();
    }

    v11 = v73;
    v13 = v74;
  }

  return v67;
}

- (id)detacheesForIdentifierCreatingIfNeeded:(id)a3 detachedEventMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [v6 setObject:v7 forKey:v5];
  }

  return v7;
}

- (void)handleCalendarEventWithUniqueIdentifierFromGizmo:(id)a3 calendar:(id)a4 wrapper:(id)a5 detachedEventMap:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 eventStore];
  v15 = [v14 eventWithUniqueId:v10];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 calendar];
    v18 = [v17 isEqual:v11];

    if ((v18 & 1) == 0)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_1000700A0();
      }

      goto LABEL_20;
    }

    if (![v16 isDetached])
    {
      if ([v16 hasRecurrenceRules])
      {
        if (([v16 isPhantom] & 1) == 0)
        {
          v25 = [(NEKEventStore *)self detacheesForIdentifierCreatingIfNeeded:v10 detachedEventMap:v13];
        }
      }

      else
      {
        [(NEKEventStore *)self handleUpdatedItemFromGizmo:v16 type:2 withWrapper:v12 identifier:v10];
      }

      goto LABEL_20;
    }
  }

  v19 = [v10 componentsSeparatedByString:@"/RID="];
  if ([v19 count] == 2)
  {
    v30 = self;
    v32 = v13;
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v19 objectAtIndexedSubscript:1];
    v33 = v11;
    v22 = [NSArray arrayWithObjects:&v33 count:1];
    v23 = [v14 eventsWithExternalIdentifier:v20 inCalendars:v22];

    if ([v23 count])
    {
      v24 = [v23 objectAtIndexedSubscript:0];
      if ([v24 isPhantom])
      {
        [(NEKEventStore *)v30 handleUpdatedItemFromGizmo:v16 type:2 withWrapper:v12 identifier:v10];
      }

      else
      {
        v29 = v20;
        [(NEKEventStore *)v30 detacheesForIdentifierCreatingIfNeeded:v20 detachedEventMap:v32];
        v27 = v31 = v24;
        v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 attendeeStatusForIdentifier:v10]);
        [v27 setObject:v28 forKey:v21];

        v20 = v29;
        v24 = v31;
      }

      v13 = v32;
      goto LABEL_20;
    }

    v13 = v32;
  }

  else
  {
  }

  v26 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100070108(v10, v26, v12);
  }

LABEL_20:
}

- (void)handleCalendarTaskWithUniqueIdentifierFromGizmo:(id)a3 calendar:(id)a4 wrapper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NEKStore *)self environment];
  v12 = [v11 isReminderKitEnabled];

  if (v12)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446466;
      v20 = "[NEKEventStore handleCalendarTaskWithUniqueIdentifierFromGizmo:calendar:wrapper:]";
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", &v19, 0x16u);
    }
  }

  else
  {
    v14 = [v9 eventStore];
    v23 = v9;
    v15 = [NSArray arrayWithObjects:&v23 count:1];
    v16 = [v14 remindersWithExternalIdentifier:v8 inCalendars:v15];
    v17 = [v16 objectAtIndexedSubscript:0];

    if (v17)
    {
      [(NEKEventStore *)self handleUpdatedItemFromGizmo:v17 type:3 withWrapper:v10 identifier:v8];
    }

    else
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000701CC(v8, v18, v10);
      }
    }
  }
}

- (id)_filterOutInvalidICSWrappers:(id)a3 store:(id)a4 calendars:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v29 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v39 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received ICS wrapper: %{public}@", buf, 0xCu);
        }

        v15 = [v12 ICSData];

        if (v15)
        {
          v16 = *(qword_1000D18B0 + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_100070290(v36, v16, v12, &v37);
          }
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v17 = *(qword_1000D18B0 + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = [v12 lzfseICSData];
            v20 = [v19 base64EncodedStringWithOptions:0];
            *buf = 138412290;
            v39 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "recv LZFSE: <<!%@!>>", buf, 0xCu);
          }
        }

        v21 = [v12 calendarIdentifier];
        v22 = [NEKCalendarID calendarInStore:v7 withNEKCalendarID:v21];

        if (v22)
        {
          [v29 addObject:v22];
          [v28 addObject:v12];
        }

        else
        {
          v23 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100070358(&v34, v23, v12, &v35);
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v9);
  }

  if (a5)
  {
    *a5 = [v29 copy];
  }

  v24 = [v28 copy];

  return v24;
}

- (void)_processUpdateFromWatch:(id)a3 calendar:(id)a4 store:(id)a5
{
  v7 = a3;
  v8 = a4;
  v31 = a5;
  v9 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 objectIdentifier];
    *buf = 138543362;
    v43 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Processing update from the watch, main identifier is %{public}@", buf, 0xCu);
  }

  v12 = +[NSMutableDictionary dictionary];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001B088;
  v37[3] = &unk_1000B50C0;
  v38 = v7;
  v39 = self;
  v30 = v8;
  v40 = v30;
  v13 = v12;
  v41 = v13;
  v28 = v38;
  [v38 enumerateCalendarItemIdentifiersUsingBlock:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v29 = *v34;
    do
    {
      v17 = 0;
      v26 = v16;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        context = objc_autoreleasePoolPush();
        v19 = [v14 objectForKeyedSubscript:v18];
        v46 = v30;
        v20 = [NSArray arrayWithObjects:&v46 count:1];
        v21 = [v31 calendarItemsWithExternalIdentifier:v18 inCalendars:v20];
        v22 = [v21 firstObject];

        if (v22)
        {
          if ([v19 count])
          {
            v23 = [v28 calendarIdentifier];
            v24 = [v23 identifier];
            v16 = v26;
            -[NEKEventStore updateMasterEvent:masterIdentifier:calendarIdentifier:masterParticipationStatus:detachedEvents:](self, "updateMasterEvent:masterIdentifier:calendarIdentifier:masterParticipationStatus:detachedEvents:", v22, v18, v24, [v28 attendeeStatusForIdentifier:v18], v19);
LABEL_11:

            goto LABEL_15;
          }

          [(NEKEventStore *)self handleUpdatedItemFromGizmo:v22 type:2 withWrapper:v28 identifier:v18];
        }

        else
        {
          v25 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v23 = v25;
            v24 = [v28 calendarIdentifier];
            *buf = 138543618;
            v43 = v18;
            v44 = 2114;
            v45 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No calendar item found for main event in recurring series with identifier %{public}@ in calendar with identifier %{public}@", buf, 0x16u);
            goto LABEL_11;
          }
        }

LABEL_15:

        objc_autoreleasePoolPop(context);
        v17 = v17 + 1;
      }

      while (v16 != v17);
      v16 = [v14 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v16);
  }
}

- (void)_processUpdateWithICS:(id)a3 store:(id)a4 calendar:(id)a5 resultWrappers:(id)a6 resultCalendars:(id)a7
{
  v12 = a3;
  v71 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v12 nuevoIdentifier];
    *buf = 138543362;
    v78 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Processing add/update from companion, or a new record from the watch, id = %{public}@", buf, 0xCu);
  }

  v19 = [v12 oldIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = [v12 nuevoIdentifier];
    if (!v21)
    {
LABEL_23:

      goto LABEL_24;
    }

    v22 = v21;
    [v12 oldIdentifier];
    v23 = v69 = self;
    [v12 nuevoIdentifier];
    v24 = v70 = v15;
    v25 = [v23 isEqualToString:v24];

    v15 = v70;
    self = v69;

    if ((v25 & 1) == 0)
    {
      v67 = v14;
      v68 = v13;
      [v71 sources];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v20 = v76 = 0u;
      v26 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v74;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v74 != v28)
            {
              objc_enumerationMutation(v20);
            }

            v30 = *(*(&v73 + 1) + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v32 = [v12 oldIdentifier];
            v33 = [v30 allCalendars];
            v34 = [v33 allObjects];
            v35 = [v71 eventsWithExternalIdentifier:v32 inCalendars:v34];

            if (v35 && [v35 count])
            {
              v36 = [v35 objectAtIndexedSubscript:0];
              v72 = 0;
              [v71 removeEvent:v36 span:objc_msgSend(v36 error:{"isMasterOrDetachedOccurrence"), &v72}];
              v37 = v72;
              if (v37 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
              {
                sub_100070440();
              }

              v38 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = v37;
                v40 = v38;
                v41 = [v12 oldIdentifier];
                v42 = [v12 nuevoIdentifier];
                *buf = 138543618;
                v78 = v41;
                v79 = 2114;
                v80 = v42;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Item ID remapping complete: %{public}@ => %{public}@", buf, 0x16u);

                v37 = v39;
              }

              objc_autoreleasePoolPop(v31);
              goto LABEL_22;
            }

            objc_autoreleasePoolPop(v31);
          }

          v27 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:

      v14 = v67;
      v13 = v68;
      self = v69;
      v15 = v70;
      goto LABEL_23;
    }
  }

LABEL_24:
  v43 = [v12 oldCalendarIdentifier];
  if (!v43)
  {
    goto LABEL_29;
  }

  v44 = v43;
  v45 = [v12 calendarIdentifier];
  v46 = [v45 identifier];

  if (v46)
  {
    v47 = [v12 oldCalendarIdentifier];
    v48 = [v12 calendarIdentifier];
    v49 = [v48 identifier];
    v50 = [v47 isEqualToString:v49];

    v51 = *(qword_1000D18A8 + 8);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      if (v52)
      {
        v53 = v51;
        v54 = [v12 calendarIdentifier];
        v55 = [v54 identifier];
        *buf = 138543362;
        v78 = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Calendars match, so event didn't move: calendar id = %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v52)
      {
        v63 = v51;
        v64 = [v12 oldCalendarIdentifier];
        v65 = [v12 calendarIdentifier];
        v66 = [v65 identifier];
        *buf = 138543618;
        v78 = v64;
        v79 = 2114;
        v80 = v66;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Calendars don't match, so deleting from old calendar: old calendar id = %{public}@, current calendar id = %{public}@", buf, 0x16u);
      }

      [(NEKEventStore *)self _deleteCalendarItemsInICSWrapperFromOldCalendar:v12 store:v71];
    }
  }

  else
  {
LABEL_29:
    v56 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v56;
      v58 = [v12 title];
      v59 = sub_10002CDF8(v58);
      v60 = [v12 calendarIdentifier];
      [v60 identifier];
      v62 = v61 = self;
      *buf = 138543618;
      v78 = v59;
      v79 = 2114;
      v80 = v62;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Got an update/add for event %{public}@, no old calendar id was sent, so this is from an old record map and falling back to old code to check and delete from any old calendar. The current calendar id = %{public}@", buf, 0x16u);

      self = v61;
    }

    [(NEKEventStore *)self _deleteCalendarItemsMovedToCalendar:v13 inICSWrapper:v12];
  }

  [v14 addObject:v12];
  [v15 addObject:v13];
}

- (void)_processArrayOfArrayOfICSWrappers:(id)a3 batchWrappers:(id)a4 session:(id)a5
{
  v8 = a3;
  v44 = a4;
  v9 = a5;
  v10 = v8;
  v11 = v9;
  if ([v8 count])
  {
    v12 = 0;
    v13 = &qword_1000D18A8;
    v14 = &MKBDeviceUnlockedSinceBoot_ptr;
    v15 = &OBJC_IVAR___NDTLogFacility_os_log_facility;
    v43 = v10;
    do
    {
      v45 = objc_autoreleasePoolPush();
      v16 = [v44 objectAtIndex:v12];
      v46 = v12;
      v17 = [v10 objectAtIndex:v12];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v61;
        v47 = *v61;
        v53 = v16;
        do
        {
          v21 = 0;
          v48 = v19;
          do
          {
            if (*v61 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v60 + 1) + 8 * v21);
            context = objc_autoreleasePoolPush();
            [(NEKEventStore *)self handleNewEntity:v22 withWrapper:v16 session:v11];
            v23 = v14[268];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = v22;
              if (([v51 hasRecurrenceRules] & 1) != 0 || objc_msgSend(v51, "isPhantom"))
              {
                v50 = v21;
                v24 = *(*v13 + *v15);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = v24;
                  v26 = [v51 eks_debugDesc];
                  v27 = [v51 uniqueId];
                  *buf = 138543618;
                  v66 = v26;
                  v67 = 2114;
                  v68 = v27;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "We have a recurring event %{public}@ and identifier %{public}@, checking to see if any detached events need attention", buf, 0x16u);
                }

                v28 = [v51 detachedItems];
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v55 = v28;
                v29 = [v28 countByEnumeratingWithState:&v56 objects:v64 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v57;
                  v54 = *v57;
                  do
                  {
                    for (i = 0; i != v30; i = i + 1)
                    {
                      if (*v57 != v31)
                      {
                        objc_enumerationMutation(v55);
                      }

                      v33 = *(*(&v56 + 1) + 8 * i);
                      v34 = *(*v13 + *v15);
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                      {
                        v35 = v34;
                        [v33 eks_debugDesc];
                        v36 = v15;
                        v37 = v11;
                        v39 = v38 = self;
                        [v33 uniqueId];
                        v40 = v30;
                        v42 = v41 = v13;
                        *buf = 138543618;
                        v66 = v39;
                        v67 = 2114;
                        v68 = v42;
                        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "performUpdateWithICSWrappers: handling detached event %{public}@ identifier %{public}@", buf, 0x16u);

                        v13 = v41;
                        v30 = v40;

                        self = v38;
                        v11 = v37;
                        v15 = v36;
                        v16 = v53;
                        v31 = v54;
                      }

                      [(NEKEventStore *)self handleNewEntity:v33 withWrapper:v16 session:v11];
                    }

                    v30 = [v55 countByEnumeratingWithState:&v56 objects:v64 count:16];
                  }

                  while (v30);
                }

                v14 = &MKBDeviceUnlockedSinceBoot_ptr;
                v20 = v47;
                v19 = v48;
                v21 = v50;
              }
            }

            objc_autoreleasePoolPop(context);
            v21 = v21 + 1;
          }

          while (v21 != v19);
          v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (v19);
      }

      objc_autoreleasePoolPop(v45);
      v12 = v46 + 1;
      v10 = v43;
    }

    while (v46 + 1 < [v43 count]);
  }
}

- (void)performUpdateWithICSWrappers:(id)a3 store:(id)a4 session:(id)a5
{
  v7 = a3;
  v49 = a4;
  v45 = a5;
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 67109120;
    LODWORD(v60) = [v7 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "performUpdateWithICSWrappers received %d items", buf, 8u);
  }

  v58 = 0;
  v10 = [(NEKEventStore *)self _filterOutInvalidICSWrappers:v7 store:v49 calendars:&v58];
  v11 = v58;

  v12 = [v10 count];
  v13 = [[NSMutableArray alloc] initWithCapacity:v12];
  v47 = [[NSMutableArray alloc] initWithCapacity:v12];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v55;
    do
    {
      v18 = 0;
      do
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v54 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v11 objectAtIndexedSubscript:v16];
        v22 = [v19 ICSData];
        if (v22)
        {

LABEL_11:
          [(NEKEventStore *)self _processUpdateWithICS:v19 store:v49 calendar:v21 resultWrappers:v13 resultCalendars:v47];
          goto LABEL_12;
        }

        v23 = [v19 lzfseICSData];

        if (v23)
        {
          goto LABEL_11;
        }

        [(NEKEventStore *)self _processUpdateFromWatch:v19 calendar:v21 store:v49];
LABEL_12:

        objc_autoreleasePoolPop(v20);
        ++v16;
        v18 = v18 + 1;
      }

      while (v15 != v18);
      v24 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      v15 = v24;
    }

    while (v24);
  }

  v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v31 = *v51;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v50 + 1) + 8 * i);
        v34 = [v33 lzfseICSData];

        if (v34)
        {
          ++v30;
          [v33 lzfseICSData];
        }

        else
        {
          ++v29;
          [v33 ICSData];
        }
        v35 = ;
        [v25 addObject:v35];
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v28);
    v36 = v30 == 0;
    v37 = v29 == 0;
  }

  else
  {
    v37 = 1;
    v36 = 1;
  }

  if ([v26 count])
  {
    kdebug_trace();
    Current = CFAbsoluteTimeGetCurrent();
    if (v36 || v37)
    {
      v39 = Current;
      if (v36)
      {
        v40 = 0x80000000;
      }

      else
      {
        v40 = 2147483776;
      }

      v41 = [v49 importICSData:v25 intoCalendars:v47 options:v40];
      kdebug_trace();
      v42 = CFAbsoluteTimeGetCurrent();
      v43 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v60 = v42 - v39;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ICS Import: %fs #perf", buf, 0xCu);
      }

      [(NEKEventStore *)self _processArrayOfArrayOfICSWrappers:v41 batchWrappers:v26 session:v45];
    }

    else
    {
      v44 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        sub_1000704A8(v44);
      }
    }
  }
}

- (void)_deleteDetachedCalendarItemsFromOldCalendar:(id)a3 deletedEvents:(id)a4
{
  v5 = a3;
  if ([v5 hasRecurrenceRules])
  {
    v6 = &qword_1000D18A8;
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = sub_10002CDF8([v5 title]);
      v10 = [v5 uniqueId];
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We have a recurring event with summary %{public}@ and identifier %{public}@, deleting all detached events too, since they have also moved calendars", buf, 0x16u);
    }

    [v5 detachedItems];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v28;
      *&v12 = 138543618;
      v24 = v12;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = *(*v6 + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = sub_10002CDF8([v16 title]);
            [v16 uniqueId];
            v21 = v20 = v6;
            *buf = v24;
            v33 = v19;
            v34 = 2114;
            v35 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deleting detached event from old calendar since it has moved. Event summary %{public}@, identifier %{public}@", buf, 0x16u);

            v6 = v20;
          }

          v22 = [v5 eventStore];
          v26 = 0;
          [v22 removeEvent:v16 span:0 error:&v26];
          v23 = v26;

          [(NEKEventStore *)self _removeIdentifierForDeletedEntity:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }
  }
}

- (void)_deleteCalendarItemsInICSWrapperFromOldCalendar:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 oldCalendarIdentifier];
  if (v8)
  {
    v9 = [v7 calendarWithIdentifier:v8];
    if (v9)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001C658;
      v11[3] = &unk_1000B50E8;
      v12 = objc_alloc_init(NSMutableSet);
      v13 = v8;
      v14 = v6;
      v15 = v7;
      v16 = v9;
      v17 = self;
      v10 = v12;
      [v14 enumerateCalendarItemIdentifiersUsingBlock:v11];
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000704EC();
    }
  }
}

- (void)_deleteCalendarItemsMovedToCalendar:(id)a3 inICSWrapper:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CA40;
  v8[3] = &unk_1000B5110;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  [v6 enumerateCalendarItemIdentifiersUsingBlock:v8];
}

- (void)applySidePropertiesToEntity:(id)a3 withWrapper:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = [v11 uniqueId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
      v14 = [v13 uniqueId];
      v15 = [v9 hasPropertiesForIdentifier:v14];

      if ((v15 & 1) == 0)
      {
        v50 = self;
        v51 = v10;
        v16 = [v9 startDateMap];
        v17 = [v13 startDate];
        v18 = [v16 objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v49 = [v13 uniqueId];
            *buf = 138543618;
            *v54 = v49;
            *&v54[8] = 2114;
            *&v54[10] = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Changing event id from %{public}@ to %{public}@", buf, 0x16u);
          }

          [v13 setUniqueId:{v18, v49}];
          v21 = v18;

          v12 = v21;
        }

        self = v50;
        v10 = v51;
      }
    }

    [(NEKEventStore *)self updateSelfAttendeeForCalendarItem:v11 identifier:v12 withWrapper:v9];
    v22 = [v9 externalIDForIdentifier:v12];
    v23 = *(qword_1000D18A8 + 8);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138543618;
        *v54 = v22;
        *&v54[8] = 2114;
        *&v54[10] = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "setting externalID %{public}@ for event with identifier %{public}@", buf, 0x16u);
      }

      [v11 setExternalID:v22];
    }

    else if (v24)
    {
      *buf = 138543362;
      *v54 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No externalID in metadata for event with identifier %{public}@", buf, 0xCu);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v26 = v11;
    v27 = v26;
    if (isKindOfClass)
    {
      v28 = self;
      v29 = [v9 dateChangedForIdentifier:v12];
      if (v29 != [v27 dateChanged])
      {
        [v27 setDateChanged:v29];
        v30 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v29;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Changed date changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v31 = [v9 timeChangedForIdentifier:v12];
      if (v31 != [v27 timeChanged])
      {
        [v27 setTimeChanged:v31];
        v32 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v31;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Changed time changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v33 = [v9 titleChangedForIdentifier:v12];
      if (v33 != [v27 titleChanged])
      {
        [v27 setTitleChanged:v33];
        v34 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v33;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Changed title changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v35 = [v9 locationChangedForIdentifier:v12];
      if (v35 != [v27 locationChanged])
      {
        [v27 setLocationChanged:v35];
        v36 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v35;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Changed location changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v37 = [v9 attendeeCommentForIdentifier:v12];
      if (v37 != [v27 attendeeComment])
      {
        [v27 setAttendeeComment:v37];
        v38 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v37;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Changed attendee comment changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v39 = [v9 attendeeStatusFlagForIdentifier:v12];
      if (v39 != [v27 attendeeStatus])
      {
        [v27 setAttendeeStatus:v39];
        v40 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v39;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Changed attendee status changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v41 = [v9 locationPredictionStateForIdentifier:v12];
      v42 = [v41 unsignedIntegerValue];

      if (v42 != [v27 locationPredictionState])
      {
        [v27 setLocationPredictionState:v42];
        v43 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v42;
          *&v54[4] = 2114;
          *&v54[6] = v12;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Setting location prediction state to %d for event %{public}@", buf, 0x12u);
        }
      }

      [(NEKEventStore *)v28 updateInvitationStatusForCalendarItem:v27 identifier:v12 withWrapper:v9 session:v10];
      v44 = objc_autoreleasePoolPush();
      v45 = [v27 eventStore];
      if ([v27 isMasterOrDetachedOccurrence])
      {
        v46 = 2;
      }

      else
      {
        v46 = 0;
      }

      v52 = 0;
      [v45 saveEvent:v27 span:v46 error:&v52];
      v47 = v52;

      objc_autoreleasePoolPop(v44);
      if (v47 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070728();
      }

      v48 = v27;
    }

    else
    {
      v48 = [v26 eventStore];
      [v48 saveReminder:v27 error:0];
      v47 = v27;
    }
  }
}

- (void)updateSelfAttendeeForCalendarItem:(id)a3 identifier:(id)a4 withWrapper:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 selfAttendeeEmailForIdentifier:v8];
  v11 = [v9 selfAttendeeUUIDForIdentifier:v8];
  v60 = [v7 eventStore];
  v12 = *(qword_1000D18A8 + 8);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10 | v11)
  {
    if (v13)
    {
      v14 = v12;
      v15 = sub_10002CDF8(v10);
      sub_10002CDF8(v11);
      v17 = v16 = v9;
      *buf = 138543874;
      *v69 = v15;
      *&v69[8] = 2114;
      v70 = v17;
      v71 = 2114;
      v72 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Self attendee email is %{public}@, and uuid is %{public}@ for event with identifier %{public}@", buf, 0x20u);

      v9 = v16;
    }

    v18 = [v7 attendees];
    v19 = v18;
    if (v18)
    {
      v54 = [v18 count];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v19;
      v20 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v64;
        v52 = v8;
        v53 = v7;
        v55 = v9;
        v50 = v19;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v64 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v63 + 1) + 8 * i);
            v25 = [v24 emailAddress];
            v26 = [v24 URL];
            if (([v10 isEqualToString:v25] & 1) != 0 || (objc_msgSend(v26, "absoluteString"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v11, "isEqualToString:", v27), v27, v28))
            {
              [v53 setSelfAttendee:v24];
              v30 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = v30;
                v32 = sub_10002CDF8(v10);
                v33 = sub_10002CDF8(v11);
                *buf = 138543874;
                *v69 = v52;
                *&v69[8] = 2114;
                v70 = v32;
                v71 = 2114;
                v72 = v33;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found self attendee for event with identifier %{public}@, email = %{public}@, address = %{public}@", buf, 0x20u);
              }

              v29 = 1;
              v8 = v52;
              v7 = v53;
              v9 = v55;
              v19 = v50;
              goto LABEL_23;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
          v29 = 0;
          v8 = v52;
          v7 = v53;
          v9 = v55;
          v19 = v50;
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v29 = 0;
      }

LABEL_23:
    }

    else
    {
      v54 = 0;
      v29 = 0;
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138543362;
      *v69 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No self attendee email in wrapper for event with identifier %{public}@", buf, 0xCu);
    }

    v54 = 0;
    v29 = 0;
  }

  v34 = [v7 organizer];
  if (!v34)
  {
LABEL_31:
    v35 = v10;
    v36 = v11;
    if (!v29)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

  v35 = [v9 selfOrganizerEmailForIdentifier:v8];

  v36 = [v9 selfOrganizerUUIDForIdentifier:v8];

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = v36;
    v10 = v35;
    goto LABEL_31;
  }

  v56 = v9;
  v37 = v7;
  v38 = [v34 emailAddress];
  v39 = [v34 URL];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 absoluteString];
  }

  else
  {
    v41 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v38 && ([v35 isEqualToString:v38] & 1) != 0 || v41 && objc_msgSend(v36, "isEqualToString:", v41)))
  {
    [v34 setCurrentUser:1];
    [v37 setOrganizer:v34];
    v48 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      obja = v48;
      v51 = sub_10002CDF8(v35);
      v49 = sub_10002CDF8(v36);
      *buf = 138543874;
      *v69 = v8;
      *&v69[8] = 2114;
      v70 = v51;
      v71 = 2114;
      v72 = v49;
      _os_log_impl(&_mh_execute_header, obja, OS_LOG_TYPE_DEFAULT, "Determined user is organizer for event with identifier %{public}@, email = %{public}@, address = %{public}@", buf, 0x20u);
    }

    v7 = v37;
    v9 = v56;
  }

  else
  {

    v7 = v37;
    v9 = v56;
    if ((v29 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_32:
  v42 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v9;
    v43 = v7;
    if ([v43 isMasterOrDetachedOccurrence])
    {
      v44 = 3;
    }

    else
    {
      v44 = 0;
    }

    v45 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v69 = v54;
      *&v69[4] = 1024;
      *&v69[6] = v44;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updateSelfAttendeeForCalendarItem saving, attendees: %d, span: %d", buf, 0xEu);
    }

    v62 = 0;
    v46 = &v62;
    [v60 saveEvent:v43 span:v44 error:&v62];

    v9 = v57;
  }

  else
  {
    v61 = 0;
    v46 = &v61;
    [v60 saveReminder:v7 error:&v61];
  }

  v47 = *v46;
  if (v47 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070790();
  }

  objc_autoreleasePoolPop(v42);
LABEL_44:
}

- (void)updateInvitationStatusForCalendarItem:(id)a3 identifier:(id)a4 withWrapper:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 invitationStatusForIdentifier:v11];
    v15 = [v12 properInvitationStatusForIdentifier:v11];
    if (v15)
    {
      v16 = v15;
      if ([v15 unsignedIntegerValue] == 2)
      {

        v16 = &off_1000BB748;
      }

      v17 = v16;

      v14 = v17;
    }

    else
    {
      if (!v14)
      {
        v26 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = v11;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No invitation status in wrapper for event with identifier %{public}@", buf, 0xCu);
        }

        v17 = 0;
        v14 = 0;
        goto LABEL_23;
      }

      v17 = 0;
    }

    LODWORD(v18) = [v14 intValue];
    if (([v13 isResetSync] & 1) == 0)
    {
      if (v18 == 3)
      {
        dispatch_assert_queue_V2(self->_queue);
        v19 = [v10 eks_cacheKey];
        v28 = [(NSMutableDictionary *)self->_alertSupressionCache objectForKeyedSubscript:v19];

        +[NSDate timeIntervalSinceReferenceDate];
        v21 = [NSNumber numberWithDouble:v20 + 28800.0 + -1.0];
        [(NSMutableDictionary *)self->_alertSupressionCache setObject:v21 forKeyedSubscript:v19];

        objc_initWeak(&location, self);
        v22 = dispatch_time(0, 28800000000000);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001E13C;
        block[3] = &unk_1000B5138;
        objc_copyWeak(&v31, &location);
        v24 = v19;
        v30 = v24;
        dispatch_after(v22, queue, block);
        if (v28)
        {

          v25 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Suppressing alert due to cache hit on %@", buf, 0xCu);
          }

          v14 = &off_1000BB760;
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else
      {
        v18 = v18;
      }

      v27 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v34 = v14;
        v35 = 2114;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Setting invitation status %{public}@ for event with identifier %{public}@", buf, 0x16u);
      }

      [v10 setInvitationStatus:v18];
    }

LABEL_23:
  }
}

- (void)addAttendeeEvents:(id)a3
{
  v5 = a3;
  v6 = [v5 updates];
  v7 = [NSMutableSet setWithArray:v6];

  v8 = [NEKStoreRoller alloc];
  v9 = NSStringFromSelector(a2);
  v10 = [(NEKStoreRoller *)v8 initWithEventStore:self cause:v9];

  v11 = objc_opt_class();
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001E3C8;
  v18 = &unk_1000B5160;
  v19 = v10;
  v20 = v7;
  v12 = v7;
  v13 = v10;
  [v5 enumerateForChangeType:3 forEntitiesOfClass:v11 withBlock:&v15];
  v14 = [v12 allObjects];
  [v5 setUpdates:v14];
}

- (void)storeWrappersForSourceAggregator:(id)a3 pipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v6 insertedSources];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(NEKEventStore *)self wrapperForSource:v13 nekChangeType:1];
        [(NEKEventStore *)self _pushSource:v13 wrapper:v14 intoPipe:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v6 updatedSources];
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = [(NEKEventStore *)self wrapperForSource:v20 nekChangeType:2];
        [(NEKEventStore *)self _pushSource:v20 wrapper:v21 intoPipe:v7];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)_pushSource:(id)a3 wrapper:(id)a4 intoPipe:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if (([v8 allowsEvents] & 1) != 0 || (objc_msgSend(v8, "allowsTasks") & 1) == 0)
    {
      [(NEKEventStore *)self updateRowMappingForEntity:v8];
    }

    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      v12 = [v9 attributes];
      v13 = [v12 accountPersistentID];
      v14 = [v9 attributes];
      v15 = [v14 isLocalStore];
      v16 = [v9 attributes];
      v17 = [v16 allowsEvents];
      v18 = [v9 attributes];
      *buf = 138544130;
      v21 = v13;
      v22 = 1024;
      v23 = v15;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = [v18 allowsTasks];
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Sending source wrapper accountPersistentID=%{public}@ isLocalStore=%d events=%d tasks=%d", buf, 0x1Eu);
    }

    [v10 push:v9];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000707F8();
  }
}

- (void)calendarWrappersForChangeSet:(id)a3 pipe:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = NSStringFromSelector(a2);
  v10 = [(NEKEventStore *)self freshEventStoreFor:v9];

  [(NEKEventStore *)self _calendarWrappersForChangeSet:v8 pipe:v7 store:v10 nekChangeType:1];
  [(NEKEventStore *)self _calendarWrappersForChangeSet:v8 pipe:v7 store:v10 nekChangeType:2];
}

- (void)_sendDefaultCalendarsIfNeededInPipe:(id)a3 setDefaultEventCalendar:(BOOL)a4 setDefaultTaskCalendar:(BOOL)a5 defaultEventCalendar:(id)a6 defaultTaskCalendar:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = 0;
  v16 = 0;
  if (v14 && !a5)
  {
    v17 = [(NEKEventStore *)self wrapperForCalendar:v14 nekChangeType:0 useAttributes:0];
    v15 = v17;
    if (v17)
    {
      [v17 setIsDefaultTaskCalendar:1];
      v16 = v14 == v13;
      if (v14 == v13)
      {
        [v15 setIsDefaultEventCalendar:1];
        v18 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Default reminder and event calendar are the same.", &v28, 2u);
        }
      }

      [v12 push:v15];
      v19 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = sub_10002CDF8([v14 title]);
        v22 = [v14 calendarIdentifier];
        v28 = 138543618;
        v29 = v21;
        v30 = 2114;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Marking default task calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  if (!v13 || a4 || v16)
  {
    v23 = v15;
  }

  else
  {
    v23 = [(NEKEventStore *)self wrapperForCalendar:v13 nekChangeType:0 useAttributes:0];

    if (v23)
    {
      [v23 setIsDefaultEventCalendar:1];
      [v12 push:v23];
      v24 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = sub_10002CDF8([v13 title]);
        v27 = [v13 calendarIdentifier];
        v28 = 138543618;
        v29 = v26;
        v30 = 2114;
        v31 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Marking default event calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
      }
    }
  }
}

- (void)ICSWrappersForChangeSet:(id)a3 pipe:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NEKEventStore *)self startMappingEntities];
  v8 = [NEKSyncWindow alloc];
  v9 = [(NEKStore *)self environment];
  v10 = [v9 tinyStore];
  v11 = [(NEKSyncWindow *)v8 initForFullSync:0 tinyStore:v10];

  v12 = [[NEKStoreRoller alloc] initWithEventStore:self cause:@"ICSWrappers:Inserts"];
  v13 = objc_opt_class();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001F588;
  v31[3] = &unk_1000B51B0;
  v32 = v12;
  v14 = v11;
  v33 = v14;
  v34 = self;
  v15 = v6;
  v35 = v15;
  v16 = v12;
  [v7 enumerateForChangeType:1 forEntitiesOfClass:v13 withBlock:v31];
  v17 = [NEKStoreRoller alloc];

  v18 = [(NEKStoreRoller *)v17 initWithEventStore:self cause:@"ICSWrappers:Updates"];
  v19 = objc_opt_class();
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10001F7B0;
  v26 = &unk_1000B51B0;
  v27 = v18;
  v28 = self;
  v29 = v14;
  v30 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v18;
  [v7 enumerateForChangeType:2 forEntitiesOfClass:v19 withBlock:&v23];

  [(NEKEventStore *)self endMappingEntities:v23];
}

- (void)deletionWrappersForChangeSet:(id)a3 skipSourceDeletions:(BOOL)a4 pipe:(id)a5
{
  v5 = a4;
  v8 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [a3 deletes];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    *&v11 = 138543362;
    v19 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (!v5 || [*(*(&v20 + 1) + 8 * i) entityType] != 6)
        {
          v16 = [NEKDeletionWrapper deletionWrapperForRecordID:v15 eventStore:self, v19];
          if (v16)
          {
            v17 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v25 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deletion wrapper: %@", buf, 0xCu);
            }

            if (([v8 push:v16] & 1) == 0)
            {

              goto LABEL_20;
            }
          }

          else if ([v15 entityType] == 2 || objc_msgSend(v15, "entityType") == 3)
          {
            v18 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v25 = v15;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not create deletion wrapper for recordID: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

LABEL_20:
}

- (void)deletionWrappersForSourceAggregator:(id)a3 pipe:(id)a4
{
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 deletedSourcesIDs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [NEKDeletionWrapper deletionWrapperForSourceID:*(*(&v15 + 1) + 8 * i), v14];
        if (v12)
        {
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deletion wrapper for source: %@", buf, 0xCu);
          }

          if (![v5 push:v12])
          {

            goto LABEL_14;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)_identifierInRowMapping:(id)a3
{
  v4 = [a3 objectID];
  if (v4)
  {
    v5 = [(NEKEventStore *)self recordMap];
    v6 = [v5 identifierForRecordID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)identifierInRowMappingForEventOrTask:(id)a3
{
  v4 = a3;
  v5 = [(NEKEventStore *)self _identifierInRowMapping:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [v5 componentsSeparatedByString:@"::"];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];

      v5 = v7;
    }
  }

  return v5;
}

- (id)calendarIdentifierInRowMappingForEventOrTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(NEKEventStore *)self _identifierInRowMapping:v4];
    v6 = [v5 componentsSeparatedByString:@"::"];
    if ([v6 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)identifierInRowMappingForRecordIDRef:(id)a3
{
  v4 = a3;
  v5 = [(NEKEventStore *)self recordMap];
  v6 = [v5 identifierForRecordID:v4];

  if ([v4 entityType] == 2 || objc_msgSend(v4, "entityType") == 3)
  {
    v7 = [v6 componentsSeparatedByString:@"::"];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];

      v6 = v8;
    }
  }

  return v6;
}

- (id)calendarIdentifierInRowMappingForRecordIDRef:(id)a3
{
  v4 = a3;
  if ([v4 entityType] == 2 || objc_msgSend(v4, "entityType") == 3)
  {
    v5 = [(NEKEventStore *)self recordMap];
    v6 = [v5 identifierForRecordID:v4];

    v7 = [v6 componentsSeparatedByString:@"::"];
    if ([v7 count] < 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateRowMappingForEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v14;
      v6 = [v5 location];
      v7 = [v5 title];
      v8 = [v5 startDate];

      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v10 = 0.0;
    }

    v11 = [v14 objectID];
    if (v11)
    {
      v12 = [v14 eks_compoundIdentifier];
      v13 = [(NEKEventStore *)self recordMap];
      [v13 setIdentifier:v12 masterRowID:-1 summary:v7 location:v6 startTime:v11 forRecordID:v10];
    }

    v4 = v14;
  }
}

- (BOOL)hasRowMappingForEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  if (v5)
  {
    v6 = [v4 eks_compoundIdentifier];
    v7 = [(NEKEventStore *)self recordMap];
    v8 = [v7 isIdentifierPresent:v6 forRecordID:v5];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v10 = [(NEKEventStore *)self recordMap];
      v11 = sub_1000624F8(v4);
      v9 = [v10 isIdentifierPresent:v11 forRecordID:v5];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeIdentifierForDeletedEntity:(id)a3
{
  v4 = [a3 objectID];
  if (v4)
  {
    v6 = v4;
    v5 = [(NEKEventStore *)self recordMap];
    [v5 deleteIdentifierForRecordID:v6];

    v4 = v6;
  }
}

- (void)removeIdentifiersForDeletedRecordIDs:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(NEKEventStore *)self recordMap];
        [v10 deleteIdentifierForRecordID:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_commitPendingRecordMapChanges
{
  os_unfair_lock_lock(&self->_createdEntitiesLock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_createdEntities;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NEKEventStore *)self updateRowMappingForEntity:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_createdEntities removeAllObjects];
  os_unfair_lock_unlock(&self->_createdEntitiesLock);
}

- (void)sweepSeenMap
{
  v2 = [(NEKEventStore *)self seenMap];
  [v2 sweep];
}

- (void)_didCreateEntity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_createdEntitiesLock);
  [(NSMutableArray *)self->_createdEntities addObject:v4];

  os_unfair_lock_unlock(&self->_createdEntitiesLock);
}

- (void)_deleteSourceWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 sourceWithIdentifier:v6];
  if (v8)
  {
    v11 = 0;
    [v7 removeSource:v8 commit:0 error:&v11];
    v9 = v11;
    v10 = *(qword_1000D18A8 + 8);
    if (v9)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070A50();
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted source with identifier %{public}@", buf, 0xCu);
      }

      [(NEKEventStore *)self saveEventStore:v7];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070AB8();
  }
}

- (void)_deleteCalendarWithIdentifier:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 calendarWithIdentifier:v6];
  if (v8)
  {
    v11 = 0;
    [v7 removeCalendar:v8 commit:0 error:&v11];
    v9 = v11;
    v10 = *(qword_1000D18A8 + 8);
    if (v9)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070B20();
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted calendar with identifier %{public}@", buf, 0xCu);
      }

      [(NEKEventStore *)self saveEventStore:v7];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070B8C();
  }
}

- (void)_deleteAndLogEvent:(id)a3 identifier:(id)a4 store:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectID];
  if (([v7 hasRecurrenceRules] & 1) != 0 || objc_msgSend(v7, "isPhantom"))
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting event (span future) with identifier %{public}@, recordID %{public}@", buf, 0x16u);
    }

    v20 = 0;
    v12 = &v20;
    v13 = &v20;
    v14 = v9;
    v15 = v7;
    v16 = 1;
  }

  else
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deleting event (span single) with identifier %{public}@, recordID %{public}@", buf, 0x16u);
    }

    v19 = 0;
    v12 = &v19;
    v13 = &v19;
    v14 = v9;
    v15 = v7;
    v16 = 0;
  }

  [v14 removeEvent:v15 span:v16 error:{v13, v19, v20}];
  v18 = *v12;
  if (v18 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070BF4();
  }
}

- (void)_deleteEventWithIdentifier:(id)a3 calendarIdentifier:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && ([v10 calendarWithIdentifier:v9], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting event with identifier %{public}@, from calendar with identifier %{public}@", &v19, 0x16u);
    }

    v15 = [v11 calendarItemsWithUniqueIdentifier:v8 inCalendar:v13];
  }

  else
  {
    v16 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting event with identifier %{public}@, from any calendar, old mapping didn't send calendar to delete from so falling back to old code", &v19, 0xCu);
    }

    v15 = [v11 calendarItemsWithUniqueIdentifier:v8 inCalendar:0];
  }

  if ([v15 count] == 1)
  {
    v17 = [v15 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NEKEventStore *)self _deleteAndLogEvent:v17 identifier:v8 store:v11];
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070C5C();
    }
  }

  else
  {
    v18 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No event exists for %{public}@", &v19, 0xCu);
    }
  }
}

- (void)_deleteReminderWithIdentifier:(id)a3 calendarIdentifier:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [v10 calendarWithIdentifier:v9];
    v13 = v12;
    if (v12)
    {
      v22 = v12;
      v14 = [NSArray arrayWithObjects:&v22 count:1];
      v15 = [v11 remindersWithExternalIdentifier:v8 inCalendars:v14];

      if (v15 && [v15 count])
      {
        v16 = [v15 objectAtIndexedSubscript:0];

        if (v16)
        {
          v19 = 0;
          [v11 removeReminder:v16 commit:0 error:&v19];
          v17 = v19;
          if (v17 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
          {
            sub_100070CC4();
          }

          [(NEKEventStore *)self saveEventStore:v11];

          goto LABEL_14;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No reminder exists for %{public}@", buf, 0xCu);
  }

LABEL_14:
}

- (BOOL)_updateSource:(id)a3 withSourceWrapper:(id)a4 store:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 attributes];
  v10 = [NEKSourceAttributes configureSource:v8 inStore:v7 withAttributes:v9];

  return v10;
}

- (id)_createSourceForWrapper:(id)a3 store:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [EKSource sourceWithEventStore:v5];
  v8 = [v6 attributes];

  [NEKSourceAttributes configureSource:v7 inStore:v5 withAttributes:v8];

  return v7;
}

- (BOOL)_updateCalendar:(id)a3 withCalendarWrapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 attributes];
  v9 = v8;
  if (v8 && [v8 didCalendarChange:v6])
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v7 attributes];
      v13 = [v12 title];
      v14 = sub_10002CDF8(v13);
      v15 = [v7 calendarIdentifier];
      v24 = 138543618;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating calendar with title %{public}@, identifier %{public}@", &v24, 0x16u);
    }

    v16 = [v6 eventStore];
    [NEKCalendarAttributes configureCalendar:v6 inDatabase:v16 withAttributes:v9];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [NEKSourceID alloc];
  v19 = [v6 source];
  v20 = [(NEKSourceID *)v18 initWithSource:v19];

  v21 = [v7 storeIdentifier];
  [(NEKSourceID *)v20 isEqualToNEKSourceID:v21];

  v22 = [v6 eventStore];
  LOBYTE(v21) = [(NEKEventStore *)self _checkAndSetDefaultCalendar:v6 calendarWrapper:v7 store:v22];

  [(NEKEventStore *)self _didCreateEntity:v6];
  return v17 | v21;
}

- (id)_createCalendarForWrapper:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 attributes];
  v9 = v8;
  if (!v8)
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v6 calendarIdentifier];
      v17 = [v6 storeIdentifier];
      v32 = 138543618;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asked to set a nonexistent calendar as the default. Ignoring. Calendar identifier = %{public}@, store identifier = %{public}@", &v32, 0x16u);
    }

    goto LABEL_25;
  }

  if ([v8 supportedEntityTypes] == 3)
  {
    v10 = [(NEKStore *)self environment];
    v11 = [v10 isReminderKitEnabled];

    if (v11)
    {
      v12 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136446210;
        v33 = "[NEKEventStore _createCalendarForWrapper:store:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path: mixed entity calendar is not supported", &v32, 0xCu);
      }

      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v19 = [EKCalendar calendarForEntityTypes:v13 eventStore:v7];
    goto LABEL_14;
  }

  if ([v9 supportedEntityTypes] != 1)
  {
    if ([v9 supportedEntityTypes] == 2)
    {
      v28 = [(NEKStore *)self environment];
      v29 = [v28 isReminderKitEnabled];

      if ((v29 & 1) == 0)
      {
        v18 = 1;
        goto LABEL_11;
      }

      v30 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136446210;
        v33 = "[NEKEventStore _createCalendarForWrapper:store:]";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path: creating reminders calendar is not supported", &v32, 0xCu);
      }
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v18 = 0;
LABEL_11:
  v19 = [EKCalendar calendarForEntityType:v18 eventStore:v7];
LABEL_14:
  v20 = v19;
  [NEKCalendarAttributes configureCalendar:v19 inDatabase:v7 withAttributes:v9];
  v21 = [v6 storeIdentifier];
  v22 = [NEKSourceID eventSourceForDatabase:v7 identifier:v21];

  if (!v22)
  {
    v23 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100070D2C(v23);
    }

    v22 = [v7 localSource];
  }

  [v20 setSource:v22];
  [(NEKEventStore *)self _didCreateEntity:v20];
  v24 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = sub_10002CDF8([v20 title]);
    v27 = [v20 calendarIdentifier];
    v32 = 138543618;
    v33 = v26;
    v34 = 2114;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Created calendar with title %{public}@, identifier %{public}@", &v32, 0x16u);
  }

LABEL_26:

  return v20;
}

- (id)_ICSLogTestForWrapper:(id)a3
{
  v3 = a3;
  v4 = [NSString alloc];
  v5 = [v3 ICSData];

  v6 = [v4 initWithData:v5 encoding:4];

  return v6;
}

- (void)_sendChangesIfAvailable
{
  v2 = [(NEKStore *)self changeObserver];
  [v2 _sendChangesIfAvailable];
}

@end