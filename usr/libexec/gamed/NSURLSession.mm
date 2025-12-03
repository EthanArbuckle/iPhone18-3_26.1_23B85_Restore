@interface NSURLSession
+ (id)_gkForGameDaemonProcess;
+ (void)_gkSendAsynchronousRequest:(id)request preconnect:(BOOL)preconnect completionHandler:(id)handler;
@end

@implementation NSURLSession

+ (id)_gkForGameDaemonProcess
{
  if (qword_1003B9158 != -1)
  {
    sub_10028D030();
  }

  v3 = qword_1003B9150;

  return v3;
}

+ (void)_gkSendAsynchronousRequest:(id)request preconnect:(BOOL)preconnect completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (qword_1003B9170 != -1)
  {
    sub_10028D044();
  }

  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EFE2C;
  v13[3] = &unk_100366588;
  v15 = handlerCopy;
  selfCopy = self;
  v14 = requestCopy;
  preconnectCopy = preconnect;
  v11 = handlerCopy;
  v12 = requestCopy;
  dispatch_async(v10, v13);
}

@end