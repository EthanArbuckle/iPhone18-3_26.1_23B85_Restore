@interface KmlNfcPairingTransport
- (KmlNfcPairingTransport)init;
- (KmlPairingTransportDelegate)delegate;
- (void)endSession;
- (void)endTransaction;
- (void)hceSession:(id)a3 didReceiveAPDU:(id)a4;
- (void)hceSessionDidConnect:(id)a3;
- (void)hceSessionDidDisconnect:(id)a3;
- (void)hceSessionDidEndUnexpectedly:(id)a3;
- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didStartTransaction:(id)a4;
- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)a3;
- (void)pairingEndedWithResult:(id)a3;
- (void)pauseSession;
- (void)readApdu;
- (void)reset;
- (void)resumeSessionWithTimeout;
- (void)sendApdu:(id)a3;
- (void)startSession;
- (void)startSessionWithTimeout;
- (void)startTransactionForKeyWithIdentifier:(id)a3;
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

- (void)startTransactionForKeyWithIdentifier:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036FD2C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)sendApdu:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003701D4;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)pairingEndedWithResult:(id)a3
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

- (void)hceSessionDidConnect:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371218;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSessionDidDisconnect:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371410;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSessionDidEndUnexpectedly:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003715F8;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(nfcTransportQueue, v7);
}

- (void)hceSession:(id)a3 didReceiveAPDU:(id)a4
{
  v6 = a3;
  v7 = a4;
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003718BC;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(nfcTransportQueue, block);
}

- (void)loyaltyAndPaymentSession:(id)a3 didStartTransaction:(id)a4
{
  v5 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100371A74;
  v8[3] = &unk_1004C22F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(nfcTransportQueue, v8);
}

- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  nfcTransportQueue = self->_nfcTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100371C10;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(nfcTransportQueue, block);
}

- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)a3
{
  v4 = a3;
  nfcTransportQueue = self->_nfcTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371EB4;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(nfcTransportQueue, v7);
}

- (KmlPairingTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end