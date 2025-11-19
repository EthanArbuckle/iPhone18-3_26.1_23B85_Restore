@interface DMDActivationCurfewObserver
- (BOOL)_extractComponentsFromPredicate:(id)a3;
- (DMDActivationCurfewObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 curfewPredicate:(id)a5;
- (id)_datesForNextCurfewBoundary;
- (id)_nextDateAfter:(id)a3 matchingWeekday:(int64_t)a4 hour:(int64_t)a5 minute:(int64_t)a6 second:(int64_t)a7 inCalendar:(id)a8;
- (id)evaluatePredicateWithError:(id *)a3;
- (id)metadata;
- (void)_registerPredicateObserver;
- (void)invalidate;
@end

@implementation DMDActivationCurfewObserver

- (DMDActivationCurfewObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 curfewPredicate:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = DMDActivationCurfewObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:a3 uniqueIdentifier:a4 predicate:v8];
  if (v9)
  {
    v10 = objc_opt_new();
    expiredNotificationTimes = v9->_expiredNotificationTimes;
    v9->_expiredNotificationTimes = v10;

    v12 = objc_opt_new();
    scheduledAlarmIdentifiers = v9->_scheduledAlarmIdentifiers;
    v9->_scheduledAlarmIdentifiers = v12;

    if (![(DMDActivationCurfewObserver *)v9 _extractComponentsFromPredicate:v8])
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

- (id)evaluatePredicateWithError:(id *)a3
{
  v4 = objc_opt_new();
  v5 = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v6 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:v5];

  v7 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v4 matchingWeekday:[(DMDActivationCurfewObserver *)self startDay] hour:[(DMDActivationCurfewObserver *)self startHour] minute:[(DMDActivationCurfewObserver *)self startMinute] second:[(DMDActivationCurfewObserver *)self startSecond] inCalendar:v6];
  v26 = v6;
  v25 = [(DMDActivationCurfewObserver *)self _nextDateAfter:v4 matchingWeekday:[(DMDActivationCurfewObserver *)self endDay] hour:[(DMDActivationCurfewObserver *)self endHour] minute:[(DMDActivationCurfewObserver *)self endMinute] second:[(DMDActivationCurfewObserver *)self endSecond] inCalendar:v6];
  v8 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
  [v8 removeAllObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(DMDActivationCurfewObserver *)self notificationTimes];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v45 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        [v14 doubleValue];
        v16 = [v7 dateByAddingTimeInterval:-v15];
        if ([v16 compare:v4] == -1)
        {
          v17 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
          [v17 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v11);
  }

  -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v25 compare:v7] == -1);
  v18 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(DMDActivationPredicateObserver *)self predicateType];
    v20 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v21 = [(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue];
    v22 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
    *buf = 138544898;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 2114;
    v38 = v22;
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
  v3 = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [@"com.apple.alarm" UTF8String];
        [v8 UTF8String];
        xpc_set_event();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(DMDActivationPredicateObserver *)&v8 metadata];
  v4 = [(DMDActivationCurfewObserver *)self expiredNotificationTimes];
  v5 = [v4 sortedArrayUsingSelector:"compare:"];

  if ([v5 count])
  {
    v9 = DMFDeclarationStatePredicatePayloadStatusExpiredNotificationTimesKey;
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v3 setObject:v6 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusKey];
  }

  return v3;
}

