@interface CRWirelessPairingServiceAgent
- (BOOL)_shouldAcceptHeadUnitPairingPromptServiceConnection:(id)a3;
- (BOOL)_shouldAcceptPairingServiceConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldPresentHeadUnitPairingPromptSession:(id)a3;
- (CRHeadUnitPairingPresenting)presenter;
- (CRHeadUnitPairingPromptServiceSession)currentPromptSession;
- (CRWirelessPairingServiceAgent)initWithBluetoothManager:(id)a3 preferences:(id)a4 vehicleStore:(id)a5;
- (void)pairingServiceSession:(id)a3 didFailPairingAttemptWithError:(id)a4;
- (void)pairingServiceSessionDidFinishPairing:(id)a3;
- (void)presentHeadUnitPairingForPromptSession:(id)a3;
- (void)setCurrentPairingSession:(id)a3;
@end

@implementation CRWirelessPairingServiceAgent

- (CRWirelessPairingServiceAgent)initWithBluetoothManager:(id)a3 preferences:(id)a4 vehicleStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRWirelessPairingServiceAgent;
  v12 = [(CRWirelessPairingServiceAgent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bluetoothManager, a3);
    objc_storeStrong(&v13->_carPlayPreferences, a4);
    objc_storeStrong(&v13->_vehicleStore, a5);
  }

  return v13;
}

- (void)setCurrentPairingSession:(id)a3
{
  v4 = a3;
  currentPairingSession = self->_currentPairingSession;
  if (currentPairingSession)
  {
    [(CRWirelessPairingServiceSession *)currentPairingSession invalidate];
    v6 = self->_currentPairingSession;
    self->_currentPairingSession = 0;
  }

  v7 = self->_currentPairingSession;
  self->_currentPairingSession = v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 serviceName];
  v7 = [v6 isEqualToString:@"com.apple.carkit.pairing.service"];

  if (v7)
  {
    v8 = [(CRWirelessPairingServiceAgent *)self _shouldAcceptPairingServiceConnection:v5];
  }

  else
  {
    v9 = [v5 serviceName];
    v10 = [v9 isEqualToString:@"com.apple.carkit.headUnitPairingPrompt.service"];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [(CRWirelessPairingServiceAgent *)self _shouldAcceptHeadUnitPairingPromptServiceConnection:v5];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (BOOL)_shouldAcceptPairingServiceConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForEntitlement:@"com.apple.private.carkit.pairing"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRWirelessPairingService];
    [v4 setExportedInterface:v7];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_10001F510;
    v21 = sub_10001F520;
    v22 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F528;
    block[3] = &unk_1000DDA88;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(&_dispatch_main_q, block);
    [v4 setExportedObject:v18[5]];
    objc_initWeak(&location, v4);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001F5D8;
    v13[3] = &unk_1000DD8E8;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    [v4 setInterruptionHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001F798;
    v11[3] = &unk_1000DD8E8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [v4 setInvalidationHandler:v11];
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Receiving pairing service connection from %@", buf, 0xCu);
    }

    [v4 resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100083994(v4);
    }
  }

  return v6;
}

- (BOOL)_shouldAcceptHeadUnitPairingPromptServiceConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForEntitlement:@"com.apple.private.carkit.headUnitPairingPrompt"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRHeadUnitPairingPromptService];
    [v4 setExportedInterface:v7];
    v8 = objc_alloc_init(CRHeadUnitPairingPromptServiceSession);
    [(CRWirelessPairingServiceAgent *)self setCurrentPromptSession:v8];
    [(CRHeadUnitPairingPromptServiceSession *)v8 setDelegate:self];
    [v4 setExportedObject:v8];
    objc_initWeak(&location, v4);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FC18;
    v14[3] = &unk_1000DDA60;
    objc_copyWeak(&v15, &location);
    [v4 setInterruptionHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001FCCC;
    v12[3] = &unk_1000DDA60;
    objc_copyWeak(&v13, &location);
    [v4 setInvalidationHandler:v12];
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Receiving HUP prompt service connection from %@", buf, 0xCu);
    }

    [v4 resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100083A50(v4);
    }
  }

  return v6;
}

- (BOOL)shouldPresentHeadUnitPairingPromptSession:(id)a3
{
  v4 = a3;
  v5 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];

  if (!v5)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v16 = "not presenting head unit pairing prompt, pairing session is not already established";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v21, 2u);
    }

LABEL_13:

    v14 = 0;
    goto LABEL_14;
  }

  v6 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  v7 = [v6 isPairingAvailable];

  if ((v7 & 1) == 0)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100083ACC();
    }

    goto LABEL_13;
  }

  v8 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  v9 = [v8 isActive];

  if ((v9 & 1) == 0)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v16 = "not presenting head unit pairing prompt, pairing session is not active / already completed";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  v11 = [v10 keyIdentifier];
  v12 = [v4 keyIdentifier];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
      v19 = [v18 keyIdentifier];
      v20 = [v4 keyIdentifier];
      v21 = 138478083;
      v22 = v19;
      v23 = 2113;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "not presenting head unit pairing prompt, key identifier mismatch: %{private}@ vs %{private}@, ", &v21, 0x16u);
    }

    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (void)presentHeadUnitPairingForPromptSession:(id)a3
{
  if ([(CRWirelessPairingServiceAgent *)self shouldPresentHeadUnitPairingPromptSession:a3])
  {
    v4 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
    v5 = [v4 bluetoothAddress];

    v6 = [CRBluetoothManager addressStringForData:v5];
    if (v6)
    {
      v7 = [(CRWirelessPairingServiceAgent *)self presenter];
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 presentHeadUnitPairingForBluetoothAddress:v6 showBluetoothOnlyOption:0];
      }

      else
      {
        [(CRWirelessPairingServiceAgent *)self _didCompletePairingFlow:0 error:0];
      }
    }

    else
    {
      v8 = CarPairingLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100083B00();
      }

      [(CRWirelessPairingServiceAgent *)self _didCompletePairingFlow:0 error:0];
    }
  }

  else
  {

    [(CRWirelessPairingServiceAgent *)self _didCompletePairingFlow:0 error:0];
  }
}

- (void)pairingServiceSessionDidFinishPairing:(id)a3
{
  v4 = [(CRWirelessPairingServiceAgent *)self presenter];
  if (v4)
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
      v6 = [v5 bluetoothAddress];

      v7 = [CRBluetoothManager addressStringForData:v6];
      [v8 didHeadUnitPairWithBluetoothAddress:v7];
    }
  }

  _objc_release_x2();
}

- (void)pairingServiceSession:(id)a3 didFailPairingAttemptWithError:(id)a4
{
  v9 = a4;
  v5 = [(CRWirelessPairingServiceAgent *)self presenter];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
    v7 = [v6 bluetoothAddress];

    v8 = [CRBluetoothManager addressStringForData:v7];
    [v5 didFailToHeadUnitPairWithBluetoothAddress:v8 error:v9];
  }
}

- (CRHeadUnitPairingPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (CRHeadUnitPairingPromptServiceSession)currentPromptSession
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPromptSession);

  return WeakRetained;
}

@end