@interface NSURLSessionTask
- (void)_nsurlsessionproxy_cancelWithError:(id)a3;
@end

@implementation NSURLSessionTask

- (void)_nsurlsessionproxy_cancelWithError:(id)a3
{
  v4 = a3;
  objc_setAssociatedObject(self, "com.apple.nsurlsessionproxy.cancelError", v4, 0x301);
  [(NSURLSessionTask *)self cancel];
}

@end