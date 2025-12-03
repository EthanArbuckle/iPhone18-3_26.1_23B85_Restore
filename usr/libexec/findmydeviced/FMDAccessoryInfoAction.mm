@interface FMDAccessoryInfoAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDAccessoryInfoAction)initWithAccount:(id)account registry:(id)registry accessoryTypes:(id)types serverInteractionController:(id)controller;
- (FMDAccount)account;
- (FMDExtConfigurationRegistry)registry;
- (FMDServerInteractionController)serverInteractionController;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDAccessoryInfoAction

- (FMDAccessoryInfoAction)initWithAccount:(id)account registry:(id)registry accessoryTypes:(id)types serverInteractionController:(id)controller
{
  accountCopy = account;
  registryCopy = registry;
  typesCopy = types;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = FMDAccessoryInfoAction;
  v14 = [(FMDAccessoryInfoAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_registry, registryCopy);
    objc_storeWeak(&v15->_account, accountCopy);
    objc_storeWeak(&v15->_serverInteractionController, controllerCopy);
    objc_storeStrong(&v15->_accessoryTypes, types);
  }

  return v15;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessoryTypes = [(FMDAccessoryInfoAction *)self accessoryTypes];
    *buf = 138412290;
    v21 = accessoryTypes;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action accessory info for %@ started", buf, 0xCu);
  }

  v7 = [FMDAccessoryInfoRequest alloc];
  account = [(FMDAccessoryInfoAction *)self account];
  registry = [(FMDAccessoryInfoAction *)self registry];
  accessoryTypes2 = [(FMDAccessoryInfoAction *)self accessoryTypes];
  v11 = [(FMDAccessoryInfoRequest *)v7 initWithAccount:account registry:registry accessoryTypes:accessoryTypes2];

  objc_initWeak(buf, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100193A48;
  v17 = &unk_1002CE000;
  objc_copyWeak(&v19, buf);
  v12 = completionCopy;
  v18 = v12;
  [(FMDRequest *)v11 setCompletionHandler:&v14];
  [(FMDAccessoryInfoAction *)self setRequest:v11, v14, v15, v16, v17];
  serverInteractionController = [(FMDAccessoryInfoAction *)self serverInteractionController];
  [serverInteractionController enqueueRequest:v11];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  serverInteractionController = [(FMDAccessoryInfoAction *)self serverInteractionController];
  request = [(FMDAccessoryInfoAction *)self request];
  [serverInteractionController cancelRequest:request];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = actionCopy;
    accessoryTypes = [(FMDAccessoryInfoAction *)self accessoryTypes];
    v8 = [NSMutableSet setWithArray:accessoryTypes];

    accessoryTypes2 = [v6 accessoryTypes];

    [v8 addObjectsFromArray:accessoryTypes2];
    allObjects = [v8 allObjects];
    [(FMDAccessoryInfoAction *)self setAccessoryTypes:allObjects];
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