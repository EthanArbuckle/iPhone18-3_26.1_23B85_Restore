@interface FMDRequestQueueCheck
- (id)requestBody;
@end

@implementation FMDRequestQueueCheck

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestQueueCheck;
  v3 = [(FMDRequest *)&v6 requestBody];
  if ([(FMDRequestQueueCheck *)self shutdownActivityPending])
  {
    v4 = [NSNumber numberWithBool:[(FMDRequestQueueCheck *)self shutdownActivityPending]];
    [v3 setObject:v4 forKeyedSubscript:@"willShutdownSoon"];
  }

  return v3;
}

@end