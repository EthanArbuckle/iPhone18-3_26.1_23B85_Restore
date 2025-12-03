@interface KmlBluetoothPairingTransport
- (KmlBluetoothPairingTransport)init;
- (KmlBluetoothPairingTransport)initWithDelegate:(id)delegate;
- (KmlPairingTransportDelegate)delegate;
- (void)btHceSessionHandleApdu:(id)apdu;
- (void)btHceTxnSessionDidEndUnexpectedly:(id)unexpectedly result:(id)result;
- (void)btHceTxnSessionDidStartEmulation:(id)emulation result:(id)result;
- (void)btHceTxnSessionDidStopEmulation:(id)emulation result:(id)result;
- (void)btHceTxnSessionRadioIsDisabled:(id)disabled;
- (void)btHceTxnSessionUwbUnavailable:(id)unavailable;
- (void)btTxnSessionDidEndTransaction:(id)transaction result:(id)result;
- (void)btTxnSessionDidStartTransaction:(id)transaction result:(id)result;
- (void)endSession;
- (void)endTransaction;
- (void)pairingEndedWithResult:(id)result;
- (void)pauseSession;
- (void)readApdu;
- (void)reset;
- (void)resumeSessionWithTimeout;
- (void)secureElementManagerSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)sendApdu:(id)apdu;
- (void)startSession;
- (void)startSessionWithTimeout;
- (void)startTransactionForKeyWithIdentifier:(id)identifier;
@end

@implementation KmlBluetoothPairingTransport

- (KmlBluetoothPairingTransport)init
{
  v3.receiver = self;
  v3.super_class = KmlBluetoothPairingTransport;
  return [(KmlBluetoothPairingTransport *)&v3 init];
}

- (KmlBluetoothPairingTransport)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = KmlBluetoothPairingTransport;
  v5 = [(KmlBluetoothPairingTransport *)&v19 init];
  if (v5)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[KmlBluetoothPairingTransport initWithDelegate:]";
      v22 = 1024;
      v23 = 82;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : let's init", buf, 0x12u);
    }

    [(KmlBluetoothPairingTransport *)v5 setDelegate:delegateCopy];
    btSession = v5->_btSession;
    v5->_btSession = 0;

    activeSession = v5->_activeSession;
    v5->_activeSession = 0;

    activeSeSession = v5->_activeSeSession;
    v5->_activeSeSession = 0;

    errorToReport = v5->_errorToReport;
    v5->_errorToReport = 0;

    v5->_currentState = 0;
    v5->_lastState = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.sesd.kml.btTransport", v11);
    btTransportQueue = v5->_btTransportQueue;
    v5->_btTransportQueue = v12;

    endTransactionTimer = v5->_endTransactionTimer;
    v5->_endTransactionTimer = 0;

    hceSessionTimer = v5->_hceSessionTimer;
    v5->_hceSessionTimer = 0;

    v5->_hceTimeoutRequested = 0;
    transactionKeyId = v5->_transactionKeyId;
    v5->_transactionKeyId = 0;

    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[KmlBluetoothPairingTransport initWithDelegate:]";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %i : ready to roll", buf, 0x12u);
    }
  }

  return v5;
}

- (void)startSession
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039AE44;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)startSessionWithTimeout
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039D6B8;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)endSession
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039AF34;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)pauseSession
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039AFC8;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)resumeSessionWithTimeout
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039B044;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)startTransactionForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039B0F0;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)endTransaction
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039B370;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)readApdu
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039B3EC;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)sendApdu:(id)apdu
{
  apduCopy = apdu;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039B4AC;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = apduCopy;
  v6 = apduCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)reset
{
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039B5F0;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(btTransportQueue, block);
}

- (void)pairingEndedWithResult:(id)result
{
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039B74C;
  v7[3] = &unk_1004C22F0;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)secureElementManagerSessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039C14C;
  v7[3] = &unk_1004C22F0;
  v8 = unexpectedlyCopy;
  selfCopy = self;
  v6 = unexpectedlyCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)btHceSessionHandleApdu:(id)apdu
{
  apduCopy = apdu;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039C3E4;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = apduCopy;
  v6 = apduCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)btTxnSessionDidStartTransaction:(id)transaction result:(id)result
{
  transactionCopy = transaction;
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039C500;
  block[3] = &unk_1004C24A8;
  v12 = transactionCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = transactionCopy;
  dispatch_async(btTransportQueue, block);
}

- (void)btTxnSessionDidEndTransaction:(id)transaction result:(id)result
{
  transactionCopy = transaction;
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039C770;
  block[3] = &unk_1004C24A8;
  v12 = transactionCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = transactionCopy;
  dispatch_async(btTransportQueue, block);
}

- (void)btHceTxnSessionDidStartEmulation:(id)emulation result:(id)result
{
  emulationCopy = emulation;
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039C9EC;
  block[3] = &unk_1004C24A8;
  v12 = emulationCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = emulationCopy;
  dispatch_async(btTransportQueue, block);
}

- (void)btHceTxnSessionDidStopEmulation:(id)emulation result:(id)result
{
  emulationCopy = emulation;
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039CBB0;
  block[3] = &unk_1004C24A8;
  v12 = emulationCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = emulationCopy;
  dispatch_async(btTransportQueue, block);
}

- (void)btHceTxnSessionDidEndUnexpectedly:(id)unexpectedly result:(id)result
{
  unexpectedlyCopy = unexpectedly;
  resultCopy = result;
  btTransportQueue = self->_btTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039CE48;
  block[3] = &unk_1004C24A8;
  v12 = unexpectedlyCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = unexpectedlyCopy;
  dispatch_async(btTransportQueue, block);
}

- (void)btHceTxnSessionRadioIsDisabled:(id)disabled
{
  disabledCopy = disabled;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039D0A0;
  v7[3] = &unk_1004C22F0;
  v8 = disabledCopy;
  selfCopy = self;
  v6 = disabledCopy;
  dispatch_async(btTransportQueue, v7);
}

- (void)btHceTxnSessionUwbUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  btTransportQueue = self->_btTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039D338;
  v7[3] = &unk_1004C22F0;
  v8 = unavailableCopy;
  selfCopy = self;
  v6 = unavailableCopy;
  dispatch_async(btTransportQueue, v7);
}

- (KmlPairingTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end