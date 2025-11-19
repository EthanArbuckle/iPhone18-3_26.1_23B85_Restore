@interface CLOSTransaction
- (void)dealloc;
@end

@implementation CLOSTransaction

- (void)dealloc
{
  if (qword_1025D4880 != -1)
  {
    sub_10197A944();
  }

  v3 = qword_1025D4888;
  if (os_log_type_enabled(qword_1025D4888, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 134218242;
    p_transaction = &self->_transaction;
    v8 = 2112;
    v9 = description;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "os_transaction released: (%p) %@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197A958(self);
  }

  self->_transaction = 0;
  self->_description = 0;
  v5.receiver = self;
  v5.super_class = CLOSTransaction;
  [(CLOSTransaction *)&v5 dealloc];
}

@end