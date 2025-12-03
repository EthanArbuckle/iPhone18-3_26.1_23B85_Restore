@interface DMDActivationCurfewObserver
- (BOOL)_extractComponentsFromPredicate:(id)predicate;
- (DMDActivationCurfewObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier curfewPredicate:(id)predicate;
- (id)_datesForNextCurfewBoundary;
- (id)_nextDateAfter:(id)after matchingWeekday:(int64_t)weekday hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second inCalendar:(id)calendar;
- (id)evaluatePredicateWithError:(id *)error;
- (id)metadata;
- (void)_registerPredicateObserver;
- (void)invalidate;
@end

@implementation DMDActivationCurfewObserver

- (DMDActivationCurfewObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier curfewPredicate:(id)predicate
{
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = DMDActivationCurfewObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicateCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    expiredNotificationTimes = v9->_expiredNotificationTimes;
    v9->_expiredNotificationTimes = v10;

    v12 = objc_opt_new();
    scheduledAlarmIdentifiers = v9->_scheduledAlarmIdentifiers;
    v9->_scheduledAlarmIdentifiers = v12;

    if (![(DMDActivationCurfewObserver *)v9 _extractComponentsFromPredicate:predicateCopy])
    {
      v14 = 0;
      goto LABEL_6;
    }

    [(DMDActivationCurfewObserver *)v9 _registerPredicateObserver];
  }

  v14 = v9;
LABEL_6:

  return v14;
}

- (id)evaluatePredicateWithError:(id *)error
{
  v4 = objc_opt_new();
  calendarIdentifier = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v6 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:calendarIdentifier];

  v7 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v4 matchingWeekday:[(DMDActivationCurfewObserver *)self startDay] hour:[(DMDActivationCurfewObserver *)self startHour] minute:[(DMDActivationCurfewObserver *)self startMinute] second:[(DMDActivationCurfewObserver *)self startSecond] inCalendar:v6];
  v26 = v6;
  v25 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v4 matchingWeekday:[(DMDActivationCurfewObserver *)self endDay] hour:[(DMDActivationCurfewObserver *)self endHour] minute:[(DMDActivationCurfewObserver *)self endMinute] second:[(DMDActivationCurfewObserver *)self endSecond] inCalendar:v6];
  expiredNotificationTimes = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
  [expiredNotificationTimes removeAllObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  notificationTimes = [(DMDActivationCurfewObserver *)self notificationTimes];
  v10 = [notificationTimes countByEnumeratingWithState:&v27 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(notificationTimes);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        [v14 doubleValue];
        v16 = [v7 dateByAddingTimeInterval:-v15];
        if ([v16 compare:v4] == -1)
        {
          expiredNotificationTimes2 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
          [expiredNotificationTimes2 addObject:v14];
        }
      }

      v11 = [notificationTimes countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v11);
  }

  -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v25 compare:v7] == -1);
  v18 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    lastPredicateEvaluationValue = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    expiredNotificationTimes3 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
    *buf = 138544898;
    v32 = predicateType;
    v33 = 2114;
    v34 = uniqueIdentifier;
    v35 = 1024;
    v36 = lastPredicateEvaluationValue;
    v37 = 2114;
    v38 = expiredNotificationTimes3;
    v39 = 2114;
    v40 = v7;
    v41 = 2114;
    v42 = v25;
    v43 = 2114;
    v44 = v4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %d, expired notification times: %{public}@, next start date: %{public}@, next end date: %{public}@, now: %{public}@", buf, 0x44u);
  }

  v23 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];

  return v23;
}

