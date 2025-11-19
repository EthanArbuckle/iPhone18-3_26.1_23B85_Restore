@interface MSDExpireCache
- (MSDExpireCache)initWithExpiration:(double)a3 countLimit:(unint64_t)a4;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation MSDExpireCache

- (MSDExpireCache)initWithExpiration:(double)a3 countLimit:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = MSDExpireCache;
  v6 = [(MSDExpireCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_expiration = a3;
    v8 = objc_opt_new();
    storage = v7->_storage;
    v7->_storage = v8;

    [(NSCache *)v7->_storage setCountLimit:a4];
  }

  return v7;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_storage objectForKey:v4];
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
    [(NSCache *)self->_storage removeObjectForKey:v4];
LABEL_4:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = [v5 value];
LABEL_6:

  return v10;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MSDExpireCacheEntry alloc] initWithValue:v7];

  [(NSCache *)self->_storage setObject:v8 forKey:v6];
}

- (unint64_t)count
{
  v2 = [(NSCache *)self->_storage allObjects];
  v3 = [v2 count];

  return v3;
}

@end