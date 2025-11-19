@interface CarKeyAppLauncher
+ (void)maybeLaunchAppsForKeyIdentifier:(id)a3;
- (void)quitMonitor:(id)a3 userClosedLastSceneOfApplicationWithBundleID:(id)a4;
@end

@implementation CarKeyAppLauncher

+ (void)maybeLaunchAppsForKeyIdentifier:(id)a3
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_getObjCClassMetadata();
  sub_10013D8BC(v4, v6);

  sub_10006A178(v4, v6);
}

- (void)quitMonitor:(id)a3 userClosedLastSceneOfApplicationWithBundleID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_10013EC0C(v6, v8);
}

@end