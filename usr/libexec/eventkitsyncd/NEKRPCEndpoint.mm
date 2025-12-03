@interface NEKRPCEndpoint
- (BOOL)_calendarItem:(id)item snoozeAlarmID:(id)d withTimeIntervalFromNow:(double)now;
- (BOOL)_disableMutation;
- (void)_recvDeleteEventEndpoint:(id)endpoint;
- (void)_recvSetEventKitAlarmSnoozeEndpoint:(id)endpoint;
- (void)_recvSetEventKitReminderCompletedEndpoint:(id)endpoint;
- (void)_recvSetParticipantStatusEndpoint:(id)endpoint;
- (void)_recvSetReminderKitAlarmSnoozeEndpoint:(id)endpoint;
- (void)_recvSetReminderKitReminderCompletedEndpoint:(id)endpoint;
@end

@implementation NEKRPCEndpoint

- (BOOL)_disableMutation
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"internal_disablePhoneMutator", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)_recvSetParticipantStatusEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ([(NEKRPCEndpoint *)self _disableMutation])
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_recvSetParticipantStatusEndpoint ignored", buf, 2u);
    }
  }

  else
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:data];

    if ([(NEKPBProtoBuffMessage *)v9 hasSetParticipantStatus])
    {
      setParticipantStatus = [(NEKPBProtoBuffMessage *)v9 setParticipantStatus];
      v11 = NSStringFromSelector(a2);
      v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        eventStoreIdentifier = [v12 eventStoreIdentifier];
        storeIdentifier = [setParticipantStatus storeIdentifier];
        *buf = 138412546;
        v29 = eventStoreIdentifier;
        v30 = 2112;
        v31 = storeIdentifier;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Local store ID %@, remote store ID %@", buf, 0x16u);
      }

      itemIdentifier = [setParticipantStatus itemIdentifier];
      v18 = [v12 eventWithIdentifier:itemIdentifier];

      v19 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        itemIdentifier2 = [setParticipantStatus itemIdentifier];
        *buf = 138412546;
        v29 = itemIdentifier2;
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "itemIdentifier: %@, event: <%p>", buf, 0x16u);
      }

      status = [setParticipantStatus status];
      if ([v18 participationStatus] != status)
      {
        [v18 setParticipationStatus:{objc_msgSend(setParticipantStatus, "status")}];
        [v18 setInvitationStatus:0];
        eventStore = [v18 eventStore];
        v27 = 0;
        v24 = [eventStore saveEvent:v18 span:objc_msgSend(setParticipantStatus error:{"span"), &v27}];
        v25 = v27;

        if ((v24 & 1) == 0)
        {
          v26 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failure to save event: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070FDC();
    }
  }
}

- (void)_recvSetEventKitReminderCompletedEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100071018();
  }

  if ([(NEKRPCEndpoint *)self _disableMutation])
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_recvSetEventKitReminderCompletedEndpoint ignored", v22, 2u);
    }
  }

  else
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:data];

    if ([(NEKPBProtoBuffMessage *)v9 hasSetReminderComplete])
    {
      setReminderComplete = [(NEKPBProtoBuffMessage *)v9 setReminderComplete];
      v11 = NSStringFromSelector(a2);
      v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

      calendarName = [setReminderComplete calendarName];
      reminderTitle = [setReminderComplete reminderTitle];
      externalIdentifier = [setReminderComplete externalIdentifier];
      v16 = sub_100028414(v12, calendarName, reminderTitle, externalIdentifier);

      if (v16)
      {
        sub_100028810(v16);
        completionDate = [v16 completionDate];

        if ((((completionDate == 0) ^ [setReminderComplete isComplete]) & 1) == 0)
        {
          [v16 setCompleted:{objc_msgSend(setReminderComplete, "isComplete")}];
          v24 = 0;
          v18 = [v12 saveReminder:v16 error:&v24];
          v19 = v24;
          v20 = *(qword_1000D18A8 + 8);
          if (v18)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reminder saved successfully.", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000710A4();
          }
        }
      }

      else
      {
        v21 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100071114(v21);
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070FDC();
    }
  }
}

