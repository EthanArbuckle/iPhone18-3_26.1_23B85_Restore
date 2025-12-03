@interface SKTaskExecuter
- (BOOL)waitWithError:(id *)error;
- (SKTaskExecuter)initWithTasks:(id)tasks;
@end

@implementation SKTaskExecuter

- (SKTaskExecuter)initWithTasks:(id)tasks
{
  tasksCopy = tasks;
  v9.receiver = self;
  v9.super_class = SKTaskExecuter;
  v6 = [(SKTaskExecuter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, tasks);
  }

  return v7;
}

- (BOOL)waitWithError:(id *)error
{
  tasks = [(SKTaskExecuter *)self tasks];
  [tasks enumerateObjectsUsingBlock:&stru_100048D80];

  tasks2 = [(SKTaskExecuter *)self tasks];
  v7 = [NSPredicate predicateWithBlock:&stru_100048DC0];
  v8 = [tasks2 filteredArrayUsingPredicate:v7];

  if ([v8 count])
  {
    do
    {
      [v8 enumerateObjectsUsingBlock:&stru_100048DE0];
      tasks3 = [(SKTaskExecuter *)self tasks];
      v10 = [NSPredicate predicateWithBlock:&stru_100048E00];
      v11 = [tasks3 filteredArrayUsingPredicate:v10];

      v8 = v11;
    }

    while ([v11 count]);
  }

  else
  {
    v11 = v8;
  }

  tasks4 = [(SKTaskExecuter *)self tasks];
  [tasks4 enumerateObjectsUsingBlock:&stru_100048E20];

  tasks5 = [(SKTaskExecuter *)self tasks];
  [tasks5 enumerateObjectsUsingBlock:&stru_100048E40];

  tasks6 = [(SKTaskExecuter *)self tasks];
  v15 = [NSPredicate predicateWithBlock:&stru_100048E60];
  v16 = [tasks6 filteredArrayUsingPredicate:v15];

  v17 = [v16 count];
  if (v17)
  {
    v18 = sub_10000BFD0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 count];
      v20 = [v16 objectAtIndexedSubscript:0];
      task = [v20 task];
      v23 = 136315650;
      v24 = "[SKTaskExecuter waitWithError:]";
      v25 = 2048;
      v26 = v19;
      v27 = 1024;
      terminationStatus = [task terminationStatus];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: %lu tasks failed, first exit status %d", &v23, 0x1Cu);
    }

    if (error)
    {
      *error = [SKError errorWithCode:140 userInfo:0];
    }
  }

  return v17 == 0;
}

@end