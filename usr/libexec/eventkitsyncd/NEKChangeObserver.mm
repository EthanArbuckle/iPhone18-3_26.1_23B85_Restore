@interface NEKChangeObserver
+ (id)changeObserverForEventWithQueue:(id)queue databaseController:(id)controller environment:(id)environment;
+ (id)changeObserverForReminderWithQueue:(id)queue databaseController:(id)controller environment:(id)environment;
- (NEKChangeObserver)initWithEnvironment:(id)environment;
- (NEKChangeObserverDelegate)delegate;
- (id)environment;
@end

@implementation NEKChangeObserver

- (NEKChangeObserver)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = NEKChangeObserver;
  v5 = [(NEKChangeObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = sub_100004B98("changeObserver.keyqueue");
    keyQueue = v6->_keyQueue;
    v6->_keyQueue = v7;
  }

  return v6;
}

+ (id)changeObserverForEventWithQueue:(id)queue databaseController:(id)controller environment:(id)environment
{
  environmentCopy = environment;
  controllerCopy = controller;
  queueCopy = queue;
  v10 = [[NEKEventChangeObserver alloc] initWithQueue:queueCopy environment:environmentCopy];

  [(NEKEventChangeObserver *)v10 setWeakEventDatabaseController:controllerCopy];

  return v10;
}

+ (id)changeObserverForReminderWithQueue:(id)queue databaseController:(id)controller environment:(id)environment
{
  environmentCopy = environment;
  controllerCopy = controller;
  queueCopy = queue;
  v10 = [[NEKReminderChangeObserver alloc] initWithQueue:queueCopy environment:environmentCopy];

  [(NEKReminderChangeObserver *)v10 setWeakReminderDatabaseController:controllerCopy];

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