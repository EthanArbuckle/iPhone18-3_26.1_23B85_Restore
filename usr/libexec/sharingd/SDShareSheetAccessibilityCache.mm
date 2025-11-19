@interface SDShareSheetAccessibilityCache
- (SDShareSheetAccessibilityCache)init;
- (id)labelForSlotID:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)removeLabelForSlotID:(id)a3;
- (void)removeLabelsForSlotIDs:(id)a3;
- (void)setLabel:(id)a3 forSlotID:(id)a4;
@end

@implementation SDShareSheetAccessibilityCache

- (SDShareSheetAccessibilityCache)init
{
  v7.receiver = self;
  v7.super_class = SDShareSheetAccessibilityCache;
  v2 = [(SDShareSheetAccessibilityCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    cache = v3->_cache;
    v3->_cache = v4;
  }

  return v3;
}

- (void)setLabel:(id)a3 forSlotID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v4];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeLabelForSlotID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeLabelsForSlotIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache removeObjectsForKeys:v4];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)labelForSlotID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end