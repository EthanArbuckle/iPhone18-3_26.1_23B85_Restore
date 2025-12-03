@interface MSDTransactionTask
+ (id)createTransactionWithIdentifier:(id)identifier;
- (MSDTransactionTask)initWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)releaseTransaction;
@end

@implementation MSDTransactionTask

- (MSDTransactionTask)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDTransactionTask;
  v6 = [(MSDTransactionTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionID, identifier);
    [identifierCopy UTF8String];
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;
  }

  return v7;
}

+ (id)createTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [[self alloc] initWithIdentifier:identifierCopy];
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