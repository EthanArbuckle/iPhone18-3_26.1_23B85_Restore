@interface _CAFdConnectionProxy
- (BOOL)_isRegisteredForPluginID:(id)a3 instanceID:(id)a4;
- (CAFCarDataClient)remoteProxy;
- (CAFDCarDataServiceAgent)agent;
- (NSString)description;
- (_CAFdConnectionProxy)initWithConnection:(id)a3 agent:(id)a4;
- (id)registrationsForPluginID:(id)a3;
- (void)addRegistrationToPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6;
- (void)createAssertionWithAction:(id)a3;
- (void)didNotifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5;
- (void)didRequestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 withResponse:(id)a6;
- (void)didUpdateConfig:(id)a3;
- (void)didUpdateCurrentCarConfig:(id)a3;
- (void)didUpdatePluginID:(id)a3 values:(id)a4;
- (void)fetchCurrentCarConfigWithReply:(id)a3;
- (void)invalidateAndRemoveAssertions;
- (void)notifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 priority:(id)a6;
- (void)readFromPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6;
- (void)removeRegistrationFromPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6;
- (void)requestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 priority:(id)a6 withResponse:(id)a7;
- (void)writeToPluginID:(id)a3 values:(id)a4 priority:(id)a5 withResponse:(id)a6;
@end

@implementation _CAFdConnectionProxy

- (_CAFdConnectionProxy)initWithConnection:(id)a3 agent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = _CAFdConnectionProxy;
  v9 = [(_CAFdConnectionProxy *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeWeak(&v10->_agent, v8);
    v10->_registrationsLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(NSMutableDictionary);
    registrations = v10->_registrations;
    v10->_registrations = v11;

    v10->_lastAssertion = +[NSDate distantPast];
    v10->_assertionsLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableSet set];
    assertions = v10->_assertions;
    v10->_assertions = v13;

    v15 = [v7 valueForEntitlement:@"com.apple.private.carp.wake"];
    v10->_takeAssertions = [v15 BOOLValue];

    v16 = [NSString stringWithFormat:@"com.apple.caraccessoryframework.CAFdConnectionProxy-%p", v10];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    proxyQueue = v10->_proxyQueue;
    v10->_proxyQueue = v19;

    v21 = CAFCarDataServiceInterface();
    [v7 setExportedInterface:v21];

    v22 = CAFCarDataClientInterface();
    [v7 setRemoteObjectInterface:v22];

    [v7 setExportedObject:v10];
    objc_initWeak(&location, v10);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke;
    v27[3] = &unk_1000552C8;
    objc_copyWeak(&v28, &location);
    [v7 setInterruptionHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_29;
    v25[3] = &unk_1000552C8;
    objc_copyWeak(&v26, &location);
    [v7 setInvalidationHandler:v25];
    v23 = CAFDLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy initWithConnection:agent:];
    }

    [v7 activate];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)invalidateAndRemoveAssertions
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createAssertionWithAction:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  if (!-[_CAFdConnectionProxy takeAssertions](self, "takeAssertions") || (-[_CAFdConnectionProxy lastAssertion](self, "lastAssertion"), v6 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceDate:v6], v8 = v7, v6, v8 < 1.0))
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(_CAFdConnectionProxy *)self setLastAssertion:v5];
  v9 = [RBSDomainAttribute attributeWithDomain:@"com.apple.caraccessoryd" name:@"WakeClient"];
  v21 = v9;
  v10 = [NSArray arrayWithObjects:&v21 count:1];

  v11 = [(_CAFdConnectionProxy *)self connection];
  v12 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v11 processIdentifier]);

  v13 = [[RBSAssertion alloc] initWithExplanation:@"CAFd wakes up clients" target:v12 attributes:v10];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __50___CAFdConnectionProxy_createAssertionWithAction___block_invoke;
  v20[3] = &unk_1000552F0;
  v20[4] = self;
  [v13 setInvalidationHandler:v20];
  v14 = [(_CAFdConnectionProxy *)self agent];
  [v14 _observeAssertion:v13];

  v19 = 0;
  [v13 acquireWithError:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = CAFDAssertionLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [_CAFdConnectionProxy createAssertionWithAction:];
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_assertionsLock);
    v17 = [(_CAFdConnectionProxy *)self assertions];
    [v17 addObject:v13];

    v18 = CAFDAssertionLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy createAssertionWithAction:?];
    }

    os_unfair_lock_unlock(&self->_assertionsLock);
  }

  if (v4 && !v15)
  {
LABEL_14:
    v4[2](v4);
  }

LABEL_15:
}

