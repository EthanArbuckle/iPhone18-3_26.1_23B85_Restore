@interface FMDActionDecorator
- (BOOL)shouldCancelAction:(id)a3;
- (BOOL)shouldWaitForAction:(id)a3;
- (FMDActionDecorator)initWithAction:(id)a3 usingCompletion:(id)a4;
- (NSString)description;
- (id)actionType;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDActionDecorator

- (FMDActionDecorator)initWithAction:(id)a3 usingCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDActionDecorator;
  v8 = [(FMDActionDecorator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDActionDecorator *)v8 setInnerAction:v6];
    [(FMDActionDecorator *)v9 setCompletion:v7];
  }

  return v9;
}

- (id)actionType
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10017DA30();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDActionDecorator *)self innerAction];
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ run inner action - %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = [(FMDActionDecorator *)self innerAction];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100192C58;
  v9[3] = &unk_1002CDEF0;
  objc_copyWeak(&v11, buf);
  v8 = v4;
  v10 = v8;
  [v7 runWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  v5 = [(FMDActionDecorator *)self innerAction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(FMDActionDecorator *)self innerAction];
    v8 = [v7 shouldCancelAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)willCancelAction
{
  v3 = [(FMDActionDecorator *)self innerAction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = sub_10017DA30();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FMDActionDecorator *)self innerAction];
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ will cancel inner action - %@", &v8, 0x16u);
    }

    v7 = [(FMDActionDecorator *)self innerAction];
    [v7 willCancelAction];
  }
}

- (BOOL)shouldWaitForAction:(id)a3
{
  v4 = a3;
  v5 = [(FMDActionDecorator *)self innerAction];
  v6 = [v5 shouldWaitForAction:v4];

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(FMDActionDecorator *)self innerAction];
  v5 = [NSString stringWithFormat:@"%@-%p:%@", v3, self, v4];

  return v5;
}

@end