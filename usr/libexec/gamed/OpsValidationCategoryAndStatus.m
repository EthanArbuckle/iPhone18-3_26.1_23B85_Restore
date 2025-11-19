@interface OpsValidationCategoryAndStatus
- (OpsValidationCategoryAndStatus)initWithOpsValidationCategory:(unsigned int)a3 status:(unsigned int)a4;
@end

@implementation OpsValidationCategoryAndStatus

- (OpsValidationCategoryAndStatus)initWithOpsValidationCategory:(unsigned int)a3 status:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = OpsValidationCategoryAndStatus;
  result = [(OpsValidationCategoryAndStatus *)&v7 init];
  if (result)
  {
    result->_category = a3;
    result->_status = a4;
  }

  return result;
}

@end