@interface MSDRapportMessageHandler
- (MSDRapportMessageHandler)initWithObserver:(id)a3;
- (MSDRapportMessageHandlerProtocol)observer;
- (id)_extractRapportOptionsFromMessage:(id)a3;
- (id)_extractRapportPayloadFromMessage:(id)a3;
- (id)_findSenderRPClientForDevice:(id)a3;
- (unint64_t)_getCurrentProtocolVersion;
- (void)_ensureListenerRPClientStartedWithCompletion:(id)a3;
- (void)_ensureSenderRPClientStartedForDevice:(id)a3 withCompletion:(id)a4;
- (void)_invalidateListenerRPClient;
- (void)_invalidateSenderRPClientForDevice:(id)a3;
- (void)_listenForIncomingEventMessageOfID:(id)a3;
- (void)_listenForIncomingRequestMessageOfID:(id)a3;
- (void)_sendOutgoingEventMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5;
- (void)_sendOutgoingRequestMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5;
- (void)invalidateOutgoingConnectionForDevice:(id)a3;
- (void)listenForIncomingEventMessageOfID:(id)a3;
- (void)listenForIncomingRequestMessageOfID:(id)a3;
- (void)sendOutgoingEventMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5;
- (void)sendOutgoingRequestMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5;
@end

@implementation MSDRapportMessageHandler

- (MSDRapportMessageHandler)initWithObserver:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDRapportMessageHandler;
  v5 = [(MSDRapportMessageHandler *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RapportMessageHandler", 0);
    [(MSDRapportMessageHandler *)v5 setQueue:v6];

    [(MSDRapportMessageHandler *)v5 setObserver:v4];
    v7 = [NSMutableArray arrayWithCapacity:4];
    [(MSDRapportMessageHandler *)v5 setSenderRPClients:v7];
  }

  return v5;
}

- (void)listenForIncomingRequestMessageOfID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B6C;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)listenForIncomingEventMessageOfID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098CAC;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sendOutgoingRequestMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  if (v10)
  {
    v11 = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098E34;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)sendOutgoingEventMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  if (v10)
  {
    v11 = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098FC0;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)invalidateOutgoingConnectionForDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099104;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_ensureListenerRPClientStartedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(MSDRapportMessageHandler *)self listenerRPClient];

    if (v6)
    {
      v7 = [(MSDRapportMessageHandler *)self listenerRPClient];
      v4[2](v4, v7, 0);
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

      v10 = [(MSDRapportMessageHandler *)self queue];
      v11 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [v11 setDispatchQueue:v10];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100099428;
      v19[3] = &unk_100169C78;
      objc_copyWeak(&v20, buf);
      v12 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [v12 setInterruptionHandler:v19];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000994A8;
      v17[3] = &unk_100169C78;
      objc_copyWeak(&v18, buf);
      v13 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [v13 setInvalidationHandler:v17];

      v14 = [(MSDRapportMessageHandler *)self listenerRPClient];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100099528;
      v15[3] = &unk_10016BCE8;
      v15[4] = self;
      v16 = v4;
      [v14 activateWithCompletion:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_invalidateListenerRPClient
{
  v3 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MSDRapportMessageHandler *)self listenerRPClient];

  if (v4)
  {
    v5 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [v5 setInvalidationHandler:0];

    v6 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [v6 invalidate];

    [(MSDRapportMessageHandler *)self setListenerRPClient:0];
  }
}

- (void)_listenForIncomingRequestMessageOfID:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering request of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000997FC;
  v8[3] = &unk_10016BD60;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v11, buf);
  v10 = self;
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

