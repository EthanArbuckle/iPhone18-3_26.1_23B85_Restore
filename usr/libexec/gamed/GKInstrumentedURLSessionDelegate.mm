@interface GKInstrumentedURLSessionDelegate
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation GKInstrumentedURLSessionDelegate

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001FC1A4(v11, v9, v10);
}

@end