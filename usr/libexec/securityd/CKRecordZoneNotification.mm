@interface CKRecordZoneNotification
- (BOOL)ckksPushTracingEnabled;
- (void)setCkksPushTracingEnabled:(BOOL)a3;
@end

@implementation CKRecordZoneNotification

- (BOOL)ckksPushTracingEnabled
{
  v2 = objc_getAssociatedObject(self, "ckksPushTracingEnabled");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setCkksPushTracingEnabled:(BOOL)a3
{
  if (a3)
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