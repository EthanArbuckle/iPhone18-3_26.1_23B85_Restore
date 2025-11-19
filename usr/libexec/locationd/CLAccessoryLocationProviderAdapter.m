@interface CLAccessoryLocationProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLAccessoryLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchAccessoryBitSetWithReply:(id)a3;
- (void)fetchAccessoryPASCDTransmissionStateWithReply:(id)a3;
- (void)fetchIsAccessoryConnectedWithReply:(id)a3;
- (void)syncSetNavigationStateChange:(int)a3;
@end

@implementation CLAccessoryLocationProviderAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

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
  if (qword_102658FA8 != -1)
  {
    sub_101912FBC();
  }

  return qword_102658FA0;
}

- (CLAccessoryLocationProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLAccessoryLocationProviderAdapter;
  return [(CLAccessoryLocationProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLAccessoryLocationProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLAccessoryLocationProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1006EDE54([(CLAccessoryLocationProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_101912FD0();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)a3
{
  v4 = [(CLAccessoryLocationProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLAccessoryLocationProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)fetchIsAccessoryConnectedWithReply:(id)a3
{
  v4 = *([(CLAccessoryLocationProviderAdapter *)self adaptee]+ 1370);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)fetchAccessoryBitSetWithReply:(id)a3
{
  v4 = sub_1002E0728([(CLAccessoryLocationProviderAdapter *)self adaptee], 1);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)fetchAccessoryPASCDTransmissionStateWithReply:(id)a3
{
  HIDWORD(v5) = *([(CLAccessoryLocationProviderAdapter *)self adaptee]+ 250) - 68;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 1;
  if (v4 > 7)
  {
    v6 = 4;
  }

  else
  {
    v6 = dword_101C89BE4[v4];
  }

  v7 = *(a3 + 2);

  v7(a3, v6);
}

- (void)syncSetNavigationStateChange:(int)a3
{
  v3 = *&a3;
  if ([(CLAccessoryLocationProviderAdapter *)self adaptee])
  {
    v5 = [(CLAccessoryLocationProviderAdapter *)self adaptee];

    sub_1006EE150(v5, v3);
  }
}

+ (BOOL)isSupported
{
  if (qword_102658FC0 != -1)
  {
    sub_1019133B0();
  }

  return byte_102658FB8;
}

@end