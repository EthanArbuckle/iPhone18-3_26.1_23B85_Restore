@interface NEKEventStore
- (BOOL)_shouldSendEvent:(id)event;
- (BOOL)_shouldSendReminder:(id)reminder;
- (BOOL)_updateCalendar:(id)calendar withCalendarWrapper:(id)wrapper;
- (BOOL)_updateSource:(id)source withSourceWrapper:(id)wrapper store:(id)store;
- (BOOL)hasRowMappingForEntity:(id)entity;
- (BOOL)shouldSendEntity:(id)entity;
- (BOOL)updateEvent:(id)event identifier:(id)identifier eventStore:(id)store occurrenceDate:(id)date participationStatus:(int64_t)status masterIdentifier:(id)masterIdentifier isMaster:(BOOL)master;
- (BOOL)updateMasterEvent:(id)event masterIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier masterParticipationStatus:(int64_t)status detachedEvents:(id)events;
- (NEKEventStore)initWithEnvironment:(id)environment;
- (NEKRecordMap)recordMap;
- (NEKSeenMap)seenMap;
- (id)_ICSLogTestForWrapper:(id)wrapper;
- (id)_createCalendarForWrapper:(id)wrapper store:(id)store;
- (id)_createSourceForWrapper:(id)wrapper store:(id)store;
- (id)_filterOutInvalidICSWrappers:(id)wrappers store:(id)store calendars:(id *)calendars;
- (id)_identifierInRowMapping:(id)mapping;
- (id)calendarIdentifierInRowMappingForEventOrTask:(id)task;
- (id)calendarIdentifierInRowMappingForRecordIDRef:(id)ref;
- (id)detacheesForIdentifierCreatingIfNeeded:(id)needed detachedEventMap:(id)map;
- (id)freshEventStoreFor:(id)for;
- (id)identifierInRowMappingForEventOrTask:(id)task;
- (id)identifierInRowMappingForRecordIDRef:(id)ref;
- (void)ICSWrappersForChangeSet:(id)set pipe:(id)pipe;
- (void)_commitPendingRecordMapChanges;
- (void)_deleteAndLogEvent:(id)event identifier:(id)identifier store:(id)store;
- (void)_deleteCalendarItemsInICSWrapperFromOldCalendar:(id)calendar store:(id)store;
- (void)_deleteCalendarItemsMovedToCalendar:(id)calendar inICSWrapper:(id)wrapper;
- (void)_deleteCalendarWithIdentifier:(id)identifier store:(id)store;
- (void)_deleteDetachedCalendarItemsFromOldCalendar:(id)calendar deletedEvents:(id)events;
- (void)_deleteEventWithIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier store:(id)store;
- (void)_deleteReminderWithIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier store:(id)store;
- (void)_deleteSourceWithIdentifier:(id)identifier store:(id)store;
- (void)_didCreateEntity:(id)entity;
- (void)_processArrayOfArrayOfICSWrappers:(id)wrappers batchWrappers:(id)batchWrappers session:(id)session;
- (void)_processUpdateFromWatch:(id)watch calendar:(id)calendar store:(id)store;
- (void)_processUpdateWithICS:(id)s store:(id)store calendar:(id)calendar resultWrappers:(id)wrappers resultCalendars:(id)calendars;
- (void)_pushSource:(id)source wrapper:(id)wrapper intoPipe:(id)pipe;
- (void)_removeIdentifierForDeletedEntity:(id)entity;
- (void)_sendChangesIfAvailable;
- (void)_sendDefaultCalendarsIfNeededInPipe:(id)pipe setDefaultEventCalendar:(BOOL)calendar setDefaultTaskCalendar:(BOOL)taskCalendar defaultEventCalendar:(id)eventCalendar defaultTaskCalendar:(id)defaultTaskCalendar;
- (void)addAttendeeEvents:(id)events;
- (void)applySidePropertiesToEntity:(id)entity withWrapper:(id)wrapper session:(id)session;
- (void)calendarWrappersForChangeSet:(id)set pipe:(id)pipe;
- (void)deleteItem:(id)item store:(id)store;
- (void)deleteItemWithIdentifier:(id)identifier store:(id)store;
- (void)deletionWrappersForChangeSet:(id)set skipSourceDeletions:(BOOL)deletions pipe:(id)pipe;
- (void)deletionWrappersForSourceAggregator:(id)aggregator pipe:(id)pipe;
- (void)endMappingEntities;
- (void)getDefaultTaskCalendar:(id *)calendar defaultEventCalendar:(id *)eventCalendar store:(id)store;
- (void)handleCalendarEventWithUniqueIdentifierFromGizmo:(id)gizmo calendar:(id)calendar wrapper:(id)wrapper detachedEventMap:(id)map;
- (void)handleCalendarTaskWithUniqueIdentifierFromGizmo:(id)gizmo calendar:(id)calendar wrapper:(id)wrapper;
- (void)handleNewEntity:(id)entity withWrapper:(id)wrapper session:(id)session;
- (void)handleUpdatedItemFromGizmo:(id)gizmo type:(int64_t)type withWrapper:(id)wrapper identifier:(id)identifier;
- (void)performUpdateWithICSWrappers:(id)wrappers store:(id)store session:(id)session;
- (void)purgeRecordMap;
- (void)removeIdentifiersForDeletedRecordIDs:(id)ds;
- (void)saveEventStore:(id)store;
- (void)startMappingEntities;
- (void)storeWrappersForSourceAggregator:(id)aggregator pipe:(id)pipe;
- (void)sweepSeenMap;
- (void)updateCalendar:(id)calendar store:(id)store;
- (void)updateICS:(id)s store:(id)store session:(id)session;
- (void)updateInvitationStatusForCalendarItem:(id)item identifier:(id)identifier withWrapper:(id)wrapper session:(id)session;
- (void)updateRowMappingForEntity:(id)entity;
- (void)updateSelfAttendeeForCalendarItem:(id)item identifier:(id)identifier withWrapper:(id)wrapper;
- (void)updateSource:(id)source store:(id)store;
@end

@implementation NEKEventStore

- (NEKEventStore)initWithEnvironment:(id)environment
{
  v14.receiver = self;
  v14.super_class = NEKEventStore;
  v3 = [(NEKStore *)&v14 initWithEnvironment:environment];
  if (v3)
  {
    v4 = sub_100004B98("com.apple.eventkitsync.nekeventstore");
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = v3->_queue;
    environment = [(NEKStore *)v3 environment];
    v8 = [NEKChangeObserver changeObserverForEventWithQueue:v6 databaseController:v3 environment:environment];
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
  environment = [(NEKStore *)self environment];
  recordMap = [environment recordMap];

  return recordMap;
}

- (NEKSeenMap)seenMap
{
  environment = [(NEKStore *)self environment];
  seenMap = [environment seenMap];

  return seenMap;
}

- (id)freshEventStoreFor:(id)for
{
  forCopy = for;
  v5 = [EKChangeTrackingClientId alloc];
  environment = [(NEKStore *)self environment];
  clientName = [environment clientName];
  v8 = [v5 initWithCustomClientId:clientName];

  v9 = [EKEventStore eks_eventOnlyStoreIgnoringExternalChangesFor:forCopy withClientId:v8];

  return v9;
}

- (void)saveEventStore:(id)store
{
  storeCopy = store;
  v5 = os_transaction_create();
  v6 = objc_alloc_init(NDTPerf);
  kdebug_trace();
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  [storeCopy commit:&v12];
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
  recordMap = [(NEKEventStore *)self recordMap];
  [recordMap removeAllRecords];
}

- (void)getDefaultTaskCalendar:(id *)calendar defaultEventCalendar:(id *)eventCalendar store:(id)store
{
  if (calendar)
  {
    storeCopy = store;
    defaultCalendarForNewReminders = [storeCopy defaultCalendarForNewReminders];
    environment = [(NEKStore *)self environment];
    isReminderKitEnabled = [environment isReminderKitEnabled];

    if (isReminderKitEnabled)
    {
      v12 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10006F908(v12);
      }

      defaultCalendarForNewReminders = 0;
    }

    defaultCalendarForNewEvents = [storeCopy defaultCalendarForNewEvents];
    defaultLocalCalendar = [storeCopy defaultLocalCalendar];

    if (defaultLocalCalendar)
    {
      if ([defaultCalendarForNewReminders isEqual:defaultLocalCalendar])
      {

        defaultCalendarForNewReminders = 0;
      }

      if ([defaultCalendarForNewEvents isEqual:defaultLocalCalendar])
      {

        defaultCalendarForNewEvents = 0;
      }
    }

    v15 = defaultCalendarForNewReminders;
    *calendar = defaultCalendarForNewReminders;
    v16 = defaultCalendarForNewEvents;
    *eventCalendar = defaultCalendarForNewEvents;
  }
}

