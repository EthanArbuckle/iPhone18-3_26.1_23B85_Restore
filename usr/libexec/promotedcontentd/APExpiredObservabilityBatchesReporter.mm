@interface APExpiredObservabilityBatchesReporter
- (APExpiredObservabilityBatchesReporter)init;
- (APExpiredObservabilityBatchesReporter)initWithBatchPath:(id)path;
- (void)run;
@end

@implementation APExpiredObservabilityBatchesReporter

- (APExpiredObservabilityBatchesReporter)initWithBatchPath:(id)path
{
  v4 = sub_100398F58();
  v5 = (self + OBJC_IVAR___APExpiredObservabilityBatchesReporter_batchPath);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ExpiredObservabilityBatchesReporter();
  return [(APExpiredObservabilityBatchesReporter *)&v8 init];
}

- (void)run
{
  selfCopy = self;
  sub_100362A94();
}

- (APExpiredObservabilityBatchesReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end