- (void)invalidate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  scheduledAlarmIdentifiers = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
  v4 = [scheduledAlarmIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(scheduledAlarmIdentifiers);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [@"com.apple.alarm" UTF8String];
        [v8 UTF8String];
        xpc_set_event();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [scheduledAlarmIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = DMDActivationCurfewObserver;
  [(DMDActivationPredicateObserver *)&v9 invalidate];
}

- (id)metadata
{
  v8.receiver = self;
  v8.super_class = DMDActivationCurfewObserver;
  metadata = [(DMDActivationPredicateObserver *)&v8 metadata];
  expiredNotificationTimes = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
  v5 = [expiredNotificationTimes sortedArrayUsingSelector:"compare:"];

  if ([v5 count])
  {
    v9 = DMFDeclarationStatePredicatePayloadStatusExpiredNotificationTimesKey;
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [metadata setObject:v6 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusKey];
  }

  return metadata;
}

- (BOOL)_extractComponentsFromPredicate:(id)predicate
{
  predicateCopy = predicate;
  payloadCalendarIdentifier = [predicateCopy payloadCalendarIdentifier];
  [(DMDActivationCurfewObserver *)self setCalendarIdentifier:payloadCalendarIdentifier];

  calendarIdentifier = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:calendarIdentifier];

  payloadNotificationTimes = [predicateCopy payloadNotificationTimes];
  v35 = payloadNotificationTimes;
  if (payloadNotificationTimes)
  {
    v9 = [NSSet setWithArray:payloadNotificationTimes];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  [(DMDActivationCurfewObserver *)self setNotificationTimes:v9];

  v11 = objc_opt_new();
  [v11 setFormatOptions:544];
  timeZone = [v7 timeZone];
  [v11 setTimeZone:timeZone];

  payloadStartTime = [predicateCopy payloadStartTime];
  v14 = [v11 dateFromString:payloadStartTime];

  if (v14)
  {
    v15 = [v7 components:224 fromDate:v14];
    -[DMDActivationCurfewObserver setStartHour:](self, "setStartHour:", [v15 hour]);
    -[DMDActivationCurfewObserver setStartMinute:](self, "setStartMinute:", [v15 minute]);
    -[DMDActivationCurfewObserver setStartSecond:](self, "setStartSecond:", [v15 second]);
  }

  else
  {
    v15 = 0;
  }

  payloadEndTime = [predicateCopy payloadEndTime];
  v17 = [v11 dateFromString:payloadEndTime];

  if (v17)
  {
    v18 = [v7 components:224 fromDate:v17];

    -[DMDActivationCurfewObserver setEndHour:](self, "setEndHour:", [v18 hour]);
    -[DMDActivationCurfewObserver setEndMinute:](self, "setEndMinute:", [v18 minute]);
    -[DMDActivationCurfewObserver setEndSecond:](self, "setEndSecond:", [v18 second]);
    v15 = v18;
  }

  payloadStartDay = [predicateCopy payloadStartDay];
  -[DMDActivationCurfewObserver setStartDay:](self, "setStartDay:", [payloadStartDay integerValue]);

  payloadEndDay = [predicateCopy payloadEndDay];
  -[DMDActivationCurfewObserver setEndDay:](self, "setEndDay:", [payloadEndDay integerValue]);

  v21 = [v7 maximumRangeOfUnit:512];
  v23 = v21 + v22 - 1;
  v24 = [(DMDActivationCurfewObserver *)self startDay]< v21 && [(DMDActivationCurfewObserver *)self startDay]> v23;
  v25 = [(DMDActivationCurfewObserver *)self endDay]< v21 && [(DMDActivationCurfewObserver *)self endDay]> v23;
  if (v14)
  {
    v26 = v17 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (((v27 | v24) & 1) != 0 || v25 || ![v14 compare:v17])
  {
    v28 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10007C248(self, predicateCopy, v28);
    }

    v29 = 0;
  }

  else
  {
    v28 = DMFConfigurationEngineLog();
    v29 = 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      predicateType = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      calendarIdentifier2 = [(DMDActivationCurfewObserver *)self calendarIdentifier];
      notificationTimes = [(DMDActivationCurfewObserver *)self notificationTimes];
      *buf = 138546178;
      v37 = predicateType;
      v38 = 2114;
      v39 = uniqueIdentifier;
      v40 = 2114;
      v41 = calendarIdentifier2;
      v42 = 2114;
      v43 = notificationTimes;
      v44 = 2048;
      startDay = [(DMDActivationCurfewObserver *)self startDay];
      v46 = 2048;
      startHour = [(DMDActivationCurfewObserver *)self startHour];
      v48 = 2048;
      startMinute = [(DMDActivationCurfewObserver *)self startMinute];
      v50 = 2048;
      startSecond = [(DMDActivationCurfewObserver *)self startSecond];
      v52 = 2048;
      endDay = [(DMDActivationCurfewObserver *)self endDay];
      v54 = 2048;
      endHour = [(DMDActivationCurfewObserver *)self endHour];
      v56 = 2048;
      endMinute = [(DMDActivationCurfewObserver *)self endMinute];
      v58 = 2048;
      endSecond = [(DMDActivationCurfewObserver *)self endSecond];
      v29 = 1;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, notifications times: %{public}@, start day: %ld, start hour: %ld, start minute: %ld, start second: %ld, end day: %ld, end hour: %ld, end minute: %ld, end second: %ld", buf, 0x7Au);
    }
  }

  return v29;
}

