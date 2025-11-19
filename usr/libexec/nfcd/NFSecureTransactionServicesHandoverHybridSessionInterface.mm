@interface NFSecureTransactionServicesHandoverHybridSessionInterface
+ (id)interface;
- (NFSecureTransactionServicesHandoverHybridSessionInterface)initWithProtocol:(id)a3;
- (void)setupInterface;
@end

@implementation NFSecureTransactionServicesHandoverHybridSessionInterface

+ (id)interface
{
  v2 = [[NFSecureTransactionServicesHandoverHybridSessionInterface alloc] initWithProtocol:&OBJC_PROTOCOL___NFSecureTransactionServicesHandoverHybridSessionInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)v2 protocolInterface];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v8 forSelector:"getAppletsWithCompletion:" argumentIndex:1 ofReply:1];
  [v3 setClasses:v8 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:0];
  [v3 setClasses:v8 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:1];

  return v3;
}

- (NFSecureTransactionServicesHandoverHybridSessionInterface)initWithProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionInterface;
  return [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 initWithProtocol:a3];
}

- (void)setupInterface
{
  v4.receiver = self;
  v4.super_class = NFSecureTransactionServicesHandoverHybridSessionInterface;
  [(NFSecureTransactionServicesHandoverBaseSessionInterface *)&v4 setupInterface];
  v3 = [(NFSecureTransactionServicesHandoverBaseSessionInterface *)self protocolInterface];
  sub_100260480(v3);
}

@end