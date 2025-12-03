@interface SESDebugServer
- (SESDebugServer)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onEvent:(id)event eventPayload:(id)payload;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060E8C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onEvent:(id)event eventPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060F64;
  block[3] = &unk_1004C24A8;
  v12 = eventCopy;
  v13 = payloadCopy;
  selfCopy = self;
  v9 = payloadCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

@end