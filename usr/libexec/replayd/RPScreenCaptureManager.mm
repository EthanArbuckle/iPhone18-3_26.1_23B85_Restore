@interface RPScreenCaptureManager
- (RPScreenCaptureManager)initWithDelegate:(id)a3;
- (void)startSessionWithPID:(int)a3 windowSize:(CGSize)a4 captureType:(int)a5 contextIDs:(id)a6 mixedRealityCamera:(BOOL)a7 systemCapture:(BOOL)a8 outputHandler:(id)a9 didStartHandler:(id)a10;
- (void)stop;
@end

@implementation RPScreenCaptureManager

- (RPScreenCaptureManager)initWithDelegate:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_delegate, a3);
    v6->_screenCaptureDidStart = 0;
  }

  return v6;
}

- (void)startSessionWithPID:(int)a3 windowSize:(CGSize)a4 captureType:(int)a5 contextIDs:(id)a6 mixedRealityCamera:(BOOL)a7 systemCapture:(BOOL)a8 outputHandler:(id)a9 didStartHandler:(id)a10
{
  v12 = a6;
  v13 = a9;
  v14 = a10;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[RPScreenCaptureManager startSessionWithPID:windowSize:captureType:contextIDs:mixedRealityCamera:systemCapture:outputHandler:didStartHandler:]";
    v17 = 1024;
    v18 = 39;
    v19 = 2048;
    v20 = self;
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
    v8 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v3, 0x1Cu);
  }
}

@end