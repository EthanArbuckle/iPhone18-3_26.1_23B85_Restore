@interface NEKEventChangeObserver
- (BOOL)_currentChangeSetAffectsNext24hrs:(id)a3;
- (BOOL)allCalendarsInto:(id)a3;
- (BOOL)allEventsInto:(id)a3 filter:(id)a4 window:(id)a5;
- (BOOL)allRemindersInto:(id)a3 filter:(id)a4 window:(id)a5;
- (BOOL)allSourcesInto:(id)a3;
- (NEKEventChangeObserver)initWithQueue:(id)a3 environment:(id)a4;
- (NEKEventStore)weakEventDatabaseController;
- (id)_masterEventsToSync;
- (id)fetchEventChangeSet;
- (id)lastSequenceToken;
- (id)previousDefaultEventCalendar;
- (id)previousDefaultTaskCalendar;
- (int)lastSequenceNumber;
- (void)_defaultCalendarChanged:(id)a3;
- (void)_fetchChangesInto:(id)a3 from:(int)a4 inside:(id)a5;
- (void)beginObservingChanges;
- (void)databaseDidChange;
- (void)dealloc;
- (void)notifyForDatabaseUpdates;
- (void)restartTrackingChanges;
- (void)setLastSequenceNumber:(int)a3;
- (void)setLastSequenceToken:(id)a3;
- (void)setPreviousDefaultEventCalendar:(id)a3;
- (void)setPreviousDefaultTaskCalendar:(id)a3;
- (void)stopObservingChanges;
@end

@implementation NEKEventChangeObserver

- (NEKEventChangeObserver)initWithQueue:(id)a3 environment:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NEKEventChangeObserver;
  v7 = [(NEKChangeObserver *)&v10 initWithEnvironment:a4];
  if (v7)
  {
    if (!v6)
    {
      v6 = &_dispatch_main_q;
      v8 = &_dispatch_main_q;
    }

    objc_storeStrong(&v7->_queue, v6);
    [(NEKEventChangeObserver *)v7 beginObservingChanges];
  }

  return v7;
}

- (void)dealloc
{
  [(NEKEventChangeObserver *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = NEKEventChangeObserver;
  [(NEKEventChangeObserver *)&v3 dealloc];
}

- (void)_defaultCalendarChanged:(id)a3
{
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Default Calendar Changed", v5, 2u);
  }

  [(NEKEventChangeObserver *)self databaseDidChange];
}

- (void)beginObservingChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"databaseDidChange" name:@"NEKDatabaseChangedExternallyNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_defaultCalendarChanged:" name:@"NEKDefaultCalendarChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"blindChangeNumberAdvance:" name:@"NEKBlindChangeNumberAdvance" object:0];
}

- (void)stopObservingChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"NEKDatabaseChangedExternallyNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"NEKDefaultCalendarChanged" object:0];
}

- (void)databaseDidChange
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
    block[2] = sub_10005AFE8;
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
      v14 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] databaseDidChange: ignoring delta sync request, sync coordinator says it is not time", buf, 0xCu);
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
    v6 = "[NEKEventChangeObserver notifyForDatabaseUpdates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v4 = [(NEKChangeObserver *)self delegate];
  [v4 changeObserverDidObserveChanges:self];
}