- (BOOL)_shouldSendEvent:(id)event
{
  eventCopy = event;
  uniqueId = [eventCopy uniqueId];
  v6 = [uniqueId copy];

  if (!v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006FB14();
    }

    goto LABEL_8;
  }

  if (![eventCopy isPhantom])
  {
    if ([eventCopy isDetached])
    {
      originalItem = [eventCopy originalItem];
      v12 = originalItem;
      if (originalItem)
      {
        uniqueId2 = [originalItem uniqueId];
        v14 = [uniqueId2 copy];

        v15 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          eks_debugDesc = [eventCopy eks_debugDesc];
          v34 = 138543874;
          v35 = eks_debugDesc;
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
          eks_debugDesc2 = [eventCopy eks_debugDesc];
          v34 = 138543618;
          v35 = eks_debugDesc2;
          v36 = 2114;
          v37 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_shouldSendEvent: Entity with summary %{public}@ identifier %{public}@ is detached, but can't get master, so using the actual detached event", &v34, 0x16u);
        }

        v14 = v6;
      }

      v6 = v14;
    }

    calendar = [eventCopy calendar];
    v22 = calendar;
    if (calendar)
    {
      calendarIdentifier = [calendar calendarIdentifier];
      v24 = [calendarIdentifier copy];

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
              eks_debugDesc3 = [eventCopy eks_debugDesc];
              v34 = 138543874;
              v35 = eks_debugDesc3;
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
            eks_debugDesc4 = [eventCopy eks_debugDesc];
            v34 = 138543874;
            v35 = eks_debugDesc4;
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
    eks_debugDesc5 = [eventCopy eks_debugDesc];
    v34 = 138543618;
    v35 = eks_debugDesc5;
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Entity with summary %{public}@ identifier %{public}@ is a phantom master.  Ignoring.", &v34, 0x16u);
  }

LABEL_8:
  v10 = 0;
LABEL_40:

  return v10;
}

- (BOOL)_shouldSendReminder:(id)reminder
{
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    eks_debugDesc = [reminder eks_debugDesc];
    v8 = 138543362;
    v9 = eks_debugDesc;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selecting reminder %{public}@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)shouldSendEntity:(id)entity
{
  entityCopy = entity;
  objectID = [entityCopy objectID];
  entityType = [objectID entityType];

  if (entityType == 2)
  {
    v7 = [(NEKEventStore *)self _shouldSendEvent:entityCopy];
  }

  else
  {
    v7 = [(NEKEventStore *)self _shouldSendReminder:entityCopy];
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

- (void)updateSource:(id)source store:(id)store
{
  sourceCopy = source;
  storeCopy = store;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018044;
  block[3] = &unk_1000B4D58;
  v12 = sourceCopy;
  v13 = storeCopy;
  selfCopy = self;
  v9 = storeCopy;
  v10 = sourceCopy;
  dispatch_sync(queue, block);
}

- (void)updateCalendar:(id)calendar store:(id)store
{
  calendarCopy = calendar;
  storeCopy = store;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100018888;
  v19[4] = sub_100018898;
  v20 = [storeCopy calendarWithIdentifier:calendarIdentifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188A0;
  block[3] = &unk_1000B5048;
  v17 = calendarIdentifier;
  v18 = v19;
  v14 = calendarCopy;
  selfCopy = self;
  v16 = storeCopy;
  v10 = calendarIdentifier;
  v11 = storeCopy;
  v12 = calendarCopy;
  dispatch_sync(queue, block);

  _Block_object_dispose(v19, 8);
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
  block[2] = sub_100018C10;
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
  v13[2] = sub_100018D10;
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
      [(NEKEventStore *)self _deleteSourceWithIdentifier:objectIdentifier store:storeCopy];
    }

    else if (type == 2)
    {
      [(NEKEventStore *)self _deleteCalendarWithIdentifier:objectIdentifier store:storeCopy];
    }

    goto LABEL_14;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      goto LABEL_14;
    }

    calendarIdentifier = [itemCopy calendarIdentifier];
    [(NEKEventStore *)self _deleteEventWithIdentifier:objectIdentifier calendarIdentifier:calendarIdentifier store:storeCopy];
LABEL_13:

    goto LABEL_14;
  }

  environment = [(NEKStore *)self environment];
  isReminderKitEnabled = [environment isReminderKitEnabled];

  if ((isReminderKitEnabled & 1) == 0)
  {
    calendarIdentifier = [itemCopy calendarIdentifier];
    [(NEKEventStore *)self _deleteReminderWithIdentifier:objectIdentifier calendarIdentifier:calendarIdentifier store:storeCopy];
    goto LABEL_13;
  }

  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [itemCopy identifier];
    v16 = 136446466;
    v17 = "[NEKEventStore deleteItem:store:]";
    v18 = 2114;
    v19 = identifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", &v16, 0x16u);
  }

LABEL_14:
}

- (void)handleNewEntity:(id)entity withWrapper:(id)wrapper session:(id)session
{
  entityCopy = entity;
  wrapperCopy = wrapper;
  sessionCopy = session;
  objectID = [entityCopy objectID];
  if ([objectID entityType] != 2)
  {

    goto LABEL_6;
  }

  isPhantom = [entityCopy isPhantom];

  if (!isPhantom)
  {
LABEL_6:
    [(NEKEventStore *)self applySidePropertiesToEntity:entityCopy withWrapper:wrapperCopy session:sessionCopy];
    goto LABEL_7;
  }

  v13 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    uniqueId = [entityCopy uniqueId];
    v18 = 136446466;
    v19 = "[NEKEventStore handleNewEntity:withWrapper:session:]";
    v20 = 2114;
    v21 = uniqueId;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring sidecar data for phantom master with identifier: [%{public}@]", &v18, 0x16u);
  }

LABEL_7:
  objectID2 = [entityCopy objectID];
  v17 = objectID2;
  if (objectID2)
  {
    if ([objectID2 isTemporary])
    {
      [(NEKEventStore *)self _didCreateEntity:entityCopy];
    }

    else
    {
      [(NEKEventStore *)self updateRowMappingForEntity:entityCopy];
    }
  }
}

- (void)handleUpdatedItemFromGizmo:(id)gizmo type:(int64_t)type withWrapper:(id)wrapper identifier:(id)identifier
{
  gizmoCopy = gizmo;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  eventStore = [gizmoCopy eventStore];
  if (type == 3)
  {
    environment = [(NEKStore *)self environment];
    isReminderKitEnabled = [environment isReminderKitEnabled];

    if ((isReminderKitEnabled & 1) == 0)
    {
      v14 = gizmoCopy;
      v26 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = sub_10002CDF8([v14 title]);
        *buf = 138543618;
        *v36 = v28;
        *&v36[8] = 2114;
        *&v36[10] = identifierCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Handling updated task from gizmo with summary %{public}@ and identifier %{public}@", buf, 0x16u);
      }

      if (![wrapperCopy isTaskCompleted])
      {
        goto LABEL_30;
      }

      [wrapperCopy taskCompletionDate];
      selfAttendee = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v14 setCompletionDate:selfAttendee];
      v29 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *v36 = identifierCopy;
        *&v36[8] = 2114;
        *&v36[10] = selfAttendee;
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
      *&v36[10] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", buf, 0x16u);
    }
  }

  else if (type == 2)
  {
    v14 = gizmoCopy;
    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      eks_debugDesc = [v14 eks_debugDesc];
      *buf = 138543618;
      *v36 = eks_debugDesc;
      *&v36[8] = 2114;
      *&v36[10] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling updated event from gizmo with summary %{public}@ and identifier %{public}@", buf, 0x16u);
    }

    selfAttendee = [v14 selfAttendee];
    if (!selfAttendee)
    {
      goto LABEL_29;
    }

    v19 = [wrapperCopy attendeeStatusForIdentifier:identifierCopy];
    if (v19 != [selfAttendee participantStatus])
    {
      [v14 setParticipationStatus:v19];
      v30 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v36 = v19;
        *&v36[4] = 2114;
        *&v36[6] = identifierCopy;
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
        *v36 = identifierCopy;
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
      [eventStore saveEvent:v14 span:v33 commit:1 error:&v34];
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
      v22 = [wrapperCopy attendeeStatusForIdentifier:identifierCopy];
      *buf = 67109378;
      *v36 = v22;
      *&v36[4] = 2114;
      *&v36[6] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No need to set attendee status, synced value is the same as existing value: 0x%08x for event with identifier %{public}@", buf, 0x12u);
LABEL_28:
    }

LABEL_29:

LABEL_30:
  }
}

