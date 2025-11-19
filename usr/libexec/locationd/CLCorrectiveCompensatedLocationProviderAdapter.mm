@interface CLCorrectiveCompensatedLocationProviderAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLCorrectiveCompensatedLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchLocationWithReply:(id)a3;
@end

@implementation CLCorrectiveCompensatedLocationProviderAdapter

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

- (void)doAsync:(id)a3
{
  v4 = [(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)fetchLocationWithReply:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100839824;
  v3[3] = &unk_102475FB0;
  v3[4] = a3;
  sub_1008395B4([(CLCorrectiveCompensatedLocationProviderAdapter *)self adaptee], v3);
}

@end