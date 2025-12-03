@interface NDTObjectCache
- (NDTObjectCache)initWithCapacity:(int64_t)capacity;
- (double)hitRatio;
- (id)cachedCopy:(id)copy;
- (id)description;
- (void)purge;
@end

@implementation NDTObjectCache

- (NDTObjectCache)initWithCapacity:(int64_t)capacity
{
  v8.receiver = self;
  v8.super_class = NDTObjectCache;
  v4 = [(NDTObjectCache *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableOrderedSet alloc] initWithCapacity:capacity];
    cache = v4->_cache;
    v4->_cache = v5;

    v4->_capacity = capacity;
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)cachedCopy:(id)copy
{
  copyCopy = copy;
  os_unfair_lock_lock(&self->_lock);
  [(NDTObjectCache *)self setAccesses:[(NDTObjectCache *)self accesses]+ 1];
  cache = [(NDTObjectCache *)self cache];
  v6 = [cache indexOfObject:copyCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [copyCopy copy];
    while (1)
    {
      cache2 = [(NDTObjectCache *)self cache];
      v9 = [cache2 count];
      capacity = [(NDTObjectCache *)self capacity];

      if (v9 < capacity)
      {
        break;
      }

      cache3 = [(NDTObjectCache *)self cache];
      cache4 = [(NDTObjectCache *)self cache];
      [cache3 removeObjectAtIndex:{objc_msgSend(cache4, "count") - 1}];
    }
  }

  else
  {
    [(NDTObjectCache *)self setHits:[(NDTObjectCache *)self hits]+ 1];
    cache5 = [(NDTObjectCache *)self cache];
    v7 = [cache5 objectAtIndex:v6];

    cache6 = [(NDTObjectCache *)self cache];
    [cache6 removeObjectAtIndex:v6];
  }

  cache7 = [(NDTObjectCache *)self cache];
  [cache7 insertObject:v7 atIndex:0];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)purge
{
  os_unfair_lock_lock(&self->_lock);
  cache = [(NDTObjectCache *)self cache];
  [cache removeAllObjects];

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
    hits = [(NDTObjectCache *)self hits];
    v4 = hits / [(NDTObjectCache *)self accesses];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  capacity = [(NDTObjectCache *)self capacity];
  [(NDTObjectCache *)self hitRatio];
  v7 = [NSString stringWithFormat:@"<%@:%p capacity:%d, hitRatio:%f>", v4, self, capacity, v6];

  return v7;
}

@end