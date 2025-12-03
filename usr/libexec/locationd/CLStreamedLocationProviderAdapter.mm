@interface CLStreamedLocationProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLStreamedLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)pairedDeviceIsNearby:(BOOL)nearby;
- (void)receivedMessageOfType:(id)type withPayload:(id)payload;
- (void)releaseDisablementAssertion;
- (void)releaseEmergencyEnablementAssertion;
- (void)takeDisablementAssertion;
- (void)takeEmergencyEnablementAssertion;
@end

@implementation CLStreamedLocationProviderAdapter

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
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

- (void)doAsync:(id)async
{
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLStreamedLocationProviderAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
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
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_1004892EC(adaptee);
}

- (void)releaseDisablementAssertion
{
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048965C(adaptee);
}

- (void)takeEmergencyEnablementAssertion
{
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_1004899CC(adaptee);
}

- (void)releaseEmergencyEnablementAssertion
{
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_100489D08(adaptee);
}

- (void)receivedMessageOfType:(id)type withPayload:(id)payload
{
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048A064(adaptee, type, payload);
}

- (void)pairedDeviceIsNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  adaptee = [(CLStreamedLocationProviderAdapter *)self adaptee];

  sub_10048A158(adaptee, nearbyCopy);
}

@end