@interface RPNWPendingKeyExchange
- (NSString)identifier;
- (RPNWPendingKeyExchange)initWithApplicationService:(id)service publicKey:(id)key handler:(id)handler;
@end

@implementation RPNWPendingKeyExchange

- (RPNWPendingKeyExchange)initWithApplicationService:(id)service publicKey:(id)key handler:(id)handler
{
  v18.receiver = self;
  v18.super_class = RPNWPendingKeyExchange;
  handlerCopy = handler;
  keyCopy = key;
  serviceCopy = service;
  v10 = [(RPNWPendingKeyExchange *)&v18 init];
  v11 = [serviceCopy copy];

  applicationService = v10->_applicationService;
  v10->_applicationService = v11;

  v13 = [keyCopy copy];
  publicKey = v10->_publicKey;
  v10->_publicKey = v13;

  v15 = objc_retainBlock(handlerCopy);
  handler = v10->_handler;
  v10->_handler = v15;

  return v10;
}

- (NSString)identifier
{
  applicationService = [(RPNWPendingKeyExchange *)self applicationService];
  publicKey = [(RPNWPendingKeyExchange *)self publicKey];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%lu", applicationService, [publicKey hash]);

  return v5;
}

@end