@interface SAFileDownloaderDelegate
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation SAFileDownloaderDelegate

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  originalRequest = [taskCopy originalRequest];
  v12 = [originalRequest URL];
  scheme = [v12 scheme];
  if ([scheme isEqualToString:@"https"])
  {
    v14 = [requestCopy URL];
    scheme2 = [v14 scheme];
    v16 = [scheme2 isEqualToString:@"http"];

    if (v16)
    {
      v17 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = requestCopy;
LABEL_6:
  (handlerCopy)[2](handlerCopy, v17);
}

@end