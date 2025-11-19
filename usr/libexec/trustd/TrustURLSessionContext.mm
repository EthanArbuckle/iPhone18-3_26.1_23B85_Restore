@interface TrustURLSessionContext
- (void)dealloc;
@end

@implementation TrustURLSessionContext

- (void)dealloc
{
  if ([(TrustURLSessionContext *)self context])
  {
    CFRelease([(TrustURLSessionContext *)self context]);
    [(TrustURLSessionContext *)self setContext:0];
  }

  v3.receiver = self;
  v3.super_class = TrustURLSessionContext;
  [(TrustURLSessionContext *)&v3 dealloc];
}

@end