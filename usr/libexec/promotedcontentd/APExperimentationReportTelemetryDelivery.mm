@interface APExperimentationReportTelemetryDelivery
- (APExperimentationReportTelemetryDelivery)init;
- (void)logExperimentationErrorWithErrorType:(int64_t)type description:(id)description;
- (void)logReportCadenceWithLastReportDate:(id)date newReportDate:(id)reportDate;
- (void)logReportSuccededIfNeeded;
@end

@implementation APExperimentationReportTelemetryDelivery

- (void)logExperimentationErrorWithErrorType:(int64_t)type description:(id)description
{
  if (description)
  {
    v6 = sub_100398F58();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_100213514(type, v6, v8);
}

- (void)logReportCadenceWithLastReportDate:(id)date newReportDate:(id)reportDate
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
  selfCopy = self;
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