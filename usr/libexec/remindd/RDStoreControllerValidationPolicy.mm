@interface RDStoreControllerValidationPolicy
- (RDStoreControllerValidationPolicy)initWithShouldValidateMoveAcrossSharedList:(BOOL)list saveShouldContinueIfCustomValidationFailed:(BOOL)failed;
@end

@implementation RDStoreControllerValidationPolicy

- (RDStoreControllerValidationPolicy)initWithShouldValidateMoveAcrossSharedList:(BOOL)list saveShouldContinueIfCustomValidationFailed:(BOOL)failed
{
  v7.receiver = self;
  v7.super_class = RDStoreControllerValidationPolicy;
  result = [(RDStoreControllerValidationPolicy *)&v7 init];
  if (result)
  {
    result->_shouldValidateMoveAcrossSharedList = list;
    result->_saveShouldContinueIfCustomValidationFailed = failed;
    result->_customValidationFailed = 0;
  }

  return result;
}

@end