@interface NETestAgent
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation NETestAgent

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007550C;
  v9[3] = &unk_1000EB310;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, v9);
}

@end