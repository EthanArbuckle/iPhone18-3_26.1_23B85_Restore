@interface NSHttpRequest
+ (id)UrlFromUtf8String:(const void *)string;
+ (id)encodeFormValues:(id)values;
+ (id)getCookie:(id)cookie forUrl:(id)url;
+ (id)getCookiesForUrl:(id)url;
+ (id)header:(id)header valueForKey:(id)key;
+ (id)header:(id)header valuesForKey:(id)key;
+ (id)requestWithUrl:(id)url;
- (NSHttpRequest)init;
- (NSHttpRequest)initWithUrl:(id)url;
- (NSString)description;
- (void)addFormPart:(id)part withFilename:(id)filename andDataStreams:(const void *)streams;
- (void)addFormPart:(id)part withFilename:(id)filename andPath:(const void *)path;
- (void)addValue:(id)value forHTTPHeaderField:(id)field;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)connectionDidFinishLoading:(id)loading;
- (void)handleCancelled:(id)cancelled;
- (void)handleCompleted;
- (void)main;
- (void)setCachePolicy:(unint64_t)policy;
- (void)setContentLength:(unint64_t)length;
- (void)setContentType:(id)type;
- (void)setHttpBody:(id)body;
- (void)setHttpBodyStream:(pair<NSInputStream *);
- (void)setHttpHeaders:(id)headers;
- (void)setHttpMethod:(int)method;
- (void)setMainDocumentUrl:(id)url;
- (void)setMultiPart;
- (void)setRequestType:(unint64_t)type;
- (void)start;
- (void)startExecuting;
- (void)stopExecuting;
@end

@implementation NSHttpRequest

+ (id)UrlFromUtf8String:(const void *)string
{
  if (*(string + 23) < 0)
  {
    string = *string;
  }

  v3 = [NSString stringWithUTF8String:string];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)header:(id)header valueForKey:(id)key
{
  keyCopy = key;
  v6 = [header objectForKey:keyCopy];
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
    NSLog(@"Bad object type %@ stored for header %@", v8, keyCopy);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)header:(id)header valuesForKey:(id)key
{
  keyCopy = key;
  v6 = [header objectForKey:keyCopy];
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
    NSLog(@"Bad object type %@ stored for header %@", v8, keyCopy);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)requestWithUrl:(id)url
{
  urlCopy = url;
  v4 = [[NSHttpRequest alloc] initWithUrl:urlCopy];

  return v4;
}

+ (id)getCookiesForUrl:(id)url
{
  urlCopy = url;
  v4 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v5 = [v4 cookiesForURL:urlCopy];

  return v5;
}

