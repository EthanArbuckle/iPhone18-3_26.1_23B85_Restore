@interface NRRepeatingAlertEngineItemMigrationFailed
- (void)alternateButtonWasPressed;
@end

@implementation NRRepeatingAlertEngineItemMigrationFailed

- (void)alternateButtonWasPressed
{
  v2 = +[NRQueue registryDaemonQueue];
  [v2 dispatchAsync:&stru_100179748];
}

@end