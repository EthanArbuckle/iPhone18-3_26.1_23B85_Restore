@interface BacklightMonitor
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)dealloc;
@end

@implementation BacklightMonitor

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for BacklightMonitor();
  [(BacklightMonitor *)&v4 dealloc];
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  sub_1000443C4(state, event);
  swift_unknownObjectRelease();
}

@end