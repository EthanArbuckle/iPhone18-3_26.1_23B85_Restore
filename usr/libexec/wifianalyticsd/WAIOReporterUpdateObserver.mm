@interface WAIOReporterUpdateObserver
- (_TtC14wifianalyticsd26WAIOReporterUpdateObserver)init;
- (void)addIOServicePropertyChangeCallback:(id)a3;
@end

@implementation WAIOReporterUpdateObserver

- (void)addIOServicePropertyChangeCallback:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  WAIOReporterUpdateObserver.addIOServicePropertyChangeCallback(_:)(v4);

  _Block_release(v4);
}

- (_TtC14wifianalyticsd26WAIOReporterUpdateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end