@interface EPSagaTransactionDeleteIDSDevice
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionDeleteIDSDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  queue = [entryCopy queue];
  dispatch_assert_queue_V2(queue);

  v7 = [entryCopy objectForKeyedSubscript:@"coreBluetoothID"];
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9264;
  block[3] = &unk_1001758F8;
  v12 = v7;
  v13 = entryCopy;
  selfCopy = self;
  v9 = entryCopy;
  v10 = v7;
  dispatch_async(v8, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end