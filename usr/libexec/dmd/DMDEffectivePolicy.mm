@interface DMDEffectivePolicy
- (void)setExcludedIdentifiers:(id)a3;
@end

@implementation DMDEffectivePolicy

- (void)setExcludedIdentifiers:(id)a3
{
  v3 = DMFPolicyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100082984(v3);
  }
}

@end