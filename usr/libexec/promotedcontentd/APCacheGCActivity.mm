@interface APCacheGCActivity
- (APCacheGCActivity)initWithCache:(id)cache;
- (APPersistentCache)cache;
- (BOOL)runActivity:(id)activity;
- (void)deferActivity:(id)activity completionHandler:(id)handler;
- (void)terminateActivity:(id)activity;
@end

@implementation APCacheGCActivity

- (APCacheGCActivity)initWithCache:(id)cache
{
  cacheCopy = cache;
  v8.receiver = self;
  v8.super_class = APCacheGCActivity;
  v5 = [(APCacheGCActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cache, cacheCopy);
  }

  return v6;
}

- (BOOL)runActivity:(id)activity
{
  activityCopy = activity;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Starting Cache GC activity.", buf, 2u);
  }

  cache = [(APCacheGCActivity *)self cache];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E18E4;
  v9[3] = &unk_100464180;
  v10 = activityCopy;
  v7 = activityCopy;
  [cache startGCWithCompletionHandler:v9];

  return 1;
}

- (void)deferActivity:(id)activity completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Request GC activity deferral.", v8, 2u);
  }

  cache = [(APCacheGCActivity *)self cache];
  [cache stopGC];

  handlerCopy[2](handlerCopy, 1);
}

- (void)terminateActivity:(id)activity
{
  cache = [(APCacheGCActivity *)self cache];
  [cache stopGC];
}

- (APPersistentCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end