- (void)_registerPredicateObserver
{
  _datesForNextCurfewBoundary = [(DMDActivationCurfewObserver *)self _datesForNextCurfewBoundary];
  scheduledAlarmIdentifiers = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
  [scheduledAlarmIdentifiers removeAllObjects];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = _datesForNextCurfewBoundary;
  v20 = [obj countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v20)
  {
    v5 = *v22;
    v6 = 1;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
        v10 = [NSString stringWithFormat:@"%@.%@-%ld", @"com.apple.dmd.alarm", uniqueIdentifier, v6];

        [v8 timeIntervalSince1970];
        v12 = (v11 * 1000000000.0);
        scheduledAlarmIdentifiers2 = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
        [scheduledAlarmIdentifiers2 addObject:v10];

        v14 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          [(DMDActivationPredicateObserver *)self predicateType];
          v16 = v15 = v5;
          uniqueIdentifier2 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
          *buf = 138544386;
          v26 = v16;
          v27 = 2114;
          v28 = uniqueIdentifier2;
          v29 = 2114;
          v30 = v10;
          v31 = 2114;
          v32 = v8;
          v33 = 2048;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ will schedule alarm with identifier: %{public}@ to fire at date: %{public}@, epoch time in nano seconds: %lld", buf, 0x34u);

          v5 = v15;
        }

        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v18, [@"ShouldWake" UTF8String], 0);
        xpc_dictionary_set_date(v18, [@"Date" UTF8String], v12);
        [@"com.apple.alarm" UTF8String];
        [v10 UTF8String];
        xpc_set_event();
        ++v6;
      }

      v20 = [obj countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v20);
  }
}

- (id)_datesForNextCurfewBoundary
{
  v3 = objc_opt_new();
  calendarIdentifier = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v5 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:calendarIdentifier];

  v6 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v3 matchingWeekday:[(DMDActivationCurfewObserver *)self startDay] hour:[(DMDActivationCurfewObserver *)self startHour] minute:[(DMDActivationCurfewObserver *)self startMinute] second:[(DMDActivationCurfewObserver *)self startSecond] inCalendar:v5];
  v7 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v3 matchingWeekday:[(DMDActivationCurfewObserver *)self endDay] hour:[(DMDActivationCurfewObserver *)self endHour] minute:[(DMDActivationCurfewObserver *)self endMinute] second:[(DMDActivationCurfewObserver *)self endSecond] inCalendar:v5];
  v8 = objc_opt_new();
  v9 = [v6 compare:v7];
  if (v9 == 1)
  {
    [v8 addObject:v7];
LABEL_14:
    v17 = [v8 copy];
    goto LABEL_18;
  }

  if (v9 == -1)
  {
    [v8 addObject:v6];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    notificationTimes = [(DMDActivationCurfewObserver *)self notificationTimes];
    v11 = [notificationTimes countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(notificationTimes);
          }

          [*(*(&v22 + 1) + 8 * i) doubleValue];
          v16 = [v6 dateByAddingTimeInterval:-v15];
          if ([v3 compare:v16] == -1)
          {
            [v8 addObject:v16];
          }
        }

        v12 = [notificationTimes countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v12);
    }

    goto LABEL_14;
  }

  v18 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138544130;
    v27 = predicateType;
    v28 = 2114;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = v6;
    v32 = 2114;
    v33 = v7;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed to calculate the next curfew boundary date for next start date: %{public}@, next end date: %{public}@", buf, 0x2Au);
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)_nextDateAfter:(id)after matchingWeekday:(int64_t)weekday hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second inCalendar:(id)calendar
{
  calendarCopy = calendar;
  afterCopy = after;
  v15 = objc_opt_new();
  [v15 setWeekday:weekday];
  [v15 setHour:hour];
  [v15 setMinute:minute];
  [v15 setSecond:second];
  v16 = [calendarCopy nextDateAfterDate:afterCopy matchingComponents:v15 options:1024];

  return v16;
}

@end