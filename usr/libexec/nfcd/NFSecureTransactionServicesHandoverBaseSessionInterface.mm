@interface NFSecureTransactionServicesHandoverBaseSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverBaseSessionInterface)initWithProtocol:(id)a3;
@end

@implementation NFSecureTransactionServicesHandoverBaseSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverBaseSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverBaseSessionInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];

  return v3;
}

- (NFSecureTransactionServicesHandoverBaseSessionInterface)initWithProtocol:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFSecureTransactionServicesHandoverBaseSessionInterface;
  v5 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v9 init];
  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:v4];
    protocolInterface = v5->_protocolInterface;
    v5->_protocolInterface = v6;

    [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v5 setupInterface];
  }

  return v5;
}

@end