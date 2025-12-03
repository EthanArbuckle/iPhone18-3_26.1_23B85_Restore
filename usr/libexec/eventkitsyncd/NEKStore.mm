@interface NEKStore
+ (id)storeForEventWithEnvironment:(id)environment;
+ (id)storeForReminderWithEnvironment:(id)environment;
- (NEKStore)initWithEnvironment:(id)environment;
- (id)environment;
@end

@implementation NEKStore

- (NEKStore)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v8.receiver = self;
  v8.super_class = NEKStore;
  v5 = [(NEKStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
  }

  return v6;
}

+ (id)storeForEventWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[NEKEventStore alloc] initWithEnvironment:environmentCopy];

  return v4;
}

+ (id)storeForReminderWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[NEKReminderStore alloc] initWithEnvironment:environmentCopy];

  return v4;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end