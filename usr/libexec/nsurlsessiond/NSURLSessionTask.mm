@interface NSURLSessionTask
- (void)_nsurlsessionproxy_cancelWithError:(id)error;
@end

@implementation NSURLSessionTask

- (void)_nsurlsessionproxy_cancelWithError:(id)error
{
  errorCopy = error;
  objc_setAssociatedObject(self, "com.apple.nsurlsessionproxy.cancelError", errorCopy, 0x301);
  [(NSURLSessionTask *)self cancel];
}

@end