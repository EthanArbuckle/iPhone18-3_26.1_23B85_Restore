@interface CLMotionCuesServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLMotionCuesServiceAdapter)init;
@end

@implementation CLMotionCuesServiceAdapter

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
  if (qword_102656750 != -1)
  {
    sub_1018A2DAC();
  }

  return qword_102656748;
}

- (CLMotionCuesServiceAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLMotionCuesServiceAdapter;
  return [(CLMotionCuesServiceAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLMotionCuesServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLMotionCuesServiceClientProtocol];
}

@end