@interface KmlOwnerPairingSession
- (void)consumeTrackingReceipt:(id)receipt otherJSONData:(id)data forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)endSessionWithCompletion:(id)completion;
- (void)handleKmlOwnerPairingCancellationResult:(BOOL)result;
- (void)handleKmlOwnerPairingCompletionWithResult:(id)result keyInformation:(id)information keyTrackingRequest:(id)request;
- (void)handleKmlOwnerPairingDidStart;
- (void)handleKmlOwnerPairingFirstTransactionCompletionResult:(id)result;
- (void)handleKmlOwnerPairingPreWarmCompletionResult:(id)result;
- (void)handleKmlOwnerPairingProbingCompletionWithBrandCode:(unint64_t)code error:(id)error;
- (void)handleKmlOwnerPairingStartResult:(id)result;
- (void)handleKmlOwnerPairingTrackingReceiptSaveResult:(id)result;
- (void)preWarmForManufacturer:(id)manufacturer callback:(id)callback;
- (void)startKeyPairingWithPassword:(id)password keyName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation callback:(id)callback;
- (void)startProbingWithCallback:(id)callback;
@end

@implementation KmlOwnerPairingSession

- (void)preWarmForManufacturer:(id)manufacturer callback:(id)callback
{
  manufacturerCopy = manufacturer;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037FC88;
  block[3] = &unk_1004C1258;
  v12 = manufacturerCopy;
  v13 = callbackCopy;
  block[4] = self;
  v9 = manufacturerCopy;
  v10 = callbackCopy;
  dispatch_async(v8, block);
}

- (void)startKeyPairingWithPassword:(id)password keyName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation callback:(id)callback
{
  passwordCopy = password;
  nameCopy = name;
  attestationCopy = attestation;
  callbackCopy = callback;
  v16 = sub_1003CC87C(&self->super.super.isa);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100380050;
  v21[3] = &unk_1004D1F80;
  v21[4] = self;
  v22 = passwordCopy;
  v23 = nameCopy;
  v24 = attestationCopy;
  v25 = callbackCopy;
  transportCopy = transport;
  v17 = callbackCopy;
  v18 = attestationCopy;
  v19 = nameCopy;
  v20 = passwordCopy;
  dispatch_async(v16, v21);
}

- (void)startProbingWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003803BC;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(v5, v7);
}

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100380734;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)consumeTrackingReceipt:(id)receipt otherJSONData:(id)data forKeyWithIdentifier:(id)identifier callback:(id)callback
{
  receiptCopy = receipt;
  dataCopy = data;
  identifierCopy = identifier;
  callbackCopy = callback;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100380A8C;
  block[3] = &unk_1004C2E30;
  v20 = dataCopy;
  selfCopy = self;
  v23 = receiptCopy;
  v24 = callbackCopy;
  v22 = identifierCopy;
  v15 = receiptCopy;
  v16 = callbackCopy;
  v17 = identifierCopy;
  v18 = dataCopy;
  dispatch_async(v14, block);
}

- (void)handleKmlOwnerPairingCompletionWithResult:(id)result keyInformation:(id)information keyTrackingRequest:(id)request
{
  resultCopy = result;
  informationCopy = information;
  requestCopy = request;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[KmlOwnerPairingSession handleKmlOwnerPairingCompletionWithResult:keyInformation:keyTrackingRequest:]";
    v23 = 1024;
    v24 = 185;
    v25 = 2112;
    v26 = resultCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "[KmlOwnerPairingSession handleKmlOwnerPairingCompletionWithResult:keyInformation:keyTrackingRequest:]";
      v23 = 1024;
      v24 = 186;
      v25 = 2112;
      v26 = informationCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
    }
  }

  v13 = sub_1003CC87C(&self->super.super.isa);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100380F1C;
  v17[3] = &unk_1004D1B40;
  v17[4] = self;
  v18 = resultCopy;
  v19 = informationCopy;
  v20 = requestCopy;
  v14 = requestCopy;
  v15 = informationCopy;
  v16 = resultCopy;
  dispatch_async(v13, v17);
}

- (void)handleKmlOwnerPairingStartResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingStartResult:]";
    v12 = 1024;
    v13 = 201;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003810F0;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingCancellationResult:(BOOL)result
{
  v4 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100381194;
  block[3] = &unk_1004D1FA0;
  resultCopy = result;
  dispatch_async(v4, block);
}

- (void)handleKmlOwnerPairingFirstTransactionCompletionResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingFirstTransactionCompletionResult:]";
    v12 = 1024;
    v13 = 220;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003813EC;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingTrackingReceiptSaveResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingTrackingReceiptSaveResult:]";
    v12 = 1024;
    v13 = 233;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003815BC;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingPreWarmCompletionResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingPreWarmCompletionResult:]";
    v12 = 1024;
    v13 = 242;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100381744;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingProbingCompletionWithBrandCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v14 = "[KmlOwnerPairingSession handleKmlOwnerPairingProbingCompletionWithBrandCode:error:]";
    v15 = 1024;
    v16 = 250;
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Brand code : %ld, error : %@", buf, 0x26u);
  }

  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100381900;
  block[3] = &unk_1004C2B50;
  v11 = errorCopy;
  codeCopy2 = code;
  block[4] = self;
  v9 = errorCopy;
  dispatch_async(v8, block);
}

- (void)handleKmlOwnerPairingDidStart
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[KmlOwnerPairingSession handleKmlOwnerPairingDidStart]";
    v8 = 1024;
    v9 = 258;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v4 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100381A74;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(v4, block);
}

@end