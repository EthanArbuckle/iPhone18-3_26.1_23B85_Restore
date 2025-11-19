@interface APDBDeliveredReportRow
- (id)initType:(id)a3 dayOfYear:(id)a4 frequency:(id)a5 reportDate:(id)a6 table:(id)a7;
@end

@implementation APDBDeliveredReportRow

- (id)initType:(id)a3 dayOfYear:(id)a4 frequency:(id)a5 reportDate:(id)a6 table:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = APDBDeliveredReportRow;
  v16 = [(APDBDeliveredReportRow *)&v19 initAsNewObjectWithTable:a7];
  v17 = v16;
  if (v16)
  {
    [v16 setValue:v12 forColumnName:@"type"];
    [v17 setValue:v13 forColumnName:@"dayOfYear"];
    [v17 setValue:v14 forColumnName:@"frequency"];
    [v17 setValue:v15 forColumnName:@"reportDate"];
  }

  return v17;
}

@end