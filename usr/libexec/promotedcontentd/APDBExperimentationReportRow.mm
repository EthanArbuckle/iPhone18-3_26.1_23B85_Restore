@interface APDBExperimentationReportRow
- (APDBExperimentationReportRow)initWithTriggerRowId:(id)a3 day:(id)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7 table:(id)a8;
@end

@implementation APDBExperimentationReportRow

- (APDBExperimentationReportRow)initWithTriggerRowId:(id)a3 day:(id)a4 source:(id)a5 adFormatType:(id)a6 slot:(id)a7 table:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = APDBExperimentationReportRow;
  v19 = [(APDBExperimentationReportRow *)&v22 initAsNewObjectWithTable:a8];
  v20 = v19;
  if (v19)
  {
    [(APDBExperimentationReportRow *)v19 setValue:v14 forColumnName:@"triggerRowId"];
    [(APDBExperimentationReportRow *)v20 setValue:v15 forColumnName:@"day"];
    [(APDBExperimentationReportRow *)v20 setValue:v16 forColumnName:@"source"];
    [(APDBExperimentationReportRow *)v20 setValue:v17 forColumnName:@"adFormatType"];
    [(APDBExperimentationReportRow *)v20 setValue:v18 forColumnName:@"slot"];
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