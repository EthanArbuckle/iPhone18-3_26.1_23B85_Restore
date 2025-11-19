@interface DataStreamBulkSendProtocol
- (BOOL)isActive;
- (DataStreamBulkSendProtocol)initWithQueue:(id)a3 accessory:(id)a4 logIdentifier:(id)a5 bulkSendSessionContextFactory:(id)a6;
- (DataStreamProtocolDelegate)dataStream;
- (id)_createSessionCandidateWithRequestHeader:(id)a3 metadata:(id)a4;
- (id)_createSessionFromCandidate:(id)a3 queue:(id)a4;
- (id)_createSessionIdentifier;
- (id)_getBulkSendSessionForSessionIdentifier:(id)a3;
- (id)accessory;
- (void)_closeAllSessionsWithError:(id)a3;
- (void)_handleCloseMessage:(id)a3;
- (void)_handleDataMessage:(id)a3;
- (void)_handleOpenWithRequestHeader:(id)a3 payload:(id)a4;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3;
- (void)_openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)_pumpMessage:(id)a3 session:(id)a4;
- (void)_pumpReceiveFailure:(id)a3 session:(id)a4;
- (void)_removeBulkSendSessionForSessionIdentifier:(id)a3;
- (void)_sendAckMessageWithIdentifier:(id)a3 completion:(id)a4;
- (void)_sendOpenResponseWithRequestHeader:(id)a3 streamIdentifier:(id)a4;
- (void)_startSessionCandidate:(id)a3 queue:(id)a4 callback:(id)a5;
- (void)addListener:(id)a3 fileType:(id)a4;
- (void)asyncBulkSendSessionCandidate:(id)a3 didAcceptOnQueue:(id)a4 callback:(id)a5;
- (void)asyncBulkSendSessionCandidate:(id)a3 didRejectWithStatus:(unsigned __int16)a4;
- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)a3 reason:(unsigned __int16)a4 hadReceivedEof:(BOOL)a5 completion:(id)a6;
- (void)dataStream:(id)a3 didFailWithError:(id)a4;
- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamDidClose:(id)a3;
- (void)dataStreamDidOpen:(id)a3;
- (void)dataStreamInitiatedClose:(id)a3;
- (void)openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)removeListener:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation DataStreamBulkSendProtocol

