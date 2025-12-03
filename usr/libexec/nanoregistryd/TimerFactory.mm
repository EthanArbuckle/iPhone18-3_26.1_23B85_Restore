@interface TimerFactory
+ (id)timerWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period waking:(BOOL)waking handlerQueue:(id)queue handlerBlock:(id)block;
@end

@implementation TimerFactory

+ (id)timerWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period waking:(BOOL)waking handlerQueue:(id)queue handlerBlock:(id)block
{
  v12 = &off_100174890;
  if (!waking)
  {
    v12 = off_100174888;
  }

  v13 = *v12;
  blockCopy = block;
  queueCopy = queue;
  identifierCopy = identifier;
  v17 = [[v13 alloc] initWithIdentifier:identifierCopy delay:queueCopy gracePeriod:blockCopy handlerQueue:delay handlerBlock:period];

  return v17;
}

@end