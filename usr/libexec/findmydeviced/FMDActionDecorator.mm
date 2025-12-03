@interface FMDActionDecorator
- (BOOL)shouldCancelAction:(id)action;
- (BOOL)shouldWaitForAction:(id)action;
- (FMDActionDecorator)initWithAction:(id)action usingCompletion:(id)completion;
- (NSString)description;
- (id)actionType;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDActionDecorator

- (FMDActionDecorator)initWithAction:(id)action usingCompletion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = FMDActionDecorator;
  v8 = [(FMDActionDecorator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDActionDecorator *)v8 setInnerAction:actionCopy];
    [(FMDActionDecorator *)v9 setCompletion:completionCopy];
  }

  return v9;
}

- (id)actionType
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10017DA30();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    innerAction = [(FMDActionDecorator *)self innerAction];
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = innerAction;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ run inner action - %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  innerAction2 = [(FMDActionDecorator *)self innerAction];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100192C58;
  v9[3] = &unk_1002CDEF0;
  objc_copyWeak(&v11, buf);
  v8 = completionCopy;
  v10 = v8;
  [innerAction2 runWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  innerAction = [(FMDActionDecorator *)self innerAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    innerAction2 = [(FMDActionDecorator *)self innerAction];
    v8 = [innerAction2 shouldCancelAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willCancelAction
{
  innerAction = [(FMDActionDecorator *)self innerAction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = sub_10017DA30();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      innerAction2 = [(FMDActionDecorator *)self innerAction];
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = innerAction2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ will cancel inner action - %@", &v8, 0x16u);
    }

    innerAction3 = [(FMDActionDecorator *)self innerAction];
    [innerAction3 willCancelAction];
  }
}

- (BOOL)shouldWaitForAction:(id)action
{
  actionCopy = action;
  innerAction = [(FMDActionDecorator *)self innerAction];
  v6 = [innerAction shouldWaitForAction:actionCopy];

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  innerAction = [(FMDActionDecorator *)self innerAction];
  v5 = [NSString stringWithFormat:@"%@-%p:%@", v3, self, innerAction];

  return v5;
}

@end