@interface OSISleepScheduleMonitor
- (BOOL)date:(id)date coveredByAnyWeekdayWithOccurrences:(unint64_t)occurrences;
- (BOOL)date:(id)date inSleepWindowWithSecondsBeforeStart:(double)start secondsBeforeEnd:(double)end withSleepStore:(id)store;
- (OSISleepScheduleMonitor)init;
@end

@implementation OSISleepScheduleMonitor

- (OSISleepScheduleMonitor)init
{
  v6.receiver = self;
  v6.super_class = OSISleepScheduleMonitor;
  v2 = [(OSISleepScheduleMonitor *)&v6 init];
  if (v2)
  {
    v3 = [[HKSPSleepStore alloc] initWithIdentifier:@"com.apple.osintelligence.spn"];
    sleepStore = v2->_sleepStore;
    v2->_sleepStore = v3;
  }

  return v2;
}

- (BOOL)date:(id)date inSleepWindowWithSecondsBeforeStart:(double)start secondsBeforeEnd:(double)end withSleepStore:(id)store
{
  dateCopy = date;
  storeCopy = store;
  v12 = os_transaction_create();
  v13 = objc_autoreleasePoolPush();
  v14 = os_log_create("com.apple.osintelligence", "inactivity.sleepschedule");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10005B868(dateCopy, v14);
  }

  v15 = [storeCopy currentSleepScheduleWithError:0];
  v16 = v15;
  if (v15)
  {
    if ([v15 isEnabled])
    {
      v17 = [storeCopy currentSleepScheduleStateWithError:0];
      v18 = [storeCopy nextEventDueAfterDate:dateCopy error:0];
      v19 = v18;
      if (v17 == 3)
      {
        goto LABEL_22;
      }

      if (v17 == 2)
      {
        if (!v18)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10005B8E0(v14);
          }

          goto LABEL_39;
        }

        identifier = [v18 identifier];
        if ([identifier isEqual:HKSPSleepEventIdentifierWakeUp])
        {
          dueDate = [v19 dueDate];
          v22 = [dueDate dateByAddingTimeInterval:-end];
          [v22 timeIntervalSinceDate:dateCopy];
          v24 = v23;

          if (v24 < 0.0)
          {
            v25 = v14;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              dueDate2 = [v19 dueDate];
              *buf = 138412290;
              v43 = dueDate2;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " Wake upcoming at %@. Do not engage", buf, 0xCu);
            }

LABEL_34:
            v28 = 0;
LABEL_40:

            goto LABEL_41;
          }
        }

        else
        {
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v33 = " In schedule and far from wakeup -> in sleep window";
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      if (v18)
      {
        identifier2 = [v18 identifier];
        if ([identifier2 isEqual:HKSPSleepEventIdentifierBedtime])
        {
          dueDate3 = [v19 dueDate];
          [dueDate3 dateByAddingTimeInterval:-start];
          v30 = v41 = v19;
          [v30 timeIntervalSinceDate:dateCopy];
          v32 = v31;

          v19 = v41;
          if (v32 < 0.0)
          {
LABEL_22:
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v33 = " Sleep upcoming or already in wind-down -> in sleep window";
LABEL_37:
              v37 = v14;
              v38 = 2;
LABEL_38:
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v33, buf, v38);
            }

LABEL_39:
            v28 = 1;
            goto LABEL_40;
          }
        }

        else
        {
        }
      }

      if (v17)
      {
        v34 = v19;
        v35 = -[OSISleepScheduleMonitor date:coveredByAnyWeekdayWithOccurrences:](self, "date:coveredByAnyWeekdayWithOccurrences:", dateCopy, [v16 weekdaysWithOccurrences]);
        v36 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v35)
        {
          v19 = v34;
          if (v36)
          {
            *buf = 138412290;
            v43 = dateCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ NOT in sleep window", buf, 0xCu);
          }

          goto LABEL_34;
        }

        v19 = v34;
        if (v36)
        {
          *buf = 138412290;
          v43 = dateCopy;
          v33 = " Date %@ not covered by any occurrences -> in sleep window";
          v37 = v14;
          v38 = 12;
          goto LABEL_38;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = " Sleep schedule is set but disabled -> always in sleep window";
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v27 = "Sleep schedule exists but disabled -> always in sleep window";
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v27 = "No sleep schedule found -> always in sleep window";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
  }

  v28 = 1;
LABEL_41:

  objc_autoreleasePoolPop(v13);
  return v28;
}

- (BOOL)date:(id)date coveredByAnyWeekdayWithOccurrences:(unint64_t)occurrences
{
  dateCopy = date;
  [OSIntelligenceUtilities hourFromDate:dateCopy];
  v7 = v6;
  v8 = [OSIntelligenceUtilities pandasWeekdayOf:dateCopy];

  if (v7 >= 21)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1 << v8;
  }

  v10 = v9 | (1 << ((v8 + 1) % 7));
  if (v7 < 5)
  {
    v10 = 1 << v8;
  }

  return (v10 & occurrences) != 0;
}

@end