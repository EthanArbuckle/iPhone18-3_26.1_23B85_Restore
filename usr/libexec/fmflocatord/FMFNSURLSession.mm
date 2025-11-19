@interface FMFNSURLSession
- (FMFURLSessionDelegate)delegate;
- (id)dataTaskWithRequest:(id)a3;
- (id)dataTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (id)downloadTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)getAllTasksWithCompletionHandler:(id)a3;
@end

@implementation FMFNSURLSession

- (id)dataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FMFNSURLSession *)self session];
  v9 = [v8 dataTaskWithRequest:v7 completionHandler:v6];

  return v9;
}

- (id)dataTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(FMFNSURLSession *)self session];
  v6 = [v5 dataTaskWithRequest:v4];

  return v6;
}

- (id)downloadTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FMFNSURLSession *)self session];
  v9 = [v8 downloadTaskWithRequest:v7 completionHandler:v6];

  return v9;
}

- (void)getAllTasksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FMFNSURLSession *)self session];
  [v5 getAllTasksWithCompletionHandler:v4];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a4;
  v5 = [(FMFNSURLSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 URLSession:self didBecomeInvalidWithError:v6];
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(FMFNSURLSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 URLSession:self didReceiveChallenge:v9 completionHandler:v7];
  }
}

- (FMFURLSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end