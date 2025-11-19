@interface CKSiriSettingsMonitor
+ (id)sharedInstance;
- (CKSiriSettingsMonitor)init;
- (void)siriSettingsDidChange;
@end

@implementation CKSiriSettingsMonitor

- (void)siriSettingsDidChange
{
  v3 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CKSiriSettingsMonitor siriSettingsDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012BC;
  block[3] = &unk_100018540;
  objc_copyWeak(&v6, buf);
  dispatch_async(processingQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (CKSiriSettingsMonitor)init
{
  v8.receiver = self;
  v8.super_class = CKSiriSettingsMonitor;
  v2 = [(CKSiriSettingsMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.siriknowledged.monitor.settings.siri.queue", v3);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v4;

    timerSource = v2->_timerSource;
    v2->_timerSource = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000019D0;
  block[3] = &unk_100018668;
  block[4] = a1;
  if (qword_10001D930 != -1)
  {
    dispatch_once(&qword_10001D930, block);
  }

  v2 = qword_10001D938;

  return v2;
}

@end