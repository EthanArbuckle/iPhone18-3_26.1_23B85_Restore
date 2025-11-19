@interface NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface)initWithProtocol:(id)a3;
@end

@implementation NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return v3;
}

- (NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface)initWithProtocol:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface;
  v5 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v9 init];
  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:v4];
    protocolInterface = v5->_protocolInterface;
    v5->_protocolInterface = v6;

    [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v5 setupInterface];
  }

  return v5;
}

@end