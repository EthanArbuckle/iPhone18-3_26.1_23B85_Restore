@interface UWBSession
- (_TtC10seserviced10UWBSession)init;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)sessionDidStartRunning:(id)running;
@end

@implementation UWBSession

- (_TtC10seserviced10UWBSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  sub_10024DB50();
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_10024DDAC(errorCopy);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024E058(reason);
}

@end