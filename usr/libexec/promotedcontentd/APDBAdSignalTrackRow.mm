@interface APDBAdSignalTrackRow
- (APDBAdSignalTrackRow)initWithTriggerRowId:(id)id impressionId:(id)impressionId updateTimestamp:(id)timestamp table:(id)table;
@end

@implementation APDBAdSignalTrackRow

- (APDBAdSignalTrackRow)initWithTriggerRowId:(id)id impressionId:(id)impressionId updateTimestamp:(id)timestamp table:(id)table
{
  idCopy = id;
  impressionIdCopy = impressionId;
  timestampCopy = timestamp;
  v26.receiver = self;
  v26.super_class = APDBAdSignalTrackRow;
  v13 = [(APDBAdSignalTrackRow *)&v26 initAsNewObjectWithTable:table];
  v14 = v13;
  if (v13)
  {
    [(APDBAdSignalTrackRow *)v13 setValue:impressionIdCopy forColumnName:@"impressionId"];
    [(APDBAdSignalTrackRow *)v14 setValue:idCopy forColumnName:@"triggerRowId"];
    v15 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v15 forColumnName:@"slotVisibleAd"];

    v16 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v16 forColumnName:@"slotVisibleNoAd"];

    v17 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v17 forColumnName:@"impression"];

    v18 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v18 forColumnName:@"click"];

    v19 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v19 forColumnName:@"download"];

    v20 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v20 forColumnName:@"redownload"];

    v21 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v21 forColumnName:@"preOrderPlaced"];

    v22 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v22 forColumnName:@"viewDownload"];

    v23 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v23 forColumnName:@"viewRedownload"];

    v24 = [NSNumber numberWithBool:0];
    [(APDBAdSignalTrackRow *)v14 setValue:v24 forColumnName:@"viewPreorderPlaced"];

    [(APDBAdSignalTrackRow *)v14 setValue:timestampCopy forColumnName:@"updateTimestamp"];
  }

  return v14;
}

@end