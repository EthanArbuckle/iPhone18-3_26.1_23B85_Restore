@interface KTKVSSoftStore
+ (id)sharedStore;
- (BOOL)storeReady;
- (KTKVSProtocol)store;
- (KTKVSSoftStore)initWithStore:(id)a3;
- (NSString)accountMetricID;
- (id)objectForKey:(id)a3;
- (void)forceSync:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setStore:(id)a3;
@end

@implementation KTKVSSoftStore

- (KTKVSSoftStore)initWithStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = KTKVSSoftStore;
  v6 = [(KTKVSSoftStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(KTKVSSoftStore *)v6 setLock:0];
    objc_storeStrong(&v7->_internalStore, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)sharedStore
{
  if (qword_10039CBA8 != -1)
  {
    sub_10025D75C();
  }

  v3 = qword_10039CBA0;

  return v3;
}

- (KTKVSProtocol)store
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_internalStore;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v3 = +[KTKVSStore strictStore];
    if (v3)
    {
      os_unfair_lock_lock(&self->_lock);
      objc_storeStrong(&self->_internalStore, v3);
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  return v3;
}

- (void)setStore:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  internalStore = self->_internalStore;
  self->_internalStore = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)accountMetricID
{
  v2 = [(KTKVSSoftStore *)self store];
  v3 = [v2 accountMetricID];

  return v3;
}

- (void)forceSync:(id)a3
{
  v4 = a3;
  v5 = [(KTKVSSoftStore *)self store];
  v6 = v5;
  if (v5)
  {
    [v5 forceSync:v4];
  }

  else
  {
    if (qword_10039CB80 != -1)
    {
      sub_10025D770();
    }

    v7 = qword_10039CB88;
    if (os_log_type_enabled(qword_10039CB88, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ForceSyncKVS because it happened before first unlock", v9, 2u);
    }

    v8 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-328 description:@"no KVS store yet"];
    v4[2](v4, v8);
  }
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(KTKVSSoftStore *)self store];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(KTKVSSoftStore *)self store];
  [v5 removeObjectForKey:v4];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTKVSSoftStore *)self store];
  [v8 setObject:v7 forKey:v6];
}

- (BOOL)storeReady
{
  v2 = [(KTKVSSoftStore *)self store];
  v3 = [v2 storeReady];

  return v3;
}

@end