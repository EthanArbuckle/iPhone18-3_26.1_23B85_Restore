@interface NFSecureTransactionServicesHandoverSessionCallbacksInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverSessionCallbacksInterface)initWithProtocol:(id)a3;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverSessionCallbacksInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverSessionCallbacksInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverSessionCallbacksInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)v2 protocolInterface];

  return v3;
}

- (NFSecureTransactionServicesHandoverSessionCallbacksInterface)initWithProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionCallbacksInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 initWithProtocol:a3];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverSessionCallbacksInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)&v4 setupInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionCallbacksInterface *)self protocolInterface];
  sub_100260674(v3);
}

@end