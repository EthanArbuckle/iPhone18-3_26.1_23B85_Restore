@interface CARBluetoothLEChannel
- (CARBluetoothLEChannel)initWithService:(id)service channel:(id)channel;
- (CARBluetoothLEChannelDelegate)channelDelegate;
- (CARBluetoothLEService)service;
- (void)_handleChannelOpened;
- (void)_handleEndedStream:(id)stream;
- (void)_handleErrorOnStream:(id)stream;
- (void)_handleHasBytesAvailableOnStream:(id)stream;
- (void)_serviceQueue_handleChannelClosed;
- (void)dealloc;
- (void)sendData:(id)data;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation CARBluetoothLEChannel

- (CARBluetoothLEChannel)initWithService:(id)service channel:(id)channel
{
  serviceCopy = service;
  channelCopy = channel;
  v19.receiver = self;
  v19.super_class = CARBluetoothLEChannel;
  v8 = [(CARBluetoothLEChannel *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, serviceCopy);
    objc_storeStrong(&v9->_channel, channel);
    v9->_open = 0;
    inputStream = [channelCopy inputStream];
    [inputStream setDelegate:v9];

    inputStream2 = [channelCopy inputStream];
    v12 = +[NSRunLoop mainRunLoop];
    [inputStream2 scheduleInRunLoop:v12 forMode:NSDefaultRunLoopMode];

    inputStream3 = [channelCopy inputStream];
    [inputStream3 open];

    outputStream = [channelCopy outputStream];
    [outputStream setDelegate:v9];

    outputStream2 = [channelCopy outputStream];
    v16 = +[NSRunLoop mainRunLoop];
    [outputStream2 scheduleInRunLoop:v16 forMode:NSDefaultRunLoopMode];

    outputStream3 = [channelCopy outputStream];
    [outputStream3 open];
  }

  return v9;
}

- (void)dealloc
{
  channel = [(CARBluetoothLEChannel *)self channel];
  inputStream = [channel inputStream];

  if (inputStream)
  {
    v5 = +[NSRunLoop mainRunLoop];
    [inputStream removeFromRunLoop:v5 forMode:NSDefaultRunLoopMode];
  }

  channel2 = [(CARBluetoothLEChannel *)self channel];
  outputStream = [channel2 outputStream];

  if (outputStream)
  {
    v8 = +[NSRunLoop mainRunLoop];
    [outputStream removeFromRunLoop:v8 forMode:NSDefaultRunLoopMode];
  }

  v9.receiver = self;
  v9.super_class = CARBluetoothLEChannel;
  [(CARBluetoothLEChannel *)&v9 dealloc];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D8C0;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(queue, v8);
}

- (void)_handleChannelOpened
{
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DB48;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleHasBytesAvailableOnStream:(id)stream
{
  streamCopy = stream;
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DDEC;
  v8[3] = &unk_1000DD580;
  v9 = streamCopy;
  selfCopy = self;
  v7 = streamCopy;
  dispatch_async(queue, v8);
}

- (void)_handleErrorOnStream:(id)stream
{
  streamCopy = stream;
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E078;
  v8[3] = &unk_1000DD580;
  v9 = streamCopy;
  selfCopy = self;
  v7 = streamCopy;
  dispatch_async(queue, v8);
}

- (void)_handleEndedStream:(id)stream
{
  streamCopy = stream;
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E244;
  v8[3] = &unk_1000DD580;
  v9 = streamCopy;
  selfCopy = self;
  v7 = streamCopy;
  dispatch_async(queue, v8);
}

- (void)_serviceQueue_handleChannelClosed
{
  service = [(CARBluetoothLEChannel *)self service];
  queue = [service queue];
  dispatch_assert_queue_V2(queue);

  if ([(CARBluetoothLEChannel *)self isOpen])
  {
    v5 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "L2CAP channel closed", v14, 2u);
    }

    [(CARBluetoothLEChannel *)self setOpen:0];
    service2 = [(CARBluetoothLEChannel *)self service];
    serviceDelegate = [service2 serviceDelegate];

    if (serviceDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      service3 = [(CARBluetoothLEChannel *)self service];
      [serviceDelegate bluetoothLEService:service3 didCloseChannel:self];
    }

    service4 = [(CARBluetoothLEChannel *)self service];
    currentConnectionState = [service4 currentConnectionState];
    serviceChannel = [currentConnectionState serviceChannel];
    v12 = [(CARBluetoothLEChannel *)self isEqual:serviceChannel];

    if (v12)
    {
      service5 = [(CARBluetoothLEChannel *)self service];
      [service5 setCurrentConnectionState:0];
    }
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  v7 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = streamCopy;
    v10 = 2048;
    eventCopy = event;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stream: %@ handleEvent: %lu", &v8, 0x16u);
  }

  if (event > 7)
  {
    if (event == 8)
    {
      [(CARBluetoothLEChannel *)self _handleErrorOnStream:streamCopy];
    }

    else if (event == 16)
    {
      [(CARBluetoothLEChannel *)self _handleEndedStream:streamCopy];
    }
  }

  else if (event == 1)
  {
    [(CARBluetoothLEChannel *)self _handleChannelOpened];
  }

  else if (event == 2)
  {
    [(CARBluetoothLEChannel *)self _handleHasBytesAvailableOnStream:streamCopy];
  }
}

- (CARBluetoothLEChannelDelegate)channelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_channelDelegate);

  return WeakRetained;
}

- (CARBluetoothLEService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end