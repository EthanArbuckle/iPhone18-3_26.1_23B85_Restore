@interface DockDetector
- (_TtC14dockaccessoryd12DockDetector)init;
- (void)dealloc;
@end

@implementation DockDetector

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager);
  selfCopy = self;
  IOHIDManagerClose(v2, 0);
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer) = 0;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DockDetector(0);
  [(DockDetector *)&v5 dealloc];
}

- (_TtC14dockaccessoryd12DockDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end