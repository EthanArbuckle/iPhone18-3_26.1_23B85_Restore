@interface APPExperimentationReportDelivery
- (APPExperimentationReportDelivery)init;
- (APPExperimentationReportDelivery)initWithTriggerTable:(id)table telemetryDelivery:(id)delivery metricReceiving:(id)receiving;
@end

@implementation APPExperimentationReportDelivery

- (APPExperimentationReportDelivery)initWithTriggerTable:(id)table telemetryDelivery:(id)delivery metricReceiving:(id)receiving
{
  *(&self->super.isa + OBJC_IVAR___APPExperimentationReportDelivery_triggerTable) = table;
  swift_unknownObjectUnownedInit();
  *(&self->super.isa + OBJC_IVAR___APPExperimentationReportDelivery_metricReceiving) = receiving;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExperimentationReportDelivery();
  tableCopy = table;
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