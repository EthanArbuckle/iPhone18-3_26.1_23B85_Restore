@interface MetaAction
- (BOOL)shouldCancelAction:(id)a3;
- (BOOL)shouldWaitForAction:(id)a3;
- (MetaAction)init;
- (MetaAction)initWithAction:(id)a3 id:(id)a4;
- (NSString)description;
- (id)_actionStateString;
- (id)actionType;
- (void)dealloc;
- (void)main;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)runWithCompletion:(id)a3;
@end

@implementation MetaAction

- (void)main
{
  objc_initWeak(&location, self);
  if (([(MetaAction *)self isCancelled]& 1) == 0)
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_10015EFE0;
    v7 = &unk_1002CD518;
    objc_copyWeak(&v8, &location);
    [(MetaAction *)self runWithCompletion:&v4];
    if (([(MetaAction *)self isCancelled:v4]& 1) == 0)
    {
      v3 = [(MetaAction *)self synchronizer];
      [v3 wait];
    }

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

- (MetaAction)init
{
  v3.receiver = self;
  v3.super_class = MetaAction;
  return [(MetaAction *)&v3 init];
}

- (void)dealloc
{
  [(MetaAction *)self removeObserver:self forKeyPath:@"isCancelled"];
  v3.receiver = self;
  v3.super_class = MetaAction;
  [(MetaAction *)&v3 dealloc];
}

- (MetaAction)initWithAction:(id)a3 id:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MetaAction;
  v8 = [(MetaAction *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(MetaAction *)v8 setActionId:v7];
    [(MetaAction *)v9 setEmbeddedAction:v6];
    v10 = [FMSynchronizer alloc];
    v11 = [(MetaAction *)v9 description];
    v12 = [v10 initWithDescription:v11 andTimeout:-1.0];
    [(MetaAction *)v9 setSynchronizer:v12];

    [(MetaAction *)v9 addObserver:v9 forKeyPath:@"isCancelled" options:1 context:0];
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a5;
  if ([a3 isEqualToString:@"isCancelled"])
  {
    v8 = [v14 valueForKey:NSKeyValueChangeNewKey];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [(MetaAction *)self embeddedAction];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(MetaAction *)self embeddedAction];
        [v12 willCancelAction];
      }

      v13 = [(MetaAction *)self synchronizer];
      [v13 signal];
    }
  }
}

- (NSString)description
{
  v3 = [(MetaAction *)self actionId];
  v4 = [(MetaAction *)self _actionStateString];
  v5 = [(MetaAction *)self embeddedAction];
  v6 = [NSString stringWithFormat:@"#%@-%@-%@", v3, v4, v5];

  return v6;
}

- (id)_actionStateString
{
  if (([(MetaAction *)self isCancelled]& 1) != 0)
  {
    return @"Cancel";
  }

  if (([(MetaAction *)self isFinished]& 1) != 0)
  {
    return @"Finish";
  }

  if (([(MetaAction *)self isExecuting]& 1) != 0)
  {
    return @"Exec";
  }

  if ([(MetaAction *)self isReady])
  {
    return @"Ready";
  }

  return @"Wait";
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MetaAction *)self embeddedAction];
  [v5 runWithCompletion:v4];
}

- (id)actionType
{
  v2 = [(MetaAction *)self embeddedAction];
  v3 = [v2 actionType];

  return v3;
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  v5 = [(MetaAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MetaAction *)self embeddedAction];
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
  v5 = [(MetaAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MetaAction *)self embeddedAction];
    v8 = [v7 shouldWaitForAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end