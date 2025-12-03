@interface RPClientProxy
- (RPClientProxy)initWithConnection:(id)connection;
- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type;
- (void)captureHandlerWithSample:(id)sample timingData:(id)data;
- (void)dealloc;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)error movieURL:(id)l;
- (void)recordingLockInterrupted:(id)interrupted;
- (void)recordingTimerDidUpdate:(id)update;
- (void)shouldResumeSessionType:(id)type;
- (void)updateBroadcastServiceInfo:(id)info;
- (void)updateBroadcastURL:(id)l;
- (void)updateScreenRecordingStateWithCurrentState:(id)state;
@end

@implementation RPClientProxy

- (RPClientProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = RPClientProxy;
  v5 = [(RPClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(RPClientProxy *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = RPClientProxy;
  [(RPClientProxy *)&v5 dealloc];
}

- (void)updateScreenRecordingStateWithCurrentState:(id)state
{
  stateCopy = state;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:updateScreenRecordingStateWithCurrentState:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1C28];
  [v5 updateScreenRecordingStateWithCurrentState:stateCopy];
}

- (void)recordingDidStopWithError:(id)error movieURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:recordingDidStopWithError:movieURL:", v9, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1C48];
  [v8 recordingDidStopWithError:errorCopy movieURL:lCopy];
}

- (void)updateBroadcastServiceInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:updateBroadcastServiceInfo:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1C68];
  [v5 updateBroadcastServiceInfo:infoCopy];
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:updateBroadcastURL:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1C88];
  [v5 updateBroadcastURL:lCopy];
}

- (void)captureHandlerWithSample:(id)sample timingData:(id)data
{
  sampleCopy = sample;
  dataCopy = data;
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPClientProxy captureHandlerWithSample:timingData:]";
    v11 = 1024;
    v12 = 71;
    v13 = 2080;
    v14 = "[RPClientProxy captureHandlerWithSample:timingData:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s Sending client video", &v9, 0x1Cu);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1CA8];
  [v8 captureHandlerWithSample:sampleCopy timingData:dataCopy];
}

- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type
{
  sampleCopy = sample;
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[RPClientProxy captureHandlerWithAudioSample:bufferType:]";
    v10 = 1024;
    v11 = 79;
    v12 = 2080;
    v13 = "[RPClientProxy captureHandlerWithAudioSample:bufferType:]";
    v14 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %s Sending client audio with type %ld", &v8, 0x26u);
  }

  v7 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1CC8];
  [v7 captureHandlerWithAudioSample:sampleCopy bufferType:type];
}

- (void)recordingLockInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:recordingLockInterrupted:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1CE8];
  [v5 recordingLockInterrupted:interruptedCopy];
}

- (void)shouldResumeSessionType:(id)type
{
  typeCopy = type;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:shouldResumeSessionType:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1D08];
  [v5 shouldResumeSessionType:typeCopy];
}

- (void)recordingDidPause
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:recordingDidPause:", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1D28];
  [v3 recordingDidPause];
}

- (void)recordingTimerDidUpdate:(id)update
{
  updateCopy = update;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPClientProxy:recordingTimerDidUpdate:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_1000A1D48];
  [v5 recordingTimerDidUpdate:updateCopy];
}

@end