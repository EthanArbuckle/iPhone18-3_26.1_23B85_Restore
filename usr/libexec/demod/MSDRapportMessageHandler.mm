@interface MSDRapportMessageHandler
- (MSDRapportMessageHandler)initWithObserver:(id)observer;
- (MSDRapportMessageHandlerProtocol)observer;
- (id)_extractRapportOptionsFromMessage:(id)message;
- (id)_extractRapportPayloadFromMessage:(id)message;
- (id)_findSenderRPClientForDevice:(id)device;
- (unint64_t)_getCurrentProtocolVersion;
- (void)_ensureListenerRPClientStartedWithCompletion:(id)completion;
- (void)_ensureSenderRPClientStartedForDevice:(id)device withCompletion:(id)completion;
- (void)_invalidateListenerRPClient;
- (void)_invalidateSenderRPClientForDevice:(id)device;
- (void)_listenForIncomingEventMessageOfID:(id)d;
- (void)_listenForIncomingRequestMessageOfID:(id)d;
- (void)_sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)_sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)invalidateOutgoingConnectionForDevice:(id)device;
- (void)listenForIncomingEventMessageOfID:(id)d;
- (void)listenForIncomingRequestMessageOfID:(id)d;
- (void)sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
@end

@implementation MSDRapportMessageHandler

- (MSDRapportMessageHandler)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = MSDRapportMessageHandler;
  v5 = [(MSDRapportMessageHandler *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RapportMessageHandler", 0);
    [(MSDRapportMessageHandler *)v5 setQueue:v6];

    [(MSDRapportMessageHandler *)v5 setObserver:observerCopy];
    v7 = [NSMutableArray arrayWithCapacity:4];
    [(MSDRapportMessageHandler *)v5 setSenderRPClients:v7];
  }

  return v5;
}

- (void)listenForIncomingRequestMessageOfID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B6C;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)listenForIncomingEventMessageOfID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098CAC;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (completionCopy)
  {
    queue = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098E34;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = messageCopy;
    v14 = deviceCopy;
    v15 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (completionCopy)
  {
    queue = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098FC0;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = messageCopy;
    v14 = deviceCopy;
    v15 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)invalidateOutgoingConnectionForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099104;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_ensureListenerRPClientStartedWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  if (completionCopy)
  {
    listenerRPClient = [(MSDRapportMessageHandler *)self listenerRPClient];

    if (listenerRPClient)
    {
      listenerRPClient2 = [(MSDRapportMessageHandler *)self listenerRPClient];
      completionCopy[2](completionCopy, listenerRPClient2, 0);
    }

    else
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Creating RPCompanionLinkClient for listener!", buf, 2u);
      }

      objc_initWeak(buf, self);
      v9 = objc_alloc_init(RPCompanionLinkClient);
      [(MSDRapportMessageHandler *)self setListenerRPClient:v9];

      queue2 = [(MSDRapportMessageHandler *)self queue];
      listenerRPClient3 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient3 setDispatchQueue:queue2];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100099428;
      v19[3] = &unk_100169C78;
      objc_copyWeak(&v20, buf);
      listenerRPClient4 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient4 setInterruptionHandler:v19];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000994A8;
      v17[3] = &unk_100169C78;
      objc_copyWeak(&v18, buf);
      listenerRPClient5 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient5 setInvalidationHandler:v17];

      listenerRPClient6 = [(MSDRapportMessageHandler *)self listenerRPClient];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100099528;
      v15[3] = &unk_10016BCE8;
      v15[4] = self;
      v16 = completionCopy;
      [listenerRPClient6 activateWithCompletion:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_invalidateListenerRPClient
{
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  listenerRPClient = [(MSDRapportMessageHandler *)self listenerRPClient];

  if (listenerRPClient)
  {
    listenerRPClient2 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [listenerRPClient2 setInvalidationHandler:0];

    listenerRPClient3 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [listenerRPClient3 invalidate];

    [(MSDRapportMessageHandler *)self setListenerRPClient:0];
  }
}

- (void)_listenForIncomingRequestMessageOfID:(id)d
{
  dCopy = d;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering request of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000997FC;
  v8[3] = &unk_10016BD60;
  v7 = dCopy;
  v9 = v7;
  objc_copyWeak(&v11, buf);
  selfCopy = self;
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

- (void)_listenForIncomingEventMessageOfID:(id)d
{
  dCopy = d;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering event of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100099DF4;
  v8[3] = &unk_10016BDB0;
  v7 = dCopy;
  v9 = v7;
  objc_copyWeak(&v10, buf);
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (id)_findSenderRPClientForDevice:(id)device
{
  deviceCopy = device;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(MSDRapportMessageHandler *)self senderRPClients];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        destinationDevice = [v8 destinationDevice];
        identifier = [destinationDevice identifier];
        rpDevice = [deviceCopy rpDevice];
        identifier2 = [rpDevice identifier];
        v13 = [identifier isEqualToString:identifier2];

        if (v13)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_ensureSenderRPClientStartedForDevice:(id)device withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  if (completionCopy)
  {
    v9 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:deviceCopy];
    if (v9)
    {
      senderRPClients = [(MSDRapportMessageHandler *)self senderRPClients];
      lastObject = [senderRPClients lastObject];

      if (lastObject != v9)
      {
        senderRPClients2 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients2 removeObject:v9];

        senderRPClients3 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients3 addObject:v9];
      }

      completionCopy[2](completionCopy, v9, 0);
    }

    else
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = deviceCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Creating RPCompanionLinkClient for device: %{public}@", buf, 0xCu);
      }

      senderRPClients4 = [(MSDRapportMessageHandler *)self senderRPClients];
      v16 = [senderRPClients4 count] > 3;

      if (v16)
      {
        v17 = sub_100063A54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Removing", buf, 2u);
        }

        senderRPClients5 = [(MSDRapportMessageHandler *)self senderRPClients];
        firstObject = [senderRPClients5 firstObject];

        senderRPClients6 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients6 removeObjectAtIndex:0];

        [firstObject setInvalidationHandler:0];
        [firstObject invalidate];
      }

      objc_initWeak(buf, self);
      v21 = objc_alloc_init(RPCompanionLinkClient);
      queue2 = [(MSDRapportMessageHandler *)self queue];
      [v21 setDispatchQueue:queue2];

      [v21 setControlFlags:8454];
      rpDevice = [deviceCopy rpDevice];
      [v21 setDestinationDevice:rpDevice];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10009A720;
      v39[3] = &unk_10016BDD8;
      v24 = deviceCopy;
      v40 = v24;
      objc_copyWeak(&v41, buf);
      [v21 setInterruptionHandler:v39];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10009A784;
      v36[3] = &unk_10016BDD8;
      v25 = v24;
      v37 = v25;
      objc_copyWeak(&v38, buf);
      [v21 setInvalidationHandler:v36];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10009A7E8;
      v33[3] = &unk_10016BDD8;
      v26 = v25;
      v34 = v26;
      objc_copyWeak(&v35, buf);
      [v21 setDisconnectHandler:v33];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10009A84C;
      v28[3] = &unk_10016A618;
      v29 = v26;
      v32 = completionCopy;
      selfCopy = self;
      v27 = v21;
      v31 = v27;
      [v27 activateWithCompletion:v28];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v38);

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_invalidateSenderRPClientForDevice:(id)device
{
  deviceCopy = device;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:deviceCopy];
  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Invalidating sender RPCompanionLinkClient for device: %{public}@", &v9, 0xCu);
    }

    [v6 setInvalidationHandler:0];
    [v6 invalidate];
    senderRPClients = [(MSDRapportMessageHandler *)self senderRPClients];
    [senderRPClients removeObject:v6];
  }
}

