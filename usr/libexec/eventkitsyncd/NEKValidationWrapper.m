@interface NEKValidationWrapper
+ (id)validationWrapperForPb:(id)a3;
+ (id)validationWrapperForRightNow;
+ (id)validationWrapperForSameSpan:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)_countEvents;
- (void)validate;
@end

@implementation NEKValidationWrapper

+ (id)validationWrapperForRightNow
{
  v2 = [(NEKWrapper *)[NEKValidationWrapper alloc] initWithStoreType:0 nekChangeType:0];
  v3 = +[NSDate date];
  [(NEKValidationWrapper *)v2 setStart:v3];

  v4 = [(NEKValidationWrapper *)v2 start];
  v5 = [v4 dateByAddingTimeInterval:1209600.0];
  [(NEKValidationWrapper *)v2 setEnd:v5];

  [(NEKValidationWrapper *)v2 _countEvents];

  return v2;
}

+ (id)validationWrapperForSameSpan:(id)a3
{
  v3 = a3;
  v4 = [(NEKWrapper *)[NEKValidationWrapper alloc] initWithStoreType:0 nekChangeType:0];
  v5 = [v3 start];
  [(NEKValidationWrapper *)v4 setStart:v5];

  v6 = [v3 end];

  [(NEKValidationWrapper *)v4 setEnd:v6];
  [(NEKValidationWrapper *)v4 _countEvents];

  return v4;
}

+ (id)validationWrapperForPb:(id)a3
{
  v3 = a3;
  v4 = [(NEKWrapper *)[NEKValidationWrapper alloc] initWithStoreType:0 nekChangeType:0];
  [v3 startDate];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [(NEKValidationWrapper *)v4 setStart:v5];

  [v3 endDate];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [(NEKValidationWrapper *)v4 setEnd:v6];

  -[NEKValidationWrapper setMasterCount:](v4, "setMasterCount:", [v3 masterCount]);
  -[NEKValidationWrapper setOccurrenceCount:](v4, "setOccurrenceCount:", [v3 occurrenceCount]);
  v7 = [v3 showAlert];

  [(NEKValidationWrapper *)v4 setShowAlert:v7];

  return v4;
}

- (void)_countEvents
{
  [(NEKValidationWrapper *)self setMasterCount:0];
  [(NEKValidationWrapper *)self setOccurrenceCount:0];
  v26 = [EKEventStore eks_eventOnlyStoreFor:@"ValidationWrapper"];
  [v26 sources];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v3 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    v23 = *v34;
    do
    {
      v6 = 0;
      v24 = v4;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        if (sub_10000A2E8(v7))
        {
          v8 = [v7 allCalendars];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v28 = v8;
          v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v30;
            v27 = *v30;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v30 != v11)
                {
                  objc_enumerationMutation(v28);
                }

                v13 = *(*(&v29 + 1) + 8 * i);
                if (sub_10000A3B8(v13))
                {
                  v14 = [(NEKValidationWrapper *)self start];
                  v15 = [(NEKValidationWrapper *)self end];
                  v16 = [v26 predicateForMasterEventsWithOccurrencesWithStartDate:v14 endDate:v15 inCalendar:v13];

                  v17 = [v26 eventObjectIDsMatchingPredicate:v16];
                  -[NEKValidationWrapper setMasterCount:](self, "setMasterCount:", [v17 count] + -[NEKValidationWrapper masterCount](self, "masterCount"));
                  v18 = [(NEKValidationWrapper *)self start];
                  v19 = [(NEKValidationWrapper *)self end];
                  v37 = v13;
                  v20 = [NSArray arrayWithObjects:&v37 count:1];
                  v21 = [v26 predicateForEventsWithStartDate:v18 endDate:v19 calendars:v20];

                  v22 = [v26 eventObjectIDsMatchingPredicate:v21];

                  -[NEKValidationWrapper setOccurrenceCount:](self, "setOccurrenceCount:", [v22 count] + -[NEKValidationWrapper occurrenceCount](self, "occurrenceCount"));
                  v11 = v27;
                }
              }

              v10 = [v28 countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v10);
          }

          v5 = v23;
          v4 = v24;
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  [(NEKValidationWrapper *)self setShowAlert:CFPreferencesGetAppBooleanValue(@"cvAlertEnabled", @"com.apple.Bridge.CalendarSyncDebug", 0) != 0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NEKValidationWrapper *)self start];
    v7 = [v5 start];
    if ([v6 isEqual:v7])
    {
      v8 = [(NEKValidationWrapper *)self end];
      v9 = [v5 end];
      if ([v8 isEqual:v9])
      {
        v10 = [(NEKValidationWrapper *)self masterCount];
        v11 = v10 == [v5 masterCount];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  if (qword_1000D1760 != -1)
  {
    sub_10006F3B0();
  }

  v3 = qword_1000D1768;
  v4 = [(NEKValidationWrapper *)self start];
  v5 = [v3 stringFromDate:v4];

  v6 = qword_1000D1768;
  v7 = [(NEKValidationWrapper *)self end];
  v8 = [v6 stringFromDate:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [NSString stringWithFormat:@"<%@:%p start:%@ end:%@ masterCount:%d occurrenceCount:%d>", v10, self, v5, v8, [(NEKValidationWrapper *)self masterCount], [(NEKValidationWrapper *)self occurrenceCount]];

  return v11;
}

- (void)validate
{
  v3 = [NEKValidationWrapper validationWrapperForSameSpan:self];
  v4 = [v3 isEqual:self];
  v5 = *(qword_1000D18A8 + 8);
  if (v4)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validation succeeded, %@.", &v7, 0xCu);
    }

    qword_1000D1770 = 0;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006F3C4();
    }

    if (++qword_1000D1770 == 2)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
      {
        sub_10006F43C();
      }

      if ([(NEKValidationWrapper *)self showAlert])
      {
        v6 = [NSString stringWithFormat:@"Calendar validation failure. Please file a radar against EventKitSync | watchOS"];
        CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Sync validation failure", v6, @"OK");
      }
    }
  }
}

@end