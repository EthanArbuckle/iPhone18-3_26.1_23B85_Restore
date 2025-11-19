@interface NIRecentlyObservedObjectsCache
- (NIRecentlyObservedObjectsCache)init;
- (id)getMostRecentObjectsWithMaxAge:(double)a3;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didUpdateNearbyObjects:(id)a3;
@end

@implementation NIRecentlyObservedObjectsCache

- (NIRecentlyObservedObjectsCache)init
{
  v8.receiver = self;
  v8.super_class = NIRecentlyObservedObjectsCache;
  v2 = [(NIRecentlyObservedObjectsCache *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    recentDevices = v3->_recentDevices;
    v3->_recentDevices = v4;

    v6 = v3;
  }

  return v3;
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        recentDevices = self->_recentDevices;
        v11 = [v9 discoveryToken];
        [(NSMutableDictionary *)recentDevices setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didDiscoverNearbyObject:(id)a3
{
  v3 = a3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#recent-obj-cache,Discovered device: %@", &v5, 0xCu);
  }
}

- (id)getMostRecentObjectsWithMaxAge:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_opt_new();
  v6 = sub_100005288();
  recentDevices = self->_recentDevices;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003687F8;
  v12[3] = &unk_10099F330;
  v14 = v6;
  v15 = a3;
  v8 = v5;
  v13 = v8;
  [(NSMutableDictionary *)recentDevices enumerateKeysAndObjectsUsingBlock:v12];
  v9 = [v8 sortedArrayUsingComparator:&stru_1009A7D10];
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = a3;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#recent-obj-cache,Most recent objects under age %0.2f seconds: %@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

@end