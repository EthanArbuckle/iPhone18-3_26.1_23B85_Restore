@interface HRCClientCollator
- (HRCClientCollator)initWithDelegate:(id)delegate onQueue:(id)queue;
- (HRCClientCollatorDelegate)delegate;
- (void)_addHrRequestorClient:(id)client;
- (void)_recomputeCollatedOpportunisticModeRequest;
- (void)_recomputeCollatedStreamingModeRequest;
- (void)_removeHrRequestorClient:(id)client;
- (void)_updateTransactionState;
- (void)addHrRequestorClient:(id)client;
- (void)clientUpdatedWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType client:(id)client;
- (void)handleHeartRate:(id)rate;
- (void)removeHrRequestorClient:(id)client;
- (void)reportCollatedStateSnapshot;
@end

@implementation HRCClientCollator

- (HRCClientCollator)initWithDelegate:(id)delegate onQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = HRCClientCollator;
  v8 = [(HRCClientCollator *)&v20 init];
  v9 = objc_opt_new();
  v10 = *(v8 + 6);
  *(v8 + 6) = v9;

  v11 = *(v8 + 1);
  *(v8 + 1) = queueCopy;
  v12 = queueCopy;

  objc_storeWeak(v8 + 9, delegateCopy);
  v13 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v8 + 1));
  v14 = *(v8 + 3);
  *(v8 + 3) = v13;

  objc_initWeak(&location, v8);
  v15 = *(v8 + 3);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001B558;
  v17[3] = &unk_1000407A0;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v15, v17);
  dispatch_activate(*(v8 + 3));

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v8;
}

- (void)addHrRequestorClient:(id)client
{
  clientCopy = client;
  transaction = [(HRCClientCollator *)self transaction];

  if (!transaction)
  {
    [@"com.apple.heartratecoordinatord.requestor" UTF8String];
    v6 = os_transaction_create();
    [(HRCClientCollator *)self setTransaction:v6];
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001B6DC;
  v9[3] = &unk_100040BC8;
  v9[4] = self;
  v10 = clientCopy;
  v8 = clientCopy;
  dispatch_async(queue, v9);
}

- (void)removeHrRequestorClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B780;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)handleHeartRate:(id)rate
{
  rateCopy = rate;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
  v6 = [hrRequestorClientList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(hrRequestorClientList);
        }

        [*(*(&v9 + 1) + 8 * v8) handleHeartRate:rateCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [hrRequestorClientList countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addHrRequestorClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processName = [clientCopy processName];
    v8 = 138543362;
    v9 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "adding HRCHeartRateRequestor client for new connection with processName : %{public}@", &v8, 0xCu);
  }

  hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
  [hrRequestorClientList addObject:clientCopy];
}

- (void)_removeHrRequestorClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    processName = [clientCopy processName];
    v10 = 138543362;
    v11 = processName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing HRCHeartRateRequestor client with processName : %{public}@", &v10, 0xCu);
  }

  hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
  [hrRequestorClientList removeObject:clientCopy];

  workoutDefiningClient = [(HRCClientCollator *)self workoutDefiningClient];
  LODWORD(hrRequestorClientList) = workoutDefiningClient == clientCopy;

  if (hrRequestorClientList)
  {
    [(HRCClientCollator *)self setWorkoutDefiningClient:0];
    delegate = [(HRCClientCollator *)self delegate];
    [delegate updateWorkoutActivityType:0 withLocationType:1];
  }

  [(HRCClientCollator *)self _recomputeCollatedStreamingModeRequest];
  [(HRCClientCollator *)self _recomputeCollatedOpportunisticModeRequest];
  [(HRCClientCollator *)self _updateTransactionState];
}

- (void)_updateTransactionState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_10000132C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
    v11 = 134217984;
    v12 = [hrRequestorClientList count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCHeartRateRequestor client count : %lu", &v11, 0xCu);
  }

  hrRequestorClientList2 = [(HRCClientCollator *)self hrRequestorClientList];
  if ([hrRequestorClientList2 count])
  {
    transaction = [(HRCClientCollator *)self transaction];
    v7 = transaction == 0;

    if (v7)
    {
      [@"com.apple.heartratecoordinatord.requestor" UTF8String];
      v8 = os_transaction_create();
      [(HRCClientCollator *)self setTransaction:v8];

      return;
    }
  }

  else
  {
  }

  hrRequestorClientList3 = [(HRCClientCollator *)self hrRequestorClientList];
  v10 = [hrRequestorClientList3 count] == 0;

  if (v10)
  {
    [(HRCClientCollator *)self setTransaction:0];
  }
}

