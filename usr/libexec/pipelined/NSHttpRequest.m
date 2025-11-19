@interface NSHttpRequest
+ (id)UrlFromUtf8String:(const void *)a3;
+ (id)encodeFormValues:(id)a3;
+ (id)getCookie:(id)a3 forUrl:(id)a4;
+ (id)getCookiesForUrl:(id)a3;
+ (id)header:(id)a3 valueForKey:(id)a4;
+ (id)header:(id)a3 valuesForKey:(id)a4;
+ (id)requestWithUrl:(id)a3;
- (NSHttpRequest)init;
- (NSHttpRequest)initWithUrl:(id)a3;
- (NSString)description;
- (void)addFormPart:(id)a3 withFilename:(id)a4 andDataStreams:(const void *)a5;
- (void)addFormPart:(id)a3 withFilename:(id)a4 andPath:(const void *)a5;
- (void)addValue:(id)a3 forHTTPHeaderField:(id)a4;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6;
- (void)connectionDidFinishLoading:(id)a3;
- (void)handleCancelled:(id)a3;
- (void)handleCompleted;
- (void)main;
- (void)setCachePolicy:(unint64_t)a3;
- (void)setContentLength:(unint64_t)a3;
- (void)setContentType:(id)a3;
- (void)setHttpBody:(id)a3;
- (void)setHttpBodyStream:(pair<NSInputStream *);
- (void)setHttpHeaders:(id)a3;
- (void)setHttpMethod:(int)a3;
- (void)setMainDocumentUrl:(id)a3;
- (void)setMultiPart;
- (void)setRequestType:(unint64_t)a3;
- (void)start;
- (void)startExecuting;
- (void)stopExecuting;
@end

@implementation NSHttpRequest

+ (id)UrlFromUtf8String:(const void *)a3
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v3 = [NSString stringWithUTF8String:a3];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)header:(id)a3 valueForKey:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:v5];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectAtIndex:0];
      goto LABEL_8;
    }

    v8 = objc_opt_class();
    NSLog(@"Bad object type %@ stored for header %@", v8, v5);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)header:(id)a3 valuesForKey:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:v5];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [NSArray arrayWithObject:v6];
      goto LABEL_8;
    }

    v8 = objc_opt_class();
    NSLog(@"Bad object type %@ stored for header %@", v8, v5);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)requestWithUrl:(id)a3
{
  v3 = a3;
  v4 = [[NSHttpRequest alloc] initWithUrl:v3];

  return v4;
}

+ (id)getCookiesForUrl:(id)a3
{
  v3 = a3;
  v4 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v5 = [v4 cookiesForURL:v3];

  return v5;
}

+ (id)getCookie:(id)a3 forUrl:(id)a4
{
  v5 = a3;
  [NSHttpRequest getCookiesForUrl:a4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)encodeFormValues:(id)a3
{
  v15 = a3;
  v3 = objc_alloc_init(NSMutableData);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v15;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v3 length])
        {
          [v3 appendBytes:"&" length:1];
        }

        v9 = [v4 objectForKeyedSubscript:v8];
        v10 = [v8 ps_urlEncode];
        v11 = [v9 ps_urlEncode];
        v12 = [NSString stringWithFormat:@"%@=%@", v10, v11];

        v13 = [v12 dataUsingEncoding:4];
        [v3 appendData:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

- (NSHttpRequest)init
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"-init is not a valid initializer for the class LoginImpl" userInfo:0];
  objc_exception_throw(v2);
}

