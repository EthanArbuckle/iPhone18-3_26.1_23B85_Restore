@interface RMHeadphoneActivityProvider
- (id)startProducingDataWithCallback:(id)callback;
- (void)stopProducingData;
@end

@implementation RMHeadphoneActivityProvider

- (void)stopProducingData
{
  if (self)
  {
    sub_100012300(&self->super.isa);
  }

  else
  {
    sub_100012350();
  }
}

- (id)startProducingDataWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = objc_opt_new();
  sub_10000FA04(self, v5);

  +[CMAudioAccessoryManager _isAvailable];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100003AC4;
  v13 = &unk_100024B68;
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

  [(RMAudioAccessoryManager *)audioAccessoryManager startActivityUpdatesWithHandler:v7, v10, v11, v12, v13, selfCopy];

  return 0;
}

@end