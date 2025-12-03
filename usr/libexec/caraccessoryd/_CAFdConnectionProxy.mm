@interface _CAFdConnectionProxy
- (BOOL)_isRegisteredForPluginID:(id)d instanceID:(id)iD;
- (CAFCarDataClient)remoteProxy;
- (CAFDCarDataServiceAgent)agent;
- (NSString)description;
- (_CAFdConnectionProxy)initWithConnection:(id)connection agent:(id)agent;
- (id)registrationsForPluginID:(id)d;
- (void)addRegistrationToPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response;
- (void)createAssertionWithAction:(id)action;
- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value;
- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response;
- (void)didUpdateConfig:(id)config;
- (void)didUpdateCurrentCarConfig:(id)config;
- (void)didUpdatePluginID:(id)d values:(id)values;
- (void)fetchCurrentCarConfigWithReply:(id)reply;
- (void)invalidateAndRemoveAssertions;
- (void)notifyPluginID:(id)d instanceID:(id)iD value:(id)value priority:(id)priority;
- (void)readFromPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response;
- (void)removeRegistrationFromPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response;
- (void)requestPluginID:(id)d instanceID:(id)iD value:(id)value priority:(id)priority withResponse:(id)response;
- (void)writeToPluginID:(id)d values:(id)values priority:(id)priority withResponse:(id)response;
@end

@implementation _CAFdConnectionProxy

- (_CAFdConnectionProxy)initWithConnection:(id)connection agent:(id)agent
{
  connectionCopy = connection;
  agentCopy = agent;
  v30.receiver = self;
  v30.super_class = _CAFdConnectionProxy;
  v9 = [(_CAFdConnectionProxy *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeWeak(&v10->_agent, agentCopy);
    v10->_registrationsLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(NSMutableDictionary);
    registrations = v10->_registrations;
    v10->_registrations = v11;

    v10->_lastAssertion = +[NSDate distantPast];
    v10->_assertionsLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableSet set];
    assertions = v10->_assertions;
    v10->_assertions = v13;

    v15 = [connectionCopy valueForEntitlement:@"com.apple.private.carp.wake"];
    v10->_takeAssertions = [v15 BOOLValue];

    v16 = [NSString stringWithFormat:@"com.apple.caraccessoryframework.CAFdConnectionProxy-%p", v10];
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    proxyQueue = v10->_proxyQueue;
    v10->_proxyQueue = v19;

    v21 = CAFCarDataServiceInterface();
    [connectionCopy setExportedInterface:v21];

    v22 = CAFCarDataClientInterface();
    [connectionCopy setRemoteObjectInterface:v22];

    [connectionCopy setExportedObject:v10];
    objc_initWeak(&location, v10);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke;
    v27[3] = &unk_1000552C8;
    objc_copyWeak(&v28, &location);
    [connectionCopy setInterruptionHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_29;
    v25[3] = &unk_1000552C8;
    objc_copyWeak(&v26, &location);
    [connectionCopy setInvalidationHandler:v25];
    v23 = CAFDLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy initWithConnection:agent:];
    }

    [connectionCopy activate];
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

- (void)createAssertionWithAction:(id)action
{
  actionCopy = action;
  v5 = +[NSDate now];
  if (!-[_CAFdConnectionProxy takeAssertions](self, "takeAssertions") || (-[_CAFdConnectionProxy lastAssertion](self, "lastAssertion"), v6 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceDate:v6], v8 = v7, v6, v8 < 1.0))
  {
    if (!actionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(_CAFdConnectionProxy *)self setLastAssertion:v5];
  v9 = [RBSDomainAttribute attributeWithDomain:@"com.apple.caraccessoryd" name:@"WakeClient"];
  v21 = v9;
  v10 = [NSArray arrayWithObjects:&v21 count:1];

  connection = [(_CAFdConnectionProxy *)self connection];
  v12 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [connection processIdentifier]);

  v13 = [[RBSAssertion alloc] initWithExplanation:@"CAFd wakes up clients" target:v12 attributes:v10];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __50___CAFdConnectionProxy_createAssertionWithAction___block_invoke;
  v20[3] = &unk_1000552F0;
  v20[4] = self;
  [v13 setInvalidationHandler:v20];
  agent = [(_CAFdConnectionProxy *)self agent];
  [agent _observeAssertion:v13];

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
    assertions = [(_CAFdConnectionProxy *)self assertions];
    [assertions addObject:v13];

    v18 = CAFDAssertionLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy createAssertionWithAction:?];
    }

    os_unfair_lock_unlock(&self->_assertionsLock);
  }

  if (actionCopy && !v15)
  {
LABEL_14:
    actionCopy[2](actionCopy);
  }

