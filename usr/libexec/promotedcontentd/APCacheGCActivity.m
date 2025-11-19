@interface APCacheGCActivity
- (APCacheGCActivity)initWithCache:(id)a3;
- (APPersistentCache)cache;
- (BOOL)runActivity:(id)a3;
- (void)deferActivity:(id)a3 completionHandler:(id)a4;
- (void)terminateActivity:(id)a3;
@end

@implementation APCacheGCActivity

- (APCacheGCActivity)initWithCache:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APCacheGCActivity;
  v5 = [(APCacheGCActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cache, v4);
  }

  return v6;
}

- (BOOL)runActivity:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Starting Cache GC activity.", buf, 2u);
  }

  v6 = [(APCacheGCActivity *)self cache];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E18E4;
  v9[3] = &unk_100464180;
  v10 = v4;
  v7 = v4;
  [v6 startGCWithCompletionHandler:v9];

  return 1;
}

- (void)deferActivity:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Request GC activity deferral.", v8, 2u);
  }

  v7 = [(APCacheGCActivity *)self cache];
  [v7 stopGC];

  v5[2](v5, 1);
}

- (void)terminateActivity:(id)a3
{
  v3 = [(APCacheGCActivity *)self cache];
  [v3 stopGC];
}

- (APPersistentCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end