- (void)_recvSetReminderKitReminderCompletedEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100071258();
  }

  if ([(NEKRPCEndpoint *)self _disableMutation])
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_recvSetReminderKitReminderCompletedEndpoint ignored", buf, 2u);
    }
  }

  else
  {
    v6 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v8 = [(NEKPBProtoBuffMessage *)v6 initWithData:data];

    if ([(NEKPBProtoBuffMessage *)v8 hasSetReminderComplete])
    {
      setReminderComplete = [(NEKPBProtoBuffMessage *)v8 setReminderComplete];
      v10 = objc_alloc_init(REMStore);
      externalIdentifier = [setReminderComplete externalIdentifier];
      v25 = 0;
      v12 = [v10 fetchReminderWithExternalIdentifier:externalIdentifier inList:0 error:&v25];
      v13 = v25;

      if (v12)
      {
        v22 = v13;
        v14 = [[REMSaveRequest alloc] initWithStore:v10];
        [v14 setAuthor:self->_clientName];
        v15 = [v14 updateReminder:v12];
        sub_100028810(v15);
        isCompleted = [v12 isCompleted];
        if (isCompleted != [setReminderComplete isComplete])
        {
          [v15 setCompleted:{objc_msgSend(setReminderComplete, "isComplete")}];
          v24 = 0;
          v17 = [v14 saveSynchronouslyWithError:&v24];
          v21 = v24;
          v18 = *(qword_1000D18A8 + 8);
          if (v17)
          {
            v19 = v21;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Reminder saved successfully.", buf, 2u);
            }
          }

          else
          {
            v19 = v21;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000710A4();
            }
          }
        }

        v13 = v22;
      }

      else
      {
        v20 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100071114(v20);
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070FDC();
    }
  }
}

- (void)_recvDeleteEventEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000712E4();
  }

  if ([(NEKRPCEndpoint *)self _disableMutation])
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_recvDeleteEventEndpoint ignored", buf, 2u);
    }
  }

  else
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:data];

    if ([(NEKPBProtoBuffMessage *)v9 hasDeleteEvent])
    {
      v10 = NSStringFromSelector(a2);
      v11 = [EKEventStore eks_eventOnlyStoreFor:v10];

      deleteEvent = [(NEKPBProtoBuffMessage *)v9 deleteEvent];
      [deleteEvent eventStart];
      v13 = [NSDate dateWithTimeIntervalSince1970:?];

      v41 = [v13 dateByAddingTimeInterval:604800.0];
      v42 = v13;
      v14 = [v11 predicateForEventsWithStartDate:v13 endDate:? calendars:?];
      v15 = objc_opt_new();
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000290AC;
      v52[3] = &unk_1000B5378;
      v45 = v9;
      v53 = v45;
      v16 = v15;
      v54 = v16;
      v40 = v14;
      [v11 enumerateEventsMatchingPredicate:v14 usingBlock:v52];
      v17 = v16;
      v43 = v17;
      if ([v17 count] >= 2)
      {
        v37 = v11;
        v38 = v9;
        v39 = endpointCopy;
        v44 = objc_opt_new();
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v49;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v49 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v48 + 1) + 8 * i);
              calendar = [v23 calendar];
              title = [calendar title];
              deleteEvent2 = [(NEKPBProtoBuffMessage *)v45 deleteEvent];
              calendarTitle = [deleteEvent2 calendarTitle];
              v28 = [title isEqual:calendarTitle];

              if (v28)
              {
                [v44 addObject:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v48 objects:v55 count:16];
          }

          while (v20);
        }

        v9 = v38;
        endpointCopy = v39;
        v11 = v37;
        v17 = v44;
      }

      if ([v17 count] == 1)
      {
        v29 = v17;
        v30 = [v17 objectAtIndexedSubscript:0];
        deleteEvent3 = [(NEKPBProtoBuffMessage *)v45 deleteEvent];
        v47 = 0;
        v32 = [v11 removeEvent:v30 span:objc_msgSend(deleteEvent3 error:{"span"), &v47}];
        v33 = v47;

        if ((v32 & 1) == 0)
        {
          if (v33)
          {
            v34 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10007140C(v34, v45, v33);
            }
          }
        }

        v35 = v42;
      }

      else
      {
        v29 = v17;
        v36 = *(qword_1000D18A8 + 8);
        v35 = v42;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100071370(v36, v17);
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100070FDC();
    }
  }
}

