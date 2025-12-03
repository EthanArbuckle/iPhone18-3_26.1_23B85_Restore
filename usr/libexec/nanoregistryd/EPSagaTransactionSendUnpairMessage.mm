@interface EPSagaTransactionSendUnpairMessage
- (EPTransactionDelegate)delegate;
- (id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)setRemoteUnpairTimeout;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionSendUnpairMessage

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  v8 = [entryCopy objectForKeyedSubscript:@"shouldObliterate"];
  v9 = [entryCopy objectForKeyedSubscript:@"shouldPreserveESim"];
  detailedError = [entryCopy objectForKeyedSubscript:@"shouldBrick"];
  v27 = [entryCopy objectForKeyedSubscript:@"pairingReport"];
  v11 = [entryCopy objectForKeyedSubscript:@"remoteUnpairRequestID"];
  v12 = [entryCopy objectForKeyedSubscript:@"advertisedName"];
  v13 = [entryCopy objectForKeyedSubscript:@"idsDeviceIdentifier"];
  v14 = [entryCopy objectForKeyedSubscript:@"timeoutDuration"];
  timeoutDurationNumber = self->_timeoutDurationNumber;
  self->_timeoutDurationNumber = v14;

  v26 = registryCopy;
  v16 = [registryCopy serviceFromClass:objc_opt_class()];
  if (![v16 isIDSConnected])
  {
    goto LABEL_7;
  }

  [v16 defaultPairedDevice];
  v17 = v24 = v8;
  [v17 nsuuid];
  v18 = v25 = v9;
  v19 = [v13 isEqual:v18];

  v9 = v25;
  v8 = v24;
  if (!v19)
  {
    goto LABEL_7;
  }

  if (v12 && v13)
  {
    [(EPSagaTransactionSendUnpairMessage *)self setRemoteUnpairTimeout];
    objc_initWeak(&location, self);
    isErrorSet = [v27 isErrorSet];
    v21 = detailedError;
    if (isErrorSet)
    {
      detailedError = [v27 detailedError];
      v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailedError code]);
    }

    else
    {
      v23 = 0;
    }

    abortPairingReason = [v27 abortPairingReason];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100018F60;
    v28[3] = &unk_100175E90;
    objc_copyWeak(&v31, &location);
    v29 = v11;
    v30 = entryCopy;
    v8 = v24;
    [v16 sendUnpairMessageWithAdvertisedName:v12 btUUID:v13 shouldObliterate:v24 shouldBrick:v21 shouldPreserveESim:v25 withPairingFailureCode:v23 withAbortReason:abortPairingReason withRequestIdentifier:v29 responseBlock:v28];

    if (isErrorSet)
    {
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    v9 = v25;
  }

  else
  {
LABEL_7:
    [(EPSagaTransactionSendUnpairMessage *)self transactionDidComplete];
    v21 = detailedError;
  }
}

- (void)setRemoteUnpairTimeout
{
  [(AbstractTimer *)self->_timer invalidate];
  if (self->_timeoutDurationNumber)
  {
    objc_initWeak(&location, self);
    timeoutDurationNumber = self->_timeoutDurationNumber;
    if (timeoutDurationNumber)
    {
      [(NSNumber *)timeoutDurationNumber doubleValue];
      v5 = v4;
    }

    else
    {
      v5 = 20.0;
    }

    queue = [(EPServiceRegistry *)self->_serviceRegistry queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100019184;
    v9[3] = &unk_100175EB8;
    objc_copyWeak(&v10, &location);
    v7 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.EPSagaTransactionSendUnpairMessage" delay:1 gracePeriod:queue waking:v9 handlerQueue:v5 handlerBlock:0.0];
    timer = self->_timer;
    self->_timer = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)transactionDidComplete
{
  [(AbstractTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    delegate = [(EPSagaTransactionSendUnpairMessage *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end