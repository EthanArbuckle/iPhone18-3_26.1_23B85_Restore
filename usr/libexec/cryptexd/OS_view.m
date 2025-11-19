@interface OS_view
- (void)dealloc;
@end

@implementation OS_view

- (void)dealloc
{
  _view_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_view;
  [(OS_view *)&v3 dealloc];
}

@end