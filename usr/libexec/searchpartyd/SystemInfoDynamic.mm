@interface SystemInfoDynamic
- (void)systemClockDidChangeHandler;
@end

@implementation SystemInfoDynamic

- (void)systemClockDidChangeHandler
{
  v2 = *self->clockLock;
  v3 = *self->_TtCs12_SwiftObject_opaque;

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

@end