- (CAFCarDataClient)remoteProxy
{
  v2 = [(_CAFdConnectionProxy *)self connection];
  v3 = [v2 remoteObjectProxy];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CAFCarDataClient])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = [(_CAFdConnectionProxy *)self lastAssertion];
  v4 = +[NSDate distantPast];
  if ([v3 isEqualToDate:v4])
  {
    v5 = @"NONE";
  }

  else
  {
    v6 = [(_CAFdConnectionProxy *)self lastAssertion];
    [v6 timeIntervalSinceNow];
    v5 = [NSString stringWithFormat:@"%.3f", v7];
  }

  v8 = objc_opt_class();
  v9 = [(_CAFdConnectionProxy *)self connection];
  v10 = [v9 processIdentifier];
  v11 = [(_CAFdConnectionProxy *)self takeAssertions];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [NSString stringWithFormat:@"<%@ %p: pid=%d takeAssertions=%@ lastAssertion=%@>", v8, self, v10, v12, v5];

  return v13;
}

- (void)fetchCurrentCarConfigWithReply:(id)a3
{
  v4 = a3;
  v5 = [(_CAFdConnectionProxy *)self agent];
  v6 = [v5 currentCar];

  if (v6)
  {
    if ([v6 isConfigured])
    {
      v7 = v6;
      v8 = CAFDDataLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
      }
    }

    else
    {
      v10 = [(_CAFdConnectionProxy *)self agent];
      v11 = [v10 allowPartialConfiguration];

      if (v11)
      {
        v7 = v6;
        v8 = CAFDDataLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
        }
      }

      else
      {
        v7 = [v6 copyWithoutPlugins];
        v8 = CAFDDataLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
        }
      }
    }

    if (v4)
    {
      v4[2](v4, v7);
    }
  }

  else
  {
    v9 = CAFDDataLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

- (void)addRegistrationToPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(&self->_registrationsLock);
  v14 = CAFDDataLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v10;
    v24 = 2050;
    v25 = [v11 count];
    v26 = 2114;
    v27 = v12;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@: add registration pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", &v20, 0x2Au);
  }

  v15 = [(_CAFdConnectionProxy *)self registrations];
  v16 = [v15 objectForKeyedSubscript:v10];

  if (v16)
  {
    [v16 addObjectsFromArray:v11];
  }

  else
  {
    v17 = [[NSMutableSet alloc] initWithArray:v11];
    v18 = [(_CAFdConnectionProxy *)self registrations];
    [v18 setObject:v17 forKeyedSubscript:v10];
  }

  os_unfair_lock_unlock(&self->_registrationsLock);
  v19 = [(_CAFdConnectionProxy *)self agent];
  [v19 _addRegistration:v10 instanceIDs:v11 priority:v12 withResponse:v13];
}

- (void)removeRegistrationFromPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(&self->_registrationsLock);
  v14 = CAFDDataLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v10;
    v24 = 2050;
    v25 = [v11 count];
    v26 = 2114;
    v27 = v12;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ remove registration pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", buf, 0x2Au);
  }

  v15 = [(_CAFdConnectionProxy *)self registrations];
  v16 = [v15 objectForKeyedSubscript:v10];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __89___CAFdConnectionProxy_removeRegistrationFromPluginID_instanceIDs_priority_withResponse___block_invoke;
    v18[3] = &unk_100055318;
    v19 = v16;
    [v11 enumerateObjectsUsingBlock:v18];
    os_unfair_lock_unlock(&self->_registrationsLock);
    v17 = [(_CAFdConnectionProxy *)self agent];
    [v17 _removeRegistration:v10 instanceIDs:v11 priority:v12 withResponse:v13];
  }

  else
  {
    os_unfair_lock_unlock(&self->_registrationsLock);
  }
}

- (void)readFromPluginID:(id)a3 instanceIDs:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_CAFdConnectionProxy *)self agent];
  v15 = [v14 _getClient:v10];

  if (v15)
  {
    [v15 readInstanceIDs:v11 priority:v12 withResponse:v13];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Read request for pluginID: %{public}@ with priority: %{public}@ failed due to missing plugin", buf, 0x20u);
    }

    if (v13)
    {
      v17 = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __75___CAFdConnectionProxy_readFromPluginID_instanceIDs_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v19 = v13;
      dispatch_async(v17, block);
    }
  }
}

- (void)writeToPluginID:(id)a3 values:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_CAFdConnectionProxy *)self agent];
  v15 = [v14 _getClient:v10];

  if (v15)
  {
    [v15 writeValues:v11 priority:v12 withResponse:v13];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Write request for pluginID: %{public}@ with priority: %{public}@ failed due to missing plugin", buf, 0x20u);
    }

    if (v13)
    {
      v17 = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __69___CAFdConnectionProxy_writeToPluginID_values_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v19 = v13;
      dispatch_async(v17, block);
    }
  }
}