- (BOOL)allSourcesInto:(id)a3
{
  v39 = a3;
  v5 = &qword_1000D18A8;
  v6 = &OBJC_IVAR___NDTLogFacility_os_log_facility;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100075064();
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v9 = NSStringFromSelector(a2);
  v10 = [EKEventStore eks_eventStoreFor:v9];

  v11 = [v10 eks_sourcesAlwaysIncludingLocal];
  v43 = [v10 localSource];
  v38 = v8;
  v12 = [v8 environment];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (!v13)
  {
    v34 = 1;
    goto LABEL_33;
  }

  v14 = v13;
  v36 = v10;
  v37 = v7;
  v44 = *v46;
  v40 = v12;
  while (2)
  {
    v15 = 0;
    v41 = v14;
    do
    {
      if (*v46 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v45 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      if ([v12 isReminderKitEnabled] && v16 == v43 && objc_msgSend(v16, "allowsTasks") && (objc_msgSend(v16, "allowsEvents") & 1) == 0)
      {
        v33 = *(*v5 + *v6);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v50 = @"EKEventStore";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] allSourcesInto: ignoring reminders-only EKSource, ReminderKit is enabled", buf, 0xCu);
        }
      }

      else
      {
        if ([v16 allowsTasks])
        {
          if ([v16 allowsEvents])
          {
            v18 = *(*v5 + *v6);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              v20 = [v16 sourceIdentifier];
              *buf = 138543618;
              v50 = @"EKEventStore";
              v51 = 2112;
              v52 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] allSourcesInto: sending mixed entity source with sourceIdentifier: [%@]", buf, 0x16u);
            }
          }
        }

        v21 = sub_10000A2E8(v16);
        v22 = *(*v5 + *v6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v16 title];
          v25 = sub_10002CDF8(v24);
          [v16 sourceIdentifier];
          v26 = v6;
          v28 = v27 = v5;
          *buf = 138544130;
          v50 = @"EKEventStore";
          v51 = 2114;
          v52 = v25;
          v53 = 1024;
          v54 = v21;
          v55 = 2112;
          v56 = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] allSourcesInto: source [%{public}@] should sync? [%{BOOL}d] sourceIdentifier: [%@]", buf, 0x26u);

          v14 = v41;
          v5 = v27;
          v6 = v26;

          v12 = v40;
        }

        if (v21)
        {
          v29 = [[NEKSourceWrapper alloc] initWithChangeType:1 source:v16];
          if (v29)
          {
            p_super = &v29->super.super;
            if (([v39 push:v29] & 1) == 0)
            {

              objc_autoreleasePoolPop(v17);
              v34 = 0;
              goto LABEL_31;
            }

            [v38 updateRowMappingForEntity:v16];
            goto LABEL_22;
          }

          v31 = *(*v5 + *v6);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            p_super = v31;
            v32 = [v16 sourceIdentifier];
            *buf = 138543618;
            v50 = @"EKEventStore";
            v51 = 2112;
            v52 = v32;
            _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "[%{public}@] allSourcesInto: failed to create source wrapper for sourceIdentifier: [%@]", buf, 0x16u);

LABEL_22:
          }
        }
      }

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v14 != v15);
    v14 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v34 = 1;
LABEL_31:
  v10 = v36;
  v7 = v37;
LABEL_33:

  objc_autoreleasePoolPop(v7);
  return v34;
}

- (BOOL)allCalendarsInto:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000750F8();
  }

  context = objc_autoreleasePoolPush();
  v6 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v7 = [v6 environment];
  v8 = NSStringFromSelector(a2);
  v9 = [v6 freshEventStoreFor:v8];

  v10 = [v9 sources];
  v55 = 0;
  v56 = 0;
  v40 = v9;
  [v6 getDefaultTaskCalendar:&v56 defaultEventCalendar:&v55 store:v9];
  v45 = v56;
  v44 = v55;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v10;
  v37 = [v11 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v37)
  {
    v12 = *v52;
    v42 = v6;
    v43 = v5;
    v39 = v11;
    v36 = *v52;
    do
    {
      v13 = 0;
      do
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v38 = v13;
        v14 = [*(*(&v51 + 1) + 8 * v13) allCalendars];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v14;
        v15 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v48;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v48 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v47 + 1) + 8 * i);
              v20 = objc_autoreleasePoolPush();
              if ([v7 isReminderKitEnabled] && objc_msgSend(v19, "allowedEntityTypes") == 2)
              {
                v21 = *(qword_1000D18A8 + 8);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v58 = @"EKEventStore";
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] allCalendarsInto: ignoring EKCalendar with EKEntityMaskReminder as an allowedEntityType, ReminderKit is enabled", buf, 0xCu);
                }
              }

              else
              {
                if ([v19 allowedEntityTypes] == 3)
                {
                  v22 = *(qword_1000D18A8 + 8);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = v22;
                    v24 = [v19 calendarIdentifier];
                    *buf = 138543618;
                    v58 = @"EKEventStore";
                    v59 = 2112;
                    v60 = v24;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] allCalendarsInto: sending mixed entity calendar with calendarIdentifier: [%@]", buf, 0x16u);
                  }
                }

                if (sub_10000A3B8(v19))
                {
                  v25 = [[NEKCalendarWrapper alloc] initWithChangeType:1 calendarRef:v19];
                  if ([v19 isEqual:v45])
                  {
                    v26 = *(qword_1000D18A8 + 8);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = v26;
                      v28 = sub_10002CDF8([v19 title]);
                      v29 = [v19 calendarIdentifier];
                      *buf = 138543874;
                      v58 = @"EKEventStore";
                      v59 = 2114;
                      v60 = v28;
                      v61 = 2114;
                      v62 = v29;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] allCalendarsInto: marking [%{public}@] as defaultTaskCalendar, calendarIdentifier: [%{public}@]", buf, 0x20u);

                      v6 = v42;
                      v5 = v43;
                    }

                    [(NEKCalendarWrapper *)v25 setIsDefaultTaskCalendar:1];
                  }

                  if ([v19 isEqual:v44])
                  {
                    v30 = *(qword_1000D18A8 + 8);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      v31 = v30;
                      v32 = sub_10002CDF8([v19 title]);
                      v33 = [v19 calendarIdentifier];
                      *buf = 138543874;
                      v58 = @"EKEventStore";
                      v59 = 2114;
                      v60 = v32;
                      v61 = 2114;
                      v62 = v33;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] allCalendarsInto: marking [%{public}@] as defaultEventCalendar, calendarIdentifier: [%{public}@]", buf, 0x20u);

                      v5 = v43;
                      v6 = v42;
                    }

                    [(NEKCalendarWrapper *)v25 setIsDefaultEventCalendar:1];
                  }

                  if (![v5 push:v25])
                  {

                    objc_autoreleasePoolPop(v20);
                    v34 = 0;
                    v11 = v39;
                    goto LABEL_38;
                  }

                  [v6 updateRowMappingForEntity:v19];
                }
              }

              objc_autoreleasePoolPop(v20);
            }

            v16 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v13 = v38 + 1;
        v11 = v39;
        v12 = v36;
      }

      while ((v38 + 1) != v37);
      v34 = 1;
      v37 = [v39 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v37);
  }

  else
  {
    v34 = 1;
  }

