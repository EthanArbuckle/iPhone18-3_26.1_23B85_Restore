@interface WAIOReporterUpdateObserver
- (_TtC14wifianalyticsd26WAIOReporterUpdateObserver)init;
- (void)addIOServicePropertyChangeCallback:(id)callback;
@end

@implementation WAIOReporterUpdateObserver

- (void)addIOServicePropertyChangeCallback:(id)callback
{
  v4 = _Block_copy(callback);
  selfCopy = self;
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