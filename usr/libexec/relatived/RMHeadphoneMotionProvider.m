@interface RMHeadphoneMotionProvider
- (id)startProducingDataWithCallback:(id)a3;
- (void)stopProducingData;
@end

@implementation RMHeadphoneMotionProvider

- (id)startProducingDataWithCallback:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  sub_10000FA2C(self, v5);

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100007218;
  v13 = &unk_100024D08;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = objc_retainBlock(&v10);
  if (self)
  {
    audioAccessoryManager = self->_audioAccessoryManager;
  }

  else
  {
    audioAccessoryManager = 0;
  }

  [(RMAudioAccessoryManager *)audioAccessoryManager startDeviceMotionUpdatesWithHandler:v7, v10, v11, v12, v13, v14];

  return 0;
}

- (void)stopProducingData
{
  v2 = self;
  if (self)
  {
    self = self->_audioAccessoryManager;
  }

  [(RMHeadphoneMotionProvider *)self stopDeviceMotionUpdates];

  sub_10000FA2C(v2, 0);
}

@end