@interface APGlobalState
+ (APOnDeviceAttributionObjCBridge)attributionObjCBridge;
+ (void)createWithTimerXPCActivity:(id)activity database:(id)database signing:(id)signing;
+ (void)prepareDevicePipelinesWithMetricNotificationRegister:(id)register;
+ (void)registerJetPackCacheRequestTaskWithMigrationContext:(id)context;
+ (void)startDevicePipelines;
+ (void)startPeriodicFetch;
+ (void)startWorkCoordinator;
- (APGlobalState)init;
@end

@implementation APGlobalState

+ (APOnDeviceAttributionObjCBridge)attributionObjCBridge
{
  if (off_1004D4BC8)
  {
    v3 = *(off_1004D4BC8 + 2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)createWithTimerXPCActivity:(id)activity database:(id)database signing:(id)signing
{
  activityCopy = activity;
  databaseCopy = database;
  swift_unknownObjectRetain();
  sub_1001F4C8C(activityCopy, databaseCopy, signing);

  swift_unknownObjectRelease();
}

+ (void)startWorkCoordinator
{
  if (qword_1004DDA60)
  {

    sub_100397DA8();
  }

  else
  {
    __break(1u);
  }
}

+ (void)prepareDevicePipelinesWithMetricNotificationRegister:(id)register
{
  sub_1003983A8();
  swift_unknownObjectRetain();
  if ((sub_100398368() & 1) != 0 && off_1004D4BC8)
  {
    v4 = *(*off_1004D4BC8 + 128);

    v4(register);
  }

  swift_unknownObjectRelease();
}

+ (void)startDevicePipelines
{
  sub_1003983A8();
  if ((sub_100398368() & 1) != 0 && off_1004D4BC8)
  {
    v2 = *(*off_1004D4BC8 + 136);

    v2(v3);
  }
}

+ (void)registerJetPackCacheRequestTaskWithMigrationContext:(id)context
{
  contextCopy = context;
  sub_1001F5070(context);
}

- (APGlobalState)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GlobalState();
  return [(APGlobalState *)&v3 init];
}

+ (void)startPeriodicFetch
{
  if (qword_1004D3EE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for PeriodicFetchScheduler();
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 16) = sub_1001EC410(_swiftEmptyArrayStorage);
  swift_weakAssign();
  qword_1004DDA78 = v0;

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v1 = sub_100398CA8();
  sub_10000351C(v1, qword_1004DDA10);
  v2 = sub_100398C88();
  v3 = sub_1003993E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PCPF] Checking if there are any periodic fetching tasks to schedule", v4, 2u);
  }

  v5 = qword_1004DDA78;
  if (!qword_1004DDA78)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1001F46D4(7367795, 0xE300000000000000, 0, v5);

  if (!qword_1004DDA78)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1001F6E88(7367795, 0xE300000000000000);
}

@end