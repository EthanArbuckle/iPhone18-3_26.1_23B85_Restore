@interface EPSagaTransactionFakeError
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionFakeError

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 errors];
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Fake Failure for testing";
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.FakeError" code:0 userInfo:v6];
  [v5 addObject:v7];

  v8 = [(EPSagaTransactionFakeError *)self delegate];
  [v8 transactionDidComplete:self];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end