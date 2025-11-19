@interface NIServerSystemConfigurator
+ (id)sharedInstance;
- (id).cxx_construct;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)printableState;
- (void)_handlePrewarmSecureElementChannelResult:(const void *)a3 prefix:(id)a4;
- (void)_relayBlockToClients:(id)a3;
- (void)_updateAggregatedClientInfo;
- (void)addClient:(id)a3 identifier:(id)a4;
- (void)clientWithIdentifier:(id)a3 notifiedPassiveAccessIntent:(unsigned int)a4;
- (void)clientWithIdentifier:(id)a3 notifiedResourceUsageLimitExceeded:(BOOL)a4 forSessionConfigurationType:(Class)a5;
- (void)clientWithIdentifier:(id)a3 requestedPrewarmUWB:(BOOL)a4 prewarmSecureElementChannel:(BOOL)a5;
- (void)configureSubsystemsOnFirstUnlock;
- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4;
- (void)removeClientWithIdentifier:(id)a3;
@end

@implementation NIServerSystemConfigurator

+ (id)sharedInstance
{
  if (qword_1009F3DF8 != -1)
  {
    sub_1004B97F4();
  }

  v3 = qword_1009F3DF0;

  return v3;
}

- (id)_initInternal
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#configurator,_initInternal", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = NIServerSystemConfigurator;
  v4 = [(NIServerSystemConfigurator *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.nearbyd.system.configurator", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = v4->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002CB278;
    block[3] = &unk_10098BD28;
    v11 = v4;
    dispatch_sync(v8, block);
  }

  return v4;
}

- (void)configureSubsystemsOnFirstUnlock
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002CB4A4;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)addClient:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002CB704;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

- (void)removeClientWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002CB9C8;
  v7[3] = &unk_10098A2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)clientWithIdentifier:(id)a3 requestedPrewarmUWB:(BOOL)a4 prewarmSecureElementChannel:(BOOL)a5
{
  v8 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002CBBD0;
  block[3] = &unk_1009A0350;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_sync(queue, block);
}

- (void)clientWithIdentifier:(id)a3 notifiedResourceUsageLimitExceeded:(BOOL)a4 forSessionConfigurationType:(Class)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002CBF1C;
  v11[3] = &unk_1009A30E0;
  v11[4] = self;
  v12 = v8;
  v13 = a5;
  v14 = a4;
  v10 = v8;
  dispatch_sync(queue, v11);
}

