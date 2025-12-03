@interface NEKResultsPipe
- (BOOL)changesAffectNext24hrs;
- (BOOL)isEffectivelyEmpty;
- (BOOL)isTruncated;
- (NEKResultsPipe)initWithFIFOLength:(int64_t)length name:(id)name;
- (id)completion;
- (void)addCompletion:(id)completion;
- (void)markAsAffectingNext24hrs;
- (void)markAsDeferrable;
- (void)markAsNotEffectivelyEmpty;
- (void)markAsTruncated;
- (void)sealCompletions;
@end

@implementation NEKResultsPipe

- (NEKResultsPipe)initWithFIFOLength:(int64_t)length name:(id)name
{
  v8.receiver = self;
  v8.super_class = NEKResultsPipe;
  v4 = [(NDTResultsFIFO *)&v8 initWithFIFOLength:length name:name];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    completions = v4->_completions;
    v4->_completions = v5;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_isEffectivelyEmpty = 1;
  }

  return v4;
}

- (void)sealCompletions
{
  os_unfair_lock_lock(&self->_lock);
  completions = self->_completions;
  self->_completions = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  completions = self->_completions;
  v6 = objc_retainBlock(completionCopy);

  [(NSMutableArray *)completions addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)completion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_completions copy];
  os_unfair_lock_unlock(&self->_lock);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100062824;
  v7[3] = &unk_1000B4B90;
  v8 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);

  return v5;
}

- (BOOL)isEffectivelyEmpty
{
  os_unfair_lock_lock(&self->_lock);
  isEffectivelyEmpty = self->_isEffectivelyEmpty;
  os_unfair_lock_unlock(&self->_lock);
  return isEffectivelyEmpty;
}

- (void)markAsNotEffectivelyEmpty
{
  os_unfair_lock_lock(&self->_lock);
  self->_isEffectivelyEmpty = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isTruncated
{
  os_unfair_lock_lock(&self->_lock);
  isTruncated = self->_isTruncated;
  os_unfair_lock_unlock(&self->_lock);
  return isTruncated;
}

- (void)markAsTruncated
{
  os_unfair_lock_lock(&self->_lock);
  self->_isTruncated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markAsDeferrable
{
  os_unfair_lock_lock(&self->_lock);
  self->_isDeferrable = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markAsAffectingNext24hrs
{
  os_unfair_lock_lock(&self->_lock);
  self->_changesAffectNext24hrs = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)changesAffectNext24hrs
{
  os_unfair_lock_lock(&self->_lock);
  changesAffectNext24hrs = self->_changesAffectNext24hrs;
  os_unfair_lock_unlock(&self->_lock);
  return changesAffectNext24hrs;
}

@end