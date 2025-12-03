@interface GKInstrumentedURLSessionDelegate
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation GKInstrumentedURLSessionDelegate

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_1001FC1A4(selfCopy, taskCopy, metricsCopy);
}

@end