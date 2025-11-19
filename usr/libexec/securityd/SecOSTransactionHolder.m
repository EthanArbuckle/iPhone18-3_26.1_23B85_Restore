@interface SecOSTransactionHolder
- (id)init:(id)a3;
@end

@implementation SecOSTransactionHolder

- (id)init:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SecOSTransactionHolder;
  v6 = [(SecOSTransactionHolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
  }

  return v7;
}

@end