- (BOOL)_extractComponentsFromPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 payloadCalendarIdentifier];
  [(DMDActivationCurfewObserver *)self setCalendarIdentifier:v5];

  v6 = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:v6];

  v8 = [v4 payloadNotificationTimes];
  v35 = v8;
  if (v8)
  {
    v9 = [NSSet setWithArray:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  [(DMDActivationCurfewObserver *)self setNotificationTimes:v9];

  v11 = objc_opt_new();
  [v11 setFormatOptions:544];
  v12 = [v7 timeZone];
  [v11 setTimeZone:v12];

  v13 = [v4 payloadStartTime];
  v14 = [v11 dateFromString:v13];

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

  v16 = [v4 payloadEndTime];
  v17 = [v11 dateFromString:v16];

  if (v17)
  {
    v18 = [v7 components:224 fromDate:v17];

    -[DMDActivationCurfewObserver setEndHour:](self, "setEndHour:", [v18 hour]);
    -[DMDActivationCurfewObserver setEndMinute:](self, "setEndMinute:", [v18 minute]);
    -[DMDActivationCurfewObserver setEndSecond:](self, "setEndSecond:", [v18 second]);
    v15 = v18;
  }

  v19 = [v4 payloadStartDay];
  -[DMDActivationCurfewObserver setStartDay:](self, "setStartDay:", [v19 integerValue]);

  v20 = [v4 payloadEndDay];
  -[DMDActivationCurfewObserver setEndDay:](self, "setEndDay:", [v20 integerValue]);

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
      sub_10007C248(self, v4, v28);
    }

    v29 = 0;
  }

  else
  {
    v28 = DMFConfigurationEngineLog();
    v29 = 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v34 = [(DMDActivationPredicateObserver *)self predicateType];
      v33 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v30 = [(DMDActivationCurfewObserver *)self calendarIdentifier];
      v32 = [(DMDActivationCurfewObserver *)self notificationTimes];
      *buf = 138546178;
      v37 = v34;
      v38 = 2114;
      v39 = v33;
      v40 = 2114;
      v41 = v30;
      v42 = 2114;
      v43 = v32;
      v44 = 2048;
      v45 = [(DMDActivationCurfewObserver *)self startDay];
      v46 = 2048;
      v47 = [(DMDActivationCurfewObserver *)self startHour];
      v48 = 2048;
      v49 = [(DMDActivationCurfewObserver *)self startMinute];
      v50 = 2048;
      v51 = [(DMDActivationCurfewObserver *)self startSecond];
      v52 = 2048;
      v53 = [(DMDActivationCurfewObserver *)self endDay];
      v54 = 2048;
      v55 = [(DMDActivationCurfewObserver *)self endHour];
      v56 = 2048;
      v57 = [(DMDActivationCurfewObserver *)self endMinute];
      v58 = 2048;
      v59 = [(DMDActivationCurfewObserver *)self endSecond];
      v29 = 1;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, notifications times: %{public}@, start day: %ld, start hour: %ld, start minute: %ld, start second: %ld, end day: %ld, end hour: %ld, end minute: %ld, end second: %ld", buf, 0x7Au);
    }
  }

  return v29;
}

- (void)_registerPredicateObserver
{
  v3 = [(DMDActivationCurfewObserver *)self _datesForNextCurfewBoundary];
  v4 = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
  [v4 removeAllObjects];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
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
        v9 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
        v10 = [NSString stringWithFormat:@"%@.%@-%ld", @"com.apple.dmd.alarm", v9, v6];

        [v8 timeIntervalSince1970];
        v12 = (v11 * 1000000000.0);
        v13 = [(DMDActivationCurfewObserver *)self scheduledAlarmIdentifiers];
        [v13 addObject:v10];

        v14 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          [(DMDActivationPredicateObserver *)self predicateType];
          v16 = v15 = v5;
          v17 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
          *buf = 138544386;
          v26 = v16;
          v27 = 2114;
          v28 = v17;
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
  v4 = [(DMDActivationCurfewObserver *)self calendarIdentifier];
  v5 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:v4];

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
    v10 = [(DMDActivationCurfewObserver *)self notificationTimes];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v22 + 1) + 8 * i) doubleValue];
          v16 = [v6 dateByAddingTimeInterval:-v15];
          if ([v3 compare:v16] == -1)
          {
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v12);
    }

    goto LABEL_14;
  }

  v18 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = [(DMDActivationPredicateObserver *)self predicateType];
    v21 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138544130;
    v27 = v20;
    v28 = 2114;
    v29 = v21;
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

- (id)_nextDateAfter:(id)a3 matchingWeekday:(int64_t)a4 hour:(int64_t)a5 minute:(int64_t)a6 second:(int64_t)a7 inCalendar:(id)a8
{
  v13 = a8;
  v14 = a3;
  v15 = objc_opt_new();
  [v15 setWeekday:a4];
  [v15 setHour:a5];
  [v15 setMinute:a6];
  [v15 setSecond:a7];
  v16 = [v13 nextDateAfterDate:v14 matchingComponents:v15 options:1024];

  return v16;
}

@end