@interface NIServerBluetoothSampleConsumer
- (NIServerBluetoothSampleConsumer)initWithConsumerBlock:(id)block;
- (void)consumeBluetoothSample:(id)sample;
@end

@implementation NIServerBluetoothSampleConsumer

- (NIServerBluetoothSampleConsumer)initWithConsumerBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = NIServerBluetoothSampleConsumer;
  v5 = [(NIServerBluetoothSampleConsumer *)&v11 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
    consumerBlock = v5->_consumerBlock;
    v5->_consumerBlock = v6;

    v8 = +[NIServerBluetoothSampleInternalObserver sharedObserver];
    internalObserver = v5->_internalObserver;
    v5->_internalObserver = v8;
  }

  return v5;
}

- (void)consumeBluetoothSample:(id)sample
{
  sampleCopy = sample;
  consumerBlock = self->_consumerBlock;
  if (consumerBlock)
  {
    consumerBlock[2](consumerBlock, sampleCopy);
  }
}

@end