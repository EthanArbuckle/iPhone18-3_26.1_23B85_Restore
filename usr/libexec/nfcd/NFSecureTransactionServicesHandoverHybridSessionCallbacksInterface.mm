@interface NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface)initWithProtocol:(id)protocol;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface)initWithProtocol:(id)protocol
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 initWithProtocol:protocol];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 setupInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)self protocolInterface];
  sub_100260674(protocolInterface);
}

@end