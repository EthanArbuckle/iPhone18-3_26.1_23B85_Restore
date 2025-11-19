@interface TimerFactory
+ (id)timerWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 waking:(BOOL)a6 handlerBlock:(id)a7;
@end

@implementation TimerFactory

+ (id)timerWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 waking:(BOOL)a6 handlerBlock:(id)a7
{
  v10 = &off_100018308;
  if (!a6)
  {
    v10 = off_100018300;
  }

  v11 = *v10;
  v12 = a7;
  v13 = a3;
  v14 = [[v11 alloc] initWithIdentifier:v13 delay:v12 gracePeriod:a4 handlerBlock:a5];

  return v14;
}

@end