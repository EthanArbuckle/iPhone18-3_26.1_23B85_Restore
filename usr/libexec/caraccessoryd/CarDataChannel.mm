@interface CarDataChannel
- (CarDataChannel)initWithChannel:(id)a3 priority:(unint64_t)a4;
- (CarDataChannelDelegate)channelDelegate;
- (NSString)description;
- (void)_startConnection;
- (void)_stopConnection;
- (void)channel:(id)a3 didReceiveMessage:(id)a4;
- (void)didCloseChannel:(id)a3;
- (void)invalidate;
- (void)sendToPluginID:(id)a3 payload:(id)a4 withCompletion:(id)a5;
@end

@implementation CarDataChannel

- (CarDataChannel)initWithChannel:(id)a3 priority:(unint64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = CarDataChannel;
  v8 = [(CarDataChannel *)&v16 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);

    v11 = dispatch_queue_create("com.apple.caraccessoryd.CarDataChannel.Output", v10);
    outputQueue = v8->_outputQueue;
    v8->_outputQueue = v11;

    v13 = dispatch_queue_create("com.apple.caraccessoryd.CarDataChannel.Input", v10);
    inputQueue = v8->_inputQueue;
    v8->_inputQueue = v13;

    v8->_isOpened = 0;
    v8->_priority = a4;
    objc_storeStrong(&v8->_channel, a3);
    [(CARSessionChannelProviding *)v8->_channel setChannelDelegate:v8];
  }

  return v8;
}

- (void)sendToPluginID:(id)a3 payload:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarDataChannel *)self outputQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __56__CarDataChannel_sendToPluginID_payload_withCompletion___block_invoke;
  v15[3] = &unk_1000555D0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __56__CarDataChannel_sendToPluginID_payload_withCompletion___block_invoke(uint64_t a1)
{
  v12[0] = kCarDataProtocolKeyPluginID;
  v12[1] = kCarDataProtocolKeyPluginData;
  v2 = *(a1 + 40);
  v13[0] = *(a1 + 32);
  v13[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = 0;
  v4 = [NSData CAF_encodeCarDataFrom:v3 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = v5;
    v7 = CAFDChannelLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__CarDataChannel_sendToPluginID_payload_withCompletion___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 48) channel];
    v9 = [v8 sendChannelMessage:v4];

    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:4 userInfo:0];
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CarDataChannel *)self priority];
  if ([(CarDataChannel *)self isOpened])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(CarDataChannel *)self channel];
  v8 = [(CarDataChannel *)self channel];
  if ([v8 isOpened])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<%@: %p priority=%lu isOpened=%@ channel=%p channel.isOpened=%@>", v4, self, v5, v6, v7, v9];

  return v10;
}

- (void)invalidate
{
  [(CarDataChannel *)self _stopConnection];

  [(CarDataChannel *)self setChannel:0];
}

- (void)_startConnection
{
  v3 = [(CarDataChannel *)self inputQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__CarDataChannel__startConnection__block_invoke;
  block[3] = &unk_100055470;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__CarDataChannel__startConnection__block_invoke(uint64_t a1)
{
  v2 = CAFDChannelLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__CarDataChannel__startConnection__block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 channel];
  v6 = [v5 openChannel];

  if (v6)
  {
    [*v3 setIsOpened:1];
    v7 = CAFDChannelLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __34__CarDataChannel__startConnection__block_invoke_cold_3(v3);
    }

    v8 = [*v3 channelDelegate];
    [v8 carDataChannelDidOpen:*v3];
  }

  else
  {
    v9 = CAFDChannelLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __34__CarDataChannel__startConnection__block_invoke_cold_2(v3);
    }

    objc_initWeak(&location, *v3);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __34__CarDataChannel__startConnection__block_invoke_38;
    v14 = &unk_1000555F8;
    objc_copyWeak(&v15, &location);
    v10 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v11 block:1.0];
    [*v3 setReconnectTimer:{v10, v11, v12, v13, v14}];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __34__CarDataChannel__startConnection__block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startConnection];
}

