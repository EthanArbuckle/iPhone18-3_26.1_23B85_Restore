@interface CameraMonitor
+ (id)monitorWithQueue:(id)a3;
- (CameraMonitor)initWithQueue:(id)a3;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
@end

@implementation CameraMonitor

+ (id)monitorWithQueue:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CD1C;
  block[3] = &unk_10002C738;
  v9 = a3;
  v3 = qword_100036BE8;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_100036BE8, block);
  }

  v5 = qword_100036BF0;
  v6 = qword_100036BF0;

  return v5;
}

- (CameraMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CameraMonitor;
  v6 = [(CameraMonitor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = os_log_create("com.apple.powerexperienced", "cameramonitor");
    log = v7->_log;
    v7->_log = v8;

    v10 = +[FigCameraViewfinder cameraViewfinder];
    viewFinder = v7->_viewFinder;
    v7->_viewFinder = v10;

    [(FigCameraViewfinder *)v7->_viewFinder setDelegate:v7 queue:v7->_queue];
    [(FigCameraViewfinder *)v7->_viewFinder startWithOptions:0];
  }

  v12 = [(CameraMonitor *)v7 log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initialized camera monitor", v14, 2u);
  }

  return v7;
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v5 = [(CameraMonitor *)self log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Camera session started", v8, 2u);
  }

  v6 = [(CameraMonitor *)self cameraResourceHint];

  if (v6)
  {
    v7 = [(CameraMonitor *)self cameraResourceHint];
    [v7 updateState:1];
  }

  else
  {
    v7 = [[ResourceHint alloc] initWithResourceType:6 andState:1];
    [(CameraMonitor *)self setCameraResourceHint:v7];
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v5 = [(CameraMonitor *)self log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Camera session ended", v8, 2u);
  }

  v6 = [(CameraMonitor *)self cameraResourceHint];

  if (v6)
  {
    v7 = [(CameraMonitor *)self cameraResourceHint];
    [v7 updateState:0];
  }
}

@end