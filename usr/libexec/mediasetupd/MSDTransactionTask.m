@interface MSDTransactionTask
+ (id)createTransactionWithIdentifier:(id)a3;
- (MSDTransactionTask)initWithIdentifier:(id)a3;
- (void)dealloc;
- (void)releaseTransaction;
@end

@implementation MSDTransactionTask

- (MSDTransactionTask)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MSDTransactionTask;
  v6 = [(MSDTransactionTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionID, a3);
    [v5 UTF8String];
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;
  }

  return v7;
}

+ (id)createTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[a1 alloc] initWithIdentifier:v4];
  }

  else
  {
    v6 = sub_100030FE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100022AE8(v6);
    }

    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  transaction = self->_transaction;
  self->_transaction = 0;

  objc_autoreleasePoolPop(v3);
  v5.receiver = self;
  v5.super_class = MSDTransactionTask;
  [(MSDTransactionTask *)&v5 dealloc];
}

- (void)releaseTransaction
{
  v3 = objc_autoreleasePoolPush();
  transaction = self->_transaction;
  self->_transaction = 0;

  objc_autoreleasePoolPop(v3);
}

@end