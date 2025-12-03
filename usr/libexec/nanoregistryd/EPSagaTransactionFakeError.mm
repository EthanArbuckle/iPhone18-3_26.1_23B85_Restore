@interface EPSagaTransactionFakeError
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionFakeError

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  errors = [entry errors];
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Fake Failure for testing";
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.FakeError" code:0 userInfo:v6];
  [errors addObject:v7];

  delegate = [(EPSagaTransactionFakeError *)self delegate];
  [delegate transactionDidComplete:self];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end