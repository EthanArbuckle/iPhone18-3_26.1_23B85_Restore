@interface APDBExperimentationReportRow
- (APDBExperimentationReportRow)initWithTriggerRowId:(id)id day:(id)day source:(id)source adFormatType:(id)type slot:(id)slot table:(id)table;
@end

@implementation APDBExperimentationReportRow

- (APDBExperimentationReportRow)initWithTriggerRowId:(id)id day:(id)day source:(id)source adFormatType:(id)type slot:(id)slot table:(id)table
{
  idCopy = id;
  dayCopy = day;
  sourceCopy = source;
  typeCopy = type;
  slotCopy = slot;
  v22.receiver = self;
  v22.super_class = APDBExperimentationReportRow;
  v19 = [(APDBExperimentationReportRow *)&v22 initAsNewObjectWithTable:table];
  v20 = v19;
  if (v19)
  {
    [(APDBExperimentationReportRow *)v19 setValue:idCopy forColumnName:@"triggerRowId"];
    [(APDBExperimentationReportRow *)v20 setValue:dayCopy forColumnName:@"day"];
    [(APDBExperimentationReportRow *)v20 setValue:sourceCopy forColumnName:@"source"];
    [(APDBExperimentationReportRow *)v20 setValue:typeCopy forColumnName:@"adFormatType"];
    [(APDBExperimentationReportRow *)v20 setValue:slotCopy forColumnName:@"slot"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"slotVisibleAdCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"slotVisibleNoAdCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"impressionCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"clickCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"downloadCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"redownloadCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"preOrderPlacedCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"viewDownloadCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"viewRedownloadCount"];
    [(APDBExperimentationReportRow *)v20 setValue:&off_100491EC0 forColumnName:@"viewPreorderPlacedCount"];
  }

  return v20;
}

@end