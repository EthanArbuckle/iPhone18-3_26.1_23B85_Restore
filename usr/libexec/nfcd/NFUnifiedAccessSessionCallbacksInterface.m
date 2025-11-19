@interface NFUnifiedAccessSessionCallbacksInterface
+ (id)interface;
- (void)setupInterface;
@end

@implementation NFUnifiedAccessSessionCallbacksInterface

+ (id)interface
{
  v2 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)[NFUnifiedAccessSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFUnifiedAccessSessionCallbacksInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return v3;
}

- (void)setupInterface
{
  v2.receiver = self;
  v2.super_class = NFUnifiedAccessSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v2 setupInterface];
}

@end