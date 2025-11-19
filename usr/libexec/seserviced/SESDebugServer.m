@interface SESDebugServer
- (SESDebugServer)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onEvent:(id)a3 eventPayload:(id)a4;
@end

@implementation SESDebugServer

- (SESDebugServer)init
{
  v11.receiver = self;
  v11.super_class = SESDebugServer;
  v2 = [(SESDebugServer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_isLPEMEnabled = 4279897;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);

    v6 = dispatch_queue_create("com.apple.seserviced.sesdebugserver", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v8;

    v3->_haveAppletInstalled = [(NSUserDefaults *)v3->_userDefaults BOOLForKey:@"debug.have.logging.applet"];
    v3->_haveProfileInstalled = [(NSUserDefaults *)v3->_userDefaults BOOLForKey:@"debug.have.logging.profile"];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060E8C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onEvent:(id)a3 eventPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060F64;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

@end