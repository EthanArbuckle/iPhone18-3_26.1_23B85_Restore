@interface KmlNfcPairingTransport
- (KmlNfcPairingTransport)init;
- (KmlPairingTransportDelegate)delegate;
- (void)endSession;
- (void)endTransaction;
- (void)hceSession:(id)session didReceiveAPDU:(id)u;
- (void)hceSessionDidConnect:(id)connect;
- (void)hceSessionDidDisconnect:(id)disconnect;
- (void)hceSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction;
- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction;
- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)pairingEndedWithResult:(id)result;
- (void)pauseSession;
- (void)readApdu;
- (void)reset;
- (void)resumeSessionWithTimeout;
- (void)sendApdu:(id)apdu;
- (void)startSession;
- (void)startSessionWithTimeout;
- (void)startTransactionForKeyWithIdentifier:(id)identifier;
@end

@implementation KmlNfcPairingTransport

- (KmlNfcPairingTransport)init
{
  v3.receiver = self;
  v3.super_class = KmlNfcPairingTransport;
  return [(KmlNfcPairingTransport *)&v3 init];
}

- (void)startSession
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FA80;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)startSessionWithTimeout
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100372300;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)endSession
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FB70;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)pauseSession
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FC04;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)resumeSessionWithTimeout
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FC80;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)startTransactionForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036FD2C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)endTransaction
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FF8C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)readApdu
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100370008;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)sendApdu:(id)apdu
{
  apduCopy = apdu;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003701D4;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = apduCopy;
  v6 = apduCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)reset
{
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100370318;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(nfcTransportQueue, block);
}

- (void)pairingEndedWithResult:(id)result
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlNfcPairingTransport pairingEndedWithResult:]";
    v6 = 1024;
    v7 = 195;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : No op for NFC transport", &v4, 0x12u);
  }
}

- (void)hceSessionDidConnect:(id)connect
{
  connectCopy = connect;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371218;
  v7[3] = &unk_1004C22F0;
  v8 = connectCopy;
  selfCopy = self;
  v6 = connectCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371410;
  v7[3] = &unk_1004C22F0;
  v8 = disconnectCopy;
  selfCopy = self;
  v6 = disconnectCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003715F8;
  v7[3] = &unk_1004C22F0;
  v8 = unexpectedlyCopy;
  selfCopy = self;
  v6 = unexpectedlyCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSession:(id)session didReceiveAPDU:(id)u
{
  sessionCopy = session;
  uCopy = u;
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003718BC;
  block[3] = &unk_1004C24A8;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = uCopy;
  v9 = uCopy;
  v10 = sessionCopy;
  dispatch_async(nfcTransportQueue, block);
}

- (void)loyaltyAndPaymentSession:(id)session didStartTransaction:(id)transaction
{
  sessionCopy = session;
  nfcTransportQueue = self->_nfcTransportQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100371A74;
  v8[3] = &unk_1004C22F0;
  v9 = sessionCopy;
  selfCopy = self;
  v7 = sessionCopy;
  dispatch_async(nfcTransportQueue, v8);
}

- (void)loyaltyAndPaymentSession:(id)session didEndTransaction:(id)transaction
{
  sessionCopy = session;
  transactionCopy = transaction;
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100371C10;
  block[3] = &unk_1004C24A8;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = transactionCopy;
  v9 = transactionCopy;
  v10 = sessionCopy;
  dispatch_async(nfcTransportQueue, block);
}

- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371EB4;
  v7[3] = &unk_1004C22F0;
  v8 = unexpectedlyCopy;
  selfCopy = self;
  v6 = unexpectedlyCopy;
  dispatch_async(nfcTransportQueue, v7);
}

- (KmlPairingTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end