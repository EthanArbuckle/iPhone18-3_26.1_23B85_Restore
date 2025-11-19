@interface APPExperimentationReportDelivery
- (APPExperimentationReportDelivery)init;
- (APPExperimentationReportDelivery)initWithTriggerTable:(id)a3 telemetryDelivery:(id)a4 metricReceiving:(id)a5;
@end

@implementation APPExperimentationReportDelivery

- (APPExperimentationReportDelivery)initWithTriggerTable:(id)a3 telemetryDelivery:(id)a4 metricReceiving:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___APPExperimentationReportDelivery_triggerTable) = a3;
  swift_unknownObjectUnownedInit();
  *(&self->super.isa + OBJC_IVAR___APPExperimentationReportDelivery_metricReceiving) = a5;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExperimentationReportDelivery();
  v8 = a3;
  swift_unknownObjectRetain();
  return [(APPExperimentationReportDelivery *)&v10 init];
}

- (APPExperimentationReportDelivery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end