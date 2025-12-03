@interface RPMultipleClientProxy
+ (id)clientProxy;
- (RPMultipleClientProxy)init;
- (void)handleNewConnection:(id)connection currentState:(id)state;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)error movieURL:(id)l;
- (void)recordingLockInterrupted:(id)interrupted;
- (void)recordingTimerDidUpdate:(id)update;
- (void)resetConnectionWithProcessIdentifier:(int)identifier;
- (void)shouldResumeSessionType:(id)type;
- (void)updateBroadcastURL:(id)l;
- (void)updateScreenRecordingStateWithCurrentState:(id)state;
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

- (void)resetConnectionWithProcessIdentifier:(int)identifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v6 = [connectionSet countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v10 = *(*(&v12 + 1) + 8 * i);

        v7 = v10;
        if ([v10 processIdentifier] == identifier)
        {
          [v10 setInvalidationHandler:0];
          [v10 setInterruptionHandler:0];
          [v10 invalidate];
        }
      }

      v6 = [connectionSet countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([0 processIdentifier] == identifier)
  {
    connectionSet2 = [(RPMultipleClientProxy *)selfCopy connectionSet];
    [connectionSet2 removeObject:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)handleNewConnection:(id)connection currentState:(id)state
{
  connectionCopy = connection;
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v9 = [connectionSet containsObject:connectionCopy];

  if ((v9 & 1) == 0)
  {
    connectionSet2 = [(RPMultipleClientProxy *)selfCopy connectionSet];
    [connectionSet2 addObject:connectionCopy];
  }

  [(RPMultipleClientProxy *)selfCopy updateScreenRecordingStateWithCurrentState:stateCopy];
  objc_sync_exit(selfCopy);
}

- (void)updateScreenRecordingStateWithCurrentState:(id)state
{
  stateCopy = state;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:updateScreenRecordingState:", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1D88];
        [v10 updateScreenRecordingStateWithCurrentState:stateCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)recordingDidStopWithError:(id)error movieURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingDidStopWithError:movieURL:", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v10 = [connectionSet countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxyWithErrorHandler:&stru_1000A1DA8];
        [v13 recordingDidStopWithError:errorCopy movieURL:lCopy];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [connectionSet countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:updateBroadcastURL:", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1DC8];
        [v10 updateBroadcastURL:lCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)recordingLockInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingLockInterrupted:", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1DE8];
        [v10 recordingLockInterrupted:interruptedCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)recordingTimerDidUpdate:(id)update
{
  updateCopy = update;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPMultipleClientProxy:recordingTimerDidUpdate:", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionSet = [(RPMultipleClientProxy *)selfCopy connectionSet];
  v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(connectionSet);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&stru_1000A1E08];
        [v10 recordingTimerDidUpdate:updateCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [connectionSet countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)recordingDidPause
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000626B8();
  }
}

- (void)shouldResumeSessionType:(id)type
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062700();
  }
}

@end