- (void)requestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 priority:(id)a6 withResponse:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(_CAFdConnectionProxy *)self agent];
  v18 = [v17 _getClient:v12];

  if (v18)
  {
    [v18 requestInstanceID:v13 value:v14 priority:v15 withResponse:v16];
  }

  else
  {
    v19 = CAFDDataLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v15;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: Request pluginID: %@ instanceID: %@ with priority: %@ failed due to missing plugin", buf, 0x2Au);
    }

    if (v16)
    {
      v20 = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __79___CAFdConnectionProxy_requestPluginID_instanceID_value_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v22 = v16;
      dispatch_async(v20, block);
    }
  }
}

- (void)notifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 priority:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_CAFdConnectionProxy *)self agent];
  v15 = [v14 _getClient:v10];

  if (v15)
  {
    [v15 notifyInstanceID:v11 value:v12 priority:v13];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      v18 = self;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Notify pluginID: %@ instanceID: %@ with priority: %@ failed due to missing plugin", &v17, 0x2Au);
    }
  }
}

- (void)didUpdateCurrentCarConfig:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_registrationsLock);
  v5 = [(_CAFdConnectionProxy *)self registrations];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_registrationsLock);
  v6 = CAFDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_CAFdConnectionProxy didUpdateCurrentCarConfig:];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __50___CAFdConnectionProxy_didUpdateCurrentCarConfig___block_invoke;
  v8[3] = &unk_100055368;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(_CAFdConnectionProxy *)self createAssertionWithAction:v8];
}

- (void)didUpdateConfig:(id)a3
{
  v4 = a3;
  v5 = CAFDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_CAFdConnectionProxy *)self didUpdateConfig:v4];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40___CAFdConnectionProxy_didUpdateConfig___block_invoke;
  v7[3] = &unk_100055368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_CAFdConnectionProxy *)self createAssertionWithAction:v7];
}

- (void)didUpdatePluginID:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_registrationsLock);
  v8 = [(_CAFdConnectionProxy *)self registrations];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 copy];

  os_unfair_lock_unlock(&self->_registrationsLock);
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __49___CAFdConnectionProxy_didUpdatePluginID_values___block_invoke;
    v21[3] = &unk_100055390;
    v22 = v10;
    v12 = v11;
    v23 = v12;
    [v7 enumerateKeysAndObjectsUsingBlock:v21];
    if ([v12 count])
    {
      v13 = CAFDClientLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v7 count];
        v15 = [v12 count];
        v16 = [v12 allKeys];
        v17 = [v16 componentsJoinedByString:{@", "}];
        *buf = 138544386;
        v25 = self;
        v26 = 2114;
        v27 = v6;
        v28 = 2050;
        v29 = v14;
        v30 = 2050;
        v31 = v15;
        v32 = 2114;
        v33 = v17;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@: didUpdate pluginID: %{public}@ count in: %{public}lu out: %{public}lu [%{public}@]", buf, 0x34u);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __49___CAFdConnectionProxy_didUpdatePluginID_values___block_invoke_124;
      v18[3] = &unk_1000553B8;
      v18[4] = self;
      v19 = v6;
      v20 = v12;
      [(_CAFdConnectionProxy *)self createAssertionWithAction:v18];
    }
  }
}

- (void)didRequestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(_CAFdConnectionProxy *)self _isRegisteredForPluginID:v10 instanceID:v11])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __73___CAFdConnectionProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke;
    v15[3] = &unk_1000553E0;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    [(_CAFdConnectionProxy *)self createAssertionWithAction:v15];
  }

  else
  {
    v14 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
    (*(v13 + 2))(v13, 0, v14);
  }
}

- (void)didNotifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_CAFdConnectionProxy *)self _isRegisteredForPluginID:v8 instanceID:v9])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59___CAFdConnectionProxy_didNotifyPluginID_instanceID_value___block_invoke;
    v11[3] = &unk_100055408;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [(_CAFdConnectionProxy *)self createAssertionWithAction:v11];
  }
}

- (BOOL)_isRegisteredForPluginID:(id)a3 instanceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_registrationsLock);
  v8 = [(_CAFdConnectionProxy *)self registrations];
  v9 = [v8 objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v9 containsObject:v6];
  os_unfair_lock_unlock(&self->_registrationsLock);
  return v7;
}

- (id)registrationsForPluginID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_registrationsLock);
  v5 = [(_CAFdConnectionProxy *)self registrations];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 copy];
  os_unfair_lock_unlock(&self->_registrationsLock);

  return v7;
}

- (CAFDCarDataServiceAgent)agent
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);

  return WeakRetained;
}

- (void)initWithConnection:agent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createAssertionWithAction:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 assertions];
  [v1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)createAssertionWithAction:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

- (void)fetchCurrentCarConfigWithReply:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didUpdateConfig:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 allKeys];
  v3 = [v2 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end