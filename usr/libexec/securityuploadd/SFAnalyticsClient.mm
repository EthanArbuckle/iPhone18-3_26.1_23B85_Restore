@interface SFAnalyticsClient
+ (void)clearSFAnalyticsClientGlobalCache;
- (SFAnalyticsClient)initWithStore:(id)store queue:(id)queue name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics;
- (void)withStore:(id)store;
@end

@implementation SFAnalyticsClient

- (void)withStore:(id)store
{
  storeCopy = store;
  queue = [(SFAnalyticsClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007C04;
  v7[3] = &unk_100020FC0;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(queue, v7);
}

- (SFAnalyticsClient)initWithStore:(id)store queue:(id)queue name:(id)name requireDeviceAnalytics:(BOOL)analytics requireiCloudAnalytics:(BOOL)cloudAnalytics
{
  storeCopy = store;
  queueCopy = queue;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = SFAnalyticsClient;
  v16 = [(SFAnalyticsClient *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_store, store);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_name, name);
    v17->_requireDeviceAnalytics = analytics;
    v17->_requireiCloudAnalytics = cloudAnalytics;
  }

  return v17;
}

+ (void)clearSFAnalyticsClientGlobalCache
{
  os_unfair_lock_lock(&unk_1000262C8);
  v2 = qword_1000262D0;
  qword_1000262D0 = 0;

  os_unfair_lock_unlock(&unk_1000262C8);
}

@end