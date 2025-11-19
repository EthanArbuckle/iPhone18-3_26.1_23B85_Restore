@interface APExperimentationReportTelemetryDelivery
- (APExperimentationReportTelemetryDelivery)init;
- (void)logExperimentationErrorWithErrorType:(int64_t)a3 description:(id)a4;
- (void)logReportCadenceWithLastReportDate:(id)a3 newReportDate:(id)a4;
- (void)logReportSuccededIfNeeded;
@end

@implementation APExperimentationReportTelemetryDelivery

- (void)logExperimentationErrorWithErrorType:(int64_t)a3 description:(id)a4
{
  if (a4)
  {
    v6 = sub_100398F58();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_100213514(a3, v6, v8);
}

- (void)logReportCadenceWithLastReportDate:(id)a3 newReportDate:(id)a4
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v12 - v9;
  sub_100397708();
  sub_100397708();
  sub_10021452C();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
}

- (void)logReportSuccededIfNeeded
{
  v2 = self;
  sub_100213C00();
}

- (APExperimentationReportTelemetryDelivery)init
{
  *(&self->super.isa + OBJC_IVAR___APExperimentationReportTelemetryDelivery_reportErrors) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExperimentationReportTelemetryDelivery();
  return [(APExperimentationReportTelemetryDelivery *)&v3 init];
}

@end