@interface NSPCaptiveWiFiHandler
+ (id)sharedHandler;
- (BOOL)evaluate:(id)evaluate completionHandler:(id)handler;
@end

@implementation NSPCaptiveWiFiHandler

+ (id)sharedHandler
{
  if (qword_1001298B0 != -1)
  {
    dispatch_once(&qword_1001298B0, &stru_10010B3D8);
  }

  v3 = qword_1001298A8;

  return v3;
}

- (BOOL)evaluate:(id)evaluate completionHandler:(id)handler
{
  evaluateCopy = evaluate;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy)
  {

    goto LABEL_5;
  }

  if (!selfCopy->_isRunning)
  {
    v11 = evaluateCopy;
    v12 = handlerCopy;
    v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v14 = objc_alloc_init(NSOperationQueue);
    operationQueue = selfCopy->_operationQueue;
    selfCopy->_operationQueue = v14;

    v16 = NPGetInternalQueue();
    [(NSOperationQueue *)selfCopy->_operationQueue setUnderlyingQueue:v16];

    v17 = [NSURLSession sessionWithConfiguration:v13 delegate:0 delegateQueue:selfCopy->_operationQueue];
    urlSession = selfCopy->_urlSession;
    selfCopy->_urlSession = v17;

    [(NSURLSession *)selfCopy->_urlSession setSessionDescription:@"PrivacyProxyCaptiveProbe"];
    v19 = objc_retainBlock(v12);

    completionHandler = selfCopy->_completionHandler;
    selfCopy->_completionHandler = v19;

    objc_storeStrong(&selfCopy->_interfaceName, evaluate);
    selfCopy->_isRunning = 1;

    objc_initWeak(&location, selfCopy);
    v21 = [NSURL URLWithString:@"http://netcts.cdn-apple.com"];
    v22 = [NSMutableURLRequest requestWithURL:v21 cachePolicy:4 timeoutInterval:10.0];
    [v22 setBoundInterfaceIdentifier:selfCopy->_interfaceName];
    v23 = selfCopy->_urlSession;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BBF50;
    v27[3] = &unk_10010B400;
    objc_copyWeak(&v28, &location);
    v27[4] = selfCopy;
    v24 = [(NSURLSession *)v23 dataTaskWithRequest:v22 completionHandler:v27];
    dataTask = selfCopy->_dataTask;
    selfCopy->_dataTask = v24;

    [(NSURLSessionDataTask *)selfCopy->_dataTask resume];
    [(NSURLSession *)selfCopy->_urlSession finishTasksAndInvalidate];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&location);
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v10;
}

@end