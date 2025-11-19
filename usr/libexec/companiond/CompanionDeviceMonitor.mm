@interface CompanionDeviceMonitor
- (_TtC10companiond22CompanionDeviceMonitor)init;
- (_TtC10companiond22CompanionDeviceMonitor)initWithQueue:(id)a3;
- (void)getCompanionDeviceWithCompletion:(id)a3;
@end

@implementation CompanionDeviceMonitor

- (_TtC10companiond22CompanionDeviceMonitor)initWithQueue:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompanionDeviceMonitor();
  v4 = a3;
  return [(CompanionDeviceMonitor *)&v6 init];
}

- (void)getCompanionDeviceWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CompanionDeviceMonitor.getCompanionDevice(completion:)(sub_10005AD9C, v5);
}

- (_TtC10companiond22CompanionDeviceMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end