- (void)_listenForIncomingEventMessageOfID:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering event of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100099DF4;
  v8[3] = &unk_10016BDB0;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, buf);
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (id)_findSenderRPClientForDevice:(id)a3
{
  v4 = a3;
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
        v9 = [v8 destinationDevice];
        v10 = [v9 identifier];
        v11 = [v4 rpDevice];
        v12 = [v11 identifier];
        v13 = [v10 isEqualToString:v12];

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

- (void)_ensureSenderRPClientStartedForDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:v6];
    if (v9)
    {
      v10 = [(MSDRapportMessageHandler *)self senderRPClients];
      v11 = [v10 lastObject];

      if (v11 != v9)
      {
        v12 = [(MSDRapportMessageHandler *)self senderRPClients];
        [v12 removeObject:v9];

        v13 = [(MSDRapportMessageHandler *)self senderRPClients];
        [v13 addObject:v9];
      }

      v7[2](v7, v9, 0);
    }

    else
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Creating RPCompanionLinkClient for device: %{public}@", buf, 0xCu);
      }

      v15 = [(MSDRapportMessageHandler *)self senderRPClients];
      v16 = [v15 count] > 3;

      if (v16)
      {
        v17 = sub_100063A54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Removing", buf, 2u);
        }

        v18 = [(MSDRapportMessageHandler *)self senderRPClients];
        v19 = [v18 firstObject];

        v20 = [(MSDRapportMessageHandler *)self senderRPClients];
        [v20 removeObjectAtIndex:0];

        [v19 setInvalidationHandler:0];
        [v19 invalidate];
      }

      objc_initWeak(buf, self);
      v21 = objc_alloc_init(RPCompanionLinkClient);
      v22 = [(MSDRapportMessageHandler *)self queue];
      [v21 setDispatchQueue:v22];

      [v21 setControlFlags:8454];
      v23 = [v6 rpDevice];
      [v21 setDestinationDevice:v23];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10009A720;
      v39[3] = &unk_10016BDD8;
      v24 = v6;
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
      v32 = v7;
      v30 = self;
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

- (void)_invalidateSenderRPClientForDevice:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:v4];
  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Invalidating sender RPCompanionLinkClient for device: %{public}@", &v9, 0xCu);
    }

    [v6 setInvalidationHandler:0];
    [v6 invalidate];
    v8 = [(MSDRapportMessageHandler *)self senderRPClients];
    [v8 removeObject:v6];
  }
}

- (void)_sendOutgoingRequestMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 identifier];
  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending request of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  if (!v9)
  {
    v15 = @"Cannot find specified demo peer.";
    v16 = 3727741104;
LABEL_8:
    v14 = [NSError errorDomainMSDWithCode:v16 message:v15];
    v10[2](v10, 0, v14);
    goto LABEL_9;
  }

  if (([v9 authenticated] & 1) == 0)
  {
    v15 = @"Cannot operate on demo peer not already authenticated.";
    v16 = 3727741106;
    goto LABEL_8;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009AC3C;
  v17[3] = &unk_10016BE28;
  v18 = v9;
  v22 = v10;
  v19 = self;
  v20 = v8;
  v21 = v12;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v18 withCompletion:v17];

  v14 = v18;
LABEL_9:
}

- (void)_sendOutgoingEventMessage:(id)a3 toDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v11;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending event of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009B13C;
  v17[3] = &unk_10016BE28;
  v21 = v11;
  v22 = v10;
  v18 = v9;
  v19 = self;
  v20 = v8;
  v13 = v11;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v16 withCompletion:v17];
}

- (unint64_t)_getCurrentProtocolVersion
{
  if (!os_variant_has_internal_content())
  {
    return 3;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  v3 = [v2 mockPeerProtocolVersion];

  if (v3)
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Use mock protocol version: %@", &v7, 0xCu);
    }

    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (id)_extractRapportPayloadFromMessage:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 payload];

  if (v6)
  {
    v7 = [v4 payload];
    [v5 addEntriesFromDictionary:v7];
  }

  if ([(MSDRapportMessageHandler *)self _getCurrentProtocolVersion])
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(MSDRapportMessageHandler *)self _getCurrentProtocolVersion]];
    [v5 setObject:v8 forKey:@"ProtocolVersion"];
  }

  v9 = [v5 copy];

  return v9;
}

- (id)_extractRapportOptionsFromMessage:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10009B748;
  v13 = sub_10009B758;
  v14 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [v3 options];

  if (v4)
  {
    v5 = [v3 options];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009B760;
    v8[3] = &unk_10016BE78;
    v8[4] = &v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
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