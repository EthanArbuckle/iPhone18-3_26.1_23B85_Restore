@interface NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface)initWithProtocol:(id)protocol;
@end

@implementation NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface;
  v5 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v9 init];
  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:protocolCopy];
    protocolInterface = v5->_protocolInterface;
    v5->_protocolInterface = v6;

    [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v5 setupInterface];
  }

  return v5;
}

@end