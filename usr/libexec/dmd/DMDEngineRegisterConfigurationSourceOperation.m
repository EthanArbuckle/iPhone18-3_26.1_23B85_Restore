@interface DMDEngineRegisterConfigurationSourceOperation
- (DMDEngineRegisterConfigurationSourceOperationDelegate)delegate;
- (void)delegateUpdatedDeclarationSourceAndEndOperation:(id)a3;
- (void)main;
@end

@implementation DMDEngineRegisterConfigurationSourceOperation

- (void)main
{
  v3 = [(DMDEngineDatabaseOperation *)self database];
  v4 = [v3 newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100040418;
  v6[3] = &unk_1000CDC38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)delegateUpdatedDeclarationSourceAndEndOperation:(id)a3
{
  v6 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_100083C30(a2, self);
  }

  v5 = [(DMDEngineRegisterConfigurationSourceOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 registerConfigurationSourceOperation:self didUpdateRegistrationForConfigurationSource:v6];
  }

  [(DMDEngineRegisterConfigurationSourceOperation *)self setResultObject:0];
}

- (DMDEngineRegisterConfigurationSourceOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end