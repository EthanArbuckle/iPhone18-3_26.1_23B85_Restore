@interface NFUnifiedAccessSessionCallbacksInterface
+ (id)interface;
- (void)setupInterface;
@end

@implementation NFUnifiedAccessSessionCallbacksInterface

+ (id)interface
{
  v2 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)[NFUnifiedAccessSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFUnifiedAccessSessionCallbacksInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (void)setupInterface
{
  v2.receiver = self;
  v2.super_class = NFUnifiedAccessSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v2 setupInterface];
}

@end