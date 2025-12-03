@interface FMDPairingLockUpdateInfoAction
- (FMDFMIPServiceProvider)provider;
- (FMDPairingLockUpdateInfoAction)initWithProvider:(id)provider updateRequestInfo:(id)info;
- (void)performOnActionCompletion:(id)completion;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDPairingLockUpdateInfoAction

- (FMDPairingLockUpdateInfoAction)initWithProvider:(id)provider updateRequestInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = FMDPairingLockUpdateInfoAction;
  v8 = [(FMDPairingLockUpdateInfoAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, providerCopy);
    objc_storeStrong(&v9->_updateRequestInfo, info);
  }

  return v9;
}

- (void)performOnActionCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  onCompletionHandler = self->_onCompletionHandler;
  self->_onCompletionHandler = v4;

  _objc_release_x1();
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    updateRequestInfo = [(FMDPairingLockUpdateInfoAction *)self updateRequestInfo];
    pairingCheckToken = [updateRequestInfo pairingCheckToken];
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = pairingCheckToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action FMDPairingLockUpdateInfoAction %@ started for %@", buf, 0x16u);
  }

  provider = [(FMDPairingLockUpdateInfoAction *)self provider];
  v9 = [FMDPairingLockUpdateInfoRequest alloc];
  account = [provider account];
  updateRequestInfo2 = [(FMDPairingLockUpdateInfoAction *)self updateRequestInfo];
  v12 = [(FMDPairingLockUpdateInfoRequest *)v9 initWithAccount:account updateRequestInfo:updateRequestInfo2];

  objc_initWeak(buf, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10017D508;
  v17 = &unk_1002CE000;
  objc_copyWeak(&v19, buf);
  v13 = completionCopy;
  v18 = v13;
  [(FMDRequest *)v12 setCompletionHandler:&v14];
  [(FMDPairingLockUpdateInfoAction *)self setRequest:v12, v14, v15, v16, v17];
  [provider enqueueRequest:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  provider = [(FMDPairingLockUpdateInfoAction *)self provider];
  serverInteractionController = [provider serverInteractionController];
  request = [(FMDPairingLockUpdateInfoAction *)self request];
  [serverInteractionController cancelRequest:request];
}

- (FMDFMIPServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end