LABEL_38:

  objc_autoreleasePoolPop(context);
  return v34;
}

- (id)_masterEventsToSync
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 freshEventStoreFor:v6];

  v8 = [v7 predicateForMasterEventsInCalendars:0];
  v9 = [v7 eventObjectIDsMatchingPredicate:v8];

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (BOOL)allEventsInto:(id)a3 filter:(id)a4 window:(id)a5
{
  v9 = a3;
  v36 = a4;
  v37 = a5;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_10007518C();
  }

  v10 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v11 = [NEKStoreRoller alloc];
  v12 = NSStringFromSelector(a2);
  v34 = v10;
  v13 = [(NEKStoreRoller *)v11 initWithEventStore:v10 cause:v12];

  ct_green_tea_logger_create();
  [(NEKEventChangeObserver *)self _masterEventsToSync];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v41 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
  v33 = v14;
  if (v15)
  {
    v16 = v15;
    v35 = 0;
    v17 = *v39;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v39 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v38 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      if ([v9 finished])
      {
        break;
      }

      v21 = [(NEKStoreRoller *)v13 fetch:v19];
      if (v21)
      {
        v22 = getCTGreenTeaOsLogHandle();
        v23 = v22;
        if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Reading events", buf, 2u);
        }

        v24 = [v21 eventStore];
        if ([v37 eventInWindow:v21 inStore:v24])
        {
          v25 = v36[2](v36, v21);

          if (v25)
          {
            v26 = v34;
            v27 = [NEKICSWrapper wrapperForChangeType:1 calendarItem:v21 needsInvite:0 eventStore:v34];
            v28 = [v9 push:v27];

            if (!v28)
            {
              ct_green_tea_logger_destroy();

LABEL_26:
              objc_autoreleasePoolPop(v20);
              v30 = v33;

              v31 = 0;
              goto LABEL_30;
            }

            ++v35;
            [v34 updateRowMappingForEntity:v21];
            v14 = v33;
          }
        }

        else
        {
        }
      }

      else
      {
        v29 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v43 = @"EKEventStore";
          v44 = 2114;
          v45 = v19;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}@] allEventsInto: nil event returned for objectID [%{public}@]", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v20);
      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_27;
      }
    }

    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_100075220();
    }

    ct_green_tea_logger_destroy();
    v26 = v34;
    goto LABEL_26;
  }

LABEL_27:

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000752A0();
  }

  ct_green_tea_logger_destroy();
  v31 = 1;
  v30 = v33;
  v26 = v34;
LABEL_30:

  return v31;
}