- (void)clientUpdatedWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType client:(id)client
{
  clientCopy = client;
  v11 = clientCopy;
  if (type)
  {
    v9 = clientCopy;
  }

  else
  {
    v9 = 0;
  }

  [(HRCClientCollator *)self setWorkoutDefiningClient:v9];
  delegate = [(HRCClientCollator *)self delegate];
  [delegate updateWorkoutActivityType:type withLocationType:locationType];
}

- (void)_recomputeCollatedStreamingModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
  streamingMode = 0;
  v5 = [hrRequestorClientList countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(hrRequestorClientList);
      }

      if (streamingMode == 2)
      {
        break;
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      if ([v8 streamingMode])
      {
        streamingMode = [v8 streamingMode];
      }

      if (v5 == ++v7)
      {
        v5 = [hrRequestorClientList countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([(HRCClientCollator *)self streamingMode]!= streamingMode)
  {
    [(HRCClientCollator *)self setStreamingMode:streamingMode];
    if ([(HRCClientCollator *)self streamingMode]== 2)
    {
      v9 = [HRCPowerAssertion alloc];
      v10 = [NSString stringWithFormat:@"collated streaming mode switched to : %lu", [(HRCClientCollator *)self streamingMode]];
      v11 = [(HRCPowerAssertion *)v9 initWithName:@"com.apple.heartratecoordinator.streaming" reason:v10];
      assertion = self->_assertion;
      self->_assertion = v11;
    }

    else
    {
      v10 = self->_assertion;
      self->_assertion = 0;
    }

    [(HRCClientCollator *)self reportCollatedStateSnapshot];
    v13 = sub_10000132C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = streamingMode;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "collatedStreamingMode : %ld", buf, 0xCu);
    }

    delegate = [(HRCClientCollator *)self delegate];
    [delegate updateCollatedStreamingModeRequest:{-[HRCClientCollator streamingMode](self, "streamingMode")}];
  }
}

- (void)_recomputeCollatedOpportunisticModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  hrRequestorClientList = [(HRCClientCollator *)self hrRequestorClientList];
  v4 = [hrRequestorClientList countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(hrRequestorClientList);
        }

        if ([*(*(&v10 + 1) + 8 * i) opportunisticMode])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [hrRequestorClientList countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v4 != [(HRCClientCollator *)self opportunisticMode])
  {
    [(HRCClientCollator *)self setOpportunisticMode:v4];
    [(HRCClientCollator *)self reportCollatedStateSnapshot];
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      opportunisticMode = [(HRCClientCollator *)self opportunisticMode];
      *buf = 67109120;
      v15 = opportunisticMode;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "collatedOpportunisticMode : %d", buf, 8u);
    }

    delegate = [(HRCClientCollator *)self delegate];
    [delegate updateCollatedOpportunisticModeRequest:{-[HRCClientCollator opportunisticMode](self, "opportunisticMode")}];
  }
}

- (void)reportCollatedStateSnapshot
{
  v11[0] = @"streaming-mode";
  v3 = [NSNumber numberWithUnsignedInteger:[(HRCClientCollator *)self streamingMode]];
  v11[1] = @"opportunistic-mode";
  v12[0] = v3;
  v4 = [NSNumber numberWithBool:[(HRCClientCollator *)self opportunisticMode]];
  v12[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    streamingMode = [(HRCClientCollator *)self streamingMode];
    v9 = 1026;
    opportunisticMode = [(HRCClientCollator *)self opportunisticMode];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "power telemetry :: collated snapshot with streaming-mode : %{public}lu , opportunistic-mode : %{public}d", &v7, 0x12u);
  }

  if (qword_100048908 != -1)
  {
    sub_10001C4F8();
  }

  PPSSendTelemetry();
}

- (HRCClientCollatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end