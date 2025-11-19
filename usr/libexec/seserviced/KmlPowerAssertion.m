@interface KmlPowerAssertion
- (KmlPowerAssertion)init;
- (void)dealloc;
@end

@implementation KmlPowerAssertion

- (KmlPowerAssertion)init
{
  v3.receiver = self;
  v3.super_class = KmlPowerAssertion;
  return [(KmlPowerAssertion *)&v3 init];
}

- (void)dealloc
{
  sub_1003CFB74(self);
  queue = self->_queue;
  self->_queue = 0;

  v4.receiver = self;
  v4.super_class = KmlPowerAssertion;
  [(KmlPowerAssertion *)&v4 dealloc];
}

@end