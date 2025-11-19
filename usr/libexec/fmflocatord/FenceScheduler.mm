@interface FenceScheduler
+ (const)alarmStream;
+ (const)timerIdentifier;
+ (id)_nextStartOrEndDateFrom:(id)a3 forSchedules:(id)a4;
+ (id)firstDateFromDates:(id)a3 order:(int64_t)a4;
- (FenceScheduler)initWithDelegate:(id)a3;
- (FenceSchedulerDelegate)delegate;
- (NSArray)currentSchedules;
- (void)_registerForSignificantTimeChangeNotifications;
- (void)_significantTimeChange:(id)a3;
- (void)_updateScheduleTimer;
- (void)notifyDelegateThatCurrentSchedulesDidChange;
- (void)setSchedules:(id)a3;
@end

@implementation FenceScheduler

- (FenceScheduler)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FenceScheduler *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(FenceScheduler *)v6 _registerForSignificantTimeChangeNotifications];
  }

  return v6;
}

- (void)setSchedules:(id)a3
{
  objc_storeStrong(&self->_schedules, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fenceSchedulerCurrentSchedulesDidChange:self];

  [(FenceScheduler *)self _updateScheduleTimer];
}

- (NSArray)currentSchedules
{
  v2 = [(FenceScheduler *)self schedules];
  v3 = [v2 fm_filter:&stru_10005E5B8];

  return v3;
}

+ (const)timerIdentifier
{
  v2 = +[_TtC11fmflocatord19FindMyLocateSession scheduleTimerIdentifier];
  v3 = [v2 cStringUsingEncoding:4];

  return v3;
}

+ (const)alarmStream
{
  v2 = +[_TtC11fmflocatord19FindMyLocateSession scheduleAlarmStream];
  v3 = [v2 cStringUsingEncoding:4];

  return v3;
}

- (void)notifyDelegateThatCurrentSchedulesDidChange
{
  v3 = [(FenceScheduler *)self delegate];
  [v3 fenceSchedulerCurrentSchedulesDidChange:self];
}

- (void)_updateScheduleTimer
{
  v3 = objc_opt_class();
  v4 = +[NSDate date];
  v5 = [(FenceScheduler *)self schedules];
  v6 = [v3 _nextStartOrEndDateFrom:v4 forSchedules:v5];

  if (v6)
  {
    +[FenceScheduler alarmStream];
    +[FenceScheduler timerIdentifier];
    xpc_set_event();
    v7 = xpc_dictionary_create(0, 0, 0);
    [v6 timeIntervalSinceNow];
    v9 = v8;
    v10 = time(0);
    xpc_dictionary_set_date(v7, "Date", ((ceil(v9) + v10) * 1000000000.0));
    xpc_dictionary_set_BOOL(v7, "UserVisible", 1);
    +[FenceScheduler alarmStream];
    +[FenceScheduler timerIdentifier];
    xpc_set_event();
  }

  v11 = sub_10001BBF0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(FenceScheduler *)self schedules];
    v13 = 136315906;
    v14 = "[FenceScheduler _updateScheduleTimer]";
    v15 = 2112;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ fireDate: %@ schedules: %@", &v13, 0x2Au);
  }
}

+ (id)_nextStartOrEndDateFrom:(id)a3 forSchedules:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002AB28;
  v9[3] = &unk_10005E5F0;
  v10 = a3;
  v5 = v10;
  v6 = [a4 fm_map:v9];
  v7 = [objc_opt_class() firstDateFromDates:v6 order:-1];

  return v7;
}

- (void)_registerForSignificantTimeChangeNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_significantTimeChange:" name:@"FMFLocatorSchedulerSignificantTimeChangeNotification" object:0];
  [v3 addObserver:self selector:"_significantTimeChange:" name:NSSystemClockDidChangeNotification object:0];
  [v3 addObserver:self selector:"_significantTimeChange:" name:NSSystemTimeZoneDidChangeNotification object:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AC48;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070358 != -1)
  {
    dispatch_once(&qword_100070358, block);
  }
}

- (void)_significantTimeChange:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_updateScheduleTimer" object:0];

  [(FenceScheduler *)self performSelector:"_updateScheduleTimer" withObject:0 afterDelay:0.2];
}

+ (id)firstDateFromDates:(id)a3 order:(int64_t)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v8 || [*(*(&v14 + 1) + 8 * i) compare:v8] == a4)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FenceSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end