- (BOOL)updateEvent:(id)event identifier:(id)identifier eventStore:(id)store occurrenceDate:(id)date participationStatus:(int64_t)status masterIdentifier:(id)masterIdentifier isMaster:(BOOL)master
{
  eventCopy = event;
  identifierCopy = identifier;
  storeCopy = store;
  dateCopy = date;
  masterIdentifierCopy = masterIdentifier;
  if ([eventCopy participationStatus] == status)
  {
    v19 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      externalID = [eventCopy externalID];
      *buf = 138543618;
      v33 = identifierCopy;
      v34 = 2114;
      v35 = externalID;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Participant status did not change. No need to save event with identifier %{public}@, externalID is %{public}@", buf, 0x16u);
    }

    LOBYTE(v22) = 1;
  }

  else
  {
    [eventCopy setParticipationStatus:status];
    if (status >= 2)
    {
      [eventCopy setInvitationStatus:0];
      v23 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Set invitation status to none for event with identifier %{public}@", buf, 0xCu);
      }
    }

    v24 = objc_autoreleasePoolPush();
    if (master)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v31 = 0;
    v22 = [storeCopy saveEvent:eventCopy span:v25 commit:0 error:&v31];
    v26 = v31;
    objc_autoreleasePoolPop(v24);
    v27 = *(qword_1000D18A8 + 8);
    if (v22)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
        externalID2 = [eventCopy externalID];
        *buf = 138543618;
        v33 = identifierCopy;
        v34 = 2114;
        v35 = externalID2;
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

- (BOOL)updateMasterEvent:(id)event masterIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier masterParticipationStatus:(int64_t)status detachedEvents:(id)events
{
  eventCopy = event;
  identifierCopy = identifier;
  calendarIdentifierCopy = calendarIdentifier;
  eventsCopy = events;
  v14 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = sub_10002CDF8([eventCopy title]);
    *buf = 67109634;
    *v101 = status;
    *&v101[4] = 2114;
    *&v101[6] = v16;
    *&v101[14] = 2114;
    *&v101[16] = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handling updated master event from gizmo with participationStatus %d, summary %{public}@, and identifier %{public}@", buf, 0x1Cu);
  }

  objectID = [eventCopy objectID];
  rowID = [objectID rowID];

  if (rowID == -1)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070038();
    }

    v67 = 0;
  }

  else
  {
    v73 = eventCopy;
    v19 = [EKEventStore eks_eventOnlyStoreFor:@"updateMasterEvent:blah..."];
    v78 = [NSNumber numberWithInt:rowID];
    v74 = eventsCopy;
    v83 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [eventsCopy count]);
    v81 = v19;
    v77 = identifierCopy;
    [v19 calendarItemsWithExternalIdentifier:identifierCopy];
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
          eks_debugDesc = [v24 eks_debugDesc];
          calendarItemExternalIdentifier = [v24 calendarItemExternalIdentifier];
          *buf = 138543618;
          *v101 = eks_debugDesc;
          *&v101[8] = 2114;
          *&v101[10] = calendarItemExternalIdentifier;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Checking for calendar match for event %{public}@ with identifier %{public}@", buf, 0x16u);
        }

        calendar = [v24 calendar];
        v30 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          calendarIdentifier = [calendar calendarIdentifier];
          *buf = 138543618;
          *v101 = calendarIdentifierCopy;
          *&v101[8] = 2114;
          *&v101[10] = calendarIdentifier;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Checking for match on calendar, we want %{public}@, calendarIdentifier is %{public}@", buf, 0x16u);
        }

        calendarIdentifier2 = [calendar calendarIdentifier];
        v34 = [calendarIdentifier2 isEqualToString:calendarIdentifierCopy];

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
      identifierCopy = v77;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        eks_debugDesc2 = [v35 eks_debugDesc];
        *buf = 67109634;
        *v101 = status;
        *&v101[4] = 2114;
        *&v101[6] = eks_debugDesc2;
        *&v101[14] = 2114;
        *&v101[16] = v77;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Handling master event from gizmo with participation status %d, summary %{public}@, and identifier %{public}@", buf, 0x1Cu);
      }

      startDate = [v73 startDate];
      LOBYTE(v70) = 1;
      [(NEKEventStore *)self updateEvent:v35 identifier:v77 eventStore:v81 occurrenceDate:startDate participationStatus:status masterIdentifier:v77 isMaster:v70];

      v72 = v35;
      detachedItems = [v35 detachedItems];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v41 = [detachedItems countByEnumeratingWithState:&v89 objects:v98 count:16];
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
              objc_enumerationMutation(detachedItems);
            }

            v45 = *(*(&v89 + 1) + 8 * i);
            originalStartDate = [v45 originalStartDate];
            [v83 setObject:v45 forKey:originalStartDate];
          }

          v42 = [detachedItems countByEnumeratingWithState:&v89 objects:v98 count:16];
        }

        while (v42);
      }

      v47 = v74;
    }

    else
    {
LABEL_16:

LABEL_28:
      identifierCopy = v77;
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
          v53 = [NSString stringWithFormat:@"%@%@%llu", identifierCopy, @"/RID=", v52];
          v54 = [v48 objectForKeyedSubscript:v50];
          v55 = [v83 objectForKey:v51];
          persistentObject = [v55 persistentObject];

          v57 = *(qword_1000D18A8 + 8);
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
          if (persistentObject)
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Using existing detached event", buf, 2u);
            }

            v59 = [[EKEvent alloc] initWithPersistentObject:persistentObject occurrenceDate:0];
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
              intValue = [v54 intValue];
              eks_debugDesc3 = [v60 eks_debugDesc];
              *buf = 67109634;
              *v101 = intValue;
              *&v101[4] = 2114;
              *&v101[6] = eks_debugDesc3;
              *&v101[14] = 2114;
              *&v101[16] = v53;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Handling updated detached event from gizmo with participation status %d, summary %{public}@, and identifier %{public}@.", buf, 0x1Cu);

              identifierCopy = v77;
            }

            LOBYTE(v71) = 0;
            -[NEKEventStore updateEvent:identifier:eventStore:occurrenceDate:participationStatus:masterIdentifier:isMaster:](self, "updateEvent:identifier:eventStore:occurrenceDate:participationStatus:masterIdentifier:isMaster:", v60, v53, v81, v51, [v54 intValue], identifierCopy, v71);
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v65 = v61;
            intValue2 = [v54 intValue];
            *buf = 138543618;
            *v101 = v53;
            *&v101[8] = 1024;
            *&v101[10] = intValue2;
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

    eventCopy = v73;
    eventsCopy = v74;
  }

  return v67;
}

- (id)detacheesForIdentifierCreatingIfNeeded:(id)needed detachedEventMap:(id)map
{
  neededCopy = needed;
  mapCopy = map;
  v7 = [mapCopy objectForKeyedSubscript:neededCopy];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [mapCopy setObject:v7 forKey:neededCopy];
  }

  return v7;
}

- (void)handleCalendarEventWithUniqueIdentifierFromGizmo:(id)gizmo calendar:(id)calendar wrapper:(id)wrapper detachedEventMap:(id)map
{
  gizmoCopy = gizmo;
  calendarCopy = calendar;
  wrapperCopy = wrapper;
  mapCopy = map;
  eventStore = [calendarCopy eventStore];
  v15 = [eventStore eventWithUniqueId:gizmoCopy];
  v16 = v15;
  if (v15)
  {
    calendar = [v15 calendar];
    v18 = [calendar isEqual:calendarCopy];

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
          v25 = [(NEKEventStore *)self detacheesForIdentifierCreatingIfNeeded:gizmoCopy detachedEventMap:mapCopy];
        }
      }

      else
      {
        [(NEKEventStore *)self handleUpdatedItemFromGizmo:v16 type:2 withWrapper:wrapperCopy identifier:gizmoCopy];
      }

      goto LABEL_20;
    }
  }

  v19 = [gizmoCopy componentsSeparatedByString:@"/RID="];
  if ([v19 count] == 2)
  {
    selfCopy = self;
    v32 = mapCopy;
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v19 objectAtIndexedSubscript:1];
    v33 = calendarCopy;
    v22 = [NSArray arrayWithObjects:&v33 count:1];
    v23 = [eventStore eventsWithExternalIdentifier:v20 inCalendars:v22];

    if ([v23 count])
    {
      v24 = [v23 objectAtIndexedSubscript:0];
      if ([v24 isPhantom])
      {
        [(NEKEventStore *)selfCopy handleUpdatedItemFromGizmo:v16 type:2 withWrapper:wrapperCopy identifier:gizmoCopy];
      }

      else
      {
        v29 = v20;
        [(NEKEventStore *)selfCopy detacheesForIdentifierCreatingIfNeeded:v20 detachedEventMap:v32];
        v27 = v31 = v24;
        v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [wrapperCopy attendeeStatusForIdentifier:gizmoCopy]);
        [v27 setObject:v28 forKey:v21];

        v20 = v29;
        v24 = v31;
      }

      mapCopy = v32;
      goto LABEL_20;
    }

    mapCopy = v32;
  }

  else
  {
  }

  v26 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100070108(gizmoCopy, v26, wrapperCopy);
  }

