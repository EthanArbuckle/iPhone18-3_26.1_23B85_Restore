@interface APDBTriggerRow
- (APDBTriggerRow)initWithExperimentId:(id)a3 treatmentId:(id)a4 table:(id)a5;
@end

@implementation APDBTriggerRow

- (APDBTriggerRow)initWithExperimentId:(id)a3 treatmentId:(id)a4 table:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = APDBTriggerRow;
  v10 = [(APDBTriggerRow *)&v13 initAsNewObjectWithTable:a5];
  v11 = v10;
  if (v10)
  {
    [(APDBTriggerRow *)v10 setValue:v8 forColumnName:@"experimentId"];
    [(APDBTriggerRow *)v11 setValue:v9 forColumnName:@"treatmentId"];
  }

  return v11;
}

@end