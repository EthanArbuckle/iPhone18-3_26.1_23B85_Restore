@interface MetaAction
- (BOOL)shouldCancelAction:(id)action;
- (BOOL)shouldWaitForAction:(id)action;
- (MetaAction)init;
- (MetaAction)initWithAction:(id)action id:(id)id;
- (NSString)description;
- (id)_actionStateString;
- (id)actionType;
- (void)dealloc;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)runWithCompletion:(id)completion;
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
      synchronizer = [(MetaAction *)self synchronizer];
      [synchronizer wait];
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

- (MetaAction)initWithAction:(id)action id:(id)id
{
  actionCopy = action;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = MetaAction;
  v8 = [(MetaAction *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(MetaAction *)v8 setActionId:idCopy];
    [(MetaAction *)v9 setEmbeddedAction:actionCopy];
    v10 = [FMSynchronizer alloc];
    v11 = [(MetaAction *)v9 description];
    v12 = [v10 initWithDescription:v11 andTimeout:-1.0];
    [(MetaAction *)v9 setSynchronizer:v12];

    [(MetaAction *)v9 addObserver:v9 forKeyPath:@"isCancelled" options:1 context:0];
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"isCancelled"])
  {
    v8 = [changeCopy valueForKey:NSKeyValueChangeNewKey];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      embeddedAction = [(MetaAction *)self embeddedAction];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        embeddedAction2 = [(MetaAction *)self embeddedAction];
        [embeddedAction2 willCancelAction];
      }

      synchronizer = [(MetaAction *)self synchronizer];
      [synchronizer signal];
    }
  }
}

- (NSString)description
{
  actionId = [(MetaAction *)self actionId];
  _actionStateString = [(MetaAction *)self _actionStateString];
  embeddedAction = [(MetaAction *)self embeddedAction];
  v6 = [NSString stringWithFormat:@"#%@-%@-%@", actionId, _actionStateString, embeddedAction];

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

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  embeddedAction = [(MetaAction *)self embeddedAction];
  [embeddedAction runWithCompletion:completionCopy];
}

- (id)actionType
{
  embeddedAction = [(MetaAction *)self embeddedAction];
  actionType = [embeddedAction actionType];

  return actionType;
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  embeddedAction = [(MetaAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    embeddedAction2 = [(MetaAction *)self embeddedAction];
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
  embeddedAction = [(MetaAction *)self embeddedAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    embeddedAction2 = [(MetaAction *)self embeddedAction];
    v8 = [embeddedAction2 shouldWaitForAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end