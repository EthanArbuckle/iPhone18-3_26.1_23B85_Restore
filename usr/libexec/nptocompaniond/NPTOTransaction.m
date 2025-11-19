@interface NPTOTransaction
- (NPTOTransaction)initWithDescription:(id)a3 userInfo:(id)a4 context:(id)a5;
- (id)description;
- (void)dealloc;
@end

@implementation NPTOTransaction

- (NPTOTransaction)initWithDescription:(id)a3 userInfo:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NPTOTransaction;
  v12 = [(NPTOTransaction *)&v17 init];
  if (v12)
  {
    [v9 UTF8String];
    v13 = os_transaction_create();
    transaction = v12->_transaction;
    v12->_transaction = v13;

    objc_storeStrong(&v12->_transactionDescription, a3);
    objc_storeStrong(&v12->_userInfo, a4);
    objc_storeStrong(&v12->_context, a5);
  }

  v15 = sub_10000268C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v12;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Created transaction: %@", buf, 0xCu);
  }

  return v12;
}

- (void)dealloc
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Destroyed transaction: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NPTOTransaction;
  [(NPTOTransaction *)&v4 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = NPTOTransaction;
  v3 = [(NPTOTransaction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" (%@) (%@)", self->_transactionDescription, self->_userInfo];

  return v4;
}

@end