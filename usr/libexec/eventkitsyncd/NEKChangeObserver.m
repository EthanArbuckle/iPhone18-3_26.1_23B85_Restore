@interface NEKChangeObserver
+ (id)changeObserverForEventWithQueue:(id)a3 databaseController:(id)a4 environment:(id)a5;
+ (id)changeObserverForReminderWithQueue:(id)a3 databaseController:(id)a4 environment:(id)a5;
- (NEKChangeObserver)initWithEnvironment:(id)a3;
- (NEKChangeObserverDelegate)delegate;
- (id)environment;
@end

@implementation NEKChangeObserver

- (NEKChangeObserver)initWithEnvironment:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NEKChangeObserver;
  v5 = [(NEKChangeObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = sub_100004B98("changeObserver.keyqueue");
    keyQueue = v6->_keyQueue;
    v6->_keyQueue = v7;
  }

  return v6;
}

+ (id)changeObserverForEventWithQueue:(id)a3 databaseController:(id)a4 environment:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NEKEventChangeObserver alloc] initWithQueue:v9 environment:v7];

  [(NEKEventChangeObserver *)v10 setWeakEventDatabaseController:v8];

  return v10;
}

+ (id)changeObserverForReminderWithQueue:(id)a3 databaseController:(id)a4 environment:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NEKReminderChangeObserver alloc] initWithQueue:v9 environment:v7];

  [(NEKReminderChangeObserver *)v10 setWeakReminderDatabaseController:v8];

  return v10;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (NEKChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end