@interface AONSenseSampleProvider
+ (_TtC19ProximityDaemonCore22AONSenseSampleProvider)shared;
- (_TtC19ProximityDaemonCore22AONSenseSampleProvider)init;
- (void)registerWithQueue:(id)queue callback:(id)callback;
@end

@implementation AONSenseSampleProvider

+ (_TtC19ProximityDaemonCore22AONSenseSampleProvider)shared
{
  if (qword_1009F7978 != -1)
  {
    swift_once();
  }

  v3 = static AONSenseSampleProvider.shared;

  return v3;
}

- (void)registerWithQueue:(id)queue callback:(id)callback
{
  v6 = _Block_copy(callback);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  AONSenseSampleProvider.register(queue:callback:)(queueCopy, sub_100396F60, v7);
}

- (_TtC19ProximityDaemonCore22AONSenseSampleProvider)init
{
  Logger.init(subsystem:category:)();
  v3 = (&self->super.isa + OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AONSenseSampleProvider();
  return [(AONSenseSampleProvider *)&v5 init];
}

@end