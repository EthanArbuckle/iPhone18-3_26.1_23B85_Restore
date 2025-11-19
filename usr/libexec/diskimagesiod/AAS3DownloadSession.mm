@interface AAS3DownloadSession
+ (void)completeRequest:(id)a3 data:(id)a4 response:(id)a5 error:(id)a6;
- (AAS3DownloadSession)initWithURL:(id)a3 streamBase:(id *)a4 maxAttempts:(unsigned int)a5 pauseInterval:(float)a6 maxRequestsInFlight:(unsigned int)a7;
- (id)enqueueRequestWithSize:(unint64_t)a3 atOffset:(int64_t)a4 destinationBuffer:(char *)a5 destinationStream:(AAAsyncByteStream_impl *)a6 completionSemaphore:(id)a7;
- (int)addRequest:(id)a3;
- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)a3 size:(unint64_t)a4 atOffset:(int64_t)a5;
- (int)syncRequests;
- (int64_t)readToBuffer:(void *)a3 size:(unint64_t)a4 atOffset:(int64_t)a5;
- (void)cacheDocument:(id)a3;
- (void)invalidateAndCancel;
- (void)removeRequest:(id)a3;
@end

@implementation AAS3DownloadSession

- (AAS3DownloadSession)initWithURL:(id)a3 streamBase:(id *)a4 maxAttempts:(unsigned int)a5 pauseInterval:(float)a6 maxRequestsInFlight:(unsigned int)a7
{
  v13 = a3;
  v58.receiver = self;
  v58.super_class = AAS3DownloadSession;
  v14 = [(AAS3DownloadSession *)&v58 init];
  if (v14)
  {
    obj = a3;
    v54 = a5;
    v55 = a7;
    v57 = v13;
    v56 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v18 = objc_alloc_init(NSMutableDictionary);
    v53 = a4;
    var2 = a4->var2;
    if (*(var2 + 348))
    {
      v20 = [NSString stringWithUTF8String:?];
      [v18 setValue:v20 forKey:@"User-Agent"];
    }

    for (i = *(var2 + 349); i; i = *(i + 8))
    {
      v22 = *i;
      if (*i)
      {
        v23 = strlen(*i);
        v24 = v23 + 1;
        if (v23 + 1 < 0x2000000001)
        {
          v25 = malloc(v23 + 1);
          if (v25)
          {
            v26 = v25;
            memcpy(v25, v22, v24);
            v27 = strchr(v26, 58);
            if (v27)
            {
              *v27 = 0;
              v30 = [NSString stringWithUTF8String:v27 + 1];
              v31 = [NSString stringWithUTF8String:v26];
              [v18 setValue:v30 forKey:v31];
            }

            else
            {
              sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 252, 121, 0, "invalid header: %s", v28, v29, v26);
            }

            free(v26);
            continue;
          }
        }

        else
        {
          *__error() = 12;
        }
      }

      v32 = __error();
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 250, 121, *v32, "malloc", v33, v34, v51);
    }

    if (*(var2 + 350))
    {
      sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 259, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_headers %s", v15, v16, v17, *(var2 + 350));
    }

    if (*(var2 + 346))
    {
      sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 260, 121, "Non supported options in AAS3DownloadSession (ignored): pinned_public_key %s", v15, v16, v17, *(var2 + 346));
    }

    if (*(var2 + 347))
    {
      sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 261, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_pinned_public_key %s", v15, v16, v17, *(var2 + 347));
    }

    [(NSURLSessionConfiguration *)v56 setHTTPAdditionalHeaders:v18];
    [(NSURLSessionConfiguration *)v56 setHTTPMaximumConnectionsPerHost:16];
    [(NSURLSessionConfiguration *)v56 setTimeoutIntervalForRequest:120.0];
    [(NSURLSessionConfiguration *)v56 setTimeoutIntervalForResource:1200.0];
    v35 = [NSURLSession sessionWithConfiguration:v56];
    urlSession = v14->_urlSession;
    v14->_urlSession = v35;

    objc_storeStrong(&v14->_url, obj);
    v14->_streamBase = v53;
    v37 = objc_alloc_init(NSMutableSet);
    requests = v14->_requests;
    v14->_requests = v37;

    v39 = objc_alloc_init(NSLock);
    requestsLock = v14->_requestsLock;
    v14->_requestsLock = v39;

    if (v54)
    {
      v41 = v54;
    }

    else
    {
      v41 = 5;
    }

    v42 = 250.0;
    if (a6 != 0.0)
    {
      v42 = a6;
    }

    v14->_pauseInterval = v42;
    if (v55)
    {
      v43 = v55;
    }

    else
    {
      v43 = 16;
    }

    v14->_maxRequests = v43;
    v14->_maxAttempts = v41;
    v44 = dispatch_semaphore_create(v43);
    requestsSem = v14->_requestsSem;
    v14->_requestsSem = v44;

    atomic_store(0, &v14->_bytesDownloaded);
    v46 = objc_alloc_init(NSLock);
    cacheLock = v14->_cacheLock;
    v14->_cacheLock = v46;

    cache = v14->_cache;
    v14->_cache = 0;

    v49 = v14;
    v13 = v57;
  }

  return v14;
}

