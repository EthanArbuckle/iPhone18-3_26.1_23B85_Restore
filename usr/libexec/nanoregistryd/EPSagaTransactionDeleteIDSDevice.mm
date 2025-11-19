@interface EPSagaTransactionDeleteIDSDevice
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionDeleteIDSDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = a3;
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 objectForKeyedSubscript:@"coreBluetoothID"];
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9264;
  block[3] = &unk_1001758F8;
  v12 = v7;
  v13 = v5;
  v14 = self;
  v9 = v5;
  v10 = v7;
  dispatch_async(v8, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end