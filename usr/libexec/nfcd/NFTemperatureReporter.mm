@interface NFTemperatureReporter
- (void)dealloc;
@end

@implementation NFTemperatureReporter

- (void)dealloc
{
  v3 = sub_1001E6E54(self);
  v4.receiver = self;
  v4.super_class = NFTemperatureReporter;
  [(NFTemperatureReporter *)&v4 dealloc];
}

@end