@interface CPSDaemonShim
+ (_TtC10companiond13CPSDaemonShim)shared;
- (_TtC10companiond13CPSDaemonShim)init;
- (void)activate;
- (void)handleXPCEvent:(id)a3;
@end

@implementation CPSDaemonShim

+ (_TtC10companiond13CPSDaemonShim)shared
{
  if (qword_10009AD80 != -1)
  {
    swift_once();
  }

  v3 = static CPSDaemonShim.shared;

  return v3;
}

- (void)activate
{
  v2 = self;
  CPSDaemonShim.activate()();
}

- (void)handleXPCEvent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  CPSDaemonShim.handleXPCEvent(_:)(a3);
  swift_unknownObjectRelease();
}

- (_TtC10companiond13CPSDaemonShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end