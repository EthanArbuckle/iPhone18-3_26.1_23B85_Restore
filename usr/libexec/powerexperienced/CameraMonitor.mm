@interface CameraMonitor
+ (id)monitorWithQueue:(id)queue;
- (CameraMonitor)initWithQueue:(id)queue;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
@end

@implementation CameraMonitor

+ (id)monitorWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CD1C;
  block[3] = &unk_10002C738;
  queueCopy = queue;
  v3 = qword_100036BE8;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_100036BE8, block);
  }

  v5 = qword_100036BF0;
  v6 = qword_100036BF0;

  return v5;
}

- (CameraMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CameraMonitor;
  v6 = [(CameraMonitor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  v5 = [(CameraMonitor *)self log:viewfinder];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Camera session started", v8, 2u);
  }

  cameraResourceHint = [(CameraMonitor *)self cameraResourceHint];

  if (cameraResourceHint)
  {
    cameraResourceHint2 = [(CameraMonitor *)self cameraResourceHint];
    [cameraResourceHint2 updateState:1];
  }

  else
  {
    cameraResourceHint2 = [[ResourceHint alloc] initWithResourceType:6 andState:1];
    [(CameraMonitor *)self setCameraResourceHint:cameraResourceHint2];
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  v5 = [(CameraMonitor *)self log:viewfinder];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Camera session ended", v8, 2u);
  }

  cameraResourceHint = [(CameraMonitor *)self cameraResourceHint];

  if (cameraResourceHint)
  {
    cameraResourceHint2 = [(CameraMonitor *)self cameraResourceHint];
    [cameraResourceHint2 updateState:0];
  }
}

@end