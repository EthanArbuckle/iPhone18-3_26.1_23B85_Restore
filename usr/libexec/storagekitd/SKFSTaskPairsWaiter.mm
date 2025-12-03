@interface SKFSTaskPairsWaiter
- (BOOL)waitWithError:(id *)error;
- (SKFSTaskPairsWaiter)initWithTaskPairs:(id)pairs;
@end

@implementation SKFSTaskPairsWaiter

- (SKFSTaskPairsWaiter)initWithTaskPairs:(id)pairs
{
  pairsCopy = pairs;
  v9.receiver = self;
  v9.super_class = SKFSTaskPairsWaiter;
  v6 = [(SKFSTaskPairsWaiter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskPairs, pairs);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)error
{
  taskPairs = [(SKFSTaskPairsWaiter *)self taskPairs];
  v5 = [taskPairs mutableCopy];
  while (1)
  {

    if (![v5 count])
    {
      break;
    }

    taskPairs = [v5 objectAtIndexedSubscript:0];
    [v5 removeObjectAtIndex:0];
    msgHandler = [taskPairs msgHandler];
    group = [msgHandler group];
    v8 = dispatch_time(0, 100000000);
    v9 = dispatch_group_wait(group, v8);

    if (v9)
    {
      [v5 addObject:taskPairs];
    }

    msgHandler2 = [taskPairs msgHandler];
    error = [msgHandler2 error];

    if (error)
    {
      msgHandler3 = [taskPairs msgHandler];
      error2 = [msgHandler3 error];
      v14 = [SKError failWithError:error2 error:error];

      goto LABEL_8;
    }
  }

  v14 = 1;
LABEL_8:

  return v14;
}

@end