@interface SKFSTaskPairsWaiter
- (BOOL)waitWithError:(id *)a3;
- (SKFSTaskPairsWaiter)initWithTaskPairs:(id)a3;
@end

@implementation SKFSTaskPairsWaiter

- (SKFSTaskPairsWaiter)initWithTaskPairs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKFSTaskPairsWaiter;
  v6 = [(SKFSTaskPairsWaiter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskPairs, a3);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)a3
{
  v4 = [(SKFSTaskPairsWaiter *)self taskPairs];
  v5 = [v4 mutableCopy];
  while (1)
  {

    if (![v5 count])
    {
      break;
    }

    v4 = [v5 objectAtIndexedSubscript:0];
    [v5 removeObjectAtIndex:0];
    v6 = [v4 msgHandler];
    v7 = [v6 group];
    v8 = dispatch_time(0, 100000000);
    v9 = dispatch_group_wait(v7, v8);

    if (v9)
    {
      [v5 addObject:v4];
    }

    v10 = [v4 msgHandler];
    v11 = [v10 error];

    if (v11)
    {
      v12 = [v4 msgHandler];
      v13 = [v12 error];
      v14 = [SKError failWithError:v13 error:a3];

      goto LABEL_8;
    }
  }

  v14 = 1;
LABEL_8:

  return v14;
}

@end