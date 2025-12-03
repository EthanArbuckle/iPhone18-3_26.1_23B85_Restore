@interface CRSetupPromptPresenterSession
- (CRSetupPromptPresenterSession)init;
- (CRSetupPromptPresenterSessionDelegate)sessionDelegate;
- (NSXPCConnection)connection;
- (id)presenterRequestsAssetProgressWithCompletion:(id)completion;
- (void)_cleanupAssetProgress;
- (void)_handleAssetProgressFinished;
- (void)_servicePerform:(id)perform;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)presentAssetProgressForVehicleName:(id)name progress:(id)progress completionHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)presentAssetReadyForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler;
- (void)presentAssetReadySoonForVehicleName:(id)name confirmationHandler:(id)handler;
- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)presentAssetUnavailableWithDescription:(id)description responseHandler:(id)handler;
- (void)presentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)handler;
- (void)presentBluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler;
- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)handler;
- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
- (void)presentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)presentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler;
- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)presentWaitingOnMessagingPrompt;
- (void)presentWaitingOnStartSessionPrompt;
- (void)presenterDidDismissWithCompletion:(id)completion;
- (void)presenterIsReadyWithCompletion:(id)completion;
@end

@implementation CRSetupPromptPresenterSession

- (CRSetupPromptPresenterSession)init
{
  v5.receiver = self;
  v5.super_class = CRSetupPromptPresenterSession;
  v2 = [(CRSetupPromptPresenterSession *)&v5 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [(CRSetupPromptPresenterSession *)v2 setSessionTransaction:v3];
  }

  return v2;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100083894(v3);
  }

  [(CRSetupPromptPresenterSession *)self _cleanupAssetProgress];
  [(CRSetupPromptPresenterSession *)self setDismissHandler:0];
  connection = [(CRSetupPromptPresenterSession *)self connection];
  [connection invalidate];

  [(CRSetupPromptPresenterSession *)self setConnection:0];
  [(CRSetupPromptPresenterSession *)self setSessionTransaction:0];
}

- (void)_servicePerform:(id)perform
{
  performCopy = perform;
  connection = [(CRSetupPromptPresenterSession *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000DDB18];

  performCopy[2](performCopy, v6);
}

- (void)presenterIsReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE0C;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v8, &location);
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)presenterDidDismissWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BFAC;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v8, &location);
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)presenterRequestsAssetProgressWithCompletion:(id)completion
{
  objc_initWeak(&location, self);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001C194;
  v11 = sub_10001C1A4;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C1AC;
  block[3] = &unk_1000DDB40;
  objc_copyWeak(&v6, &location);
  block[4] = &v7;
  dispatch_sync(&_dispatch_main_q, block);
  v3 = v8[5];
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);

  objc_destroyWeak(&location);

  return v3;
}

- (void)presentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler
{
  nameCopy = name;
  codeCopy = code;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C380;
  v14[3] = &unk_1000DDBB8;
  v15 = nameCopy;
  v16 = codeCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = codeCopy;
  v13 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C624;
  v6[3] = &unk_1000DDBE0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v6];
}

- (void)presentBluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C8E4;
  v12[3] = &unk_1000DDC08;
  timeoutCopy = timeout;
  v13 = nameCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v12];
}

- (void)presentWaitingOnMessagingPrompt
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(CRSetupPromptPresenterSession *)self _servicePerform:&stru_1000DDC48];
}

- (void)presentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CBA4;
  v10[3] = &unk_1000DDC70;
  v11 = nameCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CE4C;
  v10[3] = &unk_1000DDC98;
  optionCopy = option;
  v11 = handlerCopy;
  enablementCopy = enablement;
  v9 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D104;
  v10[3] = &unk_1000DDCC0;
  enablementCopy = enablement;
  variantCopy = variant;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentWaitingOnStartSessionPrompt
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(CRSetupPromptPresenterSession *)self _servicePerform:&stru_1000DDCE0];
}

- (void)presentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D420;
  v10[3] = &unk_1000DDC70;
  v11 = nameCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D6C8;
  v10[3] = &unk_1000DDC98;
  optionCopy = option;
  v11 = handlerCopy;
  enablementCopy = enablement;
  v9 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D980;
  v10[3] = &unk_1000DDCC0;
  enablementCopy = enablement;
  variantCopy = variant;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetProgressForVehicleName:(id)name progress:(id)progress completionHandler:(id)handler cancelHandler:(id)cancelHandler
{
  nameCopy = name;
  cancelHandlerCopy = cancelHandler;
  handlerCopy = handler;
  progressCopy = progress;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CRSetupPromptPresenterSession *)self setAssetProgress:progressCopy];
  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:handlerCopy];

  v14 = NSStringFromSelector("fractionCompleted");
  [progressCopy addObserver:self forKeyPath:v14 options:2 context:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001DD1C;
  v19[3] = &unk_1000DDD58;
  selfCopy = self;
  v22 = cancelHandlerCopy;
  v20 = nameCopy;
  v15 = cancelHandlerCopy;
  v16 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v19];
  LODWORD(v14) = [progressCopy isFinished];

  if (v14)
  {
    v17 = CarPairingLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "asset progress already finished at time of presenting asset progress prompt", v18, 2u);
    }

    [(CRSetupPromptPresenterSession *)self _handleAssetProgressFinished];
  }
}

- (void)_handleAssetProgressFinished
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "asset progress completed", v6, 2u);
  }

  progressPromptCompletion = [(CRSetupPromptPresenterSession *)self progressPromptCompletion];
  v5 = progressPromptCompletion;
  if (progressPromptCompletion)
  {
    (*(progressPromptCompletion + 16))(progressPromptCompletion);
  }

  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:0];
}

- (void)_cleanupAssetProgress
{
  assetProgress = [(CRSetupPromptPresenterSession *)self assetProgress];

  if (assetProgress)
  {
    assetProgress2 = [(CRSetupPromptPresenterSession *)self assetProgress];
    v5 = NSStringFromSelector("fractionCompleted");
    [assetProgress2 removeObserver:self forKeyPath:v5];
  }

  [(CRSetupPromptPresenterSession *)self setAssetProgress:0];
  remoteProgressCompletion = [(CRSetupPromptPresenterSession *)self remoteProgressCompletion];
  if (remoteProgressCompletion)
  {
    remoteProgressCompletion[2]();
  }

  [(CRSetupPromptPresenterSession *)self setRemoteProgressCompletion:0];
  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:0];
}

- (void)presentAssetReadyForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler
{
  nameCopy = name;
  dsCopy = ds;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E154;
  v14[3] = &unk_1000DDBB8;
  v15 = nameCopy;
  v16 = dsCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = dsCopy;
  v13 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentAssetUnavailableWithDescription:(id)description responseHandler:(id)handler
{
  descriptionCopy = description;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E3C4;
  v10[3] = &unk_1000DDC70;
  v11 = descriptionCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = descriptionCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetReadySoonForVehicleName:(id)name confirmationHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E680;
  v10[3] = &unk_1000DDC70;
  v11 = nameCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler
{
  nameCopy = name;
  infoCopy = info;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E904;
  v14[3] = &unk_1000DDBB8;
  v15 = nameCopy;
  v16 = infoCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = infoCopy;
  v13 = nameCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EB4C;
  v6[3] = &unk_1000DDBE0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v6];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001ED74;
  v7[3] = &unk_1000DD580;
  v7[4] = self;
  changeCopy = change;
  v6 = changeCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (CRSetupPromptPresenterSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end