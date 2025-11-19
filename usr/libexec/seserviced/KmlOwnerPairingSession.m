@interface KmlOwnerPairingSession
- (void)consumeTrackingReceipt:(id)a3 otherJSONData:(id)a4 forKeyWithIdentifier:(id)a5 callback:(id)a6;
- (void)endSessionWithCompletion:(id)a3;
- (void)handleKmlOwnerPairingCancellationResult:(BOOL)a3;
- (void)handleKmlOwnerPairingCompletionWithResult:(id)a3 keyInformation:(id)a4 keyTrackingRequest:(id)a5;
- (void)handleKmlOwnerPairingDidStart;
- (void)handleKmlOwnerPairingFirstTransactionCompletionResult:(id)a3;
- (void)handleKmlOwnerPairingPreWarmCompletionResult:(id)a3;
- (void)handleKmlOwnerPairingProbingCompletionWithBrandCode:(unint64_t)a3 error:(id)a4;
- (void)handleKmlOwnerPairingStartResult:(id)a3;
- (void)handleKmlOwnerPairingTrackingReceiptSaveResult:(id)a3;
- (void)preWarmForManufacturer:(id)a3 callback:(id)a4;
- (void)startKeyPairingWithPassword:(id)a3 keyName:(id)a4 transport:(int64_t)a5 bindingAttestation:(id)a6 callback:(id)a7;
- (void)startProbingWithCallback:(id)a3;
@end

@implementation KmlOwnerPairingSession

- (void)preWarmForManufacturer:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037FC88;
  block[3] = &unk_1004C1258;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)startKeyPairingWithPassword:(id)a3 keyName:(id)a4 transport:(int64_t)a5 bindingAttestation:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = sub_1003CC87C(&self->super.super.isa);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100380050;
  v21[3] = &unk_1004D1F80;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, v21);
}

- (void)startProbingWithCallback:(id)a3
{
  v4 = a3;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003803BC;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100380734;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)consumeTrackingReceipt:(id)a3 otherJSONData:(id)a4 forKeyWithIdentifier:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100380A8C;
  block[3] = &unk_1004C2E30;
  v20 = v11;
  v21 = self;
  v23 = v10;
  v24 = v13;
  v22 = v12;
  v15 = v10;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, block);
}

- (void)handleKmlOwnerPairingCompletionWithResult:(id)a3 keyInformation:(id)a4 keyTrackingRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[KmlOwnerPairingSession handleKmlOwnerPairingCompletionWithResult:keyInformation:keyTrackingRequest:]";
    v23 = 1024;
    v24 = 185;
    v25 = 2112;
    v26 = v8;
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
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
    }
  }

  v13 = sub_1003CC87C(&self->super.super.isa);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100380F1C;
  v17[3] = &unk_1004D1B40;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v13, v17);
}

- (void)handleKmlOwnerPairingStartResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingStartResult:]";
    v12 = 1024;
    v13 = 201;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003810F0;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingCancellationResult:(BOOL)a3
{
  v4 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100381194;
  block[3] = &unk_1004D1FA0;
  v6 = a3;
  dispatch_async(v4, block);
}

- (void)handleKmlOwnerPairingFirstTransactionCompletionResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingFirstTransactionCompletionResult:]";
    v12 = 1024;
    v13 = 220;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003813EC;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingTrackingReceiptSaveResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingTrackingReceiptSaveResult:]";
    v12 = 1024;
    v13 = 233;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003815BC;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingPreWarmCompletionResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[KmlOwnerPairingSession handleKmlOwnerPairingPreWarmCompletionResult:]";
    v12 = 1024;
    v13 = 242;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : result = %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100381744;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleKmlOwnerPairingProbingCompletionWithBrandCode:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v14 = "[KmlOwnerPairingSession handleKmlOwnerPairingProbingCompletionWithBrandCode:error:]";
    v15 = 1024;
    v16 = 250;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Brand code : %ld, error : %@", buf, 0x26u);
  }

  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100381900;
  block[3] = &unk_1004C2B50;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
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