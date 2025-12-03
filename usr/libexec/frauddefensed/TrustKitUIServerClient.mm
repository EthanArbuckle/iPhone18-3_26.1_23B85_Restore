@interface TrustKitUIServerClient
- (void)bannerWith:(id)with and:(id)and;
- (void)bannerWith:(id)with and:(id)and radarTitle:(id)title radarDescription:(id)description radarComponentID:(id)d radarComponentName:(id)name radarComponentVersion:(id)version;
@end

@implementation TrustKitUIServerClient

- (void)bannerWith:(id)with and:(id)and
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_10002E304(v4, v6, v7, v9);
}

- (void)bannerWith:(id)with and:(id)and radarTitle:(id)title radarDescription:(id)description radarComponentID:(id)d radarComponentName:(id)name radarComponentVersion:(id)version
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
  dCopy = d;

  sub_10002E75C(v29, v28, v27, v13, v26, v15, v16, v18, dCopy, v19, v21, v22, v24);
}

@end