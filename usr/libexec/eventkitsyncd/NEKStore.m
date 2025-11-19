@interface NEKStore
+ (id)storeForEventWithEnvironment:(id)a3;
+ (id)storeForReminderWithEnvironment:(id)a3;
- (NEKStore)initWithEnvironment:(id)a3;
- (id)environment;
@end

@implementation NEKStore

- (NEKStore)initWithEnvironment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NEKStore;
  v5 = [(NEKStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
  }

  return v6;
}

+ (id)storeForEventWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [[NEKEventStore alloc] initWithEnvironment:v3];

  return v4;
}

+ (id)storeForReminderWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [[NEKReminderStore alloc] initWithEnvironment:v3];

  return v4;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end