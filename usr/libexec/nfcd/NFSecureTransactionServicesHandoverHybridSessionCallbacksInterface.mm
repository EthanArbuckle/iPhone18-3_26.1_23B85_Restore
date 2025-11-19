@interface NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface)initWithProtocol:(id)a3;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return v3;
}

- (NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface)initWithProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 initWithProtocol:a3];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 setupInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)self protocolInterface];
  sub_100260674(v3);
}

@end