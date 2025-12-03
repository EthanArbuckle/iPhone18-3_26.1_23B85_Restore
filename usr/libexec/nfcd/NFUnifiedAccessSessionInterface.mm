@interface NFUnifiedAccessSessionInterface
+ (id)interface;
- (void)setupInterface;
@end

@implementation NFUnifiedAccessSessionInterface

+ (id)interface
{
  v2 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)[NFUnifiedAccessSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFUnifiedAccessSessionInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (void)setupInterface
{
  v2.receiver = self;
  v2.super_class = NFUnifiedAccessSessionInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v2 setupInterface];
}

@end