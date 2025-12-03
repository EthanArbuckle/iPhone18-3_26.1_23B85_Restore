@interface DMDEngineRegisterConfigurationSourceOperation
- (DMDEngineRegisterConfigurationSourceOperationDelegate)delegate;
- (void)delegateUpdatedDeclarationSourceAndEndOperation:(id)operation;
- (void)main;
@end

@implementation DMDEngineRegisterConfigurationSourceOperation

- (void)main
{
  database = [(DMDEngineDatabaseOperation *)self database];
  newBackgroundContext = [database newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100040418;
  v6[3] = &unk_1000CDC38;
  v6[4] = self;
  v7 = newBackgroundContext;
  v5 = newBackgroundContext;
  [v5 performBlockAndWait:v6];
}

- (void)delegateUpdatedDeclarationSourceAndEndOperation:(id)operation
{
  operationCopy = operation;
  if (!+[NSThread isMainThread])
  {
    sub_100083C30(a2, self);
  }

  delegate = [(DMDEngineRegisterConfigurationSourceOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate registerConfigurationSourceOperation:self didUpdateRegistrationForConfigurationSource:operationCopy];
  }

  [(DMDEngineRegisterConfigurationSourceOperation *)self setResultObject:0];
}

- (DMDEngineRegisterConfigurationSourceOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end