@interface NDTObjectCache
- (NDTObjectCache)initWithCapacity:(int64_t)a3;
- (double)hitRatio;
- (id)cachedCopy:(id)a3;
- (id)description;
- (void)purge;
@end

@implementation NDTObjectCache

- (NDTObjectCache)initWithCapacity:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NDTObjectCache;
  v4 = [(NDTObjectCache *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableOrderedSet alloc] initWithCapacity:a3];
    cache = v4->_cache;
    v4->_cache = v5;

    v4->_capacity = a3;
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)cachedCopy:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NDTObjectCache *)self setAccesses:[(NDTObjectCache *)self accesses]+ 1];
  v5 = [(NDTObjectCache *)self cache];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 copy];
    while (1)
    {
      v8 = [(NDTObjectCache *)self cache];
      v9 = [v8 count];
      v10 = [(NDTObjectCache *)self capacity];

      if (v9 < v10)
      {
        break;
      }

      v11 = [(NDTObjectCache *)self cache];
      v12 = [(NDTObjectCache *)self cache];
      [v11 removeObjectAtIndex:{objc_msgSend(v12, "count") - 1}];
    }
  }

  else
  {
    [(NDTObjectCache *)self setHits:[(NDTObjectCache *)self hits]+ 1];
    v13 = [(NDTObjectCache *)self cache];
    v7 = [v13 objectAtIndex:v6];

    v14 = [(NDTObjectCache *)self cache];
    [v14 removeObjectAtIndex:v6];
  }

  v15 = [(NDTObjectCache *)self cache];
  [v15 insertObject:v7 atIndex:0];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)purge
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NDTObjectCache *)self cache];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)hitRatio
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NDTObjectCache *)self accesses]< 1)
  {
    v4 = 0.0;
  }

  else
  {
    v3 = [(NDTObjectCache *)self hits];
    v4 = v3 / [(NDTObjectCache *)self accesses];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NDTObjectCache *)self capacity];
  [(NDTObjectCache *)self hitRatio];
  v7 = [NSString stringWithFormat:@"<%@:%p capacity:%d, hitRatio:%f>", v4, self, v5, v6];

  return v7;
}

@end