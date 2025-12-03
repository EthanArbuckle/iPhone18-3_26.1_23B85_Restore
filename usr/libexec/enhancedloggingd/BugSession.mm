@interface BugSession
- (_TtC16enhancedloggingd10BugSession)init;
- (void)bugSession:(id)session didFinishUploadingWithError:(id)error;
- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total session:(id)session;
- (void)uploadProgress:(unint64_t)progress total:(int64_t)total session:(id)session;
@end

@implementation BugSession

- (_TtC16enhancedloggingd10BugSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total session:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_100034C24(progress, total);
}

- (void)uploadProgress:(unint64_t)progress total:(int64_t)total session:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_100031CE8(progress, total, sessionCopy);
}

- (void)bugSession:(id)session didFinishUploadingWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_100034D20(error);
}

@end