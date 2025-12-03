@interface CLAccessoryLocationProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLAccessoryLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchAccessoryBitSetWithReply:(id)reply;
- (void)fetchAccessoryPASCDTransmissionStateWithReply:(id)reply;
- (void)fetchIsAccessoryConnectedWithReply:(id)reply;
- (void)syncSetNavigationStateChange:(int)change;
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

- (void)doAsync:(id)async
{
  adaptee = [(CLAccessoryLocationProviderAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLAccessoryLocationProviderAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)fetchIsAccessoryConnectedWithReply:(id)reply
{
  v4 = *([(CLAccessoryLocationProviderAdapter *)self adaptee]+ 1370);
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)fetchAccessoryBitSetWithReply:(id)reply
{
  v4 = sub_1002E0728([(CLAccessoryLocationProviderAdapter *)self adaptee], 1);
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (void)fetchAccessoryPASCDTransmissionStateWithReply:(id)reply
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

  v7 = *(reply + 2);

  v7(reply, v6);
}

- (void)syncSetNavigationStateChange:(int)change
{
  v3 = *&change;
  if ([(CLAccessoryLocationProviderAdapter *)self adaptee])
  {
    adaptee = [(CLAccessoryLocationProviderAdapter *)self adaptee];

    sub_1006EE150(adaptee, v3);
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