- (BOOL)allRemindersInto:(id)a3 filter:(id)a4 window:(id)a5
{
  v30 = a3;
  v29 = a4;
  v32 = a5;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100075320();
  }

  v8 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v9 = [v8 environment];
  if ([v9 isReminderKitEnabled])
  {
    v10 = *(qword_1000D18A8 + 8);
    v11 = v29;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] allRemindersInto: ignoring EKReminders, ReminderKit is enabled", buf, 0xCu);
    }

    v12 = 1;
  }

  else
  {
    v13 = [[NEKStoreRoller alloc] initWithEventStore:v8 cause:@"allRemindersInto:filter:window:"];
    v14 = [(NEKStoreRoller *)v13 someStore];
    v15 = [v14 predicateForRemindersInCalendars:0];
    v16 = [v14 reminderObjectIDsMatchingPredicate:v15];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v16;
    v11 = v29;
    v31 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v31)
    {
      v27 = v9;
      v28 = v8;
      v18 = *v34;
      while (2)
      {
        for (i = 0; i != v31; i = i + 1)
        {
          v20 = v14;
          if (*v34 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [(NEKStoreRoller *)v13 fetch:v21];
          v14 = [v23 eventStore];

          if ([v32 eventInWindow:v23 inStore:v14] && (v11)[2](v11, v23))
          {
            v24 = [NEKICSWrapper wrapperForChangeType:1 calendarItem:v23 needsInvite:0 eventStore:v28];
            v25 = [v30 push:v24];

            if (!v25)
            {

              objc_autoreleasePoolPop(v22);
              v12 = 0;
              v11 = v29;
              v8 = v28;
              v9 = v27;
              goto LABEL_21;
            }

            [v28 updateRowMappingForEntity:v23];
            v11 = v29;
          }

          objc_autoreleasePoolPop(v22);
        }

        v31 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      v12 = 1;
      v9 = v27;
      v8 = v28;
    }

    else
    {
      v12 = 1;
    }

LABEL_21:
  }

  return v12;
}

- (id)fetchEventChangeSet
{
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000753B4();
  }

  v3 = +[NEKChangeSet changeSetForEvent];
  v4 = [(NEKEventChangeObserver *)self eventDatabaseController];
  [v3 setTruncated:0];
  v5 = [(NEKEventChangeObserver *)self lastSequenceNumber];
  if (v5 == -1)
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = !self->_sawSeqnoFailure;
      v12 = 138543618;
      v13 = @"EKEventStore";
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchEventChangeSet: pulled -1 from lastSequenceNumber, requesting one (and only one) full sync? [%{BOOL}d]", &v12, 0x12u);
    }

    if (self->_sawSeqnoFailure)
    {
      v8 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = @"EKEventStore";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchEventChangeSet: saw sequence number failure already, still waiting for corrective full sync to complete", &v12, 0xCu);
      }

      v9 = v3;
      v10 = 0;
    }

    else
    {
      self->_sawSeqnoFailure = 1;
      v9 = v3;
      v10 = 1;
    }

    [v9 setTruncated:v10];
  }

  else
  {
    [(NEKEventChangeObserver *)self _fetchChangesInto:v3 from:v5 inside:v4];
  }

  return v3;
}

- (BOOL)_currentChangeSetAffectsNext24hrs:(id)a3
{
  v4 = a3;
  [(NEKEventChangeObserver *)self lastSequenceToken];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005C804;
  v5 = v7[3] = &unk_1000B5E48;
  v9 = self;
  v10 = &v11;
  v8 = v5;
  [v4 changesSinceSequenceToken:v5 completion:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (void)_fetchChangesInto:(id)a3 from:(int)a4 inside:(id)a5
{
  v9 = a3;
  v10 = a5;
  self->_sawSeqnoFailure = 0;
  v11 = NSStringFromSelector(a2);
  v12 = [v10 freshEventStoreFor:v11];

  objc_initWeak(&location, self);
  v13 = +[NDTPerf wallTime];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 1;
  v14 = dispatch_time(0, 30000000000);
  v15 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CD20;
  block[3] = &unk_1000B5E70;
  block[4] = v32;
  dispatch_after(v14, v15, block);

  kdebug_trace();
  v16 = [(NEKEventChangeObserver *)self _currentChangeSetAffectsNext24hrs:v12];
  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = @"EKEventStore";
    v37 = 1024;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: current change set affects next 24hrs? %{BOOL}d", buf, 0x12u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005CDA0;
  v22[3] = &unk_1000B5EC0;
  v27 = v32;
  v28[1] = v13;
  v29 = a4;
  v18 = v9;
  v23 = v18;
  v24 = self;
  v19 = v12;
  v25 = v19;
  v30 = v16;
  objc_copyWeak(v28, &location);
  v20 = a4;
  v21 = v10;
  v26 = v21;
  [v19 changedObjectIDsSinceToken:v20 resultHandler:v22];

  objc_destroyWeak(v28);
  _Block_object_dispose(v32, 8);
  objc_destroyWeak(&location);
}

- (void)restartTrackingChanges
{
  v4 = [(NEKEventChangeObserver *)self eventDatabaseController];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 freshEventStoreFor:v5];

  v12 = 0;
  [v6 unregisterForDetailedChangeTracking:&v12];
  v7 = v12;
  v11 = v7;
  v8 = [v6 registerForDetailedChangeTracking:&v11];
  v9 = v11;

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = @"EKEventStore";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] restartTrackingChanges: registered for detailed change tracking [%ld]", buf, 0x16u);
  }

  [(NEKEventChangeObserver *)self setLastSequenceNumber:0];
}

