@interface NEKSessionAnalytics
- (NEKSessionAnalytics)initWithFileManager:(id)manager;
- (void)flush;
@end

@implementation NEKSessionAnalytics

- (NEKSessionAnalytics)initWithFileManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = NEKSessionAnalytics;
  v5 = [(NEKSessionAnalytics *)&v13 init];
  if (v5)
  {
    v6 = [NDTSQFile alloc];
    v7 = [managerCopy syncStateDBPathFor:@"Analytics.sqlite"];
    v8 = [(NDTSQFile *)v6 initWithPath:v7];
    storeFile = v5->_storeFile;
    v5->_storeFile = v8;

    v10 = objc_alloc_init(NEKSessionAnalyticsStore);
    store = v5->_store;
    v5->_store = v10;

    [(NDTSQFile *)v5->_storeFile addSchema:v5->_store];
  }

  return v5;
}

- (void)flush
{
  v3 = *(qword_1000D18B8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flushing to CoreAnalytics", &v16, 2u);
  }

  v4 = [[NSMutableDictionary alloc] initWithCapacity:4];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v18 = 0;
    store = [(NEKSessionAnalytics *)self store];
    [store fetchHourlyTallies:&v16 hour:v5];

    v10 = [NSNumber numberWithInt:v16];
    [v4 setValue:v10 forKey:@"hour"];

    v11 = [NSNumber numberWithInt:v18];
    [v4 setValue:v11 forKey:@"deltas"];

    v12 = [NSNumber numberWithInt:v17];
    [v4 setValue:v12 forKey:@"resets"];

    v13 = [NSNumber numberWithInt:HIDWORD(v18)];
    [v4 setValue:v13 forKey:@"failures"];

    AnalyticsSendEvent();
    store2 = [(NEKSessionAnalytics *)self store];
    [store2 clearHour:v5];

    v7 += v18;
    v6 += v17;
    v8 += HIDWORD(v18);
    [v4 removeAllObjects];
    v5 = (v5 + 1);
  }

  while (v5 != 24);
  v15 = *(qword_1000D18B8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109632;
    v17 = v7;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v6;
    HIWORD(v18) = 1024;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Daily tally: D: %d R: %d F: %d", &v16, 0x14u);
  }
}

@end