@interface _OSIntervalHistory
+ (id)sharedInstance;
- (BOOL)refreshCacheIfStaleWithQueryDate:(id)a3;
- (_OSIntervalHistory)init;
- (void)loadHistoryFromUnderlyingDataSource;
- (void)updateStratasWithQueryDate:(id)a3;
@end

@implementation _OSIntervalHistory

+ (id)sharedInstance
{
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s must be overridden in a subclass", "+[_OSIntervalHistory sharedInstance]");
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (_OSIntervalHistory)init
{
  v8.receiver = self;
  v8.super_class = _OSIntervalHistory;
  v2 = [(_OSIntervalHistory *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = os_log_create("com.apple.osintelligence", [v4 UTF8String]);
    log = v2->_log;
    v2->_log = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    [(_OSIntervalHistory *)v2 loadHistoryFromUnderlyingDataSource];
  }

  return v2;
}

- (void)loadHistoryFromUnderlyingDataSource
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10005D060(log);
  }
}

- (BOOL)refreshCacheIfStaleWithQueryDate:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = +[NSDate now];
  v7 = [v6 earlierDate:v5];

  if (self->_lastRefreshDate && ([v7 timeIntervalSinceDate:?], v8 < 900.0))
  {
    v9 = 0;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      lastRefreshDate = self->_lastRefreshDate;
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = lastRefreshDate;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Refreshing history because input date = %@ and last refreshed at %@", &v14, 0x16u);
    }

    [(_OSIntervalHistory *)self loadHistoryFromUnderlyingDataSource];
    v9 = 1;
  }

  lastQueryDate = self->_lastQueryDate;
  if (!lastQueryDate || lastQueryDate != v5)
  {
    [(_OSIntervalHistory *)self updateStratasWithQueryDate:v5];
    objc_storeStrong(&self->_lastQueryDate, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)updateStratasWithQueryDate:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%s must be overridden in a subclass", "[_OSIntervalHistory updateStratasWithQueryDate:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

@end