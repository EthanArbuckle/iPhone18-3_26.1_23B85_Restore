@interface FMDPairingCheckCommandAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDFMIPServiceProvider)provider;
- (FMDPairingCheckCommandAction)initWithProvider:(id)a3 pairingCheckRequestInfo:(id)a4;
- (void)performOnActionCompletion:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDPairingCheckCommandAction

- (FMDPairingCheckCommandAction)initWithProvider:(id)a3 pairingCheckRequestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDPairingCheckCommandAction;
  v8 = [(FMDPairingCheckCommandAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, v6);
    objc_storeStrong(&v9->_pairingCheckRequestInfo, a4);
  }

  return v9;
}

- (void)performOnActionCompletion:(id)a3
{
  v4 = objc_retainBlock(a3);
  onCompletionHandler = self->_onCompletionHandler;
  self->_onCompletionHandler = v4;

  _objc_release_x1(v4, onCompletionHandler);
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
    v7 = [v6 pairingCheckToken];
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action FMDPairingCheckCommandAction %@ started for %@", buf, 0x16u);
  }

  v8 = [(FMDPairingCheckCommandAction *)self provider];
  v9 = [FMDPairingCheckCommandRequest alloc];
  v10 = [v8 account];
  v11 = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
  v12 = [(FMDPairingCheckCommandRequest *)v9 initWithAccount:v10 pairingCheckRequestInfo:v11];

  objc_initWeak(buf, self);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001C24F8;
  v18 = &unk_1002CE000;
  objc_copyWeak(&v20, buf);
  v13 = v4;
  v19 = v13;
  [(FMDRequest *)v12 setCompletionHandler:&v15];
  [(FMDPairingCheckCommandAction *)self setRequest:v12, v15, v16, v17, v18];
  v14 = [v8 serverInteractionController];
  [v14 enqueueRequest:v12];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  v5 = [(FMDPairingCheckCommandAction *)self provider];
  v3 = [v5 serverInteractionController];
  v4 = [(FMDPairingCheckCommandAction *)self request];
  [v3 cancelRequest:v4];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [v4 pairingCheckRequestInfo];
  v6 = [v5 pairingCheckToken];
  v7 = [(FMDPairingCheckCommandAction *)self pairingCheckRequestInfo];
  v8 = [v7 pairingCheckToken];
  v9 = [v6 isEqualToString:v8];

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