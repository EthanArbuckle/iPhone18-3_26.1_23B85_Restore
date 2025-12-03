@interface NFSecureTransactionServicesHandoverHybridSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverHybridSessionInterface)initWithProtocol:(id)protocol;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverHybridSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverHybridSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverHybridSessionInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [protocolInterface setClasses:v7 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  [protocolInterface setClasses:v8 forSelector:"getAppletsWithCompletion:" argumentIndex:1 ofReply:1];
  [protocolInterface setClasses:v8 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:0];
  [protocolInterface setClasses:v8 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:1];

  return protocolInterface;
}

- (NFSecureTransactionServicesHandoverHybridSessionInterface)initWithProtocol:(id)protocol
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 initWithProtocol:protocol];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 setupInterface];
  protocolInterface = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)self protocolInterface];
  sub_100260480(protocolInterface);
}

@end