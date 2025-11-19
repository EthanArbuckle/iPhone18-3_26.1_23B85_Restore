@interface RPNWPendingKeyExchange
- (NSString)identifier;
- (RPNWPendingKeyExchange)initWithApplicationService:(id)a3 publicKey:(id)a4 handler:(id)a5;
@end

@implementation RPNWPendingKeyExchange

- (RPNWPendingKeyExchange)initWithApplicationService:(id)a3 publicKey:(id)a4 handler:(id)a5
{
  v18.receiver = self;
  v18.super_class = RPNWPendingKeyExchange;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(RPNWPendingKeyExchange *)&v18 init];
  v11 = [v9 copy];

  applicationService = v10->_applicationService;
  v10->_applicationService = v11;

  v13 = [v8 copy];
  publicKey = v10->_publicKey;
  v10->_publicKey = v13;

  v15 = objc_retainBlock(v7);
  handler = v10->_handler;
  v10->_handler = v15;

  return v10;
}

- (NSString)identifier
{
  v3 = [(RPNWPendingKeyExchange *)self applicationService];
  v4 = [(RPNWPendingKeyExchange *)self publicKey];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%lu", v3, [v4 hash]);

  return v5;
}

@end