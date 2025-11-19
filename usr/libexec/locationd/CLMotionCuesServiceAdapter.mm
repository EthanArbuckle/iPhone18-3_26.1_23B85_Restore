@interface CLMotionCuesServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLMotionCuesServiceAdapter)init;
@end

@implementation CLMotionCuesServiceAdapter

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