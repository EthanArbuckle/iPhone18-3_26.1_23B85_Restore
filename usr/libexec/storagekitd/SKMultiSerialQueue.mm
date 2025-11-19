@interface SKMultiSerialQueue
- (SKMultiSerialQueue)initWithName:(id)a3;
- (void)dispatchWithBlock:(id)a3;
- (void)dispatchWithGroup:(id)a3 block:(id)a4;
@end

@implementation SKMultiSerialQueue

- (SKMultiSerialQueue)initWithName:(id)a3
{
  v4 = a3;
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
      v9 = dispatch_queue_create([v4 UTF8String], 0);
      [(NSMutableArray *)v5->_queues addObject:v9];
    }

    v5->_counter = 0;
  }

  return v5;
}

- (void)dispatchWithBlock:(id)a3
{
  block = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(SKMultiSerialQueue *)v4 queues];
  v6 = [v5 objectAtIndexedSubscript:{-[SKMultiSerialQueue counter](v4, "counter")}];
  dispatch_async(v6, block);

  LODWORD(v6) = [(SKMultiSerialQueue *)v4 counter];
  v7 = [(SKMultiSerialQueue *)v4 queues];
  -[SKMultiSerialQueue setCounter:](v4, "setCounter:", (v6 + 1) % [v7 count]);

  objc_sync_exit(v4);
}

- (void)dispatchWithGroup:(id)a3 block:(id)a4
{
  group = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(SKMultiSerialQueue *)v7 queues];
  v9 = [v8 objectAtIndexedSubscript:{-[SKMultiSerialQueue counter](v7, "counter")}];
  dispatch_group_async(group, v9, v6);

  LODWORD(v9) = [(SKMultiSerialQueue *)v7 counter];
  v10 = [(SKMultiSerialQueue *)v7 queues];
  -[SKMultiSerialQueue setCounter:](v7, "setCounter:", (v9 + 1) % [v10 count]);

  objc_sync_exit(v7);
}

@end