- (NSHttpRequest)initWithUrl:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NSHttpRequest;
  v5 = [(NSHttpRequest *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(NSHttpRequest *)v5 setFUrl:v4];
    [(NSHttpRequest *)v6 setOnResponse:0];
    [(NSHttpRequest *)v6 setOnHeaders:0];
    [(NSHttpRequest *)v6 setOnError:0];
    [(NSHttpRequest *)v6 setFReceivedData:0];
    [(NSHttpRequest *)v6 setFFinished:0];
    [(NSHttpRequest *)v6 setFExecuting:0];
    [(NSHttpRequest *)v6 setFHttpResponse:0];
    v7 = [NSMutableURLRequest requestWithURL:v4];
    [(NSHttpRequest *)v6 setFActiveRequest:v7];

    v8 = [(NSHttpRequest *)v6 fActiveRequest];
    [v8 setHTTPShouldUsePipelining:1];

    v9 = sub_1000DD46C();
    sub_100003AE8(v9);
    LODWORD(v8) = v16;
    sub_100005B18(&v16);
    if (v8 != v8 >> 31)
    {
      v16 = sub_1000DD46C();
      v17 = v10;
      v14 = 0;
      v11 = sub_1003307E4(&v16, &v14);
      v12 = [(NSHttpRequest *)v6 fActiveRequest];
      [v12 setTimeoutInterval:v11];
    }
  }

  return v6;
}

- (void)setMainDocumentUrl:(id)a3
{
  v5 = a3;
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setMainDocumentURL:v5];
}

- (void)handleCancelled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [v4 cancel];
  }

  [(NSHttpRequest *)self handleCompleted];
}

- (void)startExecuting
{
  [(NSHttpRequest *)self willChangeValueForKey:@"isExecuting"];
  [(NSHttpRequest *)self setFExecuting:1];

  [(NSHttpRequest *)self didChangeValueForKey:@"isExecuting"];
}

- (void)stopExecuting
{
  [(NSHttpRequest *)self willChangeValueForKey:@"isExecuting"];
  [(NSHttpRequest *)self setFExecuting:0];

  [(NSHttpRequest *)self didChangeValueForKey:@"isExecuting"];
}

- (NSString)description
{
  v2 = [(NSHttpRequest *)self fActiveRequest];
  v3 = [v2 URL];
  v4 = [v3 description];

  return v4;
}

- (void)handleCompleted
{
  [(NSHttpRequest *)self setFBody:0];
  [(NSHttpRequest *)self setFReceivedData:0];
  [(NSHttpRequest *)self setFHttpResponse:0];
  v3 = [(NSHttpRequest *)self fOriginalThreadName];
  v4 = +[NSThread currentThread];
  [v4 setName:v3];

  v5 = [(NSHttpRequest *)self fUrl];
  v6 = [NSMutableURLRequest requestWithURL:v5];
  [(NSHttpRequest *)self setFActiveRequest:v6];

  [(NSHttpRequest *)self willChangeValueForKey:@"isFinished"];
  [(NSHttpRequest *)self willChangeValueForKey:@"isExecuting"];
  [(NSHttpRequest *)self setFFinished:1];
  [(NSHttpRequest *)self setFExecuting:0];
  [(NSHttpRequest *)self didChangeValueForKey:@"isExecuting"];

  [(NSHttpRequest *)self didChangeValueForKey:@"isFinished"];
}

- (void)start
{
  v3 = [(NSHttpRequest *)self fBody];

  if (v3)
  {
    v4 = [(NSHttpRequest *)self fBody];
    -[NSHttpRequest setContentLength:](self, "setContentLength:", [v4 length]);
  }

  if ([(NSHttpRequest *)self isCancelled])
  {

    [(NSHttpRequest *)self handleCancelled:0];
  }

  else
  {
    v5 = +[NSOperationQueue currentQueue];
    [(NSHttpRequest *)self startExecuting];
    if (v5)
    {
      [(NSHttpRequest *)self main];
    }

    else
    {
      [NSThread detachNewThreadSelector:"main" toTarget:self withObject:0];
    }
  }
}

