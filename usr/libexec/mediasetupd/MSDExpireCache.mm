@interface MSDExpireCache
- (MSDExpireCache)initWithExpiration:(double)expiration countLimit:(unint64_t)limit;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MSDExpireCache

- (MSDExpireCache)initWithExpiration:(double)expiration countLimit:(unint64_t)limit
{
  v11.receiver = self;
  v11.super_class = MSDExpireCache;
  v6 = [(MSDExpireCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_expiration = expiration;
    v8 = objc_opt_new();
    storage = v7->_storage;
    v7->_storage = v8;

    [(NSCache *)v7->_storage setCountLimit:limit];
  }

  return v7;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSCache *)self->_storage objectForKey:keyCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v5 creationTime];
  v8 = v7;
  [(MSDExpireCache *)self expiration];
  if (v8 + v9 < Current)
  {
    [(NSCache *)self->_storage removeObjectForKey:keyCopy];
LABEL_4:
    value = 0;
    goto LABEL_6;
  }

  value = [v5 value];
LABEL_6:

  return value;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [[_MSDExpireCacheEntry alloc] initWithValue:objectCopy];

  [(NSCache *)self->_storage setObject:v8 forKey:keyCopy];
}

- (unint64_t)count
{
  allObjects = [(NSCache *)self->_storage allObjects];
  v3 = [allObjects count];

  return v3;
}

@end