@interface CLTimeZoneManagerAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLTimeZoneManagerAdapter)init;
@end

@implementation CLTimeZoneManagerAdapter

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
  if (qword_10265AFE0 != -1)
  {
    sub_101960AD0();
  }

  return qword_10265AFD8;
}

- (CLTimeZoneManagerAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLTimeZoneManagerAdapter;
  return [(CLTimeZoneManagerAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLTimeZoneManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLTimeZoneManagerClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_10265AFF0 != -1)
  {
    sub_101960AE4();
  }

  if (!qword_10265AFF8)
  {
    return 0;
  }

  sub_10001A3E8();
  return !sub_100719350();
}

@end