+ (id)getCookie:(id)cookie forUrl:(id)url
{
  cookieCopy = cookie;
  [NSHttpRequest getCookiesForUrl:url];
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
        name = [v10 name];
        v12 = [name isEqualToString:cookieCopy];

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

+ (id)encodeFormValues:(id)values
{
  valuesCopy = values;
  v3 = objc_alloc_init(NSMutableData);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = valuesCopy;
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
        ps_urlEncode = [v8 ps_urlEncode];
        ps_urlEncode2 = [v9 ps_urlEncode];
        v12 = [NSString stringWithFormat:@"%@=%@", ps_urlEncode, ps_urlEncode2];

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

- (NSHttpRequest)initWithUrl:(id)url
{
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = NSHttpRequest;
  v5 = [(NSHttpRequest *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(NSHttpRequest *)v5 setFUrl:urlCopy];
    [(NSHttpRequest *)v6 setOnResponse:0];
    [(NSHttpRequest *)v6 setOnHeaders:0];
    [(NSHttpRequest *)v6 setOnError:0];
    [(NSHttpRequest *)v6 setFReceivedData:0];
    [(NSHttpRequest *)v6 setFFinished:0];
    [(NSHttpRequest *)v6 setFExecuting:0];
    [(NSHttpRequest *)v6 setFHttpResponse:0];
    v7 = [NSMutableURLRequest requestWithURL:urlCopy];
    [(NSHttpRequest *)v6 setFActiveRequest:v7];

    fActiveRequest = [(NSHttpRequest *)v6 fActiveRequest];
    [fActiveRequest setHTTPShouldUsePipelining:1];

    v9 = sub_1000DD46C();
    sub_100003AE8(v9);
    LODWORD(fActiveRequest) = v16;
    sub_100005B18(&v16);
    if (fActiveRequest != fActiveRequest >> 31)
    {
      v16 = sub_1000DD46C();
      v17 = v10;
      v14 = 0;
      v11 = sub_1003307E4(&v16, &v14);
      fActiveRequest2 = [(NSHttpRequest *)v6 fActiveRequest];
      [fActiveRequest2 setTimeoutInterval:v11];
    }
  }

  return v6;
}

- (void)setMainDocumentUrl:(id)url
{
  urlCopy = url;
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setMainDocumentURL:urlCopy];
}

- (void)handleCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (cancelledCopy)
  {
    [cancelledCopy cancel];
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
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  v3 = [fActiveRequest URL];
  v4 = [v3 description];

  return v4;
}

- (void)handleCompleted
{
  [(NSHttpRequest *)self setFBody:0];
  [(NSHttpRequest *)self setFReceivedData:0];
  [(NSHttpRequest *)self setFHttpResponse:0];
  fOriginalThreadName = [(NSHttpRequest *)self fOriginalThreadName];
  v4 = +[NSThread currentThread];
  [v4 setName:fOriginalThreadName];

  fUrl = [(NSHttpRequest *)self fUrl];
  v6 = [NSMutableURLRequest requestWithURL:fUrl];
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
  fBody = [(NSHttpRequest *)self fBody];

  if (fBody)
  {
    fBody2 = [(NSHttpRequest *)self fBody];
    -[NSHttpRequest setContentLength:](self, "setContentLength:", [fBody2 length]);
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
    name = [v11 name];
    [(NSHttpRequest *)self setFOriginalThreadName:name];

    fUrl = [(NSHttpRequest *)self fUrl];
    v4 = [NSString stringWithFormat:@"HttpRequest@%@", fUrl];
    v5 = +[NSThread currentThread];
    [v5 setName:v4];

    v6 = [NSURLConnection alloc];
    fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
    v13 = [v6 initWithRequest:fActiveRequest delegate:self startImmediately:0];

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

- (void)setRequestType:(unint64_t)type
{
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setNetworkServiceType:type];
}

- (void)setCachePolicy:(unint64_t)policy
{
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setCachePolicy:policy];
}

- (void)setHttpMethod:(int)method
{
  if (method)
  {
    if (method != 1)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v5, "Unknown http method");
      std::runtime_error::runtime_error(&v6, &v5);
      v6.__vftable = &off_1004338D0;
      sub_10010A984(v4);
    }

    fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
    [fActiveRequest setHTTPMethod:@"GET"];
  }

  else
  {
    fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
    [fActiveRequest setHTTPMethod:@"POST"];
  }
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setValue:typeCopy forHTTPHeaderField:@"Content-Type"];
}

- (void)setContentLength:(unint64_t)length
{
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  v4 = [NSString stringWithFormat:@"%zu", length];
  [fActiveRequest setValue:v4 forHTTPHeaderField:@"Content-Length"];
}

- (void)setHttpHeaders:(id)headers
{
  headersCopy = headers;
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setAllHTTPHeaderFields:headersCopy];
}

- (void)addValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest addValue:valueCopy forHTTPHeaderField:fieldCopy];
}

- (void)setHttpBody:(id)body
{
  bodyCopy = body;
  fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
  [fActiveRequest setHTTPBody:bodyCopy];

  -[NSHttpRequest setContentLength:](self, "setContentLength:", [bodyCopy length]);
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
  fBody = [(NSHttpRequest *)self fBody];

  if (!fBody)
  {
    v7 = objc_alloc_init(NSMultiPartInputStream);
    [(NSHttpRequest *)self setFBody:?];

    fActiveRequest = [(NSHttpRequest *)self fActiveRequest];
    fBody2 = [(NSHttpRequest *)self fBody];
    [fActiveRequest setHTTPBodyStream:fBody2];

    fBody3 = [(NSHttpRequest *)self fBody];
    boundary = [fBody3 boundary];
    v6 = [NSString stringWithFormat:@"multipart/form-data boundary=%@", boundary];;
    [(NSHttpRequest *)self setContentType:v6];
  }
}

- (void)addFormPart:(id)part withFilename:(id)filename andPath:(const void *)path
{
  partCopy = part;
  filenameCopy = filename;
  [(NSHttpRequest *)self setMultiPart];
  fBody = [(NSHttpRequest *)self fBody];
  [fBody addPart:partCopy withPath:path andFilename:filenameCopy];
}

