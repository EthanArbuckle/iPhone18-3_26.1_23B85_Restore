@interface SKWaitableAggregate
- (BOOL)waitWithError:(id *)error;
- (SKWaitableAggregate)initWithWaitables:(id)waitables;
@end

@implementation SKWaitableAggregate

- (SKWaitableAggregate)initWithWaitables:(id)waitables
{
  waitablesCopy = waitables;
  v9.receiver = self;
  v9.super_class = SKWaitableAggregate;
  v6 = [(SKWaitableAggregate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_waitables, waitables);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)error
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  waitables = [(SKWaitableAggregate *)self waitables];
  v5 = [waitables countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(waitables);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v12 = [v11 waitWithError:&v17];
        v13 = v17;
        v14 = v13;
        if (!v7 && v13)
        {
          v7 = v13;
        }

        v9 &= v12;
      }

      v6 = [waitables countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  if (error)
  {
    v15 = v7;
    *error = v7;
  }

  return v9;
}

@end