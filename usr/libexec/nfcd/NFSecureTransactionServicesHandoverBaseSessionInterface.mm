@interface NFSecureTransactionServicesHandoverBaseSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverBaseSessionInterface)initWithProtocol:(id)protocol;
@end

@implementation NFSecureTransactionServicesHandoverBaseSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverBaseSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverBaseSessionInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverBaseSessionInterface)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = NFSecureTransactionServicesHandoverBaseSessionInterface;
  v5 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v9 init];
  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:protocolCopy];
    protocolInterface = v5->_protocolInterface;
    v5->_protocolInterface = v6;

    [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v5 setupInterface];
  }

  return v5;
}

@end