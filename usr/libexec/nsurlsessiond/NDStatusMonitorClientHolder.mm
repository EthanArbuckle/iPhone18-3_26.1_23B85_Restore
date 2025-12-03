@interface NDStatusMonitorClientHolder
- (BOOL)isEqual:(id)equal;
- (NDStatusMonitorClientHolder)initWithClient:(id)client identifier:(unint64_t)identifier;
@end

@implementation NDStatusMonitorClientHolder

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_client == equalCopy[1] && self->_identifier == equalCopy[2];

  return v5;
}

- (NDStatusMonitorClientHolder)initWithClient:(id)client identifier:(unint64_t)identifier
{
  clientCopy = client;
  v13.receiver = self;
  v13.super_class = NDStatusMonitorClientHolder;
  v8 = [(NDStatusMonitorClientHolder *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_client, client);
    v9->_identifier = identifier;
    v10 = voucher_copy();
    voucher = v9->_voucher;
    v9->_voucher = v10;
  }

  return v9;
}

@end