@interface WACoreCapture
- (WACoreCapture)init;
- (void)__dumpCoreCaptureLogsWithReason:(id)a3;
@end

@implementation WACoreCapture

- (WACoreCapture)init
{
  v9.receiver = self;
  v9.super_class = WACoreCapture;
  v2 = [(WACoreCapture *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.wifi.analytics.ccQ", v3);
    ccQueue = v2->_ccQueue;
    v2->_ccQueue = v4;

    v6 = v2;
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "[WACoreCapture init]";
      v12 = 1024;
      v13 = 48;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error super init", buf, 0x12u);
    }
  }

  return v2;
}

- (void)__dumpCoreCaptureLogsWithReason:(id)a3
{
  v4 = a3;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[WACoreCapture __dumpCoreCaptureLogsWithReason:]";
    v12 = 1024;
    v13 = 62;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Called into __dumpCoreCaptureLogsWithReason: %@", buf, 0x1Cu);
  }

  ccQueue = self->_ccQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000510C8;
  block[3] = &unk_1000ED880;
  v9 = v4;
  v7 = v4;
  dispatch_async(ccQueue, block);
}

@end