@interface NEKRPCEndpoint
- (BOOL)_calendarItem:(id)a3 snoozeAlarmID:(id)a4 withTimeIntervalFromNow:(double)a5;
- (BOOL)_disableMutation;
- (void)_recvDeleteEventEndpoint:(id)a3;
- (void)_recvSetEventKitAlarmSnoozeEndpoint:(id)a3;
- (void)_recvSetEventKitReminderCompletedEndpoint:(id)a3;
- (void)_recvSetParticipantStatusEndpoint:(id)a3;
- (void)_recvSetReminderKitAlarmSnoozeEndpoint:(id)a3;
- (void)_recvSetReminderKitReminderCompletedEndpoint:(id)a3;
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

- (void)_recvSetParticipantStatusEndpoint:(id)a3
{
  v5 = a3;
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
    v8 = [v5 data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:v8];

    if ([(NEKPBProtoBuffMessage *)v9 hasSetParticipantStatus])
    {
      v10 = [(NEKPBProtoBuffMessage *)v9 setParticipantStatus];
      v11 = NSStringFromSelector(a2);
      v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v12 eventStoreIdentifier];
        v16 = [v10 storeIdentifier];
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Local store ID %@, remote store ID %@", buf, 0x16u);
      }

      v17 = [v10 itemIdentifier];
      v18 = [v12 eventWithIdentifier:v17];

      v19 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v10 itemIdentifier];
        *buf = 138412546;
        v29 = v21;
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "itemIdentifier: %@, event: <%p>", buf, 0x16u);
      }

      v22 = [v10 status];
      if ([v18 participationStatus] != v22)
      {
        [v18 setParticipationStatus:{objc_msgSend(v10, "status")}];
        [v18 setInvitationStatus:0];
        v23 = [v18 eventStore];
        v27 = 0;
        v24 = [v23 saveEvent:v18 span:objc_msgSend(v10 error:{"span"), &v27}];
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

- (void)_recvSetEventKitReminderCompletedEndpoint:(id)a3
{
  v5 = a3;
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
    v8 = [v5 data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:v8];

    if ([(NEKPBProtoBuffMessage *)v9 hasSetReminderComplete])
    {
      v10 = [(NEKPBProtoBuffMessage *)v9 setReminderComplete];
      v11 = NSStringFromSelector(a2);
      v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

      v13 = [v10 calendarName];
      v14 = [v10 reminderTitle];
      v15 = [v10 externalIdentifier];
      v16 = sub_100028414(v12, v13, v14, v15);

      if (v16)
      {
        sub_100028810(v16);
        v17 = [v16 completionDate];

        if ((((v17 == 0) ^ [v10 isComplete]) & 1) == 0)
        {
          [v16 setCompleted:{objc_msgSend(v10, "isComplete")}];
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

- (void)_recvSetReminderKitReminderCompletedEndpoint:(id)a3
{
  v4 = a3;
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
    v7 = [v4 data];
    v8 = [(NEKPBProtoBuffMessage *)v6 initWithData:v7];

    if ([(NEKPBProtoBuffMessage *)v8 hasSetReminderComplete])
    {
      v9 = [(NEKPBProtoBuffMessage *)v8 setReminderComplete];
      v10 = objc_alloc_init(REMStore);
      v11 = [v9 externalIdentifier];
      v25 = 0;
      v12 = [v10 fetchReminderWithExternalIdentifier:v11 inList:0 error:&v25];
      v13 = v25;

      if (v12)
      {
        v22 = v13;
        v14 = [[REMSaveRequest alloc] initWithStore:v10];
        [v14 setAuthor:self->_clientName];
        v15 = [v14 updateReminder:v12];
        sub_100028810(v15);
        v16 = [v12 isCompleted];
        if (v16 != [v9 isComplete])
        {
          [v15 setCompleted:{objc_msgSend(v9, "isComplete")}];
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

- (void)_recvDeleteEventEndpoint:(id)a3
{
  v5 = a3;
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
    v8 = [v5 data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:v8];

    if ([(NEKPBProtoBuffMessage *)v9 hasDeleteEvent])
    {
      v10 = NSStringFromSelector(a2);
      v11 = [EKEventStore eks_eventOnlyStoreFor:v10];

      v12 = [(NEKPBProtoBuffMessage *)v9 deleteEvent];
      [v12 eventStart];
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
        v39 = v5;
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
              v24 = [v23 calendar];
              v25 = [v24 title];
              v26 = [(NEKPBProtoBuffMessage *)v45 deleteEvent];
              v27 = [v26 calendarTitle];
              v28 = [v25 isEqual:v27];

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
        v5 = v39;
        v11 = v37;
        v17 = v44;
      }

      if ([v17 count] == 1)
      {
        v29 = v17;
        v30 = [v17 objectAtIndexedSubscript:0];
        v31 = [(NEKPBProtoBuffMessage *)v45 deleteEvent];
        v47 = 0;
        v32 = [v11 removeEvent:v30 span:objc_msgSend(v31 error:{"span"), &v47}];
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

- (BOOL)_calendarItem:(id)a3 snoozeAlarmID:(id)a4 withTimeIntervalFromNow:(double)a5
{
  v7 = a3;
  v8 = a4;
  [v7 alarms];
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
        v14 = [v13 externalID];
        v15 = [v14 isEqualToString:v8];

        if (v15)
        {
          [v7 snoozeAlarm:v13 withTimeIntervalFromNow:a5];
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

- (void)_recvSetEventKitAlarmSnoozeEndpoint:(id)a3
{
  v5 = a3;
  if (![(NEKRPCEndpoint *)self _disableMutation])
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    v8 = [v5 data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:v8];

    if (![(NEKPBProtoBuffMessage *)v9 hasSetAlarmSnooze])
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070FDC();
      }

      goto LABEL_38;
    }

    v10 = [(NEKPBProtoBuffMessage *)v9 setAlarmSnooze];
    v11 = NSStringFromSelector(a2);
    v12 = [EKEventStore eks_eventOnlyStoreFor:v11];

    if ([v10 hasCalendarName] && objc_msgSend(v10, "hasReminderTitle"))
    {
      v13 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        log = v13;
        [v10 snoozeAmount];
        v15 = v14;
        v16 = [v10 calendarName];
        v42 = sub_10002CDF8(v16);
        v17 = [v10 reminderTitle];
        v18 = sub_10002CDF8(v17);
        v19 = [v10 externalIdentifier];
        *buf = 134218754;
        v49 = v15;
        v50 = 2114;
        v51 = v42;
        v52 = 2114;
        v53 = v18;
        v54 = 2112;
        v55 = v19;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Snooze Reminder: time:%.1f calendar: '%{public}@' reminder: '%{public}@' externalId: %@", buf, 0x2Au);
      }

      v20 = [v10 calendarName];
      v21 = [v10 reminderTitle];
      v22 = [v10 externalIdentifier];
      v23 = sub_100028414(v12, v20, v21, v22);

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
      v24 = [v10 alarmIdentifier];
      [v10 snoozeAmount];
      v25 = [(NEKRPCEndpoint *)self _calendarItem:v23 snoozeAlarmID:v24 withTimeIntervalFromNow:?];

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
      if (![v10 hasItemIdentifier] || !objc_msgSend(v10, "hasStoreIdentifier"))
      {
        goto LABEL_37;
      }

      v30 = [v10 itemIdentifier];
      v23 = [v12 eventWithIdentifier:v30];

      v31 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v31;
        [v10 snoozeAmount];
        v33 = v32;
        loga = [v10 calendarName];
        v41 = sub_10002CDF8(loga);
        v34 = [v10 itemIdentifier];
        v35 = [v12 eventStoreIdentifier];
        v36 = [v10 storeIdentifier];
        *buf = 134219266;
        v49 = v33;
        v50 = 2114;
        v51 = v41;
        v52 = 2112;
        v53 = v34;
        v54 = 2048;
        v55 = v23;
        v56 = 2112;
        v57 = v35;
        v58 = 2112;
        v59 = v36;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Snooze Event: time:%.1f calendar: '%{public}@' itemIdentifier: %@ event: <%p> local store ID: %@, remote store ID: %@", buf, 0x3Eu);
      }

      v37 = [v10 alarmIdentifier];
      [v10 snoozeAmount];
      v38 = [(NEKRPCEndpoint *)self _calendarItem:v23 snoozeAlarmID:v37 withTimeIntervalFromNow:?];

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

- (void)_recvSetReminderKitAlarmSnoozeEndpoint:(id)a3
{
  v5 = a3;
  if (![(NEKRPCEndpoint *)self _disableMutation])
  {
    v7 = [NEKPBProtoBuffMessage alloc];
    v8 = [v5 data];
    v9 = [(NEKPBProtoBuffMessage *)v7 initWithData:v8];

    if (![(NEKPBProtoBuffMessage *)v9 hasSetAlarmSnooze])
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070FDC();
      }

      goto LABEL_37;
    }

    v10 = [(NEKPBProtoBuffMessage *)v9 setAlarmSnooze];
    if ([v10 hasCalendarName] && objc_msgSend(v10, "hasReminderTitle"))
    {
      v11 = objc_alloc_init(REMStore);
      v12 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        [v10 snoozeAmount];
        v15 = v14;
        v16 = [v10 calendarName];
        v17 = sub_10002CDF8(v16);
        v18 = [v10 reminderTitle];
        sub_10002CDF8(v18);
        v19 = v47 = v11;
        v20 = [v10 externalIdentifier];
        *buf = 134218754;
        v52 = v15;
        v53 = 2114;
        v54 = v17;
        v55 = 2114;
        v56 = v19;
        v57 = 2112;
        v58 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Snooze Reminder: time:%.1f calendar: '%{public}@' reminder: '%{public}@' externalId: %@", buf, 0x2Au);

        v11 = v47;
      }

      v21 = [v10 externalIdentifier];
      v50 = 0;
      v22 = [v11 fetchReminderWithExternalIdentifier:v21 inList:0 error:&v50];
      v23 = v50;

      if (v22)
      {
        v24 = [[REMSaveRequest alloc] initWithStore:v11];
        [v24 setAuthor:self->_clientName];
        v25 = [v24 updateReminder:v22];
        sub_100028810(v25);
        [v10 snoozeAmount];
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
      if (![v10 hasItemIdentifier] || !objc_msgSend(v10, "hasStoreIdentifier"))
      {
        goto LABEL_36;
      }

      v29 = NSStringFromSelector(a2);
      v27 = [EKEventStore eks_eventOnlyStoreFor:v29];

      v30 = [v10 itemIdentifier];
      v11 = [v27 eventWithIdentifier:v30];

      v31 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        log = v31;
        [v10 snoozeAmount];
        v33 = v32;
        v46 = [v10 calendarName];
        v34 = sub_10002CDF8(v46);
        [v10 itemIdentifier];
        v36 = v35 = v11;
        v37 = [v27 eventStoreIdentifier];
        v38 = [v10 storeIdentifier];
        *buf = 134219266;
        v52 = v33;
        v53 = 2114;
        v54 = v34;
        v55 = 2112;
        v56 = v36;
        v57 = 2048;
        v58 = v35;
        v59 = 2112;
        v60 = v37;
        v61 = 2112;
        v62 = v38;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Snooze Event: time:%.1f calendar: '%{public}@' itemIdentifier: %@ event: <%p> local store ID: %@, remote store ID: %@", buf, 0x3Eu);

        v11 = v35;
      }

      v39 = [v10 alarmIdentifier];
      [v10 snoozeAmount];
      v40 = [(NEKRPCEndpoint *)self _calendarItem:v11 snoozeAlarmID:v39 withTimeIntervalFromNow:?];

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