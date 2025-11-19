@interface EPSagaTransactionUnpairIDSDevice
+ (id)countdown:(int64_t)a3 toCompletion:(id)a4;
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionUnpairIDSDevice

+ (id)countdown:(int64_t)a3 toCompletion:(id)a4
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2810000000;
  v31[3] = "";
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100080C9C;
  v28 = sub_100080CC8;
  v29 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100080CD0;
  v18 = &unk_100176888;
  v20 = v31;
  v21 = v30;
  v22 = &v24;
  v23 = a3;
  v5 = a4;
  v19 = v5;
  v6 = objc_retainBlock(&v15);
  v7 = v25[5];
  v25[5] = v6;

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v25[5]);
      v12 = [NSNumber numberWithInteger:a3, v15, v16, v17, v18];
      *buf = 134218242;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%p] countdown:%@ toCompletion: --started--", buf, 0x16u);
    }
  }

  v13 = objc_retainBlock(v25[5]);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);

  return v13;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"idsDeviceIdentifier"];
  v8 = dispatch_get_global_queue(25, 0);
  if (v7)
  {
    v9 = objc_opt_class();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008127C;
    v20[3] = &unk_1001756F8;
    v20[4] = self;
    v21 = v7;
    v10 = v8;
    v22 = v10;
    v11 = v6;
    v23 = v11;
    v12 = [v9 countdown:2 toCompletion:v20];
    v13 = +[NSMutableSet set];
    pairedDevices = self->_pairedDevices;
    self->_pairedDevices = v13;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000818C0;
    block[3] = &unk_100178098;
    block[4] = self;
    v19 = v12;
    v18 = v11;
    v15 = v12;
    dispatch_async(v10, block);
  }

  else
  {
    v16 = [(EPSagaTransactionUnpairIDSDevice *)self delegate];
    [v16 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end