- (void)main
{
  if ([(NSHttpRequest *)self isCancelled])
  {

    [(NSHttpRequest *)self handleCancelled:0];
  }

  else
  {
    [(NSHttpRequest *)self setFHttpResponse:0];
    v11 = +[NSThread currentThread];
    v3 = [v11 name];
    [(NSHttpRequest *)self setFOriginalThreadName:v3];

    v12 = [(NSHttpRequest *)self fUrl];
    v4 = [NSString stringWithFormat:@"HttpRequest@%@", v12];
    v5 = +[NSThread currentThread];
    [v5 setName:v4];

    v6 = [NSURLConnection alloc];
    v7 = [(NSHttpRequest *)self fActiveRequest];
    v13 = [v6 initWithRequest:v7 delegate:self startImmediately:0];

    v8 = +[NSRunLoop currentRunLoop];
    [v13 scheduleInRunLoop:v8 forMode:NSRunLoopCommonModes];
    [v13 start];
    [(NSHttpRequest *)self stopExecuting];
    do
    {
      if ([(NSHttpRequest *)self fFinished])
      {
        break;
      }

      v9 = +[NSDate distantFuture];
      v10 = [v8 runMode:NSDefaultRunLoopMode beforeDate:v9];
    }

    while ((v10 & 1) != 0);
  }
}

- (void)setRequestType:(unint64_t)a3
{
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setNetworkServiceType:a3];
}

- (void)setCachePolicy:(unint64_t)a3
{
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setCachePolicy:a3];
}

- (void)setHttpMethod:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v5, "Unknown http method");
      std::runtime_error::runtime_error(&v6, &v5);
      v6.__vftable = &off_1004338D0;
      sub_10010A984(v4);
    }

    v3 = [(NSHttpRequest *)self fActiveRequest];
    [v3 setHTTPMethod:@"GET"];
  }

  else
  {
    v3 = [(NSHttpRequest *)self fActiveRequest];
    [v3 setHTTPMethod:@"POST"];
  }
}

- (void)setContentType:(id)a3
{
  v5 = a3;
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setValue:v5 forHTTPHeaderField:@"Content-Type"];
}

- (void)setContentLength:(unint64_t)a3
{
  v5 = [(NSHttpRequest *)self fActiveRequest];
  v4 = [NSString stringWithFormat:@"%zu", a3];
  [v5 setValue:v4 forHTTPHeaderField:@"Content-Length"];
}

- (void)setHttpHeaders:(id)a3
{
  v5 = a3;
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setAllHTTPHeaderFields:v5];
}

- (void)addValue:(id)a3 forHTTPHeaderField:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSHttpRequest *)self fActiveRequest];
  [v7 addValue:v8 forHTTPHeaderField:v6];
}

- (void)setHttpBody:(id)a3
{
  v5 = a3;
  v4 = [(NSHttpRequest *)self fActiveRequest];
  [v4 setHTTPBody:v5];

  -[NSHttpRequest setContentLength:](self, "setContentLength:", [v5 length]);
}

- (void)setHttpBodyStream:(pair<NSInputStream *)
{
  first = a3.first;
  v5 = [(NSHttpRequest *)self fActiveRequest:a3.first];
  [v5 setHTTPBodyStream:first->super.super.isa];

  isa = first[1].super.super.isa;

  [(NSHttpRequest *)self setContentLength:isa];
}

- (void)setMultiPart
{
  v3 = [(NSHttpRequest *)self fBody];

  if (!v3)
  {
    v7 = objc_alloc_init(NSMultiPartInputStream);
    [(NSHttpRequest *)self setFBody:?];

    v8 = [(NSHttpRequest *)self fActiveRequest];
    v4 = [(NSHttpRequest *)self fBody];
    [v8 setHTTPBodyStream:v4];

    v9 = [(NSHttpRequest *)self fBody];
    v5 = [v9 boundary];
    v6 = [NSString stringWithFormat:@"multipart/form-data boundary=%@", v5];;
    [(NSHttpRequest *)self setContentType:v6];
  }
}