LABEL_15:
}

- (CAFCarDataClient)remoteProxy
{
  connection = [(_CAFdConnectionProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  if ([remoteObjectProxy conformsToProtocol:&OBJC_PROTOCOL___CAFCarDataClient])
  {
    v4 = remoteObjectProxy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  lastAssertion = [(_CAFdConnectionProxy *)self lastAssertion];
  v4 = +[NSDate distantPast];
  if ([lastAssertion isEqualToDate:v4])
  {
    v5 = @"NONE";
  }

  else
  {
    lastAssertion2 = [(_CAFdConnectionProxy *)self lastAssertion];
    [lastAssertion2 timeIntervalSinceNow];
    v5 = [NSString stringWithFormat:@"%.3f", v7];
  }

  v8 = objc_opt_class();
  connection = [(_CAFdConnectionProxy *)self connection];
  processIdentifier = [connection processIdentifier];
  takeAssertions = [(_CAFdConnectionProxy *)self takeAssertions];
  v12 = @"NO";
  if (takeAssertions)
  {
    v12 = @"YES";
  }

  v13 = [NSString stringWithFormat:@"<%@ %p: pid=%d takeAssertions=%@ lastAssertion=%@>", v8, self, processIdentifier, v12, v5];

  return v13;
}

- (void)fetchCurrentCarConfigWithReply:(id)reply
{
  replyCopy = reply;
  agent = [(_CAFdConnectionProxy *)self agent];
  currentCar = [agent currentCar];

  if (currentCar)
  {
    if ([currentCar isConfigured])
    {
      copyWithoutPlugins = currentCar;
      v8 = CAFDDataLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
      }
    }

    else
    {
      agent2 = [(_CAFdConnectionProxy *)self agent];
      allowPartialConfiguration = [agent2 allowPartialConfiguration];

      if (allowPartialConfiguration)
      {
        copyWithoutPlugins = currentCar;
        v8 = CAFDDataLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
        }
      }

      else
      {
        copyWithoutPlugins = [currentCar copyWithoutPlugins];
        v8 = CAFDDataLogging();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
        }
      }
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, copyWithoutPlugins);
    }
  }

  else
  {
    v9 = CAFDDataLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_CAFdConnectionProxy fetchCurrentCarConfigWithReply:];
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)addRegistrationToPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response
{
  dCopy = d;
  dsCopy = ds;
  priorityCopy = priority;
  responseCopy = response;
  os_unfair_lock_lock(&self->_registrationsLock);
  v14 = CAFDDataLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138544130;
    selfCopy = self;
    v22 = 2114;
    v23 = dCopy;
    v24 = 2050;
    v25 = [dsCopy count];
    v26 = 2114;
    v27 = priorityCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@: add registration pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", &v20, 0x2Au);
  }

  registrations = [(_CAFdConnectionProxy *)self registrations];
  v16 = [registrations objectForKeyedSubscript:dCopy];

  if (v16)
  {
    [v16 addObjectsFromArray:dsCopy];
  }

  else
  {
    v17 = [[NSMutableSet alloc] initWithArray:dsCopy];
    registrations2 = [(_CAFdConnectionProxy *)self registrations];
    [registrations2 setObject:v17 forKeyedSubscript:dCopy];
  }

  os_unfair_lock_unlock(&self->_registrationsLock);
  agent = [(_CAFdConnectionProxy *)self agent];
  [agent _addRegistration:dCopy instanceIDs:dsCopy priority:priorityCopy withResponse:responseCopy];
}

