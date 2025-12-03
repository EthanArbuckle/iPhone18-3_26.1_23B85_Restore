@interface NFSecureTransactionServicesHandoverSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverSessionCallbacksInterface)initWithProtocol:(id)protocol;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverSessionCallbacksInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverSessionCallbacksInterface)initWithProtocol:(id)protocol
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionCallbacksInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 initWithProtocol:protocol];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 setupInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)self protocolInterface];
  sub_100260674(protocolInterface);
}

@end