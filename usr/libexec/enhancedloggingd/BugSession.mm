@interface BugSession
- (_TtC16enhancedloggingd10BugSession)init;
- (void)bugSession:(id)a3 didFinishUploadingWithError:(id)a4;
- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 session:(id)a5;
- (void)uploadProgress:(unint64_t)a3 total:(int64_t)a4 session:(id)a5;
@end

@implementation BugSession

- (_TtC16enhancedloggingd10BugSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 session:(id)a5
{
  v8 = a5;
  v9 = self;
  sub_100034C24(a3, a4);
}

- (void)uploadProgress:(unint64_t)a3 total:(int64_t)a4 session:(id)a5
{
  v8 = a5;
  v9 = self;
  sub_100031CE8(a3, a4, v8);
}

- (void)bugSession:(id)a3 didFinishUploadingWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100034D20(a4);
}

@end