LABEL_20:
}

- (void)handleCalendarTaskWithUniqueIdentifierFromGizmo:(id)gizmo calendar:(id)calendar wrapper:(id)wrapper
{
  gizmoCopy = gizmo;
  calendarCopy = calendar;
  wrapperCopy = wrapper;
  environment = [(NEKStore *)self environment];
  isReminderKitEnabled = [environment isReminderKitEnabled];

  if (isReminderKitEnabled)
  {
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446466;
      v20 = "[NEKEventStore handleCalendarTaskWithUniqueIdentifierFromGizmo:calendar:wrapper:]";
      v21 = 2114;
      v22 = gizmoCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", &v19, 0x16u);
    }
  }

  else
  {
    eventStore = [calendarCopy eventStore];
    v23 = calendarCopy;
    v15 = [NSArray arrayWithObjects:&v23 count:1];
    v16 = [eventStore remindersWithExternalIdentifier:gizmoCopy inCalendars:v15];
    v17 = [v16 objectAtIndexedSubscript:0];

    if (v17)
    {
      [(NEKEventStore *)self handleUpdatedItemFromGizmo:v17 type:3 withWrapper:wrapperCopy identifier:gizmoCopy];
    }

    else
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000701CC(gizmoCopy, v18, wrapperCopy);
      }
    }
  }
}

- (id)_filterOutInvalidICSWrappers:(id)wrappers store:(id)store calendars:(id *)calendars
{
  wrappersCopy = wrappers;
  storeCopy = store;
  v29 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(wrappersCopy, "count")}];
  v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(wrappersCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = wrappersCopy;
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

        iCSData = [v12 ICSData];

        if (iCSData)
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
            lzfseICSData = [v12 lzfseICSData];
            v20 = [lzfseICSData base64EncodedStringWithOptions:0];
            *buf = 138412290;
            v39 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "recv LZFSE: <<!%@!>>", buf, 0xCu);
          }
        }

        calendarIdentifier = [v12 calendarIdentifier];
        v22 = [NEKCalendarID calendarInStore:storeCopy withNEKCalendarID:calendarIdentifier];

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

  if (calendars)
  {
    *calendars = [v29 copy];
  }

  v24 = [v28 copy];

  return v24;
}

- (void)_processUpdateFromWatch:(id)watch calendar:(id)calendar store:(id)store
{
  watchCopy = watch;
  calendarCopy = calendar;
  storeCopy = store;
  v9 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    objectIdentifier = [watchCopy objectIdentifier];
    *buf = 138543362;
    v43 = objectIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Processing update from the watch, main identifier is %{public}@", buf, 0xCu);
  }

  v12 = +[NSMutableDictionary dictionary];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001B088;
  v37[3] = &unk_1000B50C0;
  v38 = watchCopy;
  selfCopy = self;
  v30 = calendarCopy;
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
        v21 = [storeCopy calendarItemsWithExternalIdentifier:v18 inCalendars:v20];
        firstObject = [v21 firstObject];

        if (firstObject)
        {
          if ([v19 count])
          {
            calendarIdentifier = [v28 calendarIdentifier];
            identifier = [calendarIdentifier identifier];
            v16 = v26;
            -[NEKEventStore updateMasterEvent:masterIdentifier:calendarIdentifier:masterParticipationStatus:detachedEvents:](self, "updateMasterEvent:masterIdentifier:calendarIdentifier:masterParticipationStatus:detachedEvents:", firstObject, v18, identifier, [v28 attendeeStatusForIdentifier:v18], v19);
LABEL_11:

            goto LABEL_15;
          }

          [(NEKEventStore *)self handleUpdatedItemFromGizmo:firstObject type:2 withWrapper:v28 identifier:v18];
        }

        else
        {
          v25 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            calendarIdentifier = v25;
            identifier = [v28 calendarIdentifier];
            *buf = 138543618;
            v43 = v18;
            v44 = 2114;
            v45 = identifier;
            _os_log_error_impl(&_mh_execute_header, calendarIdentifier, OS_LOG_TYPE_ERROR, "No calendar item found for main event in recurring series with identifier %{public}@ in calendar with identifier %{public}@", buf, 0x16u);
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

- (void)_processUpdateWithICS:(id)s store:(id)store calendar:(id)calendar resultWrappers:(id)wrappers resultCalendars:(id)calendars
{
  sCopy = s;
  storeCopy = store;
  calendarCopy = calendar;
  wrappersCopy = wrappers;
  calendarsCopy = calendars;
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    nuevoIdentifier = [sCopy nuevoIdentifier];
    *buf = 138543362;
    v78 = nuevoIdentifier;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Processing add/update from companion, or a new record from the watch, id = %{public}@", buf, 0xCu);
  }

  oldIdentifier = [sCopy oldIdentifier];
  if (oldIdentifier)
  {
    v20 = oldIdentifier;
    nuevoIdentifier2 = [sCopy nuevoIdentifier];
    if (!nuevoIdentifier2)
    {
LABEL_23:

      goto LABEL_24;
    }

    v22 = nuevoIdentifier2;
    [sCopy oldIdentifier];
    v23 = v69 = self;
    [sCopy nuevoIdentifier];
    v24 = v70 = calendarsCopy;
    v25 = [v23 isEqualToString:v24];

    calendarsCopy = v70;
    self = v69;

    if ((v25 & 1) == 0)
    {
      v67 = wrappersCopy;
      v68 = calendarCopy;
      [storeCopy sources];
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
            oldIdentifier2 = [sCopy oldIdentifier];
            allCalendars = [v30 allCalendars];
            allObjects = [allCalendars allObjects];
            v35 = [storeCopy eventsWithExternalIdentifier:oldIdentifier2 inCalendars:allObjects];

            if (v35 && [v35 count])
            {
              v36 = [v35 objectAtIndexedSubscript:0];
              v72 = 0;
              [storeCopy removeEvent:v36 span:objc_msgSend(v36 error:{"isMasterOrDetachedOccurrence"), &v72}];
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
                oldIdentifier3 = [sCopy oldIdentifier];
                nuevoIdentifier3 = [sCopy nuevoIdentifier];
                *buf = 138543618;
                v78 = oldIdentifier3;
                v79 = 2114;
                v80 = nuevoIdentifier3;
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

      wrappersCopy = v67;
      calendarCopy = v68;
      self = v69;
      calendarsCopy = v70;
      goto LABEL_23;
    }
  }

LABEL_24:
  oldCalendarIdentifier = [sCopy oldCalendarIdentifier];
  if (!oldCalendarIdentifier)
  {
    goto LABEL_29;
  }

  v44 = oldCalendarIdentifier;
  calendarIdentifier = [sCopy calendarIdentifier];
  identifier = [calendarIdentifier identifier];

  if (identifier)
  {
    oldCalendarIdentifier2 = [sCopy oldCalendarIdentifier];
    calendarIdentifier2 = [sCopy calendarIdentifier];
    identifier2 = [calendarIdentifier2 identifier];
    v50 = [oldCalendarIdentifier2 isEqualToString:identifier2];

    v51 = *(qword_1000D18A8 + 8);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      if (v52)
      {
        v53 = v51;
        calendarIdentifier3 = [sCopy calendarIdentifier];
        identifier3 = [calendarIdentifier3 identifier];
        *buf = 138543362;
        v78 = identifier3;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Calendars match, so event didn't move: calendar id = %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v52)
      {
        v63 = v51;
        oldCalendarIdentifier3 = [sCopy oldCalendarIdentifier];
        calendarIdentifier4 = [sCopy calendarIdentifier];
        identifier4 = [calendarIdentifier4 identifier];
        *buf = 138543618;
        v78 = oldCalendarIdentifier3;
        v79 = 2114;
        v80 = identifier4;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Calendars don't match, so deleting from old calendar: old calendar id = %{public}@, current calendar id = %{public}@", buf, 0x16u);
      }

      [(NEKEventStore *)self _deleteCalendarItemsInICSWrapperFromOldCalendar:sCopy store:storeCopy];
    }
  }

  else
  {
LABEL_29:
    v56 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v56;
      title = [sCopy title];
      v59 = sub_10002CDF8(title);
      calendarIdentifier5 = [sCopy calendarIdentifier];
      [calendarIdentifier5 identifier];
      v62 = v61 = self;
      *buf = 138543618;
      v78 = v59;
      v79 = 2114;
      v80 = v62;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Got an update/add for event %{public}@, no old calendar id was sent, so this is from an old record map and falling back to old code to check and delete from any old calendar. The current calendar id = %{public}@", buf, 0x16u);

      self = v61;
    }

    [(NEKEventStore *)self _deleteCalendarItemsMovedToCalendar:calendarCopy inICSWrapper:sCopy];
  }

  [wrappersCopy addObject:sCopy];
  [calendarsCopy addObject:calendarCopy];
}

