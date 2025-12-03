@interface KTKVSSoftStore
+ (id)sharedStore;
- (BOOL)storeReady;
- (KTKVSProtocol)store;
- (KTKVSSoftStore)initWithStore:(id)store;
- (NSString)accountMetricID;
- (id)objectForKey:(id)key;
- (void)forceSync:(id)sync;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setStore:(id)store;
@end

@implementation KTKVSSoftStore

- (KTKVSSoftStore)initWithStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = KTKVSSoftStore;
  v6 = [(KTKVSSoftStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(KTKVSSoftStore *)v6 setLock:0];
    objc_storeStrong(&v7->_internalStore, store);
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

- (void)setStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  internalStore = self->_internalStore;
  self->_internalStore = storeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)accountMetricID
{
  store = [(KTKVSSoftStore *)self store];
  accountMetricID = [store accountMetricID];

  return accountMetricID;
}

- (void)forceSync:(id)sync
{
  syncCopy = sync;
  store = [(KTKVSSoftStore *)self store];
  v6 = store;
  if (store)
  {
    [store forceSync:syncCopy];
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
    syncCopy[2](syncCopy, v8);
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  store = [(KTKVSSoftStore *)self store];
  v6 = [store objectForKey:keyCopy];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  store = [(KTKVSSoftStore *)self store];
  [store removeObjectForKey:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  store = [(KTKVSSoftStore *)self store];
  [store setObject:objectCopy forKey:keyCopy];
}

- (BOOL)storeReady
{
  store = [(KTKVSSoftStore *)self store];
  storeReady = [store storeReady];

  return storeReady;
}

@end