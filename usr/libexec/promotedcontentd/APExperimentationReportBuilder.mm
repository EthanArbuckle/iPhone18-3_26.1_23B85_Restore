@interface APExperimentationReportBuilder
- (APExperimentationReportBuilder)init;
- (BOOL)canceled;
- (void)prepareReportsWithDate:(id)a3;
- (void)setCanceled:(BOOL)a3;
@end

@implementation APExperimentationReportBuilder

- (BOOL)canceled
{
  v3 = OBJC_IVAR___APExperimentationReportBuilder_lock;
  v4 = *(&self->super.isa + OBJC_IVAR___APExperimentationReportBuilder_lock);
  v5 = self;
  os_unfair_lock_lock(v4 + 4);
  LOBYTE(v4) = *(&v5->super.isa + OBJC_IVAR___APExperimentationReportBuilder_isCanceled);
  os_unfair_lock_unlock(*(&self->super.isa + v3) + 4);

  return v4;
}

- (void)setCanceled:(BOOL)a3
{
  v5 = OBJC_IVAR___APExperimentationReportBuilder_lock;
  v6 = *(&self->super.isa + OBJC_IVAR___APExperimentationReportBuilder_lock);
  v7 = self;
  os_unfair_lock_lock(v6 + 4);
  *(&v7->super.isa + OBJC_IVAR___APExperimentationReportBuilder_isCanceled) = a3;
  os_unfair_lock_unlock(*(&self->super.isa + v5) + 4);
}

- (void)prepareReportsWithDate:(id)a3
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397708();
  v8 = self;
  sub_10020A6F0(v7);

  (*(v5 + 8))(v7, v4);
}

- (APExperimentationReportBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end