- (void)_processArrayOfArrayOfICSWrappers:(id)wrappers batchWrappers:(id)batchWrappers session:(id)session
{
  wrappersCopy = wrappers;
  batchWrappersCopy = batchWrappers;
  sessionCopy = session;
  v10 = wrappersCopy;
  v11 = sessionCopy;
  if ([wrappersCopy count])
  {
    v12 = 0;
    v13 = &qword_1000D18A8;
    v14 = &MKBDeviceUnlockedSinceBoot_ptr;
    v15 = &OBJC_IVAR___NDTLogFacility_os_log_facility;
    v43 = v10;
    do
    {
      v45 = objc_autoreleasePoolPush();
      v16 = [batchWrappersCopy objectAtIndex:v12];
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
                  eks_debugDesc = [v51 eks_debugDesc];
                  uniqueId = [v51 uniqueId];
                  *buf = 138543618;
                  v66 = eks_debugDesc;
                  v67 = 2114;
                  v68 = uniqueId;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "We have a recurring event %{public}@ and identifier %{public}@, checking to see if any detached events need attention", buf, 0x16u);
                }

                detachedItems = [v51 detachedItems];
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v55 = detachedItems;
                v29 = [detachedItems countByEnumeratingWithState:&v56 objects:v64 count:16];
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

- (void)performUpdateWithICSWrappers:(id)wrappers store:(id)store session:(id)session
{
  wrappersCopy = wrappers;
  storeCopy = store;
  sessionCopy = session;
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 67109120;
    LODWORD(v60) = [wrappersCopy count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "performUpdateWithICSWrappers received %d items", buf, 8u);
  }

  v58 = 0;
  v10 = [(NEKEventStore *)self _filterOutInvalidICSWrappers:wrappersCopy store:storeCopy calendars:&v58];
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
        iCSData = [v19 ICSData];
        if (iCSData)
        {

LABEL_11:
          [(NEKEventStore *)self _processUpdateWithICS:v19 store:storeCopy calendar:v21 resultWrappers:v13 resultCalendars:v47];
          goto LABEL_12;
        }

        lzfseICSData = [v19 lzfseICSData];

        if (lzfseICSData)
        {
          goto LABEL_11;
        }

        [(NEKEventStore *)self _processUpdateFromWatch:v19 calendar:v21 store:storeCopy];
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
        lzfseICSData2 = [v33 lzfseICSData];

        if (lzfseICSData2)
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

      v41 = [storeCopy importICSData:v25 intoCalendars:v47 options:v40];
      kdebug_trace();
      v42 = CFAbsoluteTimeGetCurrent();
      v43 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v60 = v42 - v39;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ICS Import: %fs #perf", buf, 0xCu);
      }

      [(NEKEventStore *)self _processArrayOfArrayOfICSWrappers:v41 batchWrappers:v26 session:sessionCopy];
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

- (void)_deleteDetachedCalendarItemsFromOldCalendar:(id)calendar deletedEvents:(id)events
{
  calendarCopy = calendar;
  if ([calendarCopy hasRecurrenceRules])
  {
    v6 = &qword_1000D18A8;
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = sub_10002CDF8([calendarCopy title]);
      uniqueId = [calendarCopy uniqueId];
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = uniqueId;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We have a recurring event with summary %{public}@ and identifier %{public}@, deleting all detached events too, since they have also moved calendars", buf, 0x16u);
    }

    [calendarCopy detachedItems];
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

          eventStore = [calendarCopy eventStore];
          v26 = 0;
          [eventStore removeEvent:v16 span:0 error:&v26];
          v23 = v26;

          [(NEKEventStore *)self _removeIdentifierForDeletedEntity:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }
  }
}

- (void)_deleteCalendarItemsInICSWrapperFromOldCalendar:(id)calendar store:(id)store
{
  calendarCopy = calendar;
  storeCopy = store;
  oldCalendarIdentifier = [calendarCopy oldCalendarIdentifier];
  if (oldCalendarIdentifier)
  {
    v9 = [storeCopy calendarWithIdentifier:oldCalendarIdentifier];
    if (v9)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001C658;
      v11[3] = &unk_1000B50E8;
      v12 = objc_alloc_init(NSMutableSet);
      v13 = oldCalendarIdentifier;
      v14 = calendarCopy;
      v15 = storeCopy;
      v16 = v9;
      selfCopy = self;
      v10 = v12;
      [v14 enumerateCalendarItemIdentifiersUsingBlock:v11];
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000704EC();
    }
  }
}

- (void)_deleteCalendarItemsMovedToCalendar:(id)calendar inICSWrapper:(id)wrapper
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CA40;
  v8[3] = &unk_1000B5110;
  calendarCopy = calendar;
  wrapperCopy = wrapper;
  selfCopy = self;
  v6 = wrapperCopy;
  v7 = calendarCopy;
  [v6 enumerateCalendarItemIdentifiersUsingBlock:v8];
}

