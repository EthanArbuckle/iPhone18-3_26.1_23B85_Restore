@interface BacklightMonitor
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
@end

@implementation BacklightMonitor

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for BacklightMonitor();
  [(BacklightMonitor *)&v4 dealloc];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_1000443C4(a4, a5);
  swift_unknownObjectRelease();
}

@end