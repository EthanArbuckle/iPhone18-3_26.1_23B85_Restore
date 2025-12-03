@interface FMDRequestQueueCheck
- (id)requestBody;
@end

@implementation FMDRequestQueueCheck

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestQueueCheck;
  requestBody = [(FMDRequest *)&v6 requestBody];
  if ([(FMDRequestQueueCheck *)self shutdownActivityPending])
  {
    v4 = [NSNumber numberWithBool:[(FMDRequestQueueCheck *)self shutdownActivityPending]];
    [requestBody setObject:v4 forKeyedSubscript:@"willShutdownSoon"];
  }

  return requestBody;
}

@end