@interface NFSecureTransactionServicesHandoverSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverSessionInterface)initWithProtocol:(id)a3;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverSessionInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];

  return v3;
}

- (NFSecureTransactionServicesHandoverSessionInterface)initWithProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 initWithProtocol:a3];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 setupInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)self protocolInterface];
  sub_100260480(v3);
}

@end