- (int)lastSequenceNumber
{
  v3 = [(NEKChangeObserver *)self environment];
  v4 = [v3 tinyStore];
  v5 = [(NEKEventChangeObserver *)self _sequenceKey];
  v6 = [v4 getIntegerValueForKey:v5 default:-1];

  return v6;
}

- (void)setLastSequenceNumber:(int)a3
{
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = @"EKEventStore";
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] setLastSequenceNumber: %d", &v9, 0x12u);
  }

  v6 = [(NEKChangeObserver *)self environment];
  v7 = [v6 tinyStore];
  v8 = [(NEKEventChangeObserver *)self _sequenceKey];
  [v7 setIntegerValue:a3 forKey:v8];
}

- (id)lastSequenceToken
{
  v3 = [(NEKChangeObserver *)self environment];
  v4 = [v3 tinyStore];
  v5 = [(NEKEventChangeObserver *)self _sequenceTokenKey];
  v6 = [v4 getDataValueForKey:v5];

  if (v6)
  {
    v12 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000755B0(v9, v8);
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setLastSequenceToken:(id)a3
{
  v18 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v18];
  v5 = v18;
  if (v5)
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100075650(v6, v5);
    }
  }

  else if (v4)
  {
    v7 = [(NEKChangeObserver *)self environment];
    v8 = [v7 tinyStore];
    v9 = [(NEKEventChangeObserver *)self _sequenceTokenKey];
    [v8 setDataValue:v4 forKey:v9];
  }

  else
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000756F0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (id)previousDefaultTaskCalendar
{
  v3 = [(NEKChangeObserver *)self environment];
  v4 = [v3 isReminderKitEnabled];

  if (v4)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_100075768();
    }

    v5 = 0;
  }

  else
  {
    v6 = [(NEKChangeObserver *)self environment];
    v7 = [v6 tinyStore];
    v8 = [(NEKEventChangeObserver *)self _taskCalendarKey];
    v5 = [v7 getStringValueForKey:v8 default:0];
  }

  return v5;
}

- (id)previousDefaultEventCalendar
{
  v3 = [(NEKChangeObserver *)self environment];
  v4 = [v3 tinyStore];
  v5 = [(NEKEventChangeObserver *)self _eventCalendarKey];
  v6 = [v4 getStringValueForKey:v5 default:0];

  return v6;
}

- (void)setPreviousDefaultTaskCalendar:(id)a3
{
  v4 = a3;
  v5 = [(NEKChangeObserver *)self environment];
  v6 = [v5 isReminderKitEnabled];

  if (v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_1000757E8();
    }
  }

  else
  {
    v7 = [(NEKChangeObserver *)self environment];
    v8 = [v7 tinyStore];
    v9 = [(NEKEventChangeObserver *)self _taskCalendarKey];
    [v8 setStringValue:v4 forKey:v9];
  }
}

- (void)setPreviousDefaultEventCalendar:(id)a3
{
  v4 = a3;
  v7 = [(NEKChangeObserver *)self environment];
  v5 = [v7 tinyStore];
  v6 = [(NEKEventChangeObserver *)self _eventCalendarKey];
  [v5 setStringValue:v4 forKey:v6];
}

- (NEKEventStore)weakEventDatabaseController
{
  WeakRetained = objc_loadWeakRetained(&self->_weakEventDatabaseController);

  return WeakRetained;
}

@end