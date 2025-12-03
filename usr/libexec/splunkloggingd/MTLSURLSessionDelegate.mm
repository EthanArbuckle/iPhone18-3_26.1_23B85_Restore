@interface MTLSURLSessionDelegate
- (_TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation MTLSURLSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_100028124(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end