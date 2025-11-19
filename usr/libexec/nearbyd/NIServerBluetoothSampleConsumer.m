@interface NIServerBluetoothSampleConsumer
- (NIServerBluetoothSampleConsumer)initWithConsumerBlock:(id)a3;
- (void)consumeBluetoothSample:(id)a3;
@end

@implementation NIServerBluetoothSampleConsumer

- (NIServerBluetoothSampleConsumer)initWithConsumerBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NIServerBluetoothSampleConsumer;
  v5 = [(NIServerBluetoothSampleConsumer *)&v11 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    consumerBlock = v5->_consumerBlock;
    v5->_consumerBlock = v6;

    v8 = +[NIServerBluetoothSampleInternalObserver sharedObserver];
    internalObserver = v5->_internalObserver;
    v5->_internalObserver = v8;
  }

  return v5;
}

- (void)consumeBluetoothSample:(id)a3
{
  v5 = a3;
  consumerBlock = self->_consumerBlock;
  if (consumerBlock)
  {
    consumerBlock[2](consumerBlock, v5);
  }
}

@end