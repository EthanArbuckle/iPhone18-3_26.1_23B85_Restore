@interface RDStoreControllerValidationPolicy
- (RDStoreControllerValidationPolicy)initWithShouldValidateMoveAcrossSharedList:(BOOL)a3 saveShouldContinueIfCustomValidationFailed:(BOOL)a4;
@end

@implementation RDStoreControllerValidationPolicy

- (RDStoreControllerValidationPolicy)initWithShouldValidateMoveAcrossSharedList:(BOOL)a3 saveShouldContinueIfCustomValidationFailed:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = RDStoreControllerValidationPolicy;
  result = [(RDStoreControllerValidationPolicy *)&v7 init];
  if (result)
  {
    result->_shouldValidateMoveAcrossSharedList = a3;
    result->_saveShouldContinueIfCustomValidationFailed = a4;
    result->_customValidationFailed = 0;
  }

  return result;
}

@end