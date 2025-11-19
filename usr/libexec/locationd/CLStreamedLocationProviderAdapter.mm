@interface CLStreamedLocationProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLStreamedLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)pairedDeviceIsNearby:(BOOL)a3;
- (void)receivedMessageOfType:(id)a3 withPayload:(id)a4;
- (void)releaseDisablementAssertion;
- (void)releaseEmergencyEnablementAssertion;
- (void)takeDisablementAssertion;
- (void)takeEmergencyEnablementAssertion;
@end

@implementation CLStreamedLocationProviderAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_1026563D0 != -1)
  {
    sub_10188FC70();
  }

  return qword_1026563C8;
}

- (CLStreamedLocationProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLStreamedLocationProviderAdapter;
  return [(CLStreamedLocationProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLStreamedLocationProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLStreamedLocationProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100488FC0([(CLStreamedLocationProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10188FC84();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)a3
{
  v4 = [(CLStreamedLocationProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLStreamedLocationProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

+ (BOOL)isSupported
{
  if (qword_1026563E0 != -1)
  {
    sub_10188FE18();
  }

  return byte_1026563D8;
}

- (void)takeDisablementAssertion
{
  v2 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_1004892EC(v2);
}

- (void)releaseDisablementAssertion
{
  v2 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048965C(v2);
}

- (void)takeEmergencyEnablementAssertion
{
  v2 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_1004899CC(v2);
}

- (void)releaseEmergencyEnablementAssertion
{
  v2 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_100489D08(v2);
}

- (void)receivedMessageOfType:(id)a3 withPayload:(id)a4
{
  v6 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048A064(v6, a3, a4);
}

- (void)pairedDeviceIsNearby:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048A158(v4, v3);
}

@end