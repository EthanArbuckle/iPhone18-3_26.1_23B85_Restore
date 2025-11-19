@interface NEKSessionAnalyticsStore
- (int)_currentHour;
- (void)_writeTally:(NEKAnalyticsTally *)a3;
- (void)clearHour:(int)a3;
- (void)countSessionType:(int)a3;
- (void)fetchHourlyTallies:(NEKAnalyticsTally *)a3 hour:(int)a4;
@end

@implementation NEKSessionAnalyticsStore

- (int)_currentHour
{
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v3 = +[NSTimeZone systemTimeZone];
  [v2 setTimeZone:v3];

  v4 = +[NSDate date];
  v5 = [v2 component:32 fromDate:v4];

  if ((v5 & ~(v5 >> 63)) >= 23)
  {
    LODWORD(v6) = 23;
  }

  else
  {
    v6 = v5 & ~(v5 >> 63);
  }

  return v6;
}

- (void)_writeTally:(NEKAnalyticsTally *)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100026824;
  v3[3] = &unk_1000B5280;
  v3[4] = a3;
  [(NDTSQSchema *)self parseSql:@"INSERT OR REPLACE INTO analytics (deltas andRun:resets, failures, hour) values (?, ?, ?, ?)", v3];
}

- (void)countSessionType:(int)a3
{
  v6[0] = 0;
  v6[1] = 0;
  [(NEKSessionAnalyticsStore *)self fetchHourlyTallies:v6 hour:[(NEKSessionAnalyticsStore *)self _currentHour]];
  if ((a3 - 1) >= 3)
  {
    v5 = *(qword_1000D18B8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received weird session type: %d", buf, 8u);
    }
  }

  else
  {
    ++*(v6 + (4 * (a3 - 1)) + 4);
    [(NEKSessionAnalyticsStore *)self _writeTally:v6];
  }
}

- (void)fetchHourlyTallies:(NEKAnalyticsTally *)a3 hour:(int)a4
{
  a3->var0 = a4;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026A2C;
  v4[3] = &unk_1000B52A0;
  v5 = a4;
  v4[4] = a3;
  [(NDTSQSchema *)self parseSql:@"SELECT deltas andRun:resets, failures FROM analytics WHERE hour = ?", v4];
}

- (void)clearHour:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100026B28;
  v3[3] = &unk_1000B52C0;
  v4 = a3;
  [(NDTSQSchema *)self parseSql:@"DELETE FROM analytics WHERE hour = ?" andRun:v3];
}

@end