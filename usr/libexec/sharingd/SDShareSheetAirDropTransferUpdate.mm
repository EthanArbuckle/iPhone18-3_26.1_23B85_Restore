@interface SDShareSheetAirDropTransferUpdate
- (SDShareSheetAirDropTransferUpdate)init;
- (SDShareSheetAirDropTransferUpdate)initWithSessionID:(id)d realName:(id)name;
@end

@implementation SDShareSheetAirDropTransferUpdate

- (SDShareSheetAirDropTransferUpdate)initWithSessionID:(id)d realName:(id)name
{
  ObjectType = swift_getObjectType();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state) = 1;
  *(self + OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress) = 0;
  v10 = (self + OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName);
  *v11 = v9;
  v11[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(SDShareSheetAirDropTransferUpdate *)&v14 init];
}

- (SDShareSheetAirDropTransferUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end