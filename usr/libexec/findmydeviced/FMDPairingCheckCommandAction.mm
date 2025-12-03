@interface FMDPairingCheckCommandAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDFMIPServiceProvider)provider;
- (FMDPairingCheckCommandAction)initWithProvider:(id)provider pairingCheckRequestInfo:(id)info;
- (void)performOnActionCompletion:(id)completion;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDPairingCheckCommandAction

- (FMDPairingCheckCommandAction)initWithProvider:(id)provider pairingCheckRequestInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = FMDPairingCheckCommandAction;
  v8 = [(FMDPairingCheckCommandAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, providerCopy);
    objc_storeStrong(&v9->_pairingCheckRequestInfo, info);
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
    pairingCheckRequestInfo = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
    pairingCheckToken = [pairingCheckRequestInfo pairingCheckToken];
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = pairingCheckToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action FMDPairingCheckCommandAction %@ started for %@", buf, 0x16u);
  }

  provider = [(FMDPairingCheckCommandAction *)self provider];
  v9 = [FMDPairingCheckCommandRequest alloc];
  account = [provider account];
  pairingCheckRequestInfo2 = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
  v12 = [(FMDPairingCheckCommandRequest *)v9 initWithAccount:account pairingCheckRequestInfo:pairingCheckRequestInfo2];

  objc_initWeak(buf, self);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001C24F8;
  v18 = &unk_1002CE000;
  objc_copyWeak(&v20, buf);
  v13 = completionCopy;
  v19 = v13;
  [(FMDRequest *)v12 setCompletionHandler:&v15];
  [(FMDPairingCheckCommandAction *)self setRequest:v12, v15, v16, v17, v18];
  serverInteractionController = [provider serverInteractionController];
  [serverInteractionController enqueueRequest:v12];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  provider = [(FMDPairingCheckCommandAction *)self provider];
  serverInteractionController = [provider serverInteractionController];
  request = [(FMDPairingCheckCommandAction *)self request];
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

  pairingCheckRequestInfo = [actionCopy pairingCheckRequestInfo];
  pairingCheckToken = [pairingCheckRequestInfo pairingCheckToken];
  pairingCheckRequestInfo2 = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
  pairingCheckToken2 = [pairingCheckRequestInfo2 pairingCheckToken];
  v9 = [pairingCheckToken isEqualToString:pairingCheckToken2];

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