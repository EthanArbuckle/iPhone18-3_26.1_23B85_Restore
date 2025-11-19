@interface TimedWaitAction
- (BOOL)shouldCancelAction:(id)a3;
- (BOOL)shouldWaitForAction:(id)a3;
- (NSString)description;
- (TimedWaitAction)initWithAction:(id)a3 executeAt:(id)a4;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation TimedWaitAction

- (TimedWaitAction)initWithAction:(id)a3 executeAt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TimedWaitAction;
  v8 = [(TimedWaitAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TimedWaitAction *)v8 setEmbeddedAction:v6];
    [(TimedWaitAction *)v9 setExecutionDate:v7];
  }

  return v9;
}

- (NSString)description
{
  v3 = [(TimedWaitAction *)self executionDate];
  v4 = +[NSDate date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = [(TimedWaitAction *)self embeddedAction];
  v8 = [NSString stringWithFormat:@"TimedWait(0x%p)-%ld-%@", self, v6, v7];

  return v8;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TimedWaitAction *)self executionDate];
  v6 = +[NSDate date];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [FMDispatchTimer alloc];
  v10 = dispatch_get_global_queue(0, 0);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10019C9E4;
  v17 = &unk_1002CD8B0;
  v18 = self;
  v19 = v4;
  v11 = v4;
  v12 = [v9 initWithQueue:v10 timeout:&v14 completion:v8];
  [(TimedWaitAction *)self setTimer:v12, v14, v15, v16, v17, v18];

  v13 = [(TimedWaitAction *)self timer];
  [v13 start];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  v5 = [(TimedWaitAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TimedWaitAction *)self embeddedAction];
    v8 = [v7 shouldCancelAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldWaitForAction:(id)a3
{
  v4 = a3;
  v5 = [(TimedWaitAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TimedWaitAction *)self embeddedAction];
    v8 = [v7 shouldWaitForAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willCancelAction
{
  v3 = [(TimedWaitAction *)self timer];
  [v3 cancel];

  [(TimedWaitAction *)self setTimer:0];
  v4 = [(TimedWaitAction *)self embeddedAction];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TimedWaitAction *)self embeddedAction];
    [v6 willCancelAction];
  }
}

@end