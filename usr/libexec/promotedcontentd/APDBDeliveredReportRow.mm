@interface APDBDeliveredReportRow
- (id)initType:(id)type dayOfYear:(id)year frequency:(id)frequency reportDate:(id)date table:(id)table;
@end

@implementation APDBDeliveredReportRow

- (id)initType:(id)type dayOfYear:(id)year frequency:(id)frequency reportDate:(id)date table:(id)table
{
  typeCopy = type;
  yearCopy = year;
  frequencyCopy = frequency;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = APDBDeliveredReportRow;
  v16 = [(APDBDeliveredReportRow *)&v19 initAsNewObjectWithTable:table];
  v17 = v16;
  if (v16)
  {
    [v16 setValue:typeCopy forColumnName:@"type"];
    [v17 setValue:yearCopy forColumnName:@"dayOfYear"];
    [v17 setValue:frequencyCopy forColumnName:@"frequency"];
    [v17 setValue:dateCopy forColumnName:@"reportDate"];
  }

  return v17;
}

@end