@interface AAS3DownloadRequest
- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore;
- (AAS3DownloadSession)downloadSession;
- (OS_dispatch_semaphore)sem;
- (int)createAndResumeTask;
@end

@implementation AAS3DownloadRequest

- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore
{
  sessionCopy = session;
  semaphoreCopy = semaphore;
  v27.receiver = self;
  v27.super_class = AAS3DownloadRequest;
  v16 = [(AAS3DownloadRequest *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_downloadSession, sessionCopy);
    v18 = [NSMutableURLRequest alloc];
    v19 = [sessionCopy url];
    v20 = [v18 initWithURL:v19];
    urlRequest = v17->_urlRequest;
    v17->_urlRequest = v20;

    v17->_nbyte = size;
    v17->_offset = offset;
    v17->_buf = buffer;
    v17->_stream = stream;
    objc_storeWeak(&v17->_sem, semaphoreCopy);
    v17->_remainingAttempts = [sessionCopy maxAttempts];
    [sessionCopy pauseInterval];
    v17->_pauseInterval = v22;
    v17->_status = 0;
    snprintf(__str, 0xC8uLL, "bytes=%llu-%llu", offset, size + offset - 1);
    v23 = v17->_urlRequest;
    v24 = [NSString stringWithUTF8String:__str];
    [(NSMutableURLRequest *)v23 addValue:v24 forHTTPHeaderField:@"Range"];

    v25 = v17;
  }

  return v17;
}

- (int)createAndResumeTask
{
  if ([(AAS3DownloadRequest *)self remainingAttempts])
  {
    [(AAS3DownloadRequest *)self setRemainingAttempts:[(AAS3DownloadRequest *)self remainingAttempts]- 1];
    objc_initWeak(&location, self);
    downloadSession = [(AAS3DownloadRequest *)self downloadSession];
    urlSession = [(AAS3DownloadSession *)downloadSession urlSession];
    urlRequest = [(AAS3DownloadRequest *)self urlRequest];
    v13 = _NSConcreteStackBlock;
    v14 = 3254779904;
    v15 = sub_10001F8A8;
    v16 = &unk_1001F7560;
    objc_copyWeak(&v17, &location);
    v8 = [(NSURLSession *)urlSession dataTaskWithRequest:urlRequest completionHandler:&v13];

    if (v8)
    {
      [(NSURLSessionDataTask *)v8 resume:v13];
      v11 = 0;
    }

    else
    {
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 164, 121, 0, "dataTaskWithRequest", v9, v10, v13);
      v11 = -1;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 150, 121, 0, "no more attempts allowed", v3, v4, v13);
    return -1;
  }

  return v11;
}

- (AAS3DownloadSession)downloadSession
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadSession);

  return WeakRetained;
}

- (OS_dispatch_semaphore)sem
{
  WeakRetained = objc_loadWeakRetained(&self->_sem);

  return WeakRetained;
}

@end