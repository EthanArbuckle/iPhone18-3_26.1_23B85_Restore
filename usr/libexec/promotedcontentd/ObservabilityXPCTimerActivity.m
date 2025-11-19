@interface ObservabilityXPCTimerActivity
- (_TtC16promotedcontentd29ObservabilityXPCTimerActivity)init;
@end

@implementation ObservabilityXPCTimerActivity

- (_TtC16promotedcontentd29ObservabilityXPCTimerActivity)init
{
  v2 = [objc_allocWithZone(type metadata accessor for ObservabilityXPCTimerActivityDelegate()) init];
  v3 = [objc_allocWithZone(APXPCActivity) initWithDelegate:v2];
  v4 = type metadata accessor for ObservabilityXPCTimerActivity();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivityDelegate] = v2;
  *&v5[OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivity] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(ObservabilityXPCTimerActivity *)&v8 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

@end