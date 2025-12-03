@interface FMDNSURLSession
- (FMDURLSessionDelegate)delegate;
- (id)dataTaskWithRequest:(id)request;
- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler;
- (id)downloadTaskWithRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)finishTasksAndInvalidate;
- (void)getAllTasksWithCompletionHandler:(id)handler;
- (void)invalidateAndCancel;
@end

@implementation FMDNSURLSession

- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  session = [(FMDNSURLSession *)self session];
  v9 = [session dataTaskWithRequest:requestCopy completionHandler:handlerCopy];

  return v9;
}

- (id)dataTaskWithRequest:(id)request
{
  requestCopy = request;
  session = [(FMDNSURLSession *)self session];
  v6 = [session dataTaskWithRequest:requestCopy];

  return v6;
}

- (id)downloadTaskWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  session = [(FMDNSURLSession *)self session];
  v9 = [session downloadTaskWithRequest:requestCopy completionHandler:handlerCopy];

  return v9;
}

- (void)getAllTasksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  session = [(FMDNSURLSession *)self session];
  [session getAllTasksWithCompletionHandler:handlerCopy];
}

- (void)finishTasksAndInvalidate
{
  session = [(FMDNSURLSession *)self session];
  [session finishTasksAndInvalidate];
}

- (void)invalidateAndCancel
{
  session = [(FMDNSURLSession *)self session];
  [session invalidateAndCancel];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  delegate = [(FMDNSURLSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate URLSession:self didBecomeInvalidWithError:errorCopy];
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  delegate = [(FMDNSURLSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate URLSession:self didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }
}

- (FMDURLSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end