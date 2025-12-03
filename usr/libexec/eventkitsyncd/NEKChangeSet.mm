@interface NEKChangeSet
+ (id)changeSetForEvent;
+ (id)changeSetForReminder;
- (BOOL)isEmpty;
- (id)description;
@end

@implementation NEKChangeSet

+ (id)changeSetForEvent
{
  v2 = objc_alloc_init(NEKEventChangeSet);

  return v2;
}

+ (id)changeSetForReminder
{
  v2 = objc_alloc_init(NEKReminderChangeSet);

  return v2;
}

- (BOOL)isEmpty
{
  inserts = [(NEKChangeSet *)self inserts];
  v4 = [inserts count];
  updates = [(NEKChangeSet *)self updates];
  v6 = &v4[[updates count]];
  deletes = [(NEKChangeSet *)self deletes];
  LOBYTE(v6) = [deletes count] + v6 == 0;

  return v6;
}

- (id)description
{
  isEmpty = [(NEKChangeSet *)self isEmpty];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (isEmpty)
  {
    [NSString stringWithFormat:@"<%@ %p; empty changeset>", v5, self, v9, v10, v11];
  }

  else
  {
    [NSString stringWithFormat:@"<%@ %p; %d inserts; %d updates; %d deletes>", v5, self, [(NSArray *)self->_inserts count], [(NSArray *)self->_updates count], [(NSArray *)self->_deletes count]];
  }
  v7 = ;

  return v7;
}

@end