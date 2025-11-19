@interface UWBSession
- (_TtC10seserviced10UWBSession)init;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)sessionDidStartRunning:(id)a3;
@end

@implementation UWBSession

- (_TtC10seserviced10UWBSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10024DB50();
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10024DDAC(v8);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10024E058(a4);
}

@end