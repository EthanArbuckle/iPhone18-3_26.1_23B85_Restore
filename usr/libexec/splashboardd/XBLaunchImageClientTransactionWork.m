@interface XBLaunchImageClientTransactionWork
- (XBLaunchImageClientTransactionWork)init;
@end

@implementation XBLaunchImageClientTransactionWork

- (XBLaunchImageClientTransactionWork)init
{
  v6.receiver = self;
  v6.super_class = XBLaunchImageClientTransactionWork;
  v2 = [(XBLaunchImageClientTransactionWork *)&v6 init];
  if (v2)
  {
    v3 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

@end