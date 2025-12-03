@interface CAAPIHandler
- (CAAPIHandler)initWithURLString:(id)string queue:(id)queue responseHandler:(id)handler;
- (void)cancel;
- (void)fetchAPI;
@end

@implementation CAAPIHandler

- (CAAPIHandler)initWithURLString:(id)string queue:(id)queue responseHandler:(id)handler
{
  stringCopy = string;
  queueCopy = queue;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = CAAPIHandler;
  v11 = [(CAAPIHandler *)&v20 init];
  if (!v11)
  {
LABEL_4:
    apiURL = 0;
    goto LABEL_5;
  }

  v12 = [NSURL URLWithString:stringCopy];
  [(CAAPIHandler *)v11 setApiURL:v12];

  apiURL = [(CAAPIHandler *)v11 apiURL];

  if (apiURL)
  {
    apiURL2 = [(CAAPIHandler *)v11 apiURL];
    scheme = [apiURL2 scheme];
    v16 = [scheme compare:@"https" options:1];

    if (!v16)
    {
      v18 = objc_alloc_init(NSOperationQueue);
      [(CAAPIHandler *)v11 setOpQueue:v18];

      opQueue = [(CAAPIHandler *)v11 opQueue];
      [opQueue setUnderlyingQueue:queueCopy];

      [(CAAPIHandler *)v11 setResponseHandler:handlerCopy];
      apiURL = v11;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:

  return apiURL;
}

- (void)cancel
{
  dataTask = [(CAAPIHandler *)self dataTask];
  [dataTask cancel];
}

- (void)fetchAPI
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v3 setHTTPCookieStorage:0];
  [v3 setURLCache:0];
  [v3 setURLCredentialStorage:0];
  [v3 set_alternativeServicesStorage:0];
  opQueue = [(CAAPIHandler *)self opQueue];
  v5 = [NSURLSession sessionWithConfiguration:v3 delegate:0 delegateQueue:opQueue];

  apiURL = [(CAAPIHandler *)self apiURL];
  if ([(CAAPIHandler *)self timeoutSeconds])
  {
    timeoutSeconds = [(CAAPIHandler *)self timeoutSeconds];
  }

  else
  {
    timeoutSeconds = 60.0;
  }

  v8 = [NSMutableURLRequest requestWithURL:apiURL cachePolicy:4 timeoutInterval:timeoutSeconds];

  [v8 setValue:@"application/captive+json" forHTTPHeaderField:@"Accept"];
  userAgent = [(CAAPIHandler *)self userAgent];
  [v8 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

  interfaceName = [(CAAPIHandler *)self interfaceName];
  [v8 setBoundInterfaceIdentifier:interfaceName];

  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100011210;
  v16 = &unk_10001CC18;
  objc_copyWeak(&v17, &location);
  v11 = [v5 dataTaskWithRequest:v8 completionHandler:&v13];
  [(CAAPIHandler *)self setDataTask:v11, v13, v14, v15, v16];

  dataTask = [(CAAPIHandler *)self dataTask];
  [dataTask resume];

  [v5 finishTasksAndInvalidate];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

@end