@interface FMDSupportedAccessoryTypesAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDSupportedAccessoryTypesAction)initWithAccount:(id)account registry:(id)registry serverInteractionController:(id)controller;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDSupportedAccessoryTypesAction

- (FMDSupportedAccessoryTypesAction)initWithAccount:(id)account registry:(id)registry serverInteractionController:(id)controller
{
  accountCopy = account;
  registryCopy = registry;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = FMDSupportedAccessoryTypesAction;
  v12 = [(FMDSupportedAccessoryTypesAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, registry);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_serverInteractionController, controller);
  }

  return v13;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action SupportedAccessoryTypesAction started", buf, 2u);
  }

  v6 = [FMDSupportedAccessoryTypesRequest alloc];
  account = [(FMDSupportedAccessoryTypesAction *)self account];
  registry = [(FMDSupportedAccessoryTypesAction *)self registry];
  v9 = [(FMDSupportedAccessoryTypesRequest *)v6 initWithAccount:account registry:registry];

  objc_initWeak(buf, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10015ACD4;
  v15 = &unk_1002CE000;
  objc_copyWeak(&v17, buf);
  v10 = completionCopy;
  v16 = v10;
  [(FMDRequest *)v9 setCompletionHandler:&v12];
  [(FMDSupportedAccessoryTypesAction *)self setRequest:v9, v12, v13, v14, v15];
  serverInteractionController = [(FMDSupportedAccessoryTypesAction *)self serverInteractionController];
  [serverInteractionController enqueueRequest:v9];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  serverInteractionController = [(FMDSupportedAccessoryTypesAction *)self serverInteractionController];
  request = [(FMDSupportedAccessoryTypesAction *)self request];
  [serverInteractionController cancelRequest:request];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end