- (void)addFormPart:(id)part withFilename:(id)filename andDataStreams:(const void *)streams
{
  partCopy = part;
  filenameCopy = filename;
  [(NSHttpRequest *)self setMultiPart];
  fBody = [(NSHttpRequest *)self fBody];
  [fBody addPart:partCopy withData:streams andFilename:filenameCopy];
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  connectionCopy = connection;
  responseCopy = response;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:connectionCopy];
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

    [(NSHttpRequest *)self setFHttpResponse:responseCopy];
    onHeaders = [(NSHttpRequest *)self onHeaders];
    v9 = onHeaders == 0;

    if (!v9)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      onHeaders2 = [(NSHttpRequest *)self onHeaders];
      fHttpResponse = [(NSHttpRequest *)self fHttpResponse];
      (onHeaders2)[2](onHeaders2, fHttpResponse, &__p);

      if (__p.__r_.__value_.__s.__data_[0] == 1)
      {
        goto LABEL_6;
      }
    }

    v12 = objc_alloc_init(NSMutableData);
    [(NSHttpRequest *)self setFReceivedData:v12];

    onProgress = [(NSHttpRequest *)self onProgress];
    LOBYTE(v12) = onProgress == 0;

    if (v12)
    {
      goto LABEL_9;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    onProgress2 = [(NSHttpRequest *)self onProgress];
    fReceivedData = [(NSHttpRequest *)self fReceivedData];
    v16 = [fReceivedData length];
    fHttpResponse2 = [(NSHttpRequest *)self fHttpResponse];
    (onProgress2)[2](onProgress2, v16, [fHttpResponse2 expectedContentLength], &__p);

    if (__p.__r_.__value_.__s.__data_[0] == 1)
    {
LABEL_6:
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:connectionCopy];
    }

    else
    {
LABEL_9:
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  connectionCopy = connection;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:connectionCopy];
  }

  else
  {
    onUploadProgress = [(NSHttpRequest *)self onUploadProgress];

    if (onUploadProgress && (v12 = 0, [(NSHttpRequest *)self onUploadProgress], v11 = objc_claimAutoreleasedReturnValue(), (v11)[2](v11, written, write, &v12), v11, v12 == 1))
    {
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:connectionCopy];
    }

    else
    {
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:connectionCopy];
  }

  else
  {
    fReceivedData = [(NSHttpRequest *)self fReceivedData];
    [fReceivedData appendData:dataCopy];

    onProgress = [(NSHttpRequest *)self onProgress];

    if (!onProgress)
    {
      goto LABEL_6;
    }

    v14 = 0;
    onProgress2 = [(NSHttpRequest *)self onProgress];
    fReceivedData2 = [(NSHttpRequest *)self fReceivedData];
    v12 = [fReceivedData2 length];
    fHttpResponse = [(NSHttpRequest *)self fHttpResponse];
    (onProgress2)[2](onProgress2, v12, [fHttpResponse expectedContentLength], &v14);

    if (v14 == 1)
    {
      [(NSHttpRequest *)self cancel];
      [(NSHttpRequest *)self handleCancelled:connectionCopy];
    }

    else
    {
LABEL_6:
      [(NSHttpRequest *)self stopExecuting];
    }
  }
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  [(NSHttpRequest *)self startExecuting];
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:connectionCopy];
  }

  else
  {
    onError = [(NSHttpRequest *)self onError];

    if (onError)
    {
      onError2 = [(NSHttpRequest *)self onError];
      fHttpResponse = [(NSHttpRequest *)self fHttpResponse];
      (onError2)[2](onError2, fHttpResponse, errorCopy);
    }

    [(NSHttpRequest *)self handleCompleted];
  }
}

- (void)connectionDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  if ([(NSHttpRequest *)self isCancelled])
  {
    [(NSHttpRequest *)self handleCancelled:loadingCopy];
  }

  else
  {
    onResponse = [(NSHttpRequest *)self onResponse];

    if (onResponse)
    {
      onResponse2 = [(NSHttpRequest *)self onResponse];
      fHttpResponse = [(NSHttpRequest *)self fHttpResponse];
      fReceivedData = [(NSHttpRequest *)self fReceivedData];
      (onResponse2)[2](onResponse2, fHttpResponse, fReceivedData);
    }

    [(NSHttpRequest *)self handleCompleted];
  }
}

@end