- (void)addFormPart:(id)a3 withFilename:(id)a4 andPath:(const void *)a5
{
  v10 = a3;
  v8 = a4;
  [(NSHttpRequest *)self setMultiPart];
  v9 = [(NSHttpRequest *)self fBody];
  [v9 addPart:v10 withPath:a5 andFilename:v8];
}

- (void)addFormPart:(id)a3 withFilename:(id)a4 andDataStreams:(const void *)a5
{
  v10 = a3;
  v8 = a4;
  [(NSHttpRequest *)self setMultiPart];
  v9 = [(NSHttpRequest *)self fBody];
  [v9 addPart:v10 withData:a5 andFilename:v8];
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000474A4(v19, "");
      sub_100211F1C("Non-http response received", &__p);
      sub_1000E661C(v19, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_10003F5D0(&v18);
    }

    [(NSHttpRequest *)self setFHttpResponse:v7];
    v8 = [(NSHttpRequest *)self onHeaders];
    v9 = v8 == 0;

    if (!v9)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v10 = [(NSHttpRequest *)self onHeaders];
      v11 = [(NSHttpRequest *)self fHttpResponse];
      (v10)[2](v10, v11, &__p);

      if (__p.__r_.__value_.__s.__data_[0] == 1)
      {
        goto LABEL_6;
      }
    }

    v12 = objc_alloc_init(NSMutableData);
    [(NSHttpRequest *)self setFReceivedData:v12];

    v13 = [(NSHttpRequest *)self onProgress];
    LOBYTE(v12) = v13 == 0;

    if (v12)
    {
      goto LABEL_9;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v14 = [(NSHttpRequest *)self onProgress];
    v15 = [(NSHttpRequest *)self fReceivedData];
    v16 = [v15 length];
    v17 = [(NSHttpRequest *)self fHttpResponse];
    (v14)[2](v14, v16, [v17 expectedContentLength], &__p);

    if (__p.__r_.__value_.__s.__data_[0] == 1)
    {
LABEL_6:
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:v6];
    }

    else
    {
LABEL_9:
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6
{
  v9 = a3;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:v9];
  }

  else
  {
    v10 = [(NSHttpRequest *)self onUploadProgress];

    if (v10 && (v12 = 0, [(NSHttpRequest *)self onUploadProgress], v11 = objc_claimAutoreleasedReturnValue(), (v11)[2](v11, a5, a6, &v12), v11, v12 == 1))
    {
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:v9];
    }

    else
    {
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:v6];
  }

  else
  {
    v8 = [(NSHttpRequest *)self fReceivedData];
    [v8 appendData:v7];

    v9 = [(NSHttpRequest *)self onProgress];

    if (!v9)
    {
      goto LABEL_6;
    }

    v14 = 0;
    v10 = [(NSHttpRequest *)self onProgress];
    v11 = [(NSHttpRequest *)self fReceivedData];
    v12 = [v11 length];
    v13 = [(NSHttpRequest *)self fHttpResponse];
    (v10)[2](v10, v12, [v13 expectedContentLength], &v14);

    if (v14 == 1)
    {
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:v6];
    }

    else
    {
LABEL_6:
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:v10];
  }

  else
  {
    v7 = [(NSHttpRequest *)self onError];

    if (v7)
    {
      v8 = [(NSHttpRequest *)self onError];
      v9 = [(NSHttpRequest *)self fHttpResponse];
      (v8)[2](v8, v9, v6);
    }

    [(NSHttpRequest *)self handleCompleted];
  }
}

- (void)connectionDidFinishLoading:(id)a3
{
  v8 = a3;
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:v8];
  }

  else
  {
    v4 = [(NSHttpRequest *)self onResponse];

    if (v4)
    {
      v5 = [(NSHttpRequest *)self onResponse];
      v6 = [(NSHttpRequest *)self fHttpResponse];
      v7 = [(NSHttpRequest *)self fReceivedData];
      (v5)[2](v5, v6, v7);
    }

    [(NSHttpRequest *)self handleCompleted];
  }
}

@end