- (void)applySidePropertiesToEntity:(id)entity withWrapper:(id)wrapper session:(id)session
{
  entityCopy = entity;
  wrapperCopy = wrapper;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = entityCopy;
    uniqueId = [v11 uniqueId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
      uniqueId2 = [v13 uniqueId];
      v15 = [wrapperCopy hasPropertiesForIdentifier:uniqueId2];

      if ((v15 & 1) == 0)
      {
        selfCopy = self;
        v51 = sessionCopy;
        startDateMap = [wrapperCopy startDateMap];
        startDate = [v13 startDate];
        v18 = [startDateMap objectForKeyedSubscript:startDate];
        if (v18)
        {
          v19 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            uniqueId3 = [v13 uniqueId];
            *buf = 138543618;
            *v54 = uniqueId3;
            *&v54[8] = 2114;
            *&v54[10] = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Changing event id from %{public}@ to %{public}@", buf, 0x16u);
          }

          [v13 setUniqueId:{v18, uniqueId3}];
          v21 = v18;

          uniqueId = v21;
        }

        self = selfCopy;
        sessionCopy = v51;
      }
    }

    [(NEKEventStore *)self updateSelfAttendeeForCalendarItem:v11 identifier:uniqueId withWrapper:wrapperCopy];
    v22 = [wrapperCopy externalIDForIdentifier:uniqueId];
    v23 = *(qword_1000D18A8 + 8);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138543618;
        *v54 = v22;
        *&v54[8] = 2114;
        *&v54[10] = uniqueId;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "setting externalID %{public}@ for event with identifier %{public}@", buf, 0x16u);
      }

      [v11 setExternalID:v22];
    }

    else if (v24)
    {
      *buf = 138543362;
      *v54 = uniqueId;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No externalID in metadata for event with identifier %{public}@", buf, 0xCu);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v26 = v11;
    v27 = v26;
    if (isKindOfClass)
    {
      selfCopy2 = self;
      v29 = [wrapperCopy dateChangedForIdentifier:uniqueId];
      if (v29 != [v27 dateChanged])
      {
        [v27 setDateChanged:v29];
        v30 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v29;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Changed date changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v31 = [wrapperCopy timeChangedForIdentifier:uniqueId];
      if (v31 != [v27 timeChanged])
      {
        [v27 setTimeChanged:v31];
        v32 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v31;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Changed time changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v33 = [wrapperCopy titleChangedForIdentifier:uniqueId];
      if (v33 != [v27 titleChanged])
      {
        [v27 setTitleChanged:v33];
        v34 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v33;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Changed title changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v35 = [wrapperCopy locationChangedForIdentifier:uniqueId];
      if (v35 != [v27 locationChanged])
      {
        [v27 setLocationChanged:v35];
        v36 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v35;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Changed location changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v37 = [wrapperCopy attendeeCommentForIdentifier:uniqueId];
      if (v37 != [v27 attendeeComment])
      {
        [v27 setAttendeeComment:v37];
        v38 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v37;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Changed attendee comment changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v39 = [wrapperCopy attendeeStatusFlagForIdentifier:uniqueId];
      if (v39 != [v27 attendeeStatus])
      {
        [v27 setAttendeeStatus:v39];
        v40 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = v39;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Changed attendee status changed flag to %d for event %{public}@", buf, 0x12u);
        }
      }

      v41 = [wrapperCopy locationPredictionStateForIdentifier:uniqueId];
      unsignedIntegerValue = [v41 unsignedIntegerValue];

      if (unsignedIntegerValue != [v27 locationPredictionState])
      {
        [v27 setLocationPredictionState:unsignedIntegerValue];
        v43 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v54 = unsignedIntegerValue;
          *&v54[4] = 2114;
          *&v54[6] = uniqueId;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Setting location prediction state to %d for event %{public}@", buf, 0x12u);
        }
      }

      [(NEKEventStore *)selfCopy2 updateInvitationStatusForCalendarItem:v27 identifier:uniqueId withWrapper:wrapperCopy session:sessionCopy];
      v44 = objc_autoreleasePoolPush();
      eventStore = [v27 eventStore];
      if ([v27 isMasterOrDetachedOccurrence])
      {
        v46 = 2;
      }

      else
      {
        v46 = 0;
      }

      v52 = 0;
      [eventStore saveEvent:v27 span:v46 error:&v52];
      v47 = v52;

      objc_autoreleasePoolPop(v44);
      if (v47 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070728();
      }

      eventStore2 = v27;
    }

    else
    {
      eventStore2 = [v26 eventStore];
      [eventStore2 saveReminder:v27 error:0];
      v47 = v27;
    }
  }
}

- (void)updateSelfAttendeeForCalendarItem:(id)item identifier:(id)identifier withWrapper:(id)wrapper
{
  itemCopy = item;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  v10 = [wrapperCopy selfAttendeeEmailForIdentifier:identifierCopy];
  v11 = [wrapperCopy selfAttendeeUUIDForIdentifier:identifierCopy];
  eventStore = [itemCopy eventStore];
  v12 = *(qword_1000D18A8 + 8);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10 | v11)
  {
    if (v13)
    {
      v14 = v12;
      v15 = sub_10002CDF8(v10);
      sub_10002CDF8(v11);
      v17 = v16 = wrapperCopy;
      *buf = 138543874;
      *v69 = v15;
      *&v69[8] = 2114;
      v70 = v17;
      v71 = 2114;
      v72 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Self attendee email is %{public}@, and uuid is %{public}@ for event with identifier %{public}@", buf, 0x20u);

      wrapperCopy = v16;
    }

    attendees = [itemCopy attendees];
    v19 = attendees;
    if (attendees)
    {
      v54 = [attendees count];
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
        v52 = identifierCopy;
        v53 = itemCopy;
        v55 = wrapperCopy;
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
            emailAddress = [v24 emailAddress];
            v26 = [v24 URL];
            if (([v10 isEqualToString:emailAddress] & 1) != 0 || (objc_msgSend(v26, "absoluteString"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v11, "isEqualToString:", v27), v27, v28))
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
              identifierCopy = v52;
              itemCopy = v53;
              wrapperCopy = v55;
              v19 = v50;
              goto LABEL_23;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
          v29 = 0;
          identifierCopy = v52;
          itemCopy = v53;
          wrapperCopy = v55;
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
      *v69 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No self attendee email in wrapper for event with identifier %{public}@", buf, 0xCu);
    }

    v54 = 0;
    v29 = 0;
  }

  organizer = [itemCopy organizer];
  if (!organizer)
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

  v35 = [wrapperCopy selfOrganizerEmailForIdentifier:identifierCopy];

  v36 = [wrapperCopy selfOrganizerUUIDForIdentifier:identifierCopy];

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = v36;
    v10 = v35;
    goto LABEL_31;
  }

  v56 = wrapperCopy;
  v37 = itemCopy;
  emailAddress2 = [organizer emailAddress];
  v39 = [organizer URL];
  v40 = v39;
  if (v39)
  {
    absoluteString = [v39 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (emailAddress2 && ([v35 isEqualToString:emailAddress2] & 1) != 0 || absoluteString && objc_msgSend(v36, "isEqualToString:", absoluteString)))
  {
    [organizer setCurrentUser:1];
    [v37 setOrganizer:organizer];
    v48 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      obja = v48;
      v51 = sub_10002CDF8(v35);
      v49 = sub_10002CDF8(v36);
      *buf = 138543874;
      *v69 = identifierCopy;
      *&v69[8] = 2114;
      v70 = v51;
      v71 = 2114;
      v72 = v49;
      _os_log_impl(&_mh_execute_header, obja, OS_LOG_TYPE_DEFAULT, "Determined user is organizer for event with identifier %{public}@, email = %{public}@, address = %{public}@", buf, 0x20u);
    }

    itemCopy = v37;
    wrapperCopy = v56;
  }

  else
  {

    itemCopy = v37;
    wrapperCopy = v56;
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
    v57 = wrapperCopy;
    v43 = itemCopy;
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
    [eventStore saveEvent:v43 span:v44 error:&v62];

    wrapperCopy = v57;
  }

  else
  {
    v61 = 0;
    v46 = &v61;
    [eventStore saveReminder:itemCopy error:&v61];
  }

  v47 = *v46;
  if (v47 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070790();
  }

  objc_autoreleasePoolPop(v42);
LABEL_44:
}

- (void)updateInvitationStatusForCalendarItem:(id)item identifier:(id)identifier withWrapper:(id)wrapper session:(id)session
{
  itemCopy = item;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [wrapperCopy invitationStatusForIdentifier:identifierCopy];
    v15 = [wrapperCopy properInvitationStatusForIdentifier:identifierCopy];
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
          v34 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No invitation status in wrapper for event with identifier %{public}@", buf, 0xCu);
        }

        v17 = 0;
        v14 = 0;
        goto LABEL_23;
      }

      v17 = 0;
    }

    LODWORD(v18) = [v14 intValue];
    if (([sessionCopy isResetSync] & 1) == 0)
    {
      if (v18 == 3)
      {
        dispatch_assert_queue_V2(self->_queue);
        eks_cacheKey = [itemCopy eks_cacheKey];
        v28 = [(NSMutableDictionary *)self->_alertSupressionCache objectForKeyedSubscript:eks_cacheKey];

        +[NSDate timeIntervalSinceReferenceDate];
        v21 = [NSNumber numberWithDouble:v20 + 28800.0 + -1.0];
        [(NSMutableDictionary *)self->_alertSupressionCache setObject:v21 forKeyedSubscript:eks_cacheKey];

        objc_initWeak(&location, self);
        v22 = dispatch_time(0, 28800000000000);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001E13C;
        block[3] = &unk_1000B5138;
        objc_copyWeak(&v31, &location);
        v24 = eks_cacheKey;
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
        v36 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Setting invitation status %{public}@ for event with identifier %{public}@", buf, 0x16u);
      }

      [itemCopy setInvitationStatus:v18];
    }

LABEL_23:
  }
}

- (void)addAttendeeEvents:(id)events
{
  eventsCopy = events;
  updates = [eventsCopy updates];
  v7 = [NSMutableSet setWithArray:updates];

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
  [eventsCopy enumerateForChangeType:3 forEntitiesOfClass:v11 withBlock:&v15];
  allObjects = [v12 allObjects];
  [eventsCopy setUpdates:allObjects];
}

- (void)storeWrappersForSourceAggregator:(id)aggregator pipe:(id)pipe
{
  aggregatorCopy = aggregator;
  pipeCopy = pipe;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  insertedSources = [aggregatorCopy insertedSources];
  v9 = [insertedSources countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(insertedSources);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(NEKEventStore *)self wrapperForSource:v13 nekChangeType:1];
        [(NEKEventStore *)self _pushSource:v13 wrapper:v14 intoPipe:pipeCopy];
      }

      v10 = [insertedSources countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  updatedSources = [aggregatorCopy updatedSources];
  v16 = [updatedSources countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(updatedSources);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = [(NEKEventStore *)self wrapperForSource:v20 nekChangeType:2];
        [(NEKEventStore *)self _pushSource:v20 wrapper:v21 intoPipe:pipeCopy];
      }

      v17 = [updatedSources countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)_pushSource:(id)source wrapper:(id)wrapper intoPipe:(id)pipe
{
  sourceCopy = source;
  wrapperCopy = wrapper;
  pipeCopy = pipe;
  if (wrapperCopy)
  {
    if (([sourceCopy allowsEvents] & 1) != 0 || (objc_msgSend(sourceCopy, "allowsTasks") & 1) == 0)
    {
      [(NEKEventStore *)self updateRowMappingForEntity:sourceCopy];
    }

    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      attributes = [wrapperCopy attributes];
      accountPersistentID = [attributes accountPersistentID];
      attributes2 = [wrapperCopy attributes];
      isLocalStore = [attributes2 isLocalStore];
      attributes3 = [wrapperCopy attributes];
      allowsEvents = [attributes3 allowsEvents];
      attributes4 = [wrapperCopy attributes];
      *buf = 138544130;
      v21 = accountPersistentID;
      v22 = 1024;
      v23 = isLocalStore;
      v24 = 1024;
      v25 = allowsEvents;
      v26 = 1024;
      allowsTasks = [attributes4 allowsTasks];
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Sending source wrapper accountPersistentID=%{public}@ isLocalStore=%d events=%d tasks=%d", buf, 0x1Eu);
    }

    [pipeCopy push:wrapperCopy];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000707F8();
  }
}

