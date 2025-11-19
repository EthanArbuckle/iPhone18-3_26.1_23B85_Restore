@interface MTLSURLSessionDelegate
- (_TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation MTLSURLSessionDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100028124(v10, v11, v8);
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