@interface FeatureFlags
+ (BOOL)sendDiagnosticNotificaton;
+ (BOOL)usesNewResetSync;
@end

@implementation FeatureFlags

+ (BOOL)usesNewResetSync
{
  v2 = +[FFConfiguration shared];
  v3 = [v2 stateForFeature:@"backup_restore_reset" domain:@"EventKitSync"];

  LOBYTE(v2) = [v3 value] == 1;
  return v2;
}

+ (BOOL)sendDiagnosticNotificaton
{
  v2 = +[FFConfiguration shared];
  v3 = [v2 stateForFeature:@"send_diagnostic_notification" domain:@"EventKitSync"];

  LOBYTE(v2) = [v3 value] == 1;
  return v2;
}

@end