- (void)clientWithIdentifier:(id)a3 notifiedPassiveAccessIntent:(unsigned int)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002CC2D8;
  block[3] = &unk_1009A1A18;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002CC5F8;
  v10 = sub_1002CC608;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002CC610;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1002CC5F8;
  v18 = sub_1002CC608;
  v19 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = v15[5];
  activated = self->_activated;
  v6 = [(NISystemState *)self->_systemState descriptionInternal];
  v7 = [NSString stringWithFormat:@"Activated: %d. System state: %@", activated, v6];
  [v4 addObject:v7];

  v8 = v15[5];
  v9 = [NSString stringWithFormat:@"Aggregated info from %d clients: %@", [(NSMutableDictionary *)self->_clientInfo count], self->_aggregatedClientInfo];
  [v8 addObject:v9];

  clientInfo = self->_clientInfo;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002CC86C;
  v13[3] = &unk_1009A3108;
  v13[4] = &v14;
  [(NSMutableDictionary *)clientInfo enumerateKeysAndObjectsUsingBlock:v13];
  objc_autoreleasePoolPop(v3);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)_updateAggregatedClientInfo
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(ConfiguratorClientInfo *)self->_aggregatedClientInfo copy];
  v4 = objc_opt_new();
  aggregatedClientInfo = self->_aggregatedClientInfo;
  self->_aggregatedClientInfo = v4;

  clientInfo = self->_clientInfo;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1002CCD84;
  v27[3] = &unk_1009A3130;
  v27[4] = self;
  [(NSMutableDictionary *)clientInfo enumerateKeysAndObjectsUsingBlock:v27];
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_aggregatedClientInfo;
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#configurator,Aggregated info - new: %@", buf, 0xCu);
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#configurator,Aggregated info - old: %@", buf, 0xCu);
  }

  v10 = [(NSMutableDictionary *)self->_clientInfo count];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v11 = self->_clientInfo;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1002CCD90;
  v23[3] = &unk_1009A3158;
  v23[4] = v25;
  v24 = v10;
  [(NSMutableDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v23];
  if (+[NIPlatformInfo supportsUWB])
  {
    [(ConfiguratorClientInfo *)self->_aggregatedClientInfo prewarmUWB];
    [(ConfiguratorClientInfo *)v3 prewarmUWB];
  }

  if (+[NIPlatformInfo supportsUWB]&& [(ConfiguratorClientInfo *)self->_aggregatedClientInfo prewarmSecureElementChannel]&& ![(ConfiguratorClientInfo *)v3 prewarmSecureElementChannel])
  {
    v12 = [(NISystemState *)self->_systemState uwbPreciseDistanceAvailability];
    v13 = qword_1009F9820;
    v14 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#configurator,Prewarm UWB-SE secure channel will be deferred until UWB is available", buf, 2u);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#configurator,Prewarming UWB-SE secure channel...", buf, 2u);
      }

      v15 = sub_10035D02C();
      sub_10035D238(v15, 0, 5000, buf);
      [(NIServerSystemConfigurator *)self _handlePrewarmSecureElementChannelResult:buf prefix:@"Prewarming"];
    }
  }

  v16 = [(ConfiguratorClientInfo *)self->_aggregatedClientInfo carKeyRangingLimitExceeded];
  if (v16 != [(ConfiguratorClientInfo *)v3 carKeyRangingLimitExceeded])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002CCE90;
    v22[3] = &unk_1009A3180;
    v22[4] = self;
    [(NIServerSystemConfigurator *)self _relayBlockToClients:v22];
  }

  v17 = [(ConfiguratorClientInfo *)self->_aggregatedClientInfo acwgRangingLimitExceeded];
  if (v17 != [(ConfiguratorClientInfo *)v3 acwgRangingLimitExceeded])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1002CCF14;
    v21[3] = &unk_1009A3180;
    v21[4] = self;
    [(NIServerSystemConfigurator *)self _relayBlockToClients:v21];
  }

  v18 = [(ConfiguratorClientInfo *)self->_aggregatedClientInfo passiveAccessIntent];
  if (v18 != [(ConfiguratorClientInfo *)v3 passiveAccessIntent])
  {
    v19 = sub_10035D02C();
    sub_10035D29C(v19, [(ConfiguratorClientInfo *)self->_aggregatedClientInfo passiveAccessIntent]);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002CCF98;
    v20[3] = &unk_1009A3180;
    v20[4] = self;
    [(NIServerSystemConfigurator *)self _relayBlockToClients:v20];
  }

  _Block_object_dispose(v25, 8);
}

- (void)_relayBlockToClients:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMapTable *)self->_clients keyEnumerator];
  while (1)
  {
    v5 = [v4 nextObject];
    if (!v5)
    {
      break;
    }

    v6 = [(NSMapTable *)self->_clients objectForKey:v5];
    if (v6)
    {
      v7[2](v7, v6);
    }
  }
}

- (void)_handlePrewarmSecureElementChannelResult:(const void *)a3 prefix:(id)a4
{
  v5 = a4;
  if (*a3)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003A03C4(*a3, &v18);
      sub_1004B9A7C(v5, &v18, buf, v6);
    }
  }

  else if (*(a3 + 73))
  {
    if (*(a3 + 4) == 1)
    {
      v8 = *(a3 + 25);
      v7 = (a3 + 25);
      v9 = qword_1009F9820;
      if (v8 == 54)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#configurator,%@ UWB-SE secure channel succeeded with expected get-key-complete-event status!", &v18, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9C24(v5, v7, v9);
      }
    }

    else
    {
      v17 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9B6C(v5, a3 + 4, v17);
      }
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B9B00(v5, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(v18, off_1009A32B8[a3]);
    v8 = v19;
    v9 = v18[0];
    sub_100004A08(__p, off_1009A32E0[a4]);
    v10 = v18;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v17 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#configurator,Ranging service updated state: %s. Cause: %s", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002CD494;
  v13[3] = &unk_10098A450;
  v13[4] = self;
  v14 = a3;
  v15 = a4;
  dispatch_async(queue, v13);
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end