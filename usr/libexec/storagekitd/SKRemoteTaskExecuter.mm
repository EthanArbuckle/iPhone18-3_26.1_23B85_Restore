@interface SKRemoteTaskExecuter
- (BOOL)waitWithError:(id *)a3;
- (SKRemoteTaskExecuter)initWithTasks:(id)a3;
@end

@implementation SKRemoteTaskExecuter

- (SKRemoteTaskExecuter)initWithTasks:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKRemoteTaskExecuter;
  v6 = [(SKRemoteTaskExecuter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, a3);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SKRemoteTaskExecuter *)self tasks];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) waitWithError:a3])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

@end