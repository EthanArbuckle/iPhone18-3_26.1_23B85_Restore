@interface SESStartup
+ (void)scheduleAndRunAllOneTimeTasks;
+ (void)startup;
- (_TtC10seserviced10SESStartup)init;
@end

@implementation SESStartup

+ (void)scheduleAndRunAllOneTimeTasks
{
  sub_100273CE0();
  type metadata accessor for SESOnceOnlyTaskManager();
  static SESOnceOnlyTaskManager.runAll()();
}

+ (void)startup
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  if (qword_1005019A8 != -1)
  {
    swift_once();
  }

  [qword_10051B2C0 resume];
  sub_1002D9190();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1001F9BE8(0, 0, v5, &unk_10040F660, v7);
}

- (_TtC10seserviced10SESStartup)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SESStartup *)&v3 init];
}

@end