- (void)_stopConnection
{
  v3 = CAFDChannelLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CarDataChannel *)self _stopConnection:v3];
  }

  [(CarDataChannel *)self setIsOpened:0];
  v10 = [(CarDataChannel *)self inputQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__CarDataChannel__stopConnection__block_invoke;
  block[3] = &unk_100055470;
  block[4] = self;
  dispatch_sync(v10, block);
}

id __33__CarDataChannel__stopConnection__block_invoke(uint64_t a1)
{
  v2 = CAFDChannelLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__CarDataChannel__stopConnection__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channel];
  [v3 setChannelDelegate:0];

  v4 = [*(a1 + 32) channel];
  [v4 closeChannel];

  v5 = [*(a1 + 32) reconnectTimer];
  [v5 invalidate];

  return [*(a1 + 32) setReconnectTimer:0];
}

- (void)channel:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [(CarDataChannel *)self inputQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__CarDataChannel_channel_didReceiveMessage___block_invoke;
  v8[3] = &unk_100055368;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __44__CarDataChannel_channel_didReceiveMessage___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 CAF_decodeCarData:&v12];
  v4 = v12;
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v4 || !v6)
  {
    v8 = CAFDChannelLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__CarDataChannel_channel_didReceiveMessage___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_opt_class();
    v7 = [v6 objectForKey:kCarDataProtocolKeyPluginID];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    objc_opt_class();
    v9 = [v6 objectForKey:kCarDataProtocolKeyPluginData];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v8 && v10)
    {
      v11 = [*(a1 + 40) channelDelegate];
      [v11 carDataChannelDidReceive:*(a1 + 40) pluginID:v8 payload:v10];
    }

    else
    {
      v11 = CAFDChannelLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __44__CarDataChannel_channel_didReceiveMessage___block_invoke_cold_2(a1);
      }
    }
  }
}

- (void)didCloseChannel:(id)a3
{
  v4 = CAFDChannelLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CarDataChannel *)self didCloseChannel:v4, v5, v6, v7, v8, v9, v10];
  }

  [(CarDataChannel *)self setIsOpened:0];
  v11 = [(CarDataChannel *)self inputQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__CarDataChannel_didCloseChannel___block_invoke;
  block[3] = &unk_100055470;
  block[4] = self;
  dispatch_async(v11, block);
}

void __34__CarDataChannel_didCloseChannel___block_invoke(uint64_t a1)
{
  v2 = CAFDChannelLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__CarDataChannel_didCloseChannel___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channel];
  [v3 setChannelDelegate:0];

  v4 = [*(a1 + 32) reconnectTimer];
  [v4 invalidate];

  [*(a1 + 32) setReconnectTimer:0];
  v5 = [*(a1 + 32) channelDelegate];
  [v5 carDataChannelDidClose:*(a1 + 32)];
}

- (CarDataChannelDelegate)channelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_channelDelegate);

  return WeakRetained;
}

void __56__CarDataChannel_sendToPluginID_payload_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to package payload: %@", &v2, 0xCu);
}

void __34__CarDataChannel__startConnection__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, v2, v3, "Starting channel %{public}@", v4, v5, v6, v7, v8);
}

void __34__CarDataChannel__startConnection__block_invoke_cold_2(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to open channel %@, will retry later...", v3, 0xCu);
}

void __34__CarDataChannel__startConnection__block_invoke_cold_3(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, v2, v3, "Did open channel: %{public}@", v4, v5, v6, v7, v8);
}

void __33__CarDataChannel__stopConnection__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, v2, v3, "Stopping channel (inputQueue) %{public}@", v4, v5, v6, v7, v8);
}

void __44__CarDataChannel_channel_didReceiveMessage___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v2, v3, "%{public}@ Error parsing data: %@");
}

void __44__CarDataChannel_channel_didReceiveMessage___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&_mh_execute_header, v2, v3, "%{public}@ Received data message without pluginID or data: %@");
}

void __34__CarDataChannel_didCloseChannel___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&_mh_execute_header, v2, v3, "Did close channel (inputQueue): %@", v4, v5, v6, v7, v8);
}

@end