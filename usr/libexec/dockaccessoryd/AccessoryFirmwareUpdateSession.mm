@interface AccessoryFirmwareUpdateSession
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (_TtC14dockaccessoryd30AccessoryFirmwareUpdateSession)init;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)dealloc;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)socket:(id)socket didFailWithError:(id)error;
- (void)socketDidClose:(id)close;
- (void)socketDidReceiveData:(id)data;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)timerDidFire:(id)fire;
@end

@implementation AccessoryFirmwareUpdateSession

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket);
  selfCopy = self;
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

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_1000BDBA8(dCopy, iDCopy);
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1000BF4E8(accessoryCopy, v10, v12);
  sub_1000A0D2C(v10, v12);
  return 1;
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  selfCopy = self;
  sub_1000C3608(sent, total);
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  selfCopy = self;
  sub_1000BFCD0(completeCopy, dCopy, status);
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  selfCopy = self;
  sub_1000C0FFC(completeCopy, status);
}

- (void)socketDidClose:(id)close
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000C39C0();
  swift_unknownObjectRelease();
}

- (void)socket:(id)socket didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_1000C3BDC();
  swift_unknownObjectRelease();
}

- (void)socketDidReceiveData:(id)data
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000C27BC(data);
  swift_unknownObjectRelease();
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  selfCopy = self;
  sub_1000C3DEC();
}

@end