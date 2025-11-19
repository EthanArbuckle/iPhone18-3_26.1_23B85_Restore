@interface RPMultipleClientProxy
+ (id)clientProxy;
- (RPMultipleClientProxy)init;
- (void)handleNewConnection:(id)a3 currentState:(id)a4;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)a3 movieURL:(id)a4;
- (void)recordingLockInterrupted:(id)a3;
- (void)recordingTimerDidUpdate:(id)a3;
- (void)resetConnectionWithProcessIdentifier:(int)a3;
- (void)shouldResumeSessionType:(id)a3;
- (void)updateBroadcastURL:(id)a3;
- (void)updateScreenRecordingStateWithCurrentState:(id)a3;
@end

@implementation RPMultipleClientProxy

+ (id)clientProxy
{
  if (qword_1000B68E8 != -1)
  {
    sub_100062460();
  }

  v3 = qword_1000B68E0;

  return v3;
}

- (RPMultipleClientProxy)init
{
  v5.receiver = self;
  v5.super_class = RPMultipleClientProxy;
  v2 = [(RPMultipleClientProxy *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    [(RPMultipleClientProxy *)v2 setConnectionSet:v3];
  }

  return v2;
}

- (void)resetConnectionWithProcessIdentifier:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(RPMultipleClientProxy *)v4 connectionSet];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);

        v7 = v10;
        if ([v10 processIdentifier] == a3)
        {
          [v10 setInvalidationHandler:0];
          [v10 setInterruptionHandler:0];
          [v10 invalidate];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([0 processIdentifier] == a3)
  {
    v11 = [(RPMultipleClientProxy *)v4 connectionSet];
    [v11 removeObject:0];
  }

  objc_sync_exit(v4);
}

- (void)handleNewConnection:(id)a3 currentState:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(RPMultipleClientProxy *)v7 connectionSet];
  v9 = [v8 containsObject:v11];

  if ((v9 & 1) == 0)
  {
    v10 = [(RPMultipleClientProxy *)v7 connectionSet];
    [v10 addObject:v11];
  }

  [(RPMultipleClientProxy *)v7 updateScreenRecordingStateWithCurrentState:v6];
  objc_sync_exit(v7);
}

- (void)updateScreenRecordingStateWithCurrentState:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:updateScreenRecordingState:", buf, 2u);
  }

  v5 = self;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(RPMultipleClientProxy *)v5 connectionSet];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1D88];
        [v10 updateScreenRecordingStateWithCurrentState:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)recordingDidStopWithError:(id)a3 movieURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingDidStopWithError:movieURL:", buf, 2u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(RPMultipleClientProxy *)v8 connectionSet];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxyWithErrorHandler:&stru_1000A1DA8];
        [v13 recordingDidStopWithError:v6 movieURL:v7];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)updateBroadcastURL:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:updateBroadcastURL:", buf, 2u);
  }

  v5 = self;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(RPMultipleClientProxy *)v5 connectionSet];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1DC8];
        [v10 updateBroadcastURL:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)recordingLockInterrupted:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingLockInterrupted:", buf, 2u);
  }

  v5 = self;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(RPMultipleClientProxy *)v5 connectionSet];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1DE8];
        [v10 recordingLockInterrupted:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)recordingTimerDidUpdate:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingTimerDidUpdate:", buf, 2u);
  }

  v5 = self;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(RPMultipleClientProxy *)v5 connectionSet];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1E08];
        [v10 recordingTimerDidUpdate:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)recordingDidPause
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000626B8();
  }
}

- (void)shouldResumeSessionType:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062700();
  }
}

@end