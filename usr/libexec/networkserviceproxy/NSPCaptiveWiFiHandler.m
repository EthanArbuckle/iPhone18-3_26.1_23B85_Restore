@interface NSPCaptiveWiFiHandler
+ (id)sharedHandler;
- (BOOL)evaluate:(id)a3 completionHandler:(id)a4;
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

- (BOOL)evaluate:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (!v9)
  {

    goto LABEL_5;
  }

  if (!v9->_isRunning)
  {
    v11 = v7;
    v12 = v8;
    v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v14 = objc_alloc_init(NSOperationQueue);
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v14;

    v16 = NPGetInternalQueue();
    [(NSOperationQueue *)v9->_operationQueue setUnderlyingQueue:v16];

    v17 = [NSURLSession sessionWithConfiguration:v13 delegate:0 delegateQueue:v9->_operationQueue];
    urlSession = v9->_urlSession;
    v9->_urlSession = v17;

    [(NSURLSession *)v9->_urlSession setSessionDescription:@"PrivacyProxyCaptiveProbe"];
    v19 = objc_retainBlock(v12);

    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v19;

    objc_storeStrong(&v9->_interfaceName, a3);
    v9->_isRunning = 1;

    objc_initWeak(&location, v9);
    v21 = [NSURL URLWithString:@"http://netcts.cdn-apple.com"];
    v22 = [NSMutableURLRequest requestWithURL:v21 cachePolicy:4 timeoutInterval:10.0];
    [v22 setBoundInterfaceIdentifier:v9->_interfaceName];
    v23 = v9->_urlSession;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BBF50;
    v27[3] = &unk_10010B400;
    objc_copyWeak(&v28, &location);
    v27[4] = v9;
    v24 = [(NSURLSession *)v23 dataTaskWithRequest:v22 completionHandler:v27];
    dataTask = v9->_dataTask;
    v9->_dataTask = v24;

    [(NSURLSessionDataTask *)v9->_dataTask resume];
    [(NSURLSession *)v9->_urlSession finishTasksAndInvalidate];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&location);
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  objc_sync_exit(v9);

  return v10;
}

@end