- (DataStreamBulkSendProtocol)initWithQueue:(id)a3 accessory:(id)a4 logIdentifier:(id)a5 bulkSendSessionContextFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = DataStreamBulkSendProtocol;
  v15 = [(DataStreamBulkSendProtocol *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = +[NSMapTable strongToWeakObjectsMapTable];
    listeners = v16->_listeners;
    v16->_listeners = v17;

    v19 = +[NSMapTable strongToWeakObjectsMapTable];
    activeBulkSendSessions = v16->_activeBulkSendSessions;
    v16->_activeBulkSendSessions = v19;

    v16->_isConnected = 0;
    v16->_nextSessionIdentifier = 1;
    v21 = objc_retainBlock(v14);
    bulkSendSessionContextFactory = v16->_bulkSendSessionContextFactory;
    v16->_bulkSendSessionContextFactory = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    pendingBulkSendSessionContextBySessionIdentifier = v16->_pendingBulkSendSessionContextBySessionIdentifier;
    v16->_pendingBulkSendSessionContextBySessionIdentifier = v23;

    v25 = [v13 copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v25;
  }

  return v16;
}

- (void)addListener:(id)a3 fileType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamBulkSendProtocol *)self isActive];
  v9 = [(DataStreamBulkSendProtocol *)self listeners];
  v10 = [v9 objectForKey:v7];

  v11 = [(DataStreamBulkSendProtocol *)self accessory];
  if (v10)
  {
    v12 = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(v12);
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Rejecting BulkSend registration for file type %@; handler already exists", &v16, 0x16u);
    }

    [v6 accessoryDidCloseDataStream:v11];
  }

  else
  {
    v15 = [(DataStreamBulkSendProtocol *)self listeners];
    [v15 setObject:v6 forKey:v7];

    if ([(DataStreamBulkSendProtocol *)self isConnected])
    {
      [v6 accessoryDidStartListening:v11];
    }

    [(DataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v8];
  }
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendProtocol *)self isActive];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(DataStreamBulkSendProtocol *)self listeners];
  v7 = [v6 keyEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(DataStreamBulkSendProtocol *)self listeners];
        v14 = [v13 objectForKey:v12];

        if (v14 == v4)
        {
          v15 = [(DataStreamBulkSendProtocol *)self listeners];
          [v15 removeObjectForKey:v12];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = [(DataStreamBulkSendProtocol *)self accessory];
  [v4 accessoryDidCloseDataStream:v16];

  [(DataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v5];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3
{
  if ([(DataStreamBulkSendProtocol *)self isActive]!= a3)
  {
    v4 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      [(DataStreamBulkSendProtocol *)v4 isActive];
      v7 = HMFBooleanToString();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@BulkSend protocol changes active to %@", &v9, 0x16u);
    }

    v8 = [(DataStreamBulkSendProtocol *)v4 dataStream];
    [v8 protocolDidUpdateActiveStatus:v4];
  }
}

- (void)_closeAllSessionsWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    v8 = [(DataStreamBulkSendProtocol *)v5 listeners];
    v9 = [v8 count];
    v10 = [(DataStreamBulkSendProtocol *)v5 activeBulkSendSessions];
    *buf = 138543874;
    v43 = v7;
    v44 = 2048;
    v45 = v9;
    v46 = 2048;
    v47 = [v10 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Session closed; removing %lu listeners and closing %lu sessions", buf, 0x20u);
  }

  [(DataStreamBulkSendProtocol *)v5 setIsConnected:0];
  if (v4)
  {
    v40 = NSUnderlyingErrorKey;
    v41 = v4;
    v11 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [NSError errorWithDomain:NSURLErrorDomain code:-1005 userInfo:v11];
  v13 = [(DataStreamBulkSendProtocol *)v5 accessory];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = [(DataStreamBulkSendProtocol *)v5 activeBulkSendSessions];
  v15 = [v14 objectEnumerator];

  v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        if (v20)
        {
          [v20 asyncHandleRemoteCloseWithError:v12];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = [(DataStreamBulkSendProtocol *)v5 listeners];
  v22 = [v21 objectEnumerator];

  v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v30 + 1) + 8 * v26);
        if (v27)
        {
          [v27 accessoryDidCloseDataStream:v13];
        }

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v28 = [(DataStreamBulkSendProtocol *)v5 listeners];
  [v28 removeAllObjects];

  v29 = [(DataStreamBulkSendProtocol *)v5 activeBulkSendSessions];
  [v29 removeAllObjects];
}

- (BOOL)isActive
{
  v2 = [(DataStreamBulkSendProtocol *)self listeners];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)dataStream:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(v6);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream failed with error; cleaning up. (%@)", &v9, 0x16u);
  }

  [(DataStreamBulkSendProtocol *)v6 _closeAllSessionsWithError:v5];
}

- (void)dataStreamInitiatedClose:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10007FAFC(v3);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@DataStream initiated closing...", &v6, 0xCu);
  }
}

- (void)dataStreamDidClose:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10007FAFC(v3);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@DataStream closed; cleaning up", &v6, 0xCu);
  }

  [(DataStreamBulkSendProtocol *)v3 _closeAllSessionsWithError:0];
}

- (void)dataStreamDidOpen:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10007FAFC(v3);
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@DataStream did open; connected.", buf, 0xCu);
  }

  [(DataStreamBulkSendProtocol *)v3 setIsConnected:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(DataStreamBulkSendProtocol *)v3 listeners];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12)
        {
          v13 = [(DataStreamBulkSendProtocol *)v3 accessory];
          [v12 accessoryDidStartListening:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6
{
  v8 = a4;
  v9 = a6;
  if (![(DataStreamBulkSendProtocol *)self isConnected])
  {
    v10 = self;
    v11 = sub_10007FAA0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = sub_10007FAFC(v10);
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    v13 = "%{public}@BulkSend dropping message because it is not running (topic=%@).";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, &v16, 0x16u);

    goto LABEL_7;
  }

  if (![v8 isEqualToString:@"data"])
  {
    if ([v8 isEqualToString:@"close"])
    {
      [(DataStreamBulkSendProtocol *)self _handleCloseMessage:v9];
      goto LABEL_8;
    }

    v10 = self;
    v11 = sub_10007FAA0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = sub_10007FAFC(v10);
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    v13 = "%{public}@DataSend received unexpected event '%@'";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  [(DataStreamBulkSendProtocol *)self _handleDataMessage:v9];
LABEL_8:
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(DataStreamBulkSendProtocol *)self isConnected])
  {
    if ([v9 isEqualToString:@"open"])
    {
      [(DataStreamBulkSendProtocol *)self _handleOpenWithRequestHeader:v10 payload:v11];
    }

    else
    {
      v12 = self;
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_10007FAFC(v12);
        v15 = 138543618;
        v16 = v14;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@DataSend received unexpected request '%@'", &v15, 0x16u);
      }
    }
  }
}