- (void)calendarWrappersForChangeSet:(id)set pipe:(id)pipe
{
  pipeCopy = pipe;
  setCopy = set;
  v9 = NSStringFromSelector(a2);
  v10 = [(NEKEventStore *)self freshEventStoreFor:v9];

  [(NEKEventStore *)self _calendarWrappersForChangeSet:setCopy pipe:pipeCopy store:v10 nekChangeType:1];
  [(NEKEventStore *)self _calendarWrappersForChangeSet:setCopy pipe:pipeCopy store:v10 nekChangeType:2];
}

- (void)_sendDefaultCalendarsIfNeededInPipe:(id)pipe setDefaultEventCalendar:(BOOL)calendar setDefaultTaskCalendar:(BOOL)taskCalendar defaultEventCalendar:(id)eventCalendar defaultTaskCalendar:(id)defaultTaskCalendar
{
  pipeCopy = pipe;
  eventCalendarCopy = eventCalendar;
  defaultTaskCalendarCopy = defaultTaskCalendar;
  v15 = 0;
  v16 = 0;
  if (defaultTaskCalendarCopy && !taskCalendar)
  {
    v17 = [(NEKEventStore *)self wrapperForCalendar:defaultTaskCalendarCopy nekChangeType:0 useAttributes:0];
    v15 = v17;
    if (v17)
    {
      [v17 setIsDefaultTaskCalendar:1];
      v16 = defaultTaskCalendarCopy == eventCalendarCopy;
      if (defaultTaskCalendarCopy == eventCalendarCopy)
      {
        [v15 setIsDefaultEventCalendar:1];
        v18 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Default reminder and event calendar are the same.", &v28, 2u);
        }
      }

      [pipeCopy push:v15];
      v19 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = sub_10002CDF8([defaultTaskCalendarCopy title]);
        calendarIdentifier = [defaultTaskCalendarCopy calendarIdentifier];
        v28 = 138543618;
        v29 = v21;
        v30 = 2114;
        v31 = calendarIdentifier;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Marking default task calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  if (!eventCalendarCopy || calendar || v16)
  {
    v23 = v15;
  }

  else
  {
    v23 = [(NEKEventStore *)self wrapperForCalendar:eventCalendarCopy nekChangeType:0 useAttributes:0];

    if (v23)
    {
      [v23 setIsDefaultEventCalendar:1];
      [pipeCopy push:v23];
      v24 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = sub_10002CDF8([eventCalendarCopy title]);
        calendarIdentifier2 = [eventCalendarCopy calendarIdentifier];
        v28 = 138543618;
        v29 = v26;
        v30 = 2114;
        v31 = calendarIdentifier2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Marking default event calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
      }
    }
  }
}

- (void)ICSWrappersForChangeSet:(id)set pipe:(id)pipe
{
  pipeCopy = pipe;
  setCopy = set;
  [(NEKEventStore *)self startMappingEntities];
  v8 = [NEKSyncWindow alloc];
  environment = [(NEKStore *)self environment];
  tinyStore = [environment tinyStore];
  v11 = [(NEKSyncWindow *)v8 initForFullSync:0 tinyStore:tinyStore];

  v12 = [[NEKStoreRoller alloc] initWithEventStore:self cause:@"ICSWrappers:Inserts"];
  v13 = objc_opt_class();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001F588;
  v31[3] = &unk_1000B51B0;
  v32 = v12;
  v14 = v11;
  v33 = v14;
  selfCopy = self;
  v15 = pipeCopy;
  v35 = v15;
  v16 = v12;
  [setCopy enumerateForChangeType:1 forEntitiesOfClass:v13 withBlock:v31];
  v17 = [NEKStoreRoller alloc];

  v18 = [(NEKStoreRoller *)v17 initWithEventStore:self cause:@"ICSWrappers:Updates"];
  v19 = objc_opt_class();
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10001F7B0;
  v26 = &unk_1000B51B0;
  v27 = v18;
  selfCopy2 = self;
  v29 = v14;
  v30 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v18;
  [setCopy enumerateForChangeType:2 forEntitiesOfClass:v19 withBlock:&v23];

  [(NEKEventStore *)self endMappingEntities:v23];
}

- (void)deletionWrappersForChangeSet:(id)set skipSourceDeletions:(BOOL)deletions pipe:(id)pipe
{
  deletionsCopy = deletions;
  pipeCopy = pipe;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  deletes = [set deletes];
  v10 = [deletes countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(deletes);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (!deletionsCopy || [*(*(&v20 + 1) + 8 * i) entityType] != 6)
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

            if (([pipeCopy push:v16] & 1) == 0)
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

      v12 = [deletes countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

LABEL_20:
}

- (void)deletionWrappersForSourceAggregator:(id)aggregator pipe:(id)pipe
{
  pipeCopy = pipe;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  deletedSourcesIDs = [aggregator deletedSourcesIDs];
  v7 = [deletedSourcesIDs countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(deletedSourcesIDs);
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

          if (![pipeCopy push:v12])
          {

            goto LABEL_14;
          }
        }
      }

      v9 = [deletedSourcesIDs countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)_identifierInRowMapping:(id)mapping
{
  objectID = [mapping objectID];
  if (objectID)
  {
    recordMap = [(NEKEventStore *)self recordMap];
    v6 = [recordMap identifierForRecordID:objectID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)identifierInRowMappingForEventOrTask:(id)task
{
  taskCopy = task;
  v5 = [(NEKEventStore *)self _identifierInRowMapping:taskCopy];
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

- (id)calendarIdentifierInRowMappingForEventOrTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(NEKEventStore *)self _identifierInRowMapping:taskCopy];
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

- (id)identifierInRowMappingForRecordIDRef:(id)ref
{
  refCopy = ref;
  recordMap = [(NEKEventStore *)self recordMap];
  v6 = [recordMap identifierForRecordID:refCopy];

  if ([refCopy entityType] == 2 || objc_msgSend(refCopy, "entityType") == 3)
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

- (id)calendarIdentifierInRowMappingForRecordIDRef:(id)ref
{
  refCopy = ref;
  if ([refCopy entityType] == 2 || objc_msgSend(refCopy, "entityType") == 3)
  {
    recordMap = [(NEKEventStore *)self recordMap];
    v6 = [recordMap identifierForRecordID:refCopy];

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

- (void)updateRowMappingForEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    v14 = entityCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v14;
      location = [v5 location];
      title = [v5 title];
      startDate = [v5 startDate];

      [startDate timeIntervalSinceReferenceDate];
      v10 = v9;
    }

    else
    {
      title = 0;
      location = 0;
      v10 = 0.0;
    }

    objectID = [v14 objectID];
    if (objectID)
    {
      eks_compoundIdentifier = [v14 eks_compoundIdentifier];
      recordMap = [(NEKEventStore *)self recordMap];
      [recordMap setIdentifier:eks_compoundIdentifier masterRowID:-1 summary:title location:location startTime:objectID forRecordID:v10];
    }

    entityCopy = v14;
  }
}

- (BOOL)hasRowMappingForEntity:(id)entity
{
  entityCopy = entity;
  objectID = [entityCopy objectID];
  if (objectID)
  {
    eks_compoundIdentifier = [entityCopy eks_compoundIdentifier];
    recordMap = [(NEKEventStore *)self recordMap];
    v8 = [recordMap isIdentifierPresent:eks_compoundIdentifier forRecordID:objectID];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      recordMap2 = [(NEKEventStore *)self recordMap];
      v11 = sub_1000624F8(entityCopy);
      v9 = [recordMap2 isIdentifierPresent:v11 forRecordID:objectID];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeIdentifierForDeletedEntity:(id)entity
{
  objectID = [entity objectID];
  if (objectID)
  {
    v6 = objectID;
    recordMap = [(NEKEventStore *)self recordMap];
    [recordMap deleteIdentifierForRecordID:v6];

    objectID = v6;
  }
}

- (void)removeIdentifiersForDeletedRecordIDs:(id)ds
{
  dsCopy = ds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        recordMap = [(NEKEventStore *)self recordMap];
        [recordMap deleteIdentifierForRecordID:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  seenMap = [(NEKEventStore *)self seenMap];
  [seenMap sweep];
}

- (void)_didCreateEntity:(id)entity
{
  entityCopy = entity;
  os_unfair_lock_lock(&self->_createdEntitiesLock);
  [(NSMutableArray *)self->_createdEntities addObject:entityCopy];

  os_unfair_lock_unlock(&self->_createdEntitiesLock);
}

- (void)_deleteSourceWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [storeCopy sourceWithIdentifier:identifierCopy];
  if (v8)
  {
    v11 = 0;
    [storeCopy removeSource:v8 commit:0 error:&v11];
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
        v13 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted source with identifier %{public}@", buf, 0xCu);
      }

      [(NEKEventStore *)self saveEventStore:storeCopy];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070AB8();
  }
}

- (void)_deleteCalendarWithIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [storeCopy calendarWithIdentifier:identifierCopy];
  if (v8)
  {
    v11 = 0;
    [storeCopy removeCalendar:v8 commit:0 error:&v11];
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
        v13 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted calendar with identifier %{public}@", buf, 0xCu);
      }

      [(NEKEventStore *)self saveEventStore:storeCopy];
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070B8C();
  }
}

- (void)_deleteAndLogEvent:(id)event identifier:(id)identifier store:(id)store
{
  eventCopy = event;
  identifierCopy = identifier;
  storeCopy = store;
  objectID = [eventCopy objectID];
  if (([eventCopy hasRecurrenceRules] & 1) != 0 || objc_msgSend(eventCopy, "isPhantom"))
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = objectID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting event (span future) with identifier %{public}@, recordID %{public}@", buf, 0x16u);
    }

    v20 = 0;
    v12 = &v20;
    v13 = &v20;
    v14 = storeCopy;
    v15 = eventCopy;
    v16 = 1;
  }

  else
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = objectID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deleting event (span single) with identifier %{public}@, recordID %{public}@", buf, 0x16u);
    }

    v19 = 0;
    v12 = &v19;
    v13 = &v19;
    v14 = storeCopy;
    v15 = eventCopy;
    v16 = 0;
  }

  [v14 removeEvent:v15 span:v16 error:{v13, v19, v20}];
  v18 = *v12;
  if (v18 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070BF4();
  }
}

