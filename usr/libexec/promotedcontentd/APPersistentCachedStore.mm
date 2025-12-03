@interface APPersistentCachedStore
+ (id)createWithStorage:(id)storage;
+ (id)createWithTotalCostLimit:(int64_t)limit;
- (BOOL)hasObjectForKey:(id)key;
- (BOOL)isObjectAliveForKey:(id)key;
- (id)createTransaction;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key ignoreKeys:(id)keys;
- (void)enableDiagnosticsWithInterval:(double)interval;
- (void)evictObjectFromMemoryCacheForKey:(id)key;
- (void)executeBlock:(id)block;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectForKey:(id)key transaction:(id)transaction;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction;
- (void)touchObjectForKey:(id)key;
- (void)touchObjectForKey:(id)key transaction:(id)transaction;
@end

@implementation APPersistentCachedStore

+ (id)createWithTotalCostLimit:(int64_t)limit
{
  v3 = [[APCacheStore alloc] initWithTotalCostLimit:limit];

  return v3;
}

+ (id)createWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = [APCacheStore alloc];
  v5 = objc_alloc_init(NSCache);
  v6 = [(APCacheStore *)v4 initWithFileStorage:storageCopy memoryCache:v5];

  return v6;
}

- (BOOL)hasObjectForKey:(id)key
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (id)objectForKey:(id)key
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (void)removeObjectForKey:(id)key
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (void)setObject:(id)object forKey:(id)key
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)touchObjectForKey:(id)key
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (id)createTransaction
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)executeBlock:(id)block
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (void)removeObjectForKey:(id)key transaction:(id)transaction
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction
{
  v6 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  APSimulateCrash();
}

- (BOOL)isObjectAliveForKey:(id)key
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (void)evictObjectFromMemoryCacheForKey:(id)key
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (id)objectForKey:(id)key ignoreKeys:(id)keys
{
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();

  return 0;
}

- (void)touchObjectForKey:(id)key transaction:(id)transaction
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)enableDiagnosticsWithInterval:(double)interval
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

@end