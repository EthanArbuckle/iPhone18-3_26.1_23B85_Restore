@interface CarKeyAppLauncher
+ (void)maybeLaunchAppsForKeyIdentifier:(id)identifier;
- (void)quitMonitor:(id)monitor userClosedLastSceneOfApplicationWithBundleID:(id)d;
@end

@implementation CarKeyAppLauncher

+ (void)maybeLaunchAppsForKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_getObjCClassMetadata();
  sub_10013D8BC(v4, v6);

  sub_10006A178(v4, v6);
}

- (void)quitMonitor:(id)monitor userClosedLastSceneOfApplicationWithBundleID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  monitorCopy = monitor;
  selfCopy = self;
  sub_10013EC0C(v6, v8);
}

@end