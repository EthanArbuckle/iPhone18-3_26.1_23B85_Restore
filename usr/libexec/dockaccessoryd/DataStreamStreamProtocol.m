@interface DataStreamStreamProtocol
- (BOOL)isActive;
- (DataStreamProtocolDelegate)dataStream;
- (DataStreamStreamProtocol)initWithDataStream:(id)a3;
- (void)_closeAllSocketsWithError:(id)a3;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3;
- (void)_reevaluateTrafficClassForDataStream;
- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamInitiatedClose:(id)a3;
- (void)registerSocket:(id)a3;
- (void)sendData:(id)a3 socket:(id)a4 completion:(id)a5;
- (void)unregisterSocket:(id)a3;
@end

@implementation DataStreamStreamProtocol

- (DataStreamStreamProtocol)initWithDataStream:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DataStreamStreamProtocol;
  v5 = [(DataStreamStreamProtocol *)&v9 init];
  if (v5)
  {
    v6 = +[NSMapTable strongToWeakObjectsMapTable];
    sockets = v5->_sockets;
    v5->_sockets = v6;

    objc_storeWeak(&v5->_dataStream, v4);
  }

  return v5;
}

- (void)registerSocket:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamStreamProtocol *)self isActive];
  v6 = [(DataStreamStreamProtocol *)self sockets];
  v7 = [v4 applicationProtocolName];
  v11 = [v6 objectForKey:v7];

  v8 = [NSError hmfErrorWithCode:12];
  [v11 closeWithError:v8];

  v9 = [(DataStreamStreamProtocol *)self sockets];
  v10 = [v4 applicationProtocolName];
  [v9 setObject:v4 forKey:v10];

  [(DataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v5];
}

- (void)unregisterSocket:(id)a3
{
  v10 = a3;
  v4 = [(DataStreamStreamProtocol *)self isActive];
  v5 = [(DataStreamStreamProtocol *)self sockets];
  v6 = [v10 applicationProtocolName];
  v7 = [v5 objectForKey:v6];

  if (v7 == v10)
  {
    v8 = [(DataStreamStreamProtocol *)self sockets];
    v9 = [v10 applicationProtocolName];
    [v8 removeObjectForKey:v9];

    [(DataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v4];
    [(DataStreamStreamProtocol *)self _reevaluateTrafficClassForDataStream];
  }
}

- (void)_reevaluateTrafficClassForDataStream
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(NSMapTable *)self->_sockets objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 trafficClass];
        if (v11 > v7)
        {
          v12 = v11;
          v13 = [v10 applicationProtocolName];

          v6 = v13;
          v7 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);

    if (v6)
    {
      v14 = self;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = sub_10007FAFC(v14);
        *buf = 138543874;
        v25 = v16;
        v26 = 2048;
        v27 = v7;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (requested by: '%@')", buf, 0x20u);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v7 = 0;
  }

  v17 = self;
  v15 = sub_10007FAA0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = sub_10007FAFC(v17);
    *buf = 138543618;
    v25 = v18;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (reset)", buf, 0x16u);
  }

  v6 = 0;
LABEL_17:

  v19 = [(DataStreamStreamProtocol *)self dataStream];
  [v19 setTrafficClass:v7];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3
{
  if ([(DataStreamStreamProtocol *)self isActive]!= a3)
  {
    v4 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      [(DataStreamStreamProtocol *)v4 isActive];
      v7 = HMFBooleanToString();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Stream protocol changes active to %@", &v9, 0x16u);
    }

    v8 = [(DataStreamStreamProtocol *)v4 dataStream];
    [v8 protocolDidUpdateActiveStatus:v4];
  }
}

- (void)sendData:(id)a3 socket:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DataStreamStreamProtocol *)self dataStream];
  v12 = [v9 applicationProtocolName];

  v17 = @"data";
  v18 = v10;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000300B0;
  v15[3] = &unk_100273790;
  v16 = v8;
  v14 = v8;
  [v11 sendEventForProtocol:@"stream" topic:v12 payload:v13 completion:v15];
}

- (BOOL)isActive
{
  v2 = [(DataStreamStreamProtocol *)self sockets];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)dataStreamInitiatedClose:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(DataStreamStreamProtocol *)self sockets:a3];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) closeInitiated];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(DataStreamStreamProtocol *)self sockets];
  v11 = [v10 objectForKey:v8];

  if (!v11)
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10007FAFC(v13);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v16 = "%{public}@No active socket, dropping packet with topic=%@ payload=%@";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, &v19, 0x20u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = [v9 objectForKeyedSubscript:@"data"];

  if (!v12)
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v16 = "%{public}@No data field in payload, dropping packet with topic=%@ payload=%@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v13 = [v9 objectForKeyedSubscript:@"data"];
  [v11 handleIncomingData:v13];
LABEL_10:
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(v12);
    v15 = 138544130;
    v16 = v14;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support request message with topic=%@, header=%@, payload=%@", &v15, 0x2Au);
  }
}

- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(v12);
    v15 = 138544130;
    v16 = v14;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support response message with topic=%@, header=%@, payload=%@", &v15, 0x2Au);
  }
}

- (void)_closeAllSocketsWithError:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DataStreamStreamProtocol *)self sockets];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (v11)
        {
          [v11 closeWithError:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [(DataStreamStreamProtocol *)self sockets];
  [v12 removeAllObjects];
}

- (DataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

@end