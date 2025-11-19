@interface HRCClientCollator
- (HRCClientCollator)initWithDelegate:(id)a3 onQueue:(id)a4;
- (HRCClientCollatorDelegate)delegate;
- (void)_addHrRequestorClient:(id)a3;
- (void)_recomputeCollatedOpportunisticModeRequest;
- (void)_recomputeCollatedStreamingModeRequest;
- (void)_removeHrRequestorClient:(id)a3;
- (void)_updateTransactionState;
- (void)addHrRequestorClient:(id)a3;
- (void)clientUpdatedWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 client:(id)a5;
- (void)handleHeartRate:(id)a3;
- (void)removeHrRequestorClient:(id)a3;
- (void)reportCollatedStateSnapshot;
@end

@implementation HRCClientCollator

- (HRCClientCollator)initWithDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HRCClientCollator;
  v8 = [(HRCClientCollator *)&v20 init];
  v9 = objc_opt_new();
  v10 = *(v8 + 6);
  *(v8 + 6) = v9;

  v11 = *(v8 + 1);
  *(v8 + 1) = v7;
  v12 = v7;

  objc_storeWeak(v8 + 9, v6);
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

- (void)addHrRequestorClient:(id)a3
{
  v4 = a3;
  v5 = [(HRCClientCollator *)self transaction];

  if (!v5)
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
  v10 = v4;
  v8 = v4;
  dispatch_async(queue, v9);
}

- (void)removeHrRequestorClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B780;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)handleHeartRate:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(HRCClientCollator *)self hrRequestorClientList];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) handleHeartRate:v4];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addHrRequestorClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 processName];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "adding HRCHeartRateRequestor client for new connection with processName : %{public}@", &v8, 0xCu);
  }

  v7 = [(HRCClientCollator *)self hrRequestorClientList];
  [v7 addObject:v4];
}

- (void)_removeHrRequestorClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_10000132C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 processName];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing HRCHeartRateRequestor client with processName : %{public}@", &v10, 0xCu);
  }

  v7 = [(HRCClientCollator *)self hrRequestorClientList];
  [v7 removeObject:v4];

  v8 = [(HRCClientCollator *)self workoutDefiningClient];
  LODWORD(v7) = v8 == v4;

  if (v7)
  {
    [(HRCClientCollator *)self setWorkoutDefiningClient:0];
    v9 = [(HRCClientCollator *)self delegate];
    [v9 updateWorkoutActivityType:0 withLocationType:1];
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
    v4 = [(HRCClientCollator *)self hrRequestorClientList];
    v11 = 134217984;
    v12 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCHeartRateRequestor client count : %lu", &v11, 0xCu);
  }

  v5 = [(HRCClientCollator *)self hrRequestorClientList];
  if ([v5 count])
  {
    v6 = [(HRCClientCollator *)self transaction];
    v7 = v6 == 0;

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

  v9 = [(HRCClientCollator *)self hrRequestorClientList];
  v10 = [v9 count] == 0;

  if (v10)
  {
    [(HRCClientCollator *)self setTransaction:0];
  }
}

- (void)clientUpdatedWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4 client:(id)a5
{
  v8 = a5;
  v11 = v8;
  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(HRCClientCollator *)self setWorkoutDefiningClient:v9];
  v10 = [(HRCClientCollator *)self delegate];
  [v10 updateWorkoutActivityType:a3 withLocationType:a4];
}

- (void)_recomputeCollatedStreamingModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HRCClientCollator *)self hrRequestorClientList];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (v4 == 2)
      {
        break;
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      if ([v8 streamingMode])
      {
        v4 = [v8 streamingMode];
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([(HRCClientCollator *)self streamingMode]!= v4)
  {
    [(HRCClientCollator *)self setStreamingMode:v4];
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
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "collatedStreamingMode : %ld", buf, 0xCu);
    }

    v14 = [(HRCClientCollator *)self delegate];
    [v14 updateCollatedStreamingModeRequest:{-[HRCClientCollator streamingMode](self, "streamingMode")}];
  }
}

- (void)_recomputeCollatedOpportunisticModeRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(HRCClientCollator *)self hrRequestorClientList];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) opportunisticMode])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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
      v8 = [(HRCClientCollator *)self opportunisticMode];
      *buf = 67109120;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "collatedOpportunisticMode : %d", buf, 8u);
    }

    v9 = [(HRCClientCollator *)self delegate];
    [v9 updateCollatedOpportunisticModeRequest:{-[HRCClientCollator opportunisticMode](self, "opportunisticMode")}];
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
    v8 = [(HRCClientCollator *)self streamingMode];
    v9 = 1026;
    v10 = [(HRCClientCollator *)self opportunisticMode];
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