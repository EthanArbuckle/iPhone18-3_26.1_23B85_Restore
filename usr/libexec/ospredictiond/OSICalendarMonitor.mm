@interface OSICalendarMonitor
- (OSICalendarMonitor)init;
- (id)nextFlightEventWithEventIDs:(id)ds;
- (id)relevantEventDeadline;
- (id)upcomingEventIDs;
@end

@implementation OSICalendarMonitor

- (id)relevantEventDeadline
{
  upcomingEventIDs = [(OSICalendarMonitor *)self upcomingEventIDs];
  v4 = [(OSICalendarMonitor *)self nextFlightEventWithEventIDs:upcomingEventIDs];
  if (v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Upcoming or recent flight; forcing immediate charge", v9, 2u);
    }

    startDate = [v4 startDate];
  }

  else
  {
    startDate = +[NSDate distantFuture];
  }

  v7 = startDate;

  return v7;
}

- (id)upcomingEventIDs
{
  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];
  v5 = [v3 dateByAddingTimeInterval:86400.0];
  v6 = [(EKEventStore *)self->_calendar predicateForEventsWithStartDate:v4 endDate:v5 calendars:0 loadDefaultProperties:1];
  calendar = [(OSICalendarMonitor *)self calendar];
  v8 = [calendar eventObjectIDsMatchingPredicate:v6];

  return v8;
}

- (OSICalendarMonitor)init
{
  v3 = [[EKEventStore alloc] initWithEKOptions:128];
  calendar = self->_calendar;
  self->_calendar = v3;

  v5 = os_log_create("com.apple.osintelligence", "calendarmonitor");
  log = self->_log;
  self->_log = v5;

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"relevantEventDeadline" name:EKEventStoreChangedNotification object:0];

  return self;
}

- (id)nextFlightEventWithEventIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSDate distantFuture];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v7)
  {
    v9 = v7;
    log = 0;
    v10 = *v34;
    v11 = &MGGetBoolAnswer_ptr;
    *&v8 = 138412546;
    v27 = v8;
    v30 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [(EKEventStore *)self->_calendar publicObjectWithObjectID:*(*(&v33 + 1) + 8 * i), v27];
        v14 = v11[155];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          if (([v15 isAllDay] & 1) == 0)
          {
            suggestionInfo = [v15 suggestionInfo];

            if (suggestionInfo)
            {
              v17 = [SGEventMetadata eventMetadataFromEKEvent:v15];
              categoryDescription = [v17 categoryDescription];
              v19 = [categoryDescription localizedCaseInsensitiveContainsString:@"flight"];

              if (v19 && ([v15 startDate], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "timeIntervalSinceDate:", v5), v22 = v21, v20, v22 < 0.0))
              {
                v23 = v15;

                startDate = [v23 startDate];

                v25 = self->_log;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  loga = v25;
                  startDate2 = [v23 startDate];
                  endDate = [v23 endDate];
                  *buf = v27;
                  v38 = startDate2;
                  v39 = 2112;
                  v40 = endDate;
                  _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "Found flight from %@-%@", buf, 0x16u);
                }
              }

              else
              {
                startDate = v5;
                v23 = log;
              }

              v5 = startDate;
              log = v23;
              v6 = v30;
              v11 = &MGGetBoolAnswer_ptr;
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }

  else
  {
    log = 0;
  }

  return log;
}

@end