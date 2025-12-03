@interface APDBTriggerRow
- (APDBTriggerRow)initWithExperimentId:(id)id treatmentId:(id)treatmentId table:(id)table;
@end

@implementation APDBTriggerRow

- (APDBTriggerRow)initWithExperimentId:(id)id treatmentId:(id)treatmentId table:(id)table
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  v13.receiver = self;
  v13.super_class = APDBTriggerRow;
  v10 = [(APDBTriggerRow *)&v13 initAsNewObjectWithTable:table];
  v11 = v10;
  if (v10)
  {
    [(APDBTriggerRow *)v10 setValue:idCopy forColumnName:@"experimentId"];
    [(APDBTriggerRow *)v11 setValue:treatmentIdCopy forColumnName:@"treatmentId"];
  }

  return v11;
}

@end