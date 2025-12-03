@interface OpsValidationCategoryAndStatus
- (OpsValidationCategoryAndStatus)initWithOpsValidationCategory:(unsigned int)category status:(unsigned int)status;
@end

@implementation OpsValidationCategoryAndStatus

- (OpsValidationCategoryAndStatus)initWithOpsValidationCategory:(unsigned int)category status:(unsigned int)status
{
  v7.receiver = self;
  v7.super_class = OpsValidationCategoryAndStatus;
  result = [(OpsValidationCategoryAndStatus *)&v7 init];
  if (result)
  {
    result->_category = category;
    result->_status = status;
  }

  return result;
}

@end