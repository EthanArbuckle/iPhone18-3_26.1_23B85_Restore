@interface AccessoryFirmwareUpdateManager
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
@end

@implementation AccessoryFirmwareUpdateManager

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_10014C4A8(dCopy, iDCopy);
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10014CE30(accessoryCopy, v10, v12);
  sub_1000A0D2C(v10, v12);
  return 1;
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  selfCopy = self;
  sub_10014D378(progressCopy, dCopy, sent, total);
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  selfCopy = self;
  sub_10014D6B4(completeCopy, dCopy, status);
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  selfCopy = self;
  sub_10014D9DC(completeCopy, status);
}

@end