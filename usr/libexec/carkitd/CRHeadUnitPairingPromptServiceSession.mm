@interface CRHeadUnitPairingPromptServiceSession
- (CRHeadUnitPairingPromptServiceSessionDelegate)delegate;
- (void)handleReceivedResponse:(BOOL)a3 forKeyIdentifier:(id)a4 completion:(id)a5;
- (void)presentHeadUnitPairingPromptForKeyIdentifier:(id)a3 completion:(id)a4;
- (void)wantsToPresentHeadUnitPairingPromptForKeyIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CRHeadUnitPairingPromptServiceSession

- (void)wantsToPresentHeadUnitPairingPromptForKeyIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100082660(v8);
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015B9C;
  v11[3] = &unk_1000DD828;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)presentHeadUnitPairingPromptForKeyIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000826A4(v8);
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015E34;
  v11[3] = &unk_1000DD828;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)handleReceivedResponse:(BOOL)a3 forKeyIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100082760(a3, v10);
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016128;
  block[3] = &unk_1000DD878;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (CRHeadUnitPairingPromptServiceSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end