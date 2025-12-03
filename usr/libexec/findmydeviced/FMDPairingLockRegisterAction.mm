@interface FMDPairingLockRegisterAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDFMIPServiceProvider)provider;
- (FMDPairingLockRegisterAction)initWithProvider:(id)provider registerRequestInfo:(id)info;
- (void)performOnActionCompletion:(id)completion;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDPairingLockRegisterAction

- (FMDPairingLockRegisterAction)initWithProvider:(id)provider registerRequestInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = FMDPairingLockRegisterAction;
  v8 = [(FMDPairingLockRegisterAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, providerCopy);
    objc_storeStrong(&v9->_registerRequestInfo, info);
  }

  return v9;
}

- (void)performOnActionCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  onCompletionHandler = self->_onCompletionHandler;
  self->_onCompletionHandler = v4;

  _objc_release_x1(v4, onCompletionHandler);
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    registerRequestInfo = [(FMDPairingLockRegisterAction *)self registerRequestInfo];
    serialNumber = [registerRequestInfo serialNumber];
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = serialNumber;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action FMDPairingLockRegisterAction %@ started for %@", buf, 0x16u);
  }

  provider = [(FMDPairingLockRegisterAction *)self provider];
  v9 = [FMDPairingLockRegisterRequest alloc];
  account = [provider account];
  registerRequestInfo2 = [(FMDPairingLockRegisterAction *)self registerRequestInfo];
  v12 = [(FMDPairingLockRegisterRequest *)v9 initWithAccount:account registerRequestInfo:registerRequestInfo2];

  objc_initWeak(buf, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001CAD08;
  v17 = &unk_1002CE000;
  objc_copyWeak(&v19, buf);
  v13 = completionCopy;
  v18 = v13;
  [(FMDRequest *)v12 setCompletionHandler:&v14];
  [(FMDPairingLockRegisterAction *)self setRequest:v12, v14, v15, v16, v17];
  [provider enqueueRequest:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  provider = [(FMDPairingLockRegisterAction *)self provider];
  serverInteractionController = [provider serverInteractionController];
  request = [(FMDPairingLockRegisterAction *)self request];
  [serverInteractionController cancelRequest:request];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  registerRequestInfo = [actionCopy registerRequestInfo];
  serialNumber = [registerRequestInfo serialNumber];
  registerRequestInfo2 = [(FMDPairingLockRegisterAction *)self registerRequestInfo];
  serialNumber2 = [registerRequestInfo2 serialNumber];
  v9 = [serialNumber isEqualToString:serialNumber2];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (FMDFMIPServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end