- (void)removeRegistrationFromPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response
{
  dCopy = d;
  dsCopy = ds;
  priorityCopy = priority;
  responseCopy = response;
  os_unfair_lock_lock(&self->_registrationsLock);
  v14 = CAFDDataLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    selfCopy = self;
    v22 = 2114;
    v23 = dCopy;
    v24 = 2050;
    v25 = [dsCopy count];
    v26 = 2114;
    v27 = priorityCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ remove registration pluginID: %{public}@ instanceIDs count %{public}lu with priority: %{public}@", buf, 0x2Au);
  }

  registrations = [(_CAFdConnectionProxy *)self registrations];
  v16 = [registrations objectForKeyedSubscript:dCopy];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __89___CAFdConnectionProxy_removeRegistrationFromPluginID_instanceIDs_priority_withResponse___block_invoke;
    v18[3] = &unk_100055318;
    v19 = v16;
    [dsCopy enumerateObjectsUsingBlock:v18];
    os_unfair_lock_unlock(&self->_registrationsLock);
    agent = [(_CAFdConnectionProxy *)self agent];
    [agent _removeRegistration:dCopy instanceIDs:dsCopy priority:priorityCopy withResponse:responseCopy];
  }

  else
  {
    os_unfair_lock_unlock(&self->_registrationsLock);
  }
}

- (void)readFromPluginID:(id)d instanceIDs:(id)ds priority:(id)priority withResponse:(id)response
{
  dCopy = d;
  dsCopy = ds;
  priorityCopy = priority;
  responseCopy = response;
  agent = [(_CAFdConnectionProxy *)self agent];
  v15 = [agent _getClient:dCopy];

  if (v15)
  {
    [v15 readInstanceIDs:dsCopy priority:priorityCopy withResponse:responseCopy];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = dCopy;
      v24 = 2114;
      v25 = priorityCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Read request for pluginID: %{public}@ with priority: %{public}@ failed due to missing plugin", buf, 0x20u);
    }

    if (responseCopy)
    {
      proxyQueue = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __75___CAFdConnectionProxy_readFromPluginID_instanceIDs_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v19 = responseCopy;
      dispatch_async(proxyQueue, block);
    }
  }
}

- (void)writeToPluginID:(id)d values:(id)values priority:(id)priority withResponse:(id)response
{
  dCopy = d;
  valuesCopy = values;
  priorityCopy = priority;
  responseCopy = response;
  agent = [(_CAFdConnectionProxy *)self agent];
  v15 = [agent _getClient:dCopy];

  if (v15)
  {
    [v15 writeValues:valuesCopy priority:priorityCopy withResponse:responseCopy];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = dCopy;
      v24 = 2114;
      v25 = priorityCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Write request for pluginID: %{public}@ with priority: %{public}@ failed due to missing plugin", buf, 0x20u);
    }

    if (responseCopy)
    {
      proxyQueue = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __69___CAFdConnectionProxy_writeToPluginID_values_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v19 = responseCopy;
      dispatch_async(proxyQueue, block);
    }
  }
}

- (void)requestPluginID:(id)d instanceID:(id)iD value:(id)value priority:(id)priority withResponse:(id)response
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  priorityCopy = priority;
  responseCopy = response;
  agent = [(_CAFdConnectionProxy *)self agent];
  v18 = [agent _getClient:dCopy];

  if (v18)
  {
    [v18 requestInstanceID:iDCopy value:valueCopy priority:priorityCopy withResponse:responseCopy];
  }

  else
  {
    v19 = CAFDDataLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      selfCopy = self;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = iDCopy;
      v29 = 2112;
      v30 = priorityCopy;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: Request pluginID: %@ instanceID: %@ with priority: %@ failed due to missing plugin", buf, 0x2Au);
    }

    if (responseCopy)
    {
      proxyQueue = [(_CAFdConnectionProxy *)self proxyQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __79___CAFdConnectionProxy_requestPluginID_instanceID_value_priority_withResponse___block_invoke;
      block[3] = &unk_100055340;
      v22 = responseCopy;
      dispatch_async(proxyQueue, block);
    }
  }
}

- (void)notifyPluginID:(id)d instanceID:(id)iD value:(id)value priority:(id)priority
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  priorityCopy = priority;
  agent = [(_CAFdConnectionProxy *)self agent];
  v15 = [agent _getClient:dCopy];

  if (v15)
  {
    [v15 notifyInstanceID:iDCopy value:valueCopy priority:priorityCopy];
  }

  else
  {
    v16 = CAFDDataLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      selfCopy = self;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = iDCopy;
      v23 = 2112;
      v24 = priorityCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Notify pluginID: %@ instanceID: %@ with priority: %@ failed due to missing plugin", &v17, 0x2Au);
    }
  }
}

- (void)didUpdateCurrentCarConfig:(id)config
{
  configCopy = config;
  os_unfair_lock_lock(&self->_registrationsLock);
  registrations = [(_CAFdConnectionProxy *)self registrations];
  [registrations removeAllObjects];

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
  v9 = configCopy;
  v7 = configCopy;
  [(_CAFdConnectionProxy *)self createAssertionWithAction:v8];
}

- (void)didUpdateConfig:(id)config
{
  configCopy = config;
  v5 = CAFDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_CAFdConnectionProxy *)self didUpdateConfig:configCopy];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40___CAFdConnectionProxy_didUpdateConfig___block_invoke;
  v7[3] = &unk_100055368;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  [(_CAFdConnectionProxy *)self createAssertionWithAction:v7];
}

- (void)didUpdatePluginID:(id)d values:(id)values
{
  dCopy = d;
  valuesCopy = values;
  os_unfair_lock_lock(&self->_registrationsLock);
  registrations = [(_CAFdConnectionProxy *)self registrations];
  v9 = [registrations objectForKeyedSubscript:dCopy];
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
    [valuesCopy enumerateKeysAndObjectsUsingBlock:v21];
    if ([v12 count])
    {
      v13 = CAFDClientLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [valuesCopy count];
        v15 = [v12 count];
        allKeys = [v12 allKeys];
        v17 = [allKeys componentsJoinedByString:{@", "}];
        *buf = 138544386;
        selfCopy = self;
        v26 = 2114;
        v27 = dCopy;
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
      v19 = dCopy;
      v20 = v12;
      [(_CAFdConnectionProxy *)self createAssertionWithAction:v18];
    }
  }
}

- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  responseCopy = response;
  if ([(_CAFdConnectionProxy *)self _isRegisteredForPluginID:dCopy instanceID:iDCopy])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __73___CAFdConnectionProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke;
    v15[3] = &unk_1000553E0;
    v15[4] = self;
    v16 = dCopy;
    v17 = iDCopy;
    v18 = valueCopy;
    v19 = responseCopy;
    [(_CAFdConnectionProxy *)self createAssertionWithAction:v15];
  }

  else
  {
    v14 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
    (*(responseCopy + 2))(responseCopy, 0, v14);
  }
}

- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  if ([(_CAFdConnectionProxy *)self _isRegisteredForPluginID:dCopy instanceID:iDCopy])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59___CAFdConnectionProxy_didNotifyPluginID_instanceID_value___block_invoke;
    v11[3] = &unk_100055408;
    v11[4] = self;
    v12 = dCopy;
    v13 = iDCopy;
    v14 = valueCopy;
    [(_CAFdConnectionProxy *)self createAssertionWithAction:v11];
  }
}

- (BOOL)_isRegisteredForPluginID:(id)d instanceID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  os_unfair_lock_lock(&self->_registrationsLock);
  registrations = [(_CAFdConnectionProxy *)self registrations];
  v9 = [registrations objectForKeyedSubscript:dCopy];

  LOBYTE(dCopy) = [v9 containsObject:iDCopy];
  os_unfair_lock_unlock(&self->_registrationsLock);
  return dCopy;
}

- (id)registrationsForPluginID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_registrationsLock);
  registrations = [(_CAFdConnectionProxy *)self registrations];
  v6 = [registrations objectForKeyedSubscript:dCopy];

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