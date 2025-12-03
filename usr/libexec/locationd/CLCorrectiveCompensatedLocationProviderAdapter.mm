@interface CLCorrectiveCompensatedLocationProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLCorrectiveCompensatedLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchLocationWithReply:(id)reply;
@end

@implementation CLCorrectiveCompensatedLocationProviderAdapter

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
  if (qword_10265A620 != -1)
  {
    sub_10194FF14();
  }

  return qword_10265A618;
}

- (CLCorrectiveCompensatedLocationProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLCorrectiveCompensatedLocationProviderAdapter;
  return [(CLCorrectiveCompensatedLocationProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLCorrectiveCompensatedLocationProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLCorrectiveCompensatedLocationProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100839318([(CLCorrectiveCompensatedLocationProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_10194FF28();
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
  adaptee = [(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)fetchLocationWithReply:(id)reply
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100839824;
  v3[3] = &unk_102475FB0;
  v3[4] = reply;
  sub_1008395B4([(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee], v3);
}

@end