- (void)asyncBulkSendSessionCandidate:(id)a3 didAcceptOnQueue:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DataStreamBulkSendProtocol *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100046614;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)asyncBulkSendSessionCandidate:(id)a3 didRejectWithStatus:(unsigned __int16)a4
{
  v6 = a3;
  v7 = [(DataStreamBulkSendProtocol *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000466E0;
  block[3] = &unk_100273AD0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)a3 reason:(unsigned __int16)a4 hadReceivedEof:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(DataStreamBulkSendProtocol *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000467E0;
  v15[3] = &unk_100273AF8;
  v15[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

- (id)_createSessionCandidateWithRequestHeader:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(v7);
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive candidate session (header %@)", &v13, 0x16u);
  }

  v11 = [[DataStreamBulkSendSessionCandidate alloc] initWithProtocol:v7 requestHeader:v6 metadata:v8];

  return v11;
}

- (id)_createSessionFromCandidate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v9 = [DataStreamBulkSendSession alloc];
  v10 = [(DataStreamBulkSendProtocol *)self logIdentifier];
  v11 = [(DataStreamBulkSendSession *)v9 initWithProtocol:self sessionIdentifier:v8 queue:v6 logIdentifier:v10];

  v12 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = sub_10007FAFC(v12);
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive session with streamIdentifier=%@", &v18, 0x16u);
  }

  v15 = [(DataStreamBulkSendProtocol *)v12 activeBulkSendSessions];
  [v15 setObject:v11 forKey:v8];

  v16 = [v7 requestHeader];

  [(DataStreamBulkSendProtocol *)v12 _sendOpenResponseWithRequestHeader:v16 streamIdentifier:v8];

  return v11;
}

- (void)_sendOpenResponseWithRequestHeader:(id)a3 streamIdentifier:(id)a4
{
  v9 = @"streamId";
  v10 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(DataStreamBulkSendProtocol *)self _sendOpenResponseWithRequestHeader:v7 payload:v8 status:0];
}

- (id)_createSessionIdentifier
{
  v3 = [(DataStreamBulkSendProtocol *)self nextSessionIdentifier];
  [(DataStreamBulkSendProtocol *)self setNextSessionIdentifier:(v3 + 1)];

  return [NSNumber numberWithUnsignedInt:v3];
}

- (void)_startSessionCandidate:(id)a3 queue:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DataStreamBulkSendProtocol *)self _createSessionFromCandidate:v8 queue:v9];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v8 pendingReads];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(DataStreamBulkSendProtocol *)self _pumpMessage:*(*(&v24 + 1) + 8 * v16) session:v11];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = [v8 receivedFailure];

  if (v17)
  {
    v18 = [v8 receivedFailure];
    [(DataStreamBulkSendProtocol *)self _pumpReceiveFailure:v18 session:v11];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000471C0;
  v21[3] = &unk_100273720;
  v22 = v11;
  v23 = v10;
  v19 = v11;
  v20 = v10;
  dispatch_async(v9, v21);
}

- (id)_getBulkSendSessionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendProtocol *)self activeBulkSendSessions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)_removeBulkSendSessionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendProtocol *)self activeBulkSendSessions];
  [v5 removeObjectForKey:v4];
}