- (BOOL)_calendarItem:(id)item snoozeAlarmID:(id)d withTimeIntervalFromNow:(double)now
{
  itemCopy = item;
  dCopy = d;
  [itemCopy alarms];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        externalID = [v13 externalID];
        v15 = [externalID isEqualToString:dCopy];

        if (v15)
        {
          [itemCopy snoozeAlarm:v13 withTimeIntervalFromNow:now];
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)_recvSetEventKitAlarmSnoozeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (![(NEKRPCEndpoint *)self _disableMutation])
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:data];

    if (![(NEKPBProtoBuffMessage *)v9 hasSetAlarmSnooze])
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070FDC();
      }

      goto LABEL_38;
    }

    setAlarmSnooze = [(NEKPBProtoBuffMessage *)v9 setAlarmSnooze];
    v11 = NSStringFromSelector(a2);
    v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

    if ([setAlarmSnooze hasCalendarName] && objc_msgSend(setAlarmSnooze, "hasReminderTitle"))
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        log = v13;
        [setAlarmSnooze snoozeAmount];
        v15 = v14;
        calendarName = [setAlarmSnooze calendarName];
        v42 = sub_10002CDF8(calendarName);
        reminderTitle = [setAlarmSnooze reminderTitle];
        v18 = sub_10002CDF8(reminderTitle);
        externalIdentifier = [setAlarmSnooze externalIdentifier];
        *buf = 134218754;
        v49 = v15;
        v50 = 2114;
        v51 = v42;
        v52 = 2114;
        v53 = v18;
        v54 = 2112;
        v55 = externalIdentifier;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Snooze Reminder: time:%.1f calendar: '%{public}@' reminder: '%{public}@' externalId: %@", buf, 0x2Au);
      }

      calendarName2 = [setAlarmSnooze calendarName];
      reminderTitle2 = [setAlarmSnooze reminderTitle];
      externalIdentifier2 = [setAlarmSnooze externalIdentifier];
      v23 = sub_100028414(v12, calendarName2, reminderTitle2, externalIdentifier2);

      if (!v23)
      {
        v40 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100071114(v40);
        }

        goto LABEL_36;
      }

      sub_100028810(v23);
      alarmIdentifier = [setAlarmSnooze alarmIdentifier];
      [setAlarmSnooze snoozeAmount];
      v25 = [(NEKRPCEndpoint *)self _calendarItem:v23 snoozeAlarmID:alarmIdentifier withTimeIntervalFromNow:?];

      if (!v25)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_100071584();
        }

        goto LABEL_36;
      }

      v47 = 0;
      v26 = [v12 saveReminder:v23 error:&v47];
      v27 = v47;
      v28 = *(qword_1000D18A8 + 8);
      if ((v26 & 1) == 0)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000710A4();
        }

        goto LABEL_35;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Reminder saved successfully.";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
      }
    }

    else
    {
      if (![setAlarmSnooze hasItemIdentifier] || !objc_msgSend(setAlarmSnooze, "hasStoreIdentifier"))
      {
        goto LABEL_37;
      }

      itemIdentifier = [setAlarmSnooze itemIdentifier];
      v23 = [v12 eventWithIdentifier:itemIdentifier];

      v31 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v31;
        [setAlarmSnooze snoozeAmount];
        v33 = v32;
        loga = [setAlarmSnooze calendarName];
        v41 = sub_10002CDF8(loga);
        itemIdentifier2 = [setAlarmSnooze itemIdentifier];
        eventStoreIdentifier = [v12 eventStoreIdentifier];
        storeIdentifier = [setAlarmSnooze storeIdentifier];
        *buf = 134219266;
        v49 = v33;
        v50 = 2114;
        v51 = v41;
        v52 = 2112;
        v53 = itemIdentifier2;
        v54 = 2048;
        v55 = v23;
        v56 = 2112;
        v57 = eventStoreIdentifier;
        v58 = 2112;
        v59 = storeIdentifier;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Snooze Event: time:%.1f calendar: '%{public}@' itemIdentifier: %@ event: <%p> local store ID: %@, remote store ID: %@", buf, 0x3Eu);
      }

      alarmIdentifier2 = [setAlarmSnooze alarmIdentifier];
      [setAlarmSnooze snoozeAmount];
      v38 = [(NEKRPCEndpoint *)self _calendarItem:v23 snoozeAlarmID:alarmIdentifier2 withTimeIntervalFromNow:?];

      if (!v38)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_1000714D8();
        }

        goto LABEL_36;
      }

      v46 = 0;
      v39 = [v12 saveEvent:v23 span:2 error:&v46];
      v27 = v46;
      v28 = *(qword_1000D18A8 + 8);
      if ((v39 & 1) == 0)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100071514();
        }

        goto LABEL_35;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Event saved successfully.";
        goto LABEL_24;
      }
    }

LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_recvSetEventKitAlarmSnoozeEndpoint ignored", buf, 2u);
  }

LABEL_39:
}

