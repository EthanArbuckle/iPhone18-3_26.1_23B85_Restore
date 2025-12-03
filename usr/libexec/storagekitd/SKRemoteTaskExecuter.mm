@interface SKRemoteTaskExecuter
- (BOOL)waitWithError:(id *)error;
- (SKRemoteTaskExecuter)initWithTasks:(id)tasks;
@end

@implementation SKRemoteTaskExecuter

- (SKRemoteTaskExecuter)initWithTasks:(id)tasks
{
  tasksCopy = tasks;
  v9.receiver = self;
  v9.super_class = SKRemoteTaskExecuter;
  v6 = [(SKRemoteTaskExecuter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, tasks);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)error
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tasks = [(SKRemoteTaskExecuter *)self tasks];
  v5 = [tasks countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tasks);
        }

        if (![*(*(&v11 + 1) + 8 * i) waitWithError:error])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [tasks countByEnumeratingWithState:&v11 objects:v15 count:16];
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