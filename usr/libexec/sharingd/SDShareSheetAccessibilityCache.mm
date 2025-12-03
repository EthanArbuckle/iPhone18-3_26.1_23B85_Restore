@interface SDShareSheetAccessibilityCache
- (SDShareSheetAccessibilityCache)init;
- (id)labelForSlotID:(id)d;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)removeLabelForSlotID:(id)d;
- (void)removeLabelsForSlotIDs:(id)ds;
- (void)setLabel:(id)label forSlotID:(id)d;
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

- (void)setLabel:(id)label forSlotID:(id)d
{
  dCopy = d;
  labelCopy = label;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:labelCopy forKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:dictionaryCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeLabelForSlotID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeLabelsForSlotIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache removeObjectsForKeys:dsCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)labelForSlotID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end