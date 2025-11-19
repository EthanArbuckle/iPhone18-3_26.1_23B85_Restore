@interface ObservabilityXPCTimerActivityDelegate
- (APXPCActivityCriteria)criteria;
- (BOOL)runActivity:(id)a3;
- (NSString)taskID;
- (_TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate)init;
- (id)checkinWithCriteria:(id)a3;
- (void)deferActivity:(id)a3 completionHandler:(id)a4;
- (void)setTaskID:(id)a3;
- (void)terminateActivity:(id)a3;
@end

@implementation ObservabilityXPCTimerActivityDelegate

- (NSString)taskID
{

  v2 = sub_100398F28();

  return v2;
}

- (void)setTaskID:(id)a3
{
  v4 = sub_100398F58();
  v5 = (self + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_taskID);
  *v5 = v4;
  v5[1] = v6;
}

- (APXPCActivityCriteria)criteria
{
  v2 = self;
  v3 = sub_1001F6250();

  return v3;
}

- (BOOL)runActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1001F6454(v4);

  return self & 1;
}

- (void)deferActivity:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001F6D24;
    *(v10 + 24) = v6;
    v11 = *(v8 + 24);
    v12 = self;

    v11(sub_1001F6D3C, v10, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(v5);
    (*(v5 + 2))(v5, 1);

    _Block_release(v5);
  }
}

- (void)terminateActivity:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = self;
    v7(ExperimentationErrorType.rawValue.getter, 0, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (id)checkinWithCriteria:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1001F6828(a3);
  swift_unknownObjectRelease();

  return 0;
}

- (_TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate)init
{
  v3 = (self + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_taskID);
  *v3 = 0xD000000000000031;
  v3[1] = 0x80000001004298B0;
  *(self + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_currentScheduledTime;
  v5 = sub_100397748();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ObservabilityXPCTimerActivityDelegate();
  return [(ObservabilityXPCTimerActivityDelegate *)&v7 init];
}

@end