- (void)_deleteEventWithIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier store:(id)store
{
  identifierCopy = identifier;
  calendarIdentifierCopy = calendarIdentifier;
  storeCopy = store;
  v11 = storeCopy;
  if (calendarIdentifierCopy && ([storeCopy calendarWithIdentifier:calendarIdentifierCopy], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = identifierCopy;
      v21 = 2114;
      v22 = calendarIdentifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting event with identifier %{public}@, from calendar with identifier %{public}@", &v19, 0x16u);
    }

    v15 = [v11 calendarItemsWithUniqueIdentifier:identifierCopy inCalendar:v13];
  }

  else
  {
    v16 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting event with identifier %{public}@, from any calendar, old mapping didn't send calendar to delete from so falling back to old code", &v19, 0xCu);
    }

    v15 = [v11 calendarItemsWithUniqueIdentifier:identifierCopy inCalendar:0];
  }

  if ([v15 count] == 1)
  {
    v17 = [v15 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NEKEventStore *)self _deleteAndLogEvent:v17 identifier:identifierCopy store:v11];
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
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No event exists for %{public}@", &v19, 0xCu);
    }
  }
}

- (void)_deleteReminderWithIdentifier:(id)identifier calendarIdentifier:(id)calendarIdentifier store:(id)store
{
  identifierCopy = identifier;
  calendarIdentifierCopy = calendarIdentifier;
  storeCopy = store;
  v11 = storeCopy;
  if (calendarIdentifierCopy)
  {
    v12 = [storeCopy calendarWithIdentifier:calendarIdentifierCopy];
    v13 = v12;
    if (v12)
    {
      v22 = v12;
      v14 = [NSArray arrayWithObjects:&v22 count:1];
      v15 = [v11 remindersWithExternalIdentifier:identifierCopy inCalendars:v14];

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
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No reminder exists for %{public}@", buf, 0xCu);
  }

LABEL_14:
}

- (BOOL)_updateSource:(id)source withSourceWrapper:(id)wrapper store:(id)store
{
  storeCopy = store;
  sourceCopy = source;
  attributes = [wrapper attributes];
  v10 = [NEKSourceAttributes configureSource:sourceCopy inStore:storeCopy withAttributes:attributes];

  return v10;
}

- (id)_createSourceForWrapper:(id)wrapper store:(id)store
{
  storeCopy = store;
  wrapperCopy = wrapper;
  v7 = [EKSource sourceWithEventStore:storeCopy];
  attributes = [wrapperCopy attributes];

  [NEKSourceAttributes configureSource:v7 inStore:storeCopy withAttributes:attributes];

  return v7;
}

- (BOOL)_updateCalendar:(id)calendar withCalendarWrapper:(id)wrapper
{
  calendarCopy = calendar;
  wrapperCopy = wrapper;
  attributes = [wrapperCopy attributes];
  v9 = attributes;
  if (attributes && [attributes didCalendarChange:calendarCopy])
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      attributes2 = [wrapperCopy attributes];
      title = [attributes2 title];
      v14 = sub_10002CDF8(title);
      calendarIdentifier = [wrapperCopy calendarIdentifier];
      v24 = 138543618;
      v25 = v14;
      v26 = 2114;
      v27 = calendarIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating calendar with title %{public}@, identifier %{public}@", &v24, 0x16u);
    }

    eventStore = [calendarCopy eventStore];
    [NEKCalendarAttributes configureCalendar:calendarCopy inDatabase:eventStore withAttributes:v9];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [NEKSourceID alloc];
  source = [calendarCopy source];
  v20 = [(NEKSourceID *)v18 initWithSource:source];

  storeIdentifier = [wrapperCopy storeIdentifier];
  [(NEKSourceID *)v20 isEqualToNEKSourceID:storeIdentifier];

  eventStore2 = [calendarCopy eventStore];
  LOBYTE(storeIdentifier) = [(NEKEventStore *)self _checkAndSetDefaultCalendar:calendarCopy calendarWrapper:wrapperCopy store:eventStore2];

  [(NEKEventStore *)self _didCreateEntity:calendarCopy];
  return v17 | storeIdentifier;
}

- (id)_createCalendarForWrapper:(id)wrapper store:(id)store
{
  wrapperCopy = wrapper;
  storeCopy = store;
  attributes = [wrapperCopy attributes];
  v9 = attributes;
  if (!attributes)
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      calendarIdentifier = [wrapperCopy calendarIdentifier];
      storeIdentifier = [wrapperCopy storeIdentifier];
      v32 = 138543618;
      v33 = calendarIdentifier;
      v34 = 2114;
      v35 = storeIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asked to set a nonexistent calendar as the default. Ignoring. Calendar identifier = %{public}@, store identifier = %{public}@", &v32, 0x16u);
    }

    goto LABEL_25;
  }

  if ([attributes supportedEntityTypes] == 3)
  {
    environment = [(NEKStore *)self environment];
    isReminderKitEnabled = [environment isReminderKitEnabled];

    if (isReminderKitEnabled)
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

    v19 = [EKCalendar calendarForEntityTypes:v13 eventStore:storeCopy];
    goto LABEL_14;
  }

  if ([v9 supportedEntityTypes] != 1)
  {
    if ([v9 supportedEntityTypes] == 2)
    {
      environment2 = [(NEKStore *)self environment];
      isReminderKitEnabled2 = [environment2 isReminderKitEnabled];

      if ((isReminderKitEnabled2 & 1) == 0)
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
  v19 = [EKCalendar calendarForEntityType:v18 eventStore:storeCopy];
LABEL_14:
  v20 = v19;
  [NEKCalendarAttributes configureCalendar:v19 inDatabase:storeCopy withAttributes:v9];
  storeIdentifier2 = [wrapperCopy storeIdentifier];
  localSource = [NEKSourceID eventSourceForDatabase:storeCopy identifier:storeIdentifier2];

  if (!localSource)
  {
    v23 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100070D2C(v23);
    }

    localSource = [storeCopy localSource];
  }

  [v20 setSource:localSource];
  [(NEKEventStore *)self _didCreateEntity:v20];
  v24 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = sub_10002CDF8([v20 title]);
    calendarIdentifier2 = [v20 calendarIdentifier];
    v32 = 138543618;
    v33 = v26;
    v34 = 2114;
    v35 = calendarIdentifier2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Created calendar with title %{public}@, identifier %{public}@", &v32, 0x16u);
  }

LABEL_26:

  return v20;
}

- (id)_ICSLogTestForWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v4 = [NSString alloc];
  iCSData = [wrapperCopy ICSData];

  v6 = [v4 initWithData:iCSData encoding:4];

  return v6;
}

- (void)_sendChangesIfAvailable
{
  changeObserver = [(NEKStore *)self changeObserver];
  [changeObserver _sendChangesIfAvailable];
}

@end