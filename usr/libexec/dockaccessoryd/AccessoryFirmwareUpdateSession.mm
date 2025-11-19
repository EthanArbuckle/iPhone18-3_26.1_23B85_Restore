@interface AccessoryFirmwareUpdateSession
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (_TtC14dockaccessoryd30AccessoryFirmwareUpdateSession)init;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)dealloc;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)socket:(id)a3 didFailWithError:(id)a4;
- (void)socketDidClose:(id)a3;
- (void)socketDidReceiveData:(id)a3;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation AccessoryFirmwareUpdateSession

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket);
  v4 = self;
  if (v3)
  {
    [v3 close];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AccessoryFirmwareUpdateSession();
  [(AccessoryFirmwareUpdateSession *)&v5 dealloc];
}

- (_TtC14dockaccessoryd30AccessoryFirmwareUpdateSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000BDBA8(v6, v7);
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1000BF4E8(v7, v10, v12);
  sub_1000A0D2C(v10, v12);
  return 1;
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1000C3608(a5, a6);
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1000BFCD0(v8, v9, a5);
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000C0FFC(v6, a4);
}

- (void)socketDidClose:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1000C39C0();
  swift_unknownObjectRelease();
}

- (void)socket:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  sub_1000C3BDC();
  swift_unknownObjectRelease();
}

- (void)socketDidReceiveData:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000C27BC(a3);
  swift_unknownObjectRelease();
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C3DEC();
}

@end