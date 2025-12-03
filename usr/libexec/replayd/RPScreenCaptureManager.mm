@interface RPScreenCaptureManager
- (RPScreenCaptureManager)initWithDelegate:(id)delegate;
- (void)startSessionWithPID:(int)d windowSize:(CGSize)size captureType:(int)type contextIDs:(id)ds mixedRealityCamera:(BOOL)camera systemCapture:(BOOL)capture outputHandler:(id)handler didStartHandler:(id)self0;
- (void)stop;
@end

@implementation RPScreenCaptureManager

- (RPScreenCaptureManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = +[RPScreenCaptureManager newInstance];

  if (v6)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "[RPScreenCaptureManager initWithDelegate:]";
      v12 = 1024;
      v13 = 29;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v10, 0x1Cu);
    }

    screenCaptureOutputHandler = v6->_screenCaptureOutputHandler;
    v6->_screenCaptureOutputHandler = 0;

    didStartScreenCaptureHandler = v6->_didStartScreenCaptureHandler;
    v6->_didStartScreenCaptureHandler = 0;

    objc_storeStrong(&v6->_delegate, delegate);
    v6->_screenCaptureDidStart = 0;
  }

  return v6;
}

- (void)startSessionWithPID:(int)d windowSize:(CGSize)size captureType:(int)type contextIDs:(id)ds mixedRealityCamera:(BOOL)camera systemCapture:(BOOL)capture outputHandler:(id)handler didStartHandler:(id)self0
{
  dsCopy = ds;
  handlerCopy = handler;
  startHandlerCopy = startHandler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[RPScreenCaptureManager startSessionWithPID:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:outputHandler:didStartHandler:]";
    v17 = 1024;
    v18 = 39;
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v15, 0x1Cu);
  }
}

- (void)stop
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPScreenCaptureManager stop]";
    v5 = 1024;
    v6 = 43;
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v3, 0x1Cu);
  }
}

@end