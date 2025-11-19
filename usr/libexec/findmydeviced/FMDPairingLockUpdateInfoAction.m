@interface FMDPairingLockUpdateInfoAction
- (FMDFMIPServiceProvider)provider;
- (FMDPairingLockUpdateInfoAction)initWithProvider:(id)a3 updateRequestInfo:(id)a4;
- (void)performOnActionCompletion:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDPairingLockUpdateInfoAction

- (FMDPairingLockUpdateInfoAction)initWithProvider:(id)a3 updateRequestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDPairingLockUpdateInfoAction;
  v8 = [(FMDPairingLockUpdateInfoAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, v6);
    objc_storeStrong(&v9->_updateRequestInfo, a4);
  }

  return v9;
}

- (void)performOnActionCompletion:(id)a3
{
  v4 = objc_retainBlock(a3);
  onCompletionHandler = self->_onCompletionHandler;
  self->_onCompletionHandler = v4;

  _objc_release_x1();
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDPairingLockUpdateInfoAction *)self updateRequestInfo];
    v7 = [v6 pairingCheckToken];
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Action FMDPairingLockUpdateInfoAction %@ started for %@", buf, 0x16u);
  }

  v8 = [(FMDPairingLockUpdateInfoAction *)self provider];
  v9 = [FMDPairingLockUpdateInfoRequest alloc];
  v10 = [v8 account];
  v11 = [(FMDPairingLockUpdateInfoAction *)self updateRequestInfo];
  v12 = [(FMDPairingLockUpdateInfoRequest *)v9 initWithAccount:v10 updateRequestInfo:v11];

  objc_initWeak(buf, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10017D508;
  v17 = &unk_1002CE000;
  objc_copyWeak(&v19, buf);
  v13 = v4;
  v18 = v13;
  [(FMDRequest *)v12 setCompletionHandler:&v14];
  [(FMDPairingLockUpdateInfoAction *)self setRequest:v12, v14, v15, v16, v17];
  [v8 enqueueRequest:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)willCancelAction
{
  v5 = [(FMDPairingLockUpdateInfoAction *)self provider];
  v3 = [v5 serverInteractionController];
  v4 = [(FMDPairingLockUpdateInfoAction *)self request];
  [v3 cancelRequest:v4];
}

- (FMDFMIPServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end