- (void)_handleOpenWithRequestHeader:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 objectForKeyedSubscript:@"target"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v7 objectForKeyedSubscript:@"metadata"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v10)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = sub_10007FAFC(v18);
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Dropping 'open' because it is missing required keys (type=%@, target=%@)", &v30, 0x20u);
    }

    [(DataStreamBulkSendProtocol *)v18 _sendOpenResponseWithRequestHeader:v6 status:4];
  }

  else
  {
    v21 = [(DataStreamBulkSendProtocol *)self listeners];
    v22 = [v21 objectForKey:v10];

    v23 = self;
    v24 = sub_10007FAA0();
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v26 = sub_10007FAFC(v23);
        v30 = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@Received 'open' with type=%@; passing to listener", &v30, 0x16u);
      }

      v27 = [(DataStreamBulkSendProtocol *)v23 _createSessionCandidateWithRequestHeader:v6 metadata:v16];
      v28 = [(DataStreamBulkSendProtocol *)v23 accessory];
      [v22 accessory:v28 didReceiveBulkSessionCandidate:v27];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v29 = sub_10007FAFC(v23);
        v30 = 138543618;
        v31 = v29;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%{public}@Received 'open' for type=%@ but no active listener accepted it", &v30, 0x16u);
      }

      [(DataStreamBulkSendProtocol *)v23 _maybeSubmitMetricForDroppedOpenRequestOfType:v10];
      [(DataStreamBulkSendProtocol *)v23 _sendOpenResponseWithRequestHeader:v6 bulkSendStatus:1];
    }
  }
}

- (void)_handleCloseMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"reason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v7)
  {
    v12 = self;
    v13 = sub_10007FAA0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v14 = sub_10007FAFC(v12);
    v19 = 138543362;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Close dropped because streamIdentifier was not included", &v19, 0xCu);
LABEL_20:

    goto LABEL_21;
  }

  if (v10)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_100282380;
  }

  v23 = @"reason";
  v24 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = [NSError errorWithDomain:@"DKErrorDomain" code:28 userInfo:v11];

  v13 = [(DataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
  v14 = self;
  v15 = sub_10007FAA0();
  v16 = v15;
  if (!v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_10007FAFC(v14);
      v19 = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Close packet for streamIdentifier=%@ dropped because no session is active", &v19, 0x16u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10007FAFC(v14);
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Received close packet for stream identifier: %@", &v19, 0x16u);
  }

  [(DataStreamBulkSendProtocol *)v14 _pumpReceiveFailure:v12 session:v13];
LABEL_21:
}

- (void)_handleDataMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = self;
    v9 = sub_10007FAA0();
    if (!os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v10 = sub_10007FAFC(v8);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_ERROR, "%{public}@Data packet dropped because no session identifier was present", &v12, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  v8 = [(DataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
  if (!v8)
  {
    v9 = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_10007FAFC(v9);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@Data packet for streamIdentifier=%@ dropped because no session is active", &v12, 0x16u);
    }

    goto LABEL_11;
  }

  [(DataStreamBulkSendProtocol *)self _pumpMessage:v4 session:v8];
LABEL_13:
}

- (void)_pumpMessage:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"packets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 objectForKeyedSubscript:@"endOfStream"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_13;
  }

  v14 = [v13 BOOLValue];
  v15 = v14;
  if (v10)
  {
LABEL_13:
    v16 = [v10 count];
    if ((v15 & 1) != 0 || v16)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v14)
  {
    v15 = 1;
LABEL_18:
    [v6 asyncHandleIncomingPackets:v10 isEof:v15];
    goto LABEL_19;
  }

LABEL_15:
  v17 = self;
  v18 = sub_10007FAA0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = sub_10007FAFC(v17);
    v20 = 138543362;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Received message with no packets", &v20, 0xCu);
  }

LABEL_19:
}

- (void)_pumpReceiveFailure:(id)a3 session:(id)a4
{
  v6 = a4;
  [v6 asyncHandleRemoteCloseWithError:a3];
  v7 = [v6 sessionIdentifier];

  [(DataStreamBulkSendProtocol *)self _removeBulkSendSessionForSessionIdentifier:v7];
}

- (void)_sendAckMessageWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamBulkSendProtocol *)self dataStream];
  if (v8)
  {
    v20[0] = @"streamId";
    v20[1] = @"endOfStream";
    v21[0] = v6;
    v21[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = sub_10007FAFC(v10);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Sending 'ack' for sid=%@", &v16, 0x16u);
    }

    [v8 sendEventForProtocol:@"dataSend" topic:@"ack" payload:v9 completion:v7];
  }

  else
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@No data stream found", &v16, 0xCu);
    }

    v9 = [NSError errorWithDomain:@"DKErrorDomain" code:1 userInfo:0];
    v7[2](v7, v9);
  }
}

