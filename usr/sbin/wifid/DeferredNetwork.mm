@interface DeferredNetwork
- (BOOL)doesContain:(__WiFiNetwork *)contain;
- (BOOL)setDeferredNetwork:(__WiFiNetwork *)network;
- (DeferredNetwork)init;
- (double)timeSinceFirstDeferral:(__WiFiNetwork *)deferral;
- (void)dealloc;
- (void)reset;
@end

@implementation DeferredNetwork

- (DeferredNetwork)init
{
  v3 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = DeferredNetwork;
  v4 = [(DeferredNetwork *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_firstSeen = 0.0;
    v4->_history = objc_alloc_init(NSMutableArray);
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  history = self->_history;
  if (history)
  {
  }

  v5.receiver = self;
  v5.super_class = DeferredNetwork;
  [(DeferredNetwork *)&v5 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (BOOL)doesContain:(__WiFiNetwork *)contain
{
  v5 = objc_autoreleasePoolPush();
  history = self->_history;
  if (history)
  {
    v7 = [(NSMutableArray *)history containsObject:contain];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (BOOL)setDeferredNetwork:(__WiFiNetwork *)network
{
  v5 = objc_autoreleasePoolPush();
  history = self->_history;
  if (history)
  {
    if (![(NSMutableArray *)self->_history count])
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_firstSeen = v7;
      self->_ssid = [sub_10000A878(network) copy];
    }

    if ([(NSMutableArray *)self->_history count]>= 0xA)
    {
      [(NSMutableArray *)self->_history removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_history addObject:network];
  }

  objc_autoreleasePoolPop(v5);
  return history != 0;
}

- (double)timeSinceFirstDeferral:(__WiFiNetwork *)deferral
{
  v5 = objc_autoreleasePoolPush();
  history = self->_history;
  if (history && [(NSMutableArray *)history count]&& self->_firstSeen != 0.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7 - self->_firstSeen;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@ not previously time-deferred", "-[DeferredNetwork timeSinceFirstDeferral:]", sub_10000A878(deferral)}];
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0.0;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  self->_firstSeen = 0.0;
  [(NSMutableArray *)self->_history removeAllObjects];

  objc_autoreleasePoolPop(v3);
}

@end