- (void)_recvSetReminderKitAlarmSnoozeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (![(NEKRPCEndpoint *)self _disableMutation])
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    data = [endpointCopy data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:data];

    if (![(NEKPBProtoBuffMessage *)v9 hasSetAlarmSnooze])
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070FDC();
      }

      goto LABEL_37;
    }

    setAlarmSnooze = [(NEKPBProtoBuffMessage *)v9 setAlarmSnooze];
    if ([setAlarmSnooze hasCalendarName] && objc_msgSend(setAlarmSnooze, "hasReminderTitle"))
    {
      v11 = objc_alloc_init(REMStore);
      v12 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        [setAlarmSnooze snoozeAmount];
        v15 = v14;
        calendarName = [setAlarmSnooze calendarName];
        v17 = sub_10002CDF8(calendarName);
        reminderTitle = [setAlarmSnooze reminderTitle];
        sub_10002CDF8(reminderTitle);
        v19 = v47 = v11;
        externalIdentifier = [setAlarmSnooze externalIdentifier];
        *buf = 134218754;
        v52 = v15;
        v53 = 2114;
        v54 = v17;
        v55 = 2114;
        v56 = v19;
        v57 = 2112;
        v58 = externalIdentifier;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Snooze Reminder: time:%.1f calendar: '%{public}@' reminder: '%{public}@' externalId: %@", buf, 0x2Au);

        v11 = v47;
      }

      externalIdentifier2 = [setAlarmSnooze externalIdentifier];
      v50 = 0;
      v22 = [v11 fetchReminderWithExternalIdentifier:externalIdentifier2 inList:0 error:&v50];
      v23 = v50;

      if (v22)
      {
        v24 = [[REMSaveRequest alloc] initWithStore:v11];
        [v24 setAuthor:self->_clientName];
        v25 = [v24 updateReminder:v22];
        sub_100028810(v25);
        [setAlarmSnooze snoozeAmount];
        [v25 snoozeFromNowForTimeInterval:?];
        v49 = v23;
        v26 = [v24 saveSynchronouslyWithError:&v49];
        v27 = v49;

        v28 = *(qword_1000D18A8 + 8);
        if (v26)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Reminder saved successfully.", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000710A4();
        }
      }

      else
      {
        v44 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_100071114(v44);
        }

        v27 = v23;
      }
    }

    else
    {
      if (![setAlarmSnooze hasItemIdentifier] || !objc_msgSend(setAlarmSnooze, "hasStoreIdentifier"))
      {
        goto LABEL_36;
      }

      v29 = NSStringFromSelector(a2);
      v27 = [EKEventStore eks_eventOnlyStoreFor:v29];

      itemIdentifier = [setAlarmSnooze itemIdentifier];
      v11 = [v27 eventWithIdentifier:itemIdentifier];

      v31 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        log = v31;
        [setAlarmSnooze snoozeAmount];
        v33 = v32;
        calendarName2 = [setAlarmSnooze calendarName];
        v34 = sub_10002CDF8(calendarName2);
        [setAlarmSnooze itemIdentifier];
        v36 = v35 = v11;
        eventStoreIdentifier = [v27 eventStoreIdentifier];
        storeIdentifier = [setAlarmSnooze storeIdentifier];
        *buf = 134219266;
        v52 = v33;
        v53 = 2114;
        v54 = v34;
        v55 = 2112;
        v56 = v36;
        v57 = 2048;
        v58 = v35;
        v59 = 2112;
        v60 = eventStoreIdentifier;
        v61 = 2112;
        v62 = storeIdentifier;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Snooze Event: time:%.1f calendar: '%{public}@' itemIdentifier: %@ event: <%p> local store ID: %@, remote store ID: %@", buf, 0x3Eu);

        v11 = v35;
      }

      alarmIdentifier = [setAlarmSnooze alarmIdentifier];
      [setAlarmSnooze snoozeAmount];
      v40 = [(NEKRPCEndpoint *)self _calendarItem:v11 snoozeAlarmID:alarmIdentifier withTimeIntervalFromNow:?];

      if (v40)
      {
        v48 = 0;
        v41 = [v27 saveEvent:v11 span:2 error:&v48];
        v42 = v48;
        v43 = *(qword_1000D18A8 + 8);
        if (v41)
        {
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Event saved successfully.", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100071514();
        }
      }

      else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_1000714D8();
      }
    }

LABEL_36:
LABEL_37:

    goto LABEL_38;
  }

  v6 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_recvSetReminderKitAlarmSnoozeEndpoint ignored", buf, 2u);
  }

LABEL_38:
}

@end