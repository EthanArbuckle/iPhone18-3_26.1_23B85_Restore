@interface TimedWaitAction
- (BOOL)shouldCancelAction:(id)action;
- (BOOL)shouldWaitForAction:(id)action;
- (NSString)description;
- (TimedWaitAction)initWithAction:(id)action executeAt:(id)at;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation TimedWaitAction

- (TimedWaitAction)initWithAction:(id)action executeAt:(id)at
{
  actionCopy = action;
  atCopy = at;
  v11.receiver = self;
  v11.super_class = TimedWaitAction;
  v8 = [(TimedWaitAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TimedWaitAction *)v8 setEmbeddedAction:actionCopy];
    [(TimedWaitAction *)v9 setExecutionDate:atCopy];
  }

  return v9;
}

- (NSString)description
{
  executionDate = [(TimedWaitAction *)self executionDate];
  v4 = +[NSDate date];
  [executionDate timeIntervalSinceDate:v4];
  v6 = v5;

  embeddedAction = [(TimedWaitAction *)self embeddedAction];
  v8 = [NSString stringWithFormat:@"TimedWait(0x%p)-%ld-%@", self, v6, embeddedAction];

  return v8;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  executionDate = [(TimedWaitAction *)self executionDate];
  v6 = +[NSDate date];
  [executionDate timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [FMDispatchTimer alloc];
  v10 = dispatch_get_global_queue(0, 0);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10019C9E4;
  v17 = &unk_1002CD8B0;
  selfCopy = self;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = [v9 initWithQueue:v10 timeout:&v14 completion:v8];
  [(TimedWaitAction *)self setTimer:v12, v14, v15, v16, v17, selfCopy];

  timer = [(TimedWaitAction *)self timer];
  [timer start];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  embeddedAction = [(TimedWaitAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    embeddedAction2 = [(TimedWaitAction *)self embeddedAction];
    v8 = [embeddedAction2 shouldCancelAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldWaitForAction:(id)action
{
  actionCopy = action;
  embeddedAction = [(TimedWaitAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    embeddedAction2 = [(TimedWaitAction *)self embeddedAction];
    v8 = [embeddedAction2 shouldWaitForAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willCancelAction
{
  timer = [(TimedWaitAction *)self timer];
  [timer cancel];

  [(TimedWaitAction *)self setTimer:0];
  embeddedAction = [(TimedWaitAction *)self embeddedAction];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    embeddedAction2 = [(TimedWaitAction *)self embeddedAction];
    [embeddedAction2 willCancelAction];
  }
}

@end