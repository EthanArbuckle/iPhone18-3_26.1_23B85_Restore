@interface NDStatusMonitorClientHolder
- (BOOL)isEqual:(id)a3;
- (NDStatusMonitorClientHolder)initWithClient:(id)a3 identifier:(unint64_t)a4;
@end

@implementation NDStatusMonitorClientHolder

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_client == v4[1] && self->_identifier == v4[2];

  return v5;
}

- (NDStatusMonitorClientHolder)initWithClient:(id)a3 identifier:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NDStatusMonitorClientHolder;
  v8 = [(NDStatusMonitorClientHolder *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_client, a3);
    v9->_identifier = a4;
    v10 = voucher_copy();
    voucher = v9->_voucher;
    v9->_voucher = v10;
  }

  return v9;
}

@end