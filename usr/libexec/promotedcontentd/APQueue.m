@interface APQueue
- (APQueue)init;
- (id)dequeue;
- (void)enqueue:(id)a3;
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

- (void)enqueue:(id)a3
{
  v4 = a3;
  v5 = [(APQueue *)self lock];
  [v5 lock];

  v6 = [(APQueue *)self container];
  [v6 addObject:v4];

  v7 = [(APQueue *)self lock];
  [v7 unlock];
}

- (id)dequeue
{
  v3 = [(APQueue *)self lock];
  [v3 lock];

  v4 = [(APQueue *)self container];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [(APQueue *)self container];
    [v6 removeObjectAtIndex:0];
  }

  v7 = [(APQueue *)self lock];
  [v7 unlock];

  return v5;
}

@end