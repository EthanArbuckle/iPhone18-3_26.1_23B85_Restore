@interface SESTimer
- (void)dealloc;
@end

@implementation SESTimer

- (void)dealloc
{
  dispatch_source_cancel(self->_src);
  v3.receiver = self;
  v3.super_class = SESTimer;
  [(SESTimer *)&v3 dealloc];
}

@end