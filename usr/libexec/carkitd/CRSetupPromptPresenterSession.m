@interface CRSetupPromptPresenterSession
- (CRSetupPromptPresenterSession)init;
- (CRSetupPromptPresenterSessionDelegate)sessionDelegate;
- (NSXPCConnection)connection;
- (id)presenterRequestsAssetProgressWithCompletion:(id)a3;
- (void)_cleanupAssetProgress;
- (void)_handleAssetProgressFinished;
- (void)_servicePerform:(id)a3;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentAllowWhileLockedPromptForVehicleName:(id)a3 responseHandler:(id)a4;
- (void)presentAssetProgressForVehicleName:(id)a3 progress:(id)a4 completionHandler:(id)a5 cancelHandler:(id)a6;
- (void)presentAssetReadyForVehicleName:(id)a3 appClipIDs:(id)a4 confirmationHandler:(id)a5;
- (void)presentAssetReadySoonForVehicleName:(id)a3 confirmationHandler:(id)a4;
- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentAssetUnavailableWithDescription:(id)a3 responseHandler:(id)a4;
- (void)presentBluetoothConfirmationPromptForVehicleName:(id)a3 numericCode:(id)a4 responseHandler:(id)a5;
- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)a3;
- (void)presentBluetoothFailedPromptForVehicleName:(id)a3 isTimeout:(BOOL)a4 responseHandler:(id)a5;
- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)a3;
- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentEnhancedIntegrationPromptForVehicleName:(id)a3 responseHandler:(id)a4;
- (void)presentSetupCarKeysPromptForVehicleName:(id)a3 carKeyInfo:(id)a4 cancelHandler:(id)a5;
- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5;
- (void)presentWaitingOnMessagingPrompt;
- (void)presentWaitingOnStartSessionPrompt;
- (void)presenterDidDismissWithCompletion:(id)a3;
- (void)presenterIsReadyWithCompletion:(id)a3;
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
  v4 = [(CRSetupPromptPresenterSession *)self connection];
  [v4 invalidate];

  [(CRSetupPromptPresenterSession *)self setConnection:0];
  [(CRSetupPromptPresenterSession *)self setSessionTransaction:0];
}

- (void)_servicePerform:(id)a3
{
  v4 = a3;
  v5 = [(CRSetupPromptPresenterSession *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000DDB18];

  v4[2](v4, v6);
}

- (void)presenterIsReadyWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE0C;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)presenterDidDismissWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BFAC;
  block[3] = &unk_1000DDAD8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)presenterRequestsAssetProgressWithCompletion:(id)a3
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

- (void)presentBluetoothConfirmationPromptForVehicleName:(id)a3 numericCode:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C380;
  v14[3] = &unk_1000DDBB8;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentBluetoothContactsSyncPromptWithResponseHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C624;
  v6[3] = &unk_1000DDBE0;
  v7 = v4;
  v5 = v4;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v6];
}

- (void)presentBluetoothFailedPromptForVehicleName:(id)a3 isTimeout:(BOOL)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C8E4;
  v12[3] = &unk_1000DDC08;
  v15 = a4;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v12];
}

- (void)presentWaitingOnMessagingPrompt
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(CRSetupPromptPresenterSession *)self _servicePerform:&stru_1000DDC48];
}

- (void)presentAllowWhileLockedPromptForVehicleName:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CBA4;
  v10[3] = &unk_1000DDC70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CE4C;
  v10[3] = &unk_1000DDC98;
  v13 = a3;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D104;
  v10[3] = &unk_1000DDCC0;
  v12 = a3;
  v13 = a4;
  v11 = v8;
  v9 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentWaitingOnStartSessionPrompt
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(CRSetupPromptPresenterSession *)self _servicePerform:&stru_1000DDCE0];
}

- (void)presentEnhancedIntegrationPromptForVehicleName:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D420;
  v10[3] = &unk_1000DDC70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)a3 wirelessEnablement:(unint64_t)a4 responseHandler:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D6C8;
  v10[3] = &unk_1000DDC98;
  v13 = a3;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a3 declineVariant:(unint64_t)a4 responseHandler:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D980;
  v10[3] = &unk_1000DDCC0;
  v12 = a3;
  v13 = a4;
  v11 = v8;
  v9 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetProgressForVehicleName:(id)a3 progress:(id)a4 completionHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CRSetupPromptPresenterSession *)self setAssetProgress:v13];
  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:v12];

  v14 = NSStringFromSelector("fractionCompleted");
  [v13 addObserver:self forKeyPath:v14 options:2 context:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001DD1C;
  v19[3] = &unk_1000DDD58;
  v21 = self;
  v22 = v11;
  v20 = v10;
  v15 = v11;
  v16 = v10;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v19];
  LODWORD(v14) = [v13 isFinished];

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

  v4 = [(CRSetupPromptPresenterSession *)self progressPromptCompletion];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:0];
}

- (void)_cleanupAssetProgress
{
  v3 = [(CRSetupPromptPresenterSession *)self assetProgress];

  if (v3)
  {
    v4 = [(CRSetupPromptPresenterSession *)self assetProgress];
    v5 = NSStringFromSelector("fractionCompleted");
    [v4 removeObserver:self forKeyPath:v5];
  }

  [(CRSetupPromptPresenterSession *)self setAssetProgress:0];
  v6 = [(CRSetupPromptPresenterSession *)self remoteProgressCompletion];
  if (v6)
  {
    v6[2]();
  }

  [(CRSetupPromptPresenterSession *)self setRemoteProgressCompletion:0];
  [(CRSetupPromptPresenterSession *)self setProgressPromptCompletion:0];
}

- (void)presentAssetReadyForVehicleName:(id)a3 appClipIDs:(id)a4 confirmationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E154;
  v14[3] = &unk_1000DDBB8;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentAssetUnavailableWithDescription:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E3C4;
  v10[3] = &unk_1000DDC70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentAssetReadySoonForVehicleName:(id)a3 confirmationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E680;
  v10[3] = &unk_1000DDC70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v10];
}

- (void)presentSetupCarKeysPromptForVehicleName:(id)a3 carKeyInfo:(id)a4 cancelHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E904;
  v14[3] = &unk_1000DDBB8;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v14];
}

- (void)presentCheckForSoftwareUpdatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EB4C;
  v6[3] = &unk_1000DDBE0;
  v7 = v4;
  v5 = v4;
  [(CRSetupPromptPresenterSession *)self _servicePerform:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001ED74;
  v7[3] = &unk_1000DD580;
  v7[4] = self;
  v8 = a5;
  v6 = v8;
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