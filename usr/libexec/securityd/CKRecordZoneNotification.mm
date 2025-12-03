@interface CKRecordZoneNotification
- (BOOL)ckksPushTracingEnabled;
- (void)setCkksPushTracingEnabled:(BOOL)enabled;
@end

@implementation CKRecordZoneNotification

- (BOOL)ckksPushTracingEnabled
{
  v2 = objc_getAssociatedObject(self, "ckksPushTracingEnabled");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setCkksPushTracingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = &__kCFBooleanTrue;
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  objc_setAssociatedObject(self, "ckksPushTracingEnabled", v3, 0x301);
}

@end