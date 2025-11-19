@interface NSURLSessionConfiguration
- (BOOL)_nsurlsessionproxy_requiresBackgroundSession;
@end

@implementation NSURLSessionConfiguration

- (BOOL)_nsurlsessionproxy_requiresBackgroundSession
{
  if ([(NSURLSessionConfiguration *)self isDiscretionary]|| ([(NSURLSessionConfiguration *)self _allowsRetryForBackgroundDataTasks]& 1) != 0 || ([(NSURLSessionConfiguration *)self _prefersInfraWiFi]& 1) != 0)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(NSURLSessionConfiguration *)self _shouldPreserveBackgroundSessionDisposition];
}

@end