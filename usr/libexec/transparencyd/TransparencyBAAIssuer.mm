@interface TransparencyBAAIssuer
- (void)deviceIdentityIssueCert:(id)cert queue:(id)queue completionHandler:(id)handler;
@end

@implementation TransparencyBAAIssuer

- (void)deviceIdentityIssueCert:(id)cert queue:(id)queue completionHandler:(id)handler
{
  certCopy = cert;
  queueCopy = queue;
  handlerCopy = handler;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100242B10;
  v11[4] = sub_100242B20;
  v12 = os_transaction_create();
  v10 = handlerCopy;
  DeviceIdentityIssueClientCertificateWithCompletion();

  _Block_object_dispose(v11, 8);
}

@end