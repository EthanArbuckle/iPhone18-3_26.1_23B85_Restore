@interface CAAPIHandler
- (CAAPIHandler)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5;
- (void)cancel;
- (void)fetchAPI;
@end

@implementation CAAPIHandler

- (CAAPIHandler)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CAAPIHandler;
  v11 = [(CAAPIHandler *)&v20 init];
  if (!v11)
  {
LABEL_4:
    v13 = 0;
    goto LABEL_5;
  }

  v12 = [NSURL URLWithString:v8];
  [(CAAPIHandler *)v11 setApiURL:v12];

  v13 = [(CAAPIHandler *)v11 apiURL];

  if (v13)
  {
    v14 = [(CAAPIHandler *)v11 apiURL];
    v15 = [v14 scheme];
    v16 = [v15 compare:@"https" options:1];

    if (!v16)
    {
      v18 = objc_alloc_init(NSOperationQueue);
      [(CAAPIHandler *)v11 setOpQueue:v18];

      v19 = [(CAAPIHandler *)v11 opQueue];
      [v19 setUnderlyingQueue:v9];

      [(CAAPIHandler *)v11 setResponseHandler:v10];
      v13 = v11;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:

  return v13;
}

- (void)cancel
{
  v2 = [(CAAPIHandler *)self dataTask];
  [v2 cancel];
}

- (void)fetchAPI
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v3 setHTTPCookieStorage:0];
  [v3 setURLCache:0];
  [v3 setURLCredentialStorage:0];
  [v3 set_alternativeServicesStorage:0];
  v4 = [(CAAPIHandler *)self opQueue];
  v5 = [NSURLSession sessionWithConfiguration:v3 delegate:0 delegateQueue:v4];

  v6 = [(CAAPIHandler *)self apiURL];
  if ([(CAAPIHandler *)self timeoutSeconds])
  {
    v7 = [(CAAPIHandler *)self timeoutSeconds];
  }

  else
  {
    v7 = 60.0;
  }

  v8 = [NSMutableURLRequest requestWithURL:v6 cachePolicy:4 timeoutInterval:v7];

  [v8 setValue:@"application/captive+json" forHTTPHeaderField:@"Accept"];
  v9 = [(CAAPIHandler *)self userAgent];
  [v8 setValue:v9 forHTTPHeaderField:@"User-Agent"];

  v10 = [(CAAPIHandler *)self interfaceName];
  [v8 setBoundInterfaceIdentifier:v10];

  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100011210;
  v16 = &unk_10001CC18;
  objc_copyWeak(&v17, &location);
  v11 = [v5 dataTaskWithRequest:v8 completionHandler:&v13];
  [(CAAPIHandler *)self setDataTask:v11, v13, v14, v15, v16];

  v12 = [(CAAPIHandler *)self dataTask];
  [v12 resume];

  [v5 finishTasksAndInvalidate];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

@end