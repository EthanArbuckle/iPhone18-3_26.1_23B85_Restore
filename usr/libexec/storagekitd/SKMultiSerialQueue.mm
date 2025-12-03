@interface SKMultiSerialQueue
- (SKMultiSerialQueue)initWithName:(id)name;
- (void)dispatchWithBlock:(id)block;
- (void)dispatchWithGroup:(id)group block:(id)block;
@end

@implementation SKMultiSerialQueue

- (SKMultiSerialQueue)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SKMultiSerialQueue;
  v5 = [(SKMultiSerialQueue *)&v11 init];
  if (v5)
  {
    if (qword_100059368 != -1)
    {
      sub_10002E4FC();
    }

    v6 = dword_100059370;
    v7 = [[NSMutableArray alloc] initWithCapacity:dword_100059370];
    queues = v5->_queues;
    v5->_queues = v7;

    for (; v6; --v6)
    {
      v9 = dispatch_queue_create([nameCopy UTF8String], 0);
      [(NSMutableArray *)v5->_queues addObject:v9];
    }

    v5->_counter = 0;
  }

  return v5;
}

- (void)dispatchWithBlock:(id)block
{
  block = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queues = [(SKMultiSerialQueue *)selfCopy queues];
  v6 = [queues objectAtIndexedSubscript:{-[SKMultiSerialQueue counter](selfCopy, "counter")}];
  dispatch_async(v6, block);

  LODWORD(v6) = [(SKMultiSerialQueue *)selfCopy counter];
  queues2 = [(SKMultiSerialQueue *)selfCopy queues];
  -[SKMultiSerialQueue setCounter:](selfCopy, "setCounter:", (v6 + 1) % [queues2 count]);

  objc_sync_exit(selfCopy);
}

- (void)dispatchWithGroup:(id)group block:(id)block
{
  group = group;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queues = [(SKMultiSerialQueue *)selfCopy queues];
  v9 = [queues objectAtIndexedSubscript:{-[SKMultiSerialQueue counter](selfCopy, "counter")}];
  dispatch_group_async(group, v9, blockCopy);

  LODWORD(v9) = [(SKMultiSerialQueue *)selfCopy counter];
  queues2 = [(SKMultiSerialQueue *)selfCopy queues];
  -[SKMultiSerialQueue setCounter:](selfCopy, "setCounter:", (v9 + 1) % [queues2 count]);

  objc_sync_exit(selfCopy);
}

@end