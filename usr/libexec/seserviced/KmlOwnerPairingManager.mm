@interface KmlOwnerPairingManager
- (KmlOwnerPairingManager)init;
- (void)dealloc;
- (void)handleEncryptionResult:(id)result trackingRequest:(id)request keyInformation:(id)information;
- (void)handleFirstPostPairingTransactionEndResult:(id)result;
- (void)handleKeyCreationCancellationResult:(BOOL)result;
- (void)handleKeyCreationCompletionResult:(id)result;
- (void)handleKeysExchangeDoneWaitForMailboxes;
- (void)handleMailboxConfigurationDone;
- (void)handleOwnerPairingCancellationWithResult:(BOOL)result;
- (void)handlePairingDidStart;
- (void)handlePairingTransportSessionFailedWithError:(id)error;
- (void)handlePreWarmResult:(id)result;
- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error;
- (void)handleRemoteConfigurationReceived;
@end

@implementation KmlOwnerPairingManager

- (KmlOwnerPairingManager)init
{
  v11.receiver = self;
  v11.super_class = KmlOwnerPairingManager;
  v2 = [(KmlOwnerPairingManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 25) = 0;
    v2[136] = 1;
    *(v2 + 88) = 0;
    *(v2 + 137) = 0;
    *(v2 + 20) = 0;
    *(v2 + 21) = 0;
    v4 = [[KmlVersions alloc] initWithEndpoint:0];
    opVersionInformation = v3->_opVersionInformation;
    v3->_opVersionInformation = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.sesd.kml.ownerPairing", v6);
    opManagerQueue = v3->_opManagerQueue;
    v3->_opManagerQueue = v7;

    v9 = v3;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_opDelegate, 0);
  opManagerQueue = self->_opManagerQueue;
  self->_opManagerQueue = 0;

  sub_1003C75AC(&self->_seManager->super.isa, 0);
  seManager = self->_seManager;
  self->_seManager = 0;

  sub_1003B8584(&self->_dxManager->super.isa, 0);
  dxManager = self->_dxManager;
  self->_dxManager = 0;

  v6.receiver = self;
  v6.super_class = KmlOwnerPairingManager;
  [(KmlOwnerPairingManager *)&v6 dealloc];
}

- (void)handlePairingTransportSessionFailedWithError:(id)error
{
  errorCopy = error;
  opManagerQueue = self->_opManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100374924;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(opManagerQueue, v7);
}

- (void)handleOwnerPairingCancellationWithResult:(BOOL)result
{
  opManagerQueue = self->_opManagerQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100374BFC;
  v4[3] = &unk_1004C2ED0;
  v4[4] = self;
  resultCopy = result;
  dispatch_async(opManagerQueue, v4);
}

- (void)handleFirstPostPairingTransactionEndResult:(id)result
{
  resultCopy = result;
  opManagerQueue = self->_opManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100375AC4;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(opManagerQueue, v7);
}

- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  opManagerQueue = self->_opManagerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100375D58;
  block[3] = &unk_1004C2B50;
  selfCopy = self;
  codeCopy = code;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(opManagerQueue, block);
}

- (void)handlePairingDidStart
{
  opManagerQueue = self->_opManagerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100375090;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(opManagerQueue, block);
}

- (void)handleKeyCreationCompletionResult:(id)result
{
  resultCopy = result;
  opManagerQueue = self->_opManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100375E5C;
  v7[3] = &unk_1004C22F0;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
  dispatch_async(opManagerQueue, v7);
}

- (void)handleKeyCreationCancellationResult:(BOOL)result
{
  resultCopy = result;
  v4 = KmlLogger();
  v5 = v4;
  if (resultCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[KmlOwnerPairingManager handleKeyCreationCancellationResult:]";
      v11 = 1024;
      v12 = 871;
      v6 = "%s : %i : OPManager: Key creation cancelled sucessfully";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[KmlOwnerPairingManager handleKeyCreationCancellationResult:]";
    v11 = 1024;
    v12 = 873;
    v6 = "%s : %i : OPManager: Key creation couldn't be cancelled. Delete the key if required";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }
}

- (void)handleEncryptionResult:(id)result trackingRequest:(id)request keyInformation:(id)information
{
  resultCopy = result;
  requestCopy = request;
  informationCopy = information;
  opManagerQueue = self->_opManagerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003753F4;
  v15[3] = &unk_1004D1B40;
  v15[4] = self;
  v16 = resultCopy;
  v17 = requestCopy;
  v18 = informationCopy;
  v12 = informationCopy;
  v13 = requestCopy;
  v14 = resultCopy;
  dispatch_async(opManagerQueue, v15);
}

- (void)handlePreWarmResult:(id)result
{
  resultCopy = result;
  opManagerQueue = self->_opManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037632C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(opManagerQueue, v7);
}

- (void)handleRemoteConfigurationReceived
{
  v4 = KmlLogger();
  if (sub_100057AEC(v4))
  {
    sub_10036DB8C();
    sub_100057A9C();
    _os_log_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  v10 = KmlSignpostLogger();
  if (os_signpost_enabled(v10))
  {
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v11, v12, v13, v14, v15, v16, v17, 2u);
  }

  sub_1003C244C(self);
}

- (void)handleKeysExchangeDoneWaitForMailboxes
{
  v4 = KmlLogger();
  if (sub_100057AEC(v4))
  {
    sub_10036DB8C();
    sub_100057A9C();
    _os_log_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  v10 = KmlSignpostLogger();
  if (os_signpost_enabled(v10))
  {
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v11, v12, v13, v14, v15, v16, v17, 2u);
  }

  sub_1003C244C(self);
}

- (void)handleMailboxConfigurationDone
{
  v4 = KmlLogger();
  if (sub_100057AEC(v4))
  {
    sub_10036DB8C();
    sub_100057A9C();
    _os_log_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  v10 = KmlSignpostLogger();
  if (os_signpost_enabled(v10))
  {
    sub_1003756F8();
    _os_signpost_emit_with_name_impl(v11, v12, v13, v14, v15, v16, v17, 2u);
  }

  sub_1003C244C(self);
}

@end