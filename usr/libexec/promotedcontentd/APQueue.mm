@interface APQueue
- (APQueue)init;
- (id)dequeue;
- (void)enqueue:(id)enqueue;
@end

@implementation APQueue

- (APQueue)init
{
  v8.receiver = self;
  v8.super_class = APQueue;
  v2 = [(APQueue *)&v8 init];
  if (v2)
  {
    v3 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = +[NSMutableArray array];
    container = v2->_container;
    v2->_container = v5;
  }

  return v2;
}

- (void)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  lock = [(APQueue *)self lock];
  [lock lock];

  container = [(APQueue *)self container];
  [container addObject:enqueueCopy];

  lock2 = [(APQueue *)self lock];
  [lock2 unlock];
}

- (id)dequeue
{
  lock = [(APQueue *)self lock];
  [lock lock];

  container = [(APQueue *)self container];
  firstObject = [container firstObject];

  if (firstObject)
  {
    container2 = [(APQueue *)self container];
    [container2 removeObjectAtIndex:0];
  }

  lock2 = [(APQueue *)self lock];
  [lock2 unlock];

  return firstObject;
}

@end