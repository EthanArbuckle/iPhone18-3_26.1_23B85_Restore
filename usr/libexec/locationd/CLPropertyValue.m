@interface CLPropertyValue
- (void)dealloc;
@end

@implementation CLPropertyValue

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLPropertyValue;
  [(CLPropertyValue *)&v3 dealloc];
}

@end