@interface EPSagaTransactionPairIDSDevice
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)checkIfIDSIsPaired;
- (void)idsTimerTimedOut;
- (void)remoteObjectIDSServiceAvailable:(id)a3 withIDSDevice:(id)a4;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionPairIDSDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"coreBluetoothID"];
  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  self->_idsDeviceIdentifier = v9;

  v11 = [v7 objectForKeyedSubscript:@"useNetworkRelayPairing"];
  v40 = v11;
  if (v11)
  {
    LOBYTE(v11) = [v11 BOOLValue];
  }

  self->_useNetworkRelayPairing = v11;
  v12 = [(NSUUID *)self->_idsDeviceIdentifier UUIDString];
  objc_storeStrong(&self->_routingSlipEntry, a3);
  objc_storeStrong(&self->_serviceRegistry, a4);
  v13 = [v8 serviceFromClass:objc_opt_class()];
  oobKeyStash = self->_oobKeyStash;
  self->_oobKeyStash = v13;

  v15 = [v7 objectForKeyedSubscript:@"supportsDirectIPSecPairing"];
  v16 = [v7 objectForKeyedSubscript:@"destinationIsAltAccount"];
  v17 = [v7 queue];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10001A068;
  v56[3] = &unk_100175660;
  v56[4] = self;
  v18 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.ep.idsmigrationtimeout" delay:1 gracePeriod:v17 waking:v56 handlerQueue:200.0 handlerBlock:0.0];
  idsTimer = self->_idsTimer;
  self->_idsTimer = v18;

  v37 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  [v37 addConnectivityObserver:self];
  v20 = [(EPSagaServiceOOBStash *)self->_oobKeyStash oobKey];
  v21 = v20;
  if (self->_useNetworkRelayPairing)
  {
    v22 = +[NSData data];
  }

  else if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v24 = [[IDSLocalPairingAddPairedDeviceInfo alloc] initWithCBUUID:self->_idsDeviceIdentifier pairingProtocolVersion:0 BTOutOfBandKey:v22];
  v38 = v16;
  [v24 setPairingType:{objc_msgSend(v16, "BOOLValue")}];
  v39 = v15;
  [v24 setShouldPairDirectlyOverIPsec:{objc_msgSend(v15, "BOOLValue")}];
  [(EPSagaServiceOOBStash *)self->_oobKeyStash clearOOBKey];
  v25 = dispatch_get_global_queue(25, 0);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10001A070;
  v49[3] = &unk_100175F28;
  v26 = v24;
  v50 = v26;
  v27 = v12;
  v51 = v27;
  v28 = v7;
  v52 = v28;
  v53 = self;
  v29 = v8;
  v54 = v29;
  v30 = v25;
  v55 = v30;
  v31 = objc_retainBlock(v49);
  if (self->_useNetworkRelayPairing)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A950;
    block[3] = &unk_100175FA0;
    v32 = &v42;
    v42 = v21;
    v43 = v31;
    v33 = v31;
    dispatch_async(v30, block);
    v34 = v43;
  }

  else
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10001A6DC;
    v44[3] = &unk_100175F78;
    v32 = v45;
    v45[0] = v27;
    v45[1] = self;
    v46 = v21;
    v48 = v31;
    v35 = v30;
    v47 = v35;
    v36 = v31;
    dispatch_async(v35, v44);

    v34 = v46;
  }
}

- (void)idsTimerTimedOut
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(EPRoutingSlipEntry *)self->_routingSlipEntry shortDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ idsTimerTimedOut", &v8, 0xCu);
    }
  }

  idsTimer = self->_idsTimer;
  self->_idsTimer = 0;

  [(EPSagaTransactionPairIDSDevice *)self transactionDidComplete];
}

- (void)checkIfIDSIsPaired
{
  v3 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v9 = v3;
  v5 = [v3 defaultPairedDevice];
  v6 = [v5 nsuuid];
  if (([(NSUUID *)idsDeviceIdentifier isEqual:v6]& 1) != 0)
  {
    v7 = [v9 defaultPairedDevice];
    v8 = [v7 isConnected];

    if (v8)
    {
      self->_success = 1;
      [(EPSagaTransactionPairIDSDevice *)self transactionDidComplete];
    }
  }

  else
  {
  }
}

- (void)remoteObjectIDSServiceAvailable:(id)a3 withIDSDevice:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_finished && !self->_transactionComplete)
  {
    [(EPSagaTransactionPairIDSDevice *)self checkIfIDSIsPaired];
  }
}

- (void)transactionDidComplete
{
  [(AbstractTimer *)self->_idsTimer invalidate];
  idsTimer = self->_idsTimer;
  self->_idsTimer = 0;

  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    v4 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v4 removeConnectivityObserver:self];
    if (self->_success)
    {
      v5 = [(EPSagaTransactionPairIDSDevice *)self delegate];
      [v5 transactionDidComplete:self];
    }

    else
    {
      v6 = nr_daemon_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000FDB50(self);
        }
      }

      v9 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
      v12 = NSLocalizedDescriptionKey;
      v13 = @"IDS migration pairing timed out";
      v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairIDSDevice" code:2 userInfo:v10];
      [v9 addObject:v11];

      [(EPSagaTransactionPairIDSDevice *)self beginRollbackWithRoutingSlipEntry:self->_routingSlipEntry serviceRegistry:self->_serviceRegistry];
    }
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"coreBluetoothID"];
  objc_initWeak(&location, self);
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF6C;
  block[3] = &unk_100176040;
  v12 = v6;
  v8 = v6;
  objc_copyWeak(&v15, &location);
  v13 = v5;
  v14 = v7;
  v9 = v7;
  v10 = v5;
  dispatch_async(v9, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end