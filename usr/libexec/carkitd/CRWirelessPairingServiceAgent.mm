@interface CRWirelessPairingServiceAgent
- (BOOL)_shouldAcceptHeadUnitPairingPromptServiceConnection:(id)connection;
- (BOOL)_shouldAcceptPairingServiceConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldPresentHeadUnitPairingPromptSession:(id)session;
- (CRHeadUnitPairingPresenting)presenter;
- (CRHeadUnitPairingPromptServiceSession)currentPromptSession;
- (CRWirelessPairingServiceAgent)initWithBluetoothManager:(id)manager preferences:(id)preferences vehicleStore:(id)store;
- (void)pairingServiceSession:(id)session didFailPairingAttemptWithError:(id)error;
- (void)pairingServiceSessionDidFinishPairing:(id)pairing;
- (void)presentHeadUnitPairingForPromptSession:(id)session;
- (void)setCurrentPairingSession:(id)session;
@end

@implementation CRWirelessPairingServiceAgent

- (CRWirelessPairingServiceAgent)initWithBluetoothManager:(id)manager preferences:(id)preferences vehicleStore:(id)store
{
  managerCopy = manager;
  preferencesCopy = preferences;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CRWirelessPairingServiceAgent;
  v12 = [(CRWirelessPairingServiceAgent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bluetoothManager, manager);
    objc_storeStrong(&v13->_carPlayPreferences, preferences);
    objc_storeStrong(&v13->_vehicleStore, store);
  }

  return v13;
}

- (void)setCurrentPairingSession:(id)session
{
  sessionCopy = session;
  currentPairingSession = self->_currentPairingSession;
  if (currentPairingSession)
  {
    [(CRWirelessPairingServiceSession *)currentPairingSession invalidate];
    v6 = self->_currentPairingSession;
    self->_currentPairingSession = 0;
  }

  v7 = self->_currentPairingSession;
  self->_currentPairingSession = sessionCopy;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v7 = [serviceName isEqualToString:@"com.apple.carkit.pairing.service"];

  if (v7)
  {
    v8 = [(CRWirelessPairingServiceAgent *)self _shouldAcceptPairingServiceConnection:connectionCopy];
  }

  else
  {
    serviceName2 = [connectionCopy serviceName];
    v10 = [serviceName2 isEqualToString:@"com.apple.carkit.headUnitPairingPrompt.service"];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [(CRWirelessPairingServiceAgent *)self _shouldAcceptHeadUnitPairingPromptServiceConnection:connectionCopy];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (BOOL)_shouldAcceptPairingServiceConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.pairing"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRWirelessPairingService];
    [connectionCopy setExportedInterface:v7];
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
    [connectionCopy setExportedObject:v18[5]];
    objc_initWeak(&location, connectionCopy);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001F5D8;
    v13[3] = &unk_1000DD8E8;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    [connectionCopy setInterruptionHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001F798;
    v11[3] = &unk_1000DD8E8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [connectionCopy setInvalidationHandler:v11];
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Receiving pairing service connection from %@", buf, 0xCu);
    }

    [connectionCopy resume];
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
      sub_100083994(connectionCopy);
    }
  }

  return bOOLValue;
}

- (BOOL)_shouldAcceptHeadUnitPairingPromptServiceConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.headUnitPairingPrompt"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRHeadUnitPairingPromptService];
    [connectionCopy setExportedInterface:v7];
    v8 = objc_alloc_init(CRHeadUnitPairingPromptServiceSession);
    [(CRWirelessPairingServiceAgent *)self setCurrentPromptSession:v8];
    [(CRHeadUnitPairingPromptServiceSession *)v8 setDelegate:self];
    [connectionCopy setExportedObject:v8];
    objc_initWeak(&location, connectionCopy);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FC18;
    v14[3] = &unk_1000DDA60;
    objc_copyWeak(&v15, &location);
    [connectionCopy setInterruptionHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001FCCC;
    v12[3] = &unk_1000DDA60;
    objc_copyWeak(&v13, &location);
    [connectionCopy setInvalidationHandler:v12];
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Receiving HUP prompt service connection from %@", buf, 0xCu);
    }

    [connectionCopy resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = CarPairingLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100083A50(connectionCopy);
    }
  }

  return bOOLValue;
}

- (BOOL)shouldPresentHeadUnitPairingPromptSession:(id)session
{
  sessionCopy = session;
  currentPairingSession = [(CRWirelessPairingServiceAgent *)self currentPairingSession];

  if (!currentPairingSession)
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

  currentPairingSession2 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  isPairingAvailable = [currentPairingSession2 isPairingAvailable];

  if ((isPairingAvailable & 1) == 0)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100083ACC();
    }

    goto LABEL_13;
  }

  currentPairingSession3 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  isActive = [currentPairingSession3 isActive];

  if ((isActive & 1) == 0)
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

  currentPairingSession4 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
  keyIdentifier = [currentPairingSession4 keyIdentifier];
  keyIdentifier2 = [sessionCopy keyIdentifier];
  v13 = [keyIdentifier isEqualToString:keyIdentifier2];

  if ((v13 & 1) == 0)
  {
    v15 = CarPairingLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      currentPairingSession5 = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
      keyIdentifier3 = [currentPairingSession5 keyIdentifier];
      keyIdentifier4 = [sessionCopy keyIdentifier];
      v21 = 138478083;
      v22 = keyIdentifier3;
      v23 = 2113;
      v24 = keyIdentifier4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "not presenting head unit pairing prompt, key identifier mismatch: %{private}@ vs %{private}@, ", &v21, 0x16u);
    }

    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (void)presentHeadUnitPairingForPromptSession:(id)session
{
  if ([(CRWirelessPairingServiceAgent *)self shouldPresentHeadUnitPairingPromptSession:session])
  {
    currentPairingSession = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
    bluetoothAddress = [currentPairingSession bluetoothAddress];

    v6 = [CRBluetoothManager addressStringForData:bluetoothAddress];
    if (v6)
    {
      presenter = [(CRWirelessPairingServiceAgent *)self presenter];
      if (presenter && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [presenter presentHeadUnitPairingForBluetoothAddress:v6 showBluetoothOnlyOption:0];
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

- (void)pairingServiceSessionDidFinishPairing:(id)pairing
{
  presenter = [(CRWirelessPairingServiceAgent *)self presenter];
  if (presenter)
  {
    v8 = presenter;
    if (objc_opt_respondsToSelector())
    {
      currentPairingSession = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
      bluetoothAddress = [currentPairingSession bluetoothAddress];

      v7 = [CRBluetoothManager addressStringForData:bluetoothAddress];
      [v8 didHeadUnitPairWithBluetoothAddress:v7];
    }
  }

  _objc_release_x2();
}

- (void)pairingServiceSession:(id)session didFailPairingAttemptWithError:(id)error
{
  errorCopy = error;
  presenter = [(CRWirelessPairingServiceAgent *)self presenter];
  if (presenter && (objc_opt_respondsToSelector() & 1) != 0)
  {
    currentPairingSession = [(CRWirelessPairingServiceAgent *)self currentPairingSession];
    bluetoothAddress = [currentPairingSession bluetoothAddress];

    v8 = [CRBluetoothManager addressStringForData:bluetoothAddress];
    [presenter didFailToHeadUnitPairWithBluetoothAddress:v8 error:errorCopy];
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