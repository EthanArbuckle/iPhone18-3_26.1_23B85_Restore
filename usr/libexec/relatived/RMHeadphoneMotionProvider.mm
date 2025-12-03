@interface RMHeadphoneMotionProvider
- (id)startProducingDataWithCallback:(id)callback;
- (void)stopProducingData;
@end

@implementation RMHeadphoneMotionProvider

- (id)startProducingDataWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = objc_opt_new();
  sub_10000FA2C(self, v5);

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100007218;
  v13 = &unk_100024D08;
  selfCopy = self;
  v15 = callbackCopy;
  v6 = callbackCopy;
  v7 = objc_retainBlock(&v10);
  if (self)
  {
    audioAccessoryManager = self->_audioAccessoryManager;
  }

  else
  {
    audioAccessoryManager = 0;
  }

  [(RMAudioAccessoryManager *)audioAccessoryManager startDeviceMotionUpdatesWithHandler:v7, v10, v11, v12, v13, selfCopy];

  return 0;
}

- (void)stopProducingData
{
  selfCopy = self;
  if (self)
  {
    self = self->_audioAccessoryManager;
  }

  [(RMHeadphoneMotionProvider *)self stopDeviceMotionUpdates];

  sub_10000FA2C(selfCopy, 0);
}

@end