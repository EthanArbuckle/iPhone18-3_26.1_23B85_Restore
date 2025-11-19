@interface SFAnalyticsClient
+ (void)clearSFAnalyticsClientGlobalCache;
- (SFAnalyticsClient)initWithStore:(id)a3 queue:(id)a4 name:(id)a5 requireDeviceAnalytics:(BOOL)a6 requireiCloudAnalytics:(BOOL)a7;
- (void)withStore:(id)a3;
@end

@implementation SFAnalyticsClient

- (void)withStore:(id)a3
{
  v4 = a3;
  v5 = [(SFAnalyticsClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007C04;
  v7[3] = &unk_100020FC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (SFAnalyticsClient)initWithStore:(id)a3 queue:(id)a4 name:(id)a5 requireDeviceAnalytics:(BOOL)a6 requireiCloudAnalytics:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = SFAnalyticsClient;
  v16 = [(SFAnalyticsClient *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_store, a3);
    objc_storeStrong(&v17->_queue, a4);
    objc_storeStrong(&v17->_name, a5);
    v17->_requireDeviceAnalytics = a6;
    v17->_requireiCloudAnalytics = a7;
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