- (int)addRequest:(id)a3
{
  v4 = a3;
  v5 = [(AAS3DownloadSession *)self requestsSem];
  v6 = dispatch_time(0, 600000000000);
  v7 = dispatch_semaphore_wait(v5, v6);

  if (v7)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession addRequest:]", 292, 121, 0, "euqueueRequest timed out", v8, v9, v15);
    v10 = -1;
  }

  else
  {
    v11 = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)v11 lock];

    v12 = [(AAS3DownloadSession *)self requests];
    [(NSMutableSet *)v12 addObject:v4];

    v13 = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)v13 unlock];

    v10 = 0;
  }

  return v10;
}

- (void)removeRequest:(id)a3
{
  v4 = a3;
  v5 = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)v5 lock];

  v6 = [(AAS3DownloadSession *)self requests];
  [(NSMutableSet *)v6 removeObject:v4];

  v7 = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)v7 unlock];

  v8 = [(AAS3DownloadSession *)self requestsSem];
  dispatch_semaphore_signal(v8);
}

- (id)enqueueRequestWithSize:(unint64_t)a3 atOffset:(int64_t)a4 destinationBuffer:(char *)a5 destinationStream:(AAAsyncByteStream_impl *)a6 completionSemaphore:(id)a7
{
  v12 = a7;
  v13 = [[AAS3DownloadRequest alloc] initWithSession:self size:a3 atOffset:a4 destinationBuffer:a5 destinationStream:a6 completionSemaphore:v12];

  if (v13)
  {
    if ([(AAS3DownloadSession *)self addRequest:v13]< 0)
    {
      v17 = "addRequest";
      v18 = 335;
    }

    else
    {
      if (([(AAS3DownloadRequest *)v13 createAndResumeTask]& 0x80000000) == 0)
      {
        v16 = v13;
        goto LABEL_9;
      }

      v17 = "createTask";
      v18 = 338;
    }
  }

  else
  {
    v17 = "Request creation";
    v18 = 332;
  }

  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession enqueueRequestWithSize:atOffset:destinationBuffer:destinationStream:completionSemaphore:]", v18, 121, 0, v17, v14, v15, v20);
  v16 = 0;
LABEL_9:

  return v16;
}

- (int64_t)readToBuffer:(void *)a3 size:(unint64_t)a4 atOffset:(int64_t)a5
{
  v9 = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)v9 lock];

  v10 = [(AAS3DownloadSession *)self cache];
  if (v10)
  {
    v11 = [(AAS3DownloadSession *)self cache];
    v12 = [(NSData *)v11 length];

    v13 = [(AAS3DownloadSession *)self cache];
    v14 = [(NSData *)v13 bytes];

    v15 = a5 & ~(a5 >> 63);
    v16 = a5 + a4;
    if (v12 < (a5 + a4))
    {
      v16 = v12;
    }

    v17 = v16 - v15;
    if (v16 > v15)
    {
      memcpy(a3, &v14[v15], v17);
    }

    v18 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)v18 unlock];

    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)v21 unlock];

    v20 = dispatch_semaphore_create(0);
    v19 = [(AAS3DownloadSession *)self enqueueRequestWithSize:a4 atOffset:a5 destinationBuffer:a3 destinationStream:0 completionSemaphore:v20];
    if (v19)
    {
      v24 = dispatch_time(0, 600000000000);
      if (dispatch_semaphore_wait(v20, v24))
      {
        v25 = "Request timed out";
        v26 = 384;
      }

      else
      {
        if ([v19 status] > 0)
        {
          goto LABEL_12;
        }

        v25 = "Request failed";
        v26 = 386;
      }
    }

    else
    {
      v25 = "enqueueRequest";
      v26 = 380;
    }

    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToBuffer:size:atOffset:]", v26, 121, 0, v25, v22, v23, v28);
    a4 = -1;
  }

LABEL_12:

  return a4;
}

- (int)syncRequests
{
  if ([(AAS3DownloadSession *)self maxRequests])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(AAS3DownloadSession *)self requestsSem];
      v5 = dispatch_time(0, 600000000000);
      v6 = dispatch_semaphore_wait(v4, v5);

      if (v6)
      {
        break;
      }

      if (++v3 >= [(AAS3DownloadSession *)self maxRequests])
      {
        goto LABEL_5;
      }
    }

    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession syncRequests]", 401, 121, 0, "Request timed out", v7, v8, v12);
    return -1;
  }

  else
  {
LABEL_5:
    result = [(AAS3DownloadSession *)self maxRequests];
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = [(AAS3DownloadSession *)self requestsSem];
        dispatch_semaphore_signal(v11);

        ++v10;
      }

      while (v10 < [(AAS3DownloadSession *)self maxRequests]);
      return 0;
    }
  }

  return result;
}

- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)a3 size:(unint64_t)a4 atOffset:(int64_t)a5
{
  if (a4)
  {
    v9 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)v9 lock];

    v10 = [(AAS3DownloadSession *)self cache];
    if (v10)
    {
      v11 = [(AAS3DownloadSession *)self cache];
      [(NSData *)v11 length];

      v12 = [(AAS3DownloadSession *)self cache];
      [(NSData *)v12 bytes];

      AAAsyncByteStreamProcess();
      v18 = [(AAS3DownloadSession *)self cacheLock];
      [(NSLock *)v18 unlock];

      v19 = 0;
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    v15 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)v15 unlock];

    v19 = [(AAS3DownloadSession *)self enqueueRequestWithSize:a4 atOffset:a5 destinationBuffer:0 destinationStream:a3 completionSemaphore:0];
    if (v19)
    {
      goto LABEL_7;
    }

    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToAsyncByteStream:size:atOffset:]", 451, 121, 0, "enqueueRequest", v16, v17, v21);
    v19 = 0;
    v14 = -1;
  }

  else
  {
    v13 = [(AAS3DownloadSession *)self syncRequests:a3];
    v19 = 0;
    v14 = v13 >> 31;
  }

LABEL_8:

  return v14;
}

+ (void)completeRequest:(id)a3 data:(id)a4 response:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 downloadSession];
  v14 = [v11 statusCode];
  if ([v13 isCancelled] || v12 && objc_msgSend(v12, "code") == -999)
  {
    goto LABEL_2;
  }

  if (v14 == 416)
  {
    [v10 bytes];
    if ([v9 stream])
    {
      [v9 stream];
      [v9 offset];
      AAAsyncByteStreamProcess();
    }

    goto LABEL_2;
  }

  if (v14 == 206)
  {
    v21 = [v10 length];
    v31 = [v9 nbyte];
    if (v21 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v21;
    }

    v33 = [v10 bytes];
    if ([v9 buf])
    {
      memcpy([v9 buf], v33, v32);
    }

    if (![v9 stream])
    {
      goto LABEL_33;
    }

LABEL_32:
    [v9 stream];
    [v9 offset];
    AAAsyncByteStreamProcess();
LABEL_33:
    [v13 addBytesDownloaded:v21];
LABEL_2:
    v18 = 1;
    goto LABEL_3;
  }

  if (v14 == 200)
  {
    v21 = [v10 length];
    v22 = [v10 bytes];
    [v13 cacheDocument:v10];
    v23 = [v9 offset];
    v24 = v23 & ~(v23 >> 63);
    v25 = [v9 offset];
    v26 = &v25[[v9 nbyte]];
    if (v21 < v26)
    {
      v26 = v21;
    }

    v27 = v26 <= v24;
    v28 = &v26[-v24];
    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v24;
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if ([v9 buf])
    {
      memcpy([v9 buf], &v22[v29], v30);
    }

    if (![v9 stream])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v12 && (v34 = [v12 description]) != 0)
  {
    v35 = v34;
    [v34 UTF8String];
    sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 546, 121, "Request failed: %03ld %s", v36, v37, v38, v14);
  }

  else
  {
    sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 547, 121, "Request failed: %03ld (error not set)", v15, v16, v17, v14);
  }

  if ([v9 remainingAttempts])
  {
    [v9 pauseInterval];
    v40 = v39;
    [v9 nbyte];
    [v9 offset];
    sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 554, 121, "Retrying request after %.0f seconds %zu bytes at offset %llu", v41, v42, v43, SLOBYTE(v40));
    [v9 pauseInterval];
    [NSThread sleepForTimeInterval:v44];
    [v9 pauseInterval];
    *&v46 = v45 + v45;
    [v9 setPauseInterval:v46];
    if (([v9 createAndResumeTask] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 561, 121, 0, "createTask", v47, v48, v49);
  }

  v18 = 0xFFFFFFFFLL;
LABEL_3:
  [v9 setStatus:v18];
  v19 = [v9 sem];

  if (v19)
  {
    v20 = [v9 sem];
    dispatch_semaphore_signal(v20);
  }

  [v13 removeRequest:v9];
LABEL_6:
}

- (void)invalidateAndCancel
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_cancelled, &v3, 1u);
  v4 = [(AAS3DownloadSession *)self urlSession];
  [(NSURLSession *)v4 invalidateAndCancel];

  [(AAS3DownloadSession *)self syncRequests];
}

- (void)cacheDocument:(id)a3
{
  v4 = a3;
  v5 = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)v5 lock];

  v6 = [(AAS3DownloadSession *)self cache];
  if (!v6)
  {
    [(AAS3DownloadSession *)self setCache:v4];
  }

  v7 = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)v7 unlock];
}

@end