- (void)openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(DataStreamBulkSendProtocol *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100048438;
  v23[3] = &unk_100273B20;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

- (void)_openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(DataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = [(DataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v50[0] = @"type";
  v50[1] = @"streamId";
  v50[2] = @"target";
  v50[3] = @"reason";
  v39 = v12;
  v51[0] = v12;
  v51[1] = v18;
  v51[2] = @"controller";
  v51[3] = v13;
  v19 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
  v20 = [v19 mutableCopy];

  if (v14 && [v14 count])
  {
    [v20 setObject:v14 forKeyedSubscript:@"metadata"];
  }

  v21 = [(DataStreamBulkSendProtocol *)self bulkSendSessionContextFactory];
  v22 = (v21)[2](v21, v16);

  v23 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  [v23 setObject:v22 forKeyedSubscript:v18];

  v24 = [v22 handleOpenRequestResponseTimer];
  [v24 setDelegate:self];

  v25 = [(DataStreamBulkSendProtocol *)self queue];
  v26 = [v22 handleOpenRequestResponseTimer];
  [v26 setDelegateQueue:v25];

  v27 = [v22 handleOpenRequestResponseTimer];
  [v27 resume];

  v28 = [v22 sendCloseEventTimer];
  [v28 setDelegate:self];

  v29 = [(DataStreamBulkSendProtocol *)self queue];
  v30 = [v22 sendCloseEventTimer];
  [v30 setDelegateQueue:v29];

  v31 = [v22 sendCloseEventTimer];
  [v31 resume];

  v32 = self;
  v33 = sub_10007FAA0();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = sub_10007FAFC(v32);
    *buf = 138543874;
    v45 = v34;
    v46 = 2112;
    v47 = v18;
    v48 = 2112;
    v49 = v14;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}@Starting bulk session with identifier: %@ and metadata: %@", buf, 0x20u);
  }

  v35 = [(DataStreamBulkSendProtocol *)v32 dataStream];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100048844;
  v40[3] = &unk_100273B88;
  v40[4] = v32;
  v41 = v18;
  v42 = v15;
  v43 = v16;
  v36 = v15;
  v37 = v16;
  v38 = v18;
  [v35 sendRequestForProtocol:@"dataSend" topic:@"open" payload:v20 completion:v40];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(v5);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v30;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      v12 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      v13 = [v12 objectForKey:v11];

      v14 = [v13 handleOpenRequestResponseTimer];

      if (v14 == v4)
      {
        [v13 setHandleOpenRequestResponseTimer:0];
        v16 = v11;
        v17 = self;
        v18 = sub_10007FAA0();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v19 = sub_10007FAFC(v17);
        *buf = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v16;
        v20 = "%{public}@Session with identifier: %@ open request response timer has expired";
        goto LABEL_15;
      }

      v15 = [v13 sendCloseEventTimer];

      if (v15 == v4)
      {
        [v13 setSendCloseEventTimer:0];
        v21 = v11;
        v22 = self;
        v18 = sub_10007FAA0();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v19 = sub_10007FAFC(v22);
        *buf = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v21;
        v20 = "%{public}@Session with identifier: %@ send event close timer has expired";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v20, buf, 0x16u);

LABEL_16:
        if (!v11)
        {
          goto LABEL_20;
        }

        v23 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
        v24 = [v23 objectForKeyedSubscript:v11];

        if ([v24 shouldCloseSessionWithTimeoutReason])
        {
          v25 = self;
          v26 = sub_10007FAA0();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
LABEL_24:

            goto LABEL_25;
          }

          v27 = sub_10007FAFC(v25);
          *buf = 138543362;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping invoking the session start callback since handle response timer hasn't expired", buf, 0xCu);
        }

        else
        {
          v25 = [v24 sessionStartCallback];
          v26 = [NSError errorWithDomain:@"DKErrorDomain" code:12 userInfo:0];
          (v25->_dataStream)(v25, 0, v26);
          v27 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
          [v27 setObject:0 forKeyedSubscript:v11];
        }

        goto LABEL_24;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

LABEL_20:
  v11 = self;
  v24 = sub_10007FAA0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v28 = sub_10007FAFC(v11);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@Could not find expired timer for session with identifier: %@", buf, 0x16u);
  }

LABEL_25:
}

- (DataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (id)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end