- (void)_sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  identifier = [messageCopy identifier];
  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifier;
    v25 = 2114;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending request of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  if (!deviceCopy)
  {
    v15 = @"Cannot find specified demo peer.";
    v16 = 3727741104;
LABEL_8:
    v14 = [NSError errorDomainMSDWithCode:v16 message:v15];
    completionCopy[2](completionCopy, 0, v14);
    goto LABEL_9;
  }

  if (([deviceCopy authenticated] & 1) == 0)
  {
    v15 = @"Cannot operate on demo peer not already authenticated.";
    v16 = 3727741106;
    goto LABEL_8;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009AC3C;
  v17[3] = &unk_10016BE28;
  v18 = deviceCopy;
  v22 = completionCopy;
  selfCopy = self;
  v20 = messageCopy;
  v21 = identifier;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v18 withCompletion:v17];

  v14 = v18;
LABEL_9:
}

- (void)_sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  identifier = [messageCopy identifier];
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifier;
    v25 = 2114;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending event of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009B13C;
  v17[3] = &unk_10016BE28;
  v21 = identifier;
  v22 = completionCopy;
  v18 = deviceCopy;
  selfCopy = self;
  v20 = messageCopy;
  v13 = identifier;
  v14 = messageCopy;
  v15 = completionCopy;
  v16 = deviceCopy;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v16 withCompletion:v17];
}

- (unint64_t)_getCurrentProtocolVersion
{
  if (!os_variant_has_internal_content())
  {
    return 3;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  mockPeerProtocolVersion = [v2 mockPeerProtocolVersion];

  if (mockPeerProtocolVersion)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = mockPeerProtocolVersion;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Use mock protocol version: %@", &v7, 0xCu);
    }

    unsignedIntegerValue = [mockPeerProtocolVersion unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  return unsignedIntegerValue;
}

- (id)_extractRapportPayloadFromMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSMutableDictionary dictionary];
  payload = [messageCopy payload];

  if (payload)
  {
    payload2 = [messageCopy payload];
    [v5 addEntriesFromDictionary:payload2];
  }

  if ([(MSDRapportMessageHandler *)self _getCurrentProtocolVersion])
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(MSDRapportMessageHandler *)self _getCurrentProtocolVersion]];
    [v5 setObject:v8 forKey:@"ProtocolVersion"];
  }

  v9 = [v5 copy];

  return v9;
}

- (id)_extractRapportOptionsFromMessage:(id)message
{
  messageCopy = message;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10009B748;
  v13 = sub_10009B758;
  v14 = [NSMutableDictionary dictionaryWithCapacity:0];
  options = [messageCopy options];

  if (options)
  {
    options2 = [messageCopy options];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009B760;
    v8[3] = &unk_10016BE78;
    v8[4] = &v9;
    [options2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = [v10[5] copy];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (MSDRapportMessageHandlerProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end