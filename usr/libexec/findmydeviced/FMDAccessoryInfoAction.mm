@interface FMDAccessoryInfoAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDAccessoryInfoAction)initWithAccount:(id)a3 registry:(id)a4 accessoryTypes:(id)a5 serverInteractionController:(id)a6;
- (FMDAccount)account;
- (FMDExtConfigurationRegistry)registry;
- (FMDServerInteractionController)serverInteractionController;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDAccessoryInfoAction

- (FMDAccessoryInfoAction)initWithAccount:(id)a3 registry:(id)a4 accessoryTypes:(id)a5 serverInteractionController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = FMDAccessoryInfoAction;
  v14 = [(FMDAccessoryInfoAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_registry, v11);
    objc_storeWeak(&v15->_account, v10);
    objc_storeWeak(&v15->_serverInteractionController, v13);
    objc_storeStrong(&v15->_accessoryTypes, a5);
  }

  return v15;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDAccessoryInfoAction *)self accessoryTypes];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action accessory info for %@ started", buf, 0xCu);
  }

  v7 = [FMDAccessoryInfoRequest alloc];
  v8 = [(FMDAccessoryInfoAction *)self account];
  v9 = [(FMDAccessoryInfoAction *)self registry];
  v10 = [(FMDAccessoryInfoAction *)self accessoryTypes];
  v11 = [(FMDAccessoryInfoRequest *)v7 initWithAccount:v8 registry:v9 accessoryTypes:v10];

  objc_initWeak(buf, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100193A48;
  v17 = &unk_1002CE000;
  objc_copyWeak(&v19, buf);
  v12 = v4;
  v18 = v12;
  [(FMDRequest *)v11 setCompletionHandler:&v14];
  [(FMDAccessoryInfoAction *)self setRequest:v11, v14, v15, v16, v17];
  v13 = [(FMDAccessoryInfoAction *)self serverInteractionController];
  [v13 enqueueRequest:v11];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  v4 = [(FMDAccessoryInfoAction *)self serverInteractionController];
  v3 = [(FMDAccessoryInfoAction *)self request];
  [v4 cancelRequest:v3];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [(FMDAccessoryInfoAction *)self accessoryTypes];
    v8 = [NSMutableSet setWithArray:v7];

    v9 = [v6 accessoryTypes];

    [v8 addObjectsFromArray:v9];
    v10 = [v8 allObjects];
    [(FMDAccessoryInfoAction *)self setAccessoryTypes:v10];
  }

  return isKindOfClass & 1;
}

- (FMDExtConfigurationRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

- (FMDAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end