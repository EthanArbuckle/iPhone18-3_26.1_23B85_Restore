@interface APDBAdSignalTrackRow
- (APDBAdSignalTrackRow)initWithTriggerRowId:(id)a3 impressionId:(id)a4 updateTimestamp:(id)a5 table:(id)a6;
@end

@implementation APDBAdSignalTrackRow

- (APDBAdSignalTrackRow)initWithTriggerRowId:(id)a3 impressionId:(id)a4 updateTimestamp:(id)a5 table:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26.receiver = self;
  v26.super_class = APDBAdSignalTrackRow;
  v13 = [(APDBAdSignalTrackRow *)&v26 initAsNewObjectWithTable:a6];
  v14 = v13;
  if (v13)
  {
    [(APDBAdSignalTrackRow *)v13 setValue:v11 forColumnName:@"impressionId"];
    [(APDBAdSignalTrackRow *)v14 setValue:v10 forColumnName:@"triggerRowId"];
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

    [(APDBAdSignalTrackRow *)v14 setValue:v12 forColumnName:@"updateTimestamp"];
  }

  return v14;
}

@end