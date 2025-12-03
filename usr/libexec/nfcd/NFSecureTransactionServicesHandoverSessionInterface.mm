@interface NFSecureTransactionServicesHandoverSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverSessionInterface)initWithProtocol:(id)protocol;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverSessionInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverSessionInterface)initWithProtocol:(id)protocol
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 initWithProtocol:protocol];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 setupInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)self protocolInterface];
  sub_100260480(protocolInterface);
}

@end