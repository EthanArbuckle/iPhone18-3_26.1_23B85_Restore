@interface _REMCDObjectEffectiveVersionManualValidationDelegateImpl
- (void)processBatchOfTreeNodes:(id)a3;
@end

@implementation _REMCDObjectEffectiveVersionManualValidationDelegateImpl

- (void)processBatchOfTreeNodes:(id)a3
{
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "manual processBatchOfTreeNodes does not actually save", v4, 2u);
  }
}

@end