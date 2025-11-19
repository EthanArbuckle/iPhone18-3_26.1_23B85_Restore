@interface FMDSupportedAccessoryTypesAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDSupportedAccessoryTypesAction)initWithAccount:(id)a3 registry:(id)a4 serverInteractionController:(id)a5;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDSupportedAccessoryTypesAction

- (FMDSupportedAccessoryTypesAction)initWithAccount:(id)a3 registry:(id)a4 serverInteractionController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FMDSupportedAccessoryTypesAction;
  v12 = [(FMDSupportedAccessoryTypesAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, a4);
    objc_storeStrong(&v13->_account, a3);
    objc_storeStrong(&v13->_serverInteractionController, a5);
  }

  return v13;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action SupportedAccessoryTypesAction started", buf, 2u);
  }

  v6 = [FMDSupportedAccessoryTypesRequest alloc];
  v7 = [(FMDSupportedAccessoryTypesAction *)self account];
  v8 = [(FMDSupportedAccessoryTypesAction *)self registry];
  v9 = [(FMDSupportedAccessoryTypesRequest *)v6 initWithAccount:v7 registry:v8];

  objc_initWeak(buf, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10015ACD4;
  v15 = &unk_1002CE000;
  objc_copyWeak(&v17, buf);
  v10 = v4;
  v16 = v10;
  [(FMDRequest *)v9 setCompletionHandler:&v12];
  [(FMDSupportedAccessoryTypesAction *)self setRequest:v9, v12, v13, v14, v15];
  v11 = [(FMDSupportedAccessoryTypesAction *)self serverInteractionController];
  [v11 enqueueRequest:v9];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  v4 = [(FMDSupportedAccessoryTypesAction *)self serverInteractionController];
  v3 = [(FMDSupportedAccessoryTypesAction *)self request];
  [v4 cancelRequest:v3];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end