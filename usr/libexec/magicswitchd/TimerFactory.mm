@interface TimerFactory
+ (id)timerWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period waking:(BOOL)waking handlerBlock:(id)block;
@end

@implementation TimerFactory

+ (id)timerWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period waking:(BOOL)waking handlerBlock:(id)block
{
  v10 = &off_100018308;
  if (!waking)
  {
    v10 = off_100018300;
  }

  v11 = *v10;
  blockCopy = block;
  identifierCopy = identifier;
  v14 = [[v11 alloc] initWithIdentifier:identifierCopy delay:blockCopy gracePeriod:delay handlerBlock:period];

  return v14;
}

@end