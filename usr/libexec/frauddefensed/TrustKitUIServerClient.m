@interface TrustKitUIServerClient
- (void)bannerWith:(id)a3 and:(id)a4;
- (void)bannerWith:(id)a3 and:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 radarComponentID:(id)a7 radarComponentName:(id)a8 radarComponentVersion:(id)a9;
@end

@implementation TrustKitUIServerClient

- (void)bannerWith:(id)a3 and:(id)a4
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_10002E304(v4, v6, v7, v9);
}

- (void)bannerWith:(id)a3 and:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 radarComponentID:(id)a7 radarComponentName:(id)a8 radarComponentVersion:(id)a9
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v11;
  v29 = v10;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = a7;

  sub_10002E75C(v29, v28, v27, v13, v26, v15, v16, v18, v25, v19, v21, v22, v24);
}

@end