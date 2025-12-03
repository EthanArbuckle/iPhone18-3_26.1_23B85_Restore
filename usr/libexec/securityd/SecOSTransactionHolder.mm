@interface SecOSTransactionHolder
- (id)init:(id)init;
@end

@implementation SecOSTransactionHolder

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = SecOSTransactionHolder;
  v6 = [(SecOSTransactionHolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, init);
  }

  return v7;
}

@end