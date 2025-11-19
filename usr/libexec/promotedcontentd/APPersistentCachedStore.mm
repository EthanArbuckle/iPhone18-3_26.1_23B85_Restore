@interface APPersistentCachedStore
+ (id)createWithStorage:(id)a3;
+ (id)createWithTotalCostLimit:(int64_t)a3;
- (BOOL)hasObjectForKey:(id)a3;
- (BOOL)isObjectAliveForKey:(id)a3;
- (id)createTransaction;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 ignoreKeys:(id)a4;
- (void)enableDiagnosticsWithInterval:(double)a3;
- (void)evictObjectFromMemoryCacheForKey:(id)a3;
- (void)executeBlock:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3 transaction:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 transaction:(id)a5;
- (void)touchObjectForKey:(id)a3;
- (void)touchObjectForKey:(id)a3 transaction:(id)a4;
@end

@implementation APPersistentCachedStore

+ (id)createWithTotalCostLimit:(int64_t)a3
{
  v3 = [[APCacheStore alloc] initWithTotalCostLimit:a3];

  return v3;
}

+ (id)createWithStorage:(id)a3
{
  v3 = a3;
  v4 = [APCacheStore alloc];
  v5 = objc_alloc_init(NSCache);
  v6 = [(APCacheStore *)v4 initWithFileStorage:v3 memoryCache:v5];

  return v6;
}

- (BOOL)hasObjectForKey:(id)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (id)objectForKey:(id)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)touchObjectForKey:(id)a3
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

- (void)executeBlock:(id)a3
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (void)removeObjectForKey:(id)a3 transaction:(id)a4
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)setObject:(id)a3 forKey:(id)a4 transaction:(id)a5
{
  v6 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  APSimulateCrash();
}

- (BOOL)isObjectAliveForKey:(id)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  return 0;
}

- (void)evictObjectFromMemoryCacheForKey:(id)a3
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

- (id)objectForKey:(id)a3 ignoreKeys:(id)a4
{
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();

  return 0;
}

- (void)touchObjectForKey:(id)a3 transaction:(id)a4
{
  v5 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  APSimulateCrash();
}

- (void)enableDiagnosticsWithInterval:(double)a3
{
  v4 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v4];
  APSimulateCrash();
}

@end