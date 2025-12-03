@interface CompanionDeviceMonitor
- (_TtC10companiond22CompanionDeviceMonitor)init;
- (_TtC10companiond22CompanionDeviceMonitor)initWithQueue:(id)queue;
- (void)getCompanionDeviceWithCompletion:(id)completion;
@end

@implementation CompanionDeviceMonitor

- (_TtC10companiond22CompanionDeviceMonitor)initWithQueue:(id)queue
{
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue) = queue;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompanionDeviceMonitor();
  queueCopy = queue;
  return [(CompanionDeviceMonitor *)&v6 init];
}

- (void)getCompanionDeviceWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CompanionDeviceMonitor.getCompanionDevice(completion:)(sub_10005AD9C, v5);
}

- (_TtC10companiond22CompanionDeviceMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end