@interface TransparencyBAAIssuer
- (void)deviceIdentityIssueCert:(id)a3 queue:(id)a4 completionHandler:(id)a5;
@end

@implementation TransparencyBAAIssuer

- (void)deviceIdentityIssueCert:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100242B10;
  v11[4] = sub_100242B20;
  v12 = os_transaction_create();
  v10 = v9;
  DeviceIdentityIssueClientCertificateWithCompletion();

  _Block_object_dispose(v11, 8);
}

@end