@interface AccessoryFirmwareUpdateManager
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
@end

@implementation AccessoryFirmwareUpdateManager

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10014C4A8(v6, v7);
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10014CE30(v7, v10, v12);
  sub_1000A0D2C(v10, v12);
  return 1;
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_10014D378(v10, v11, a5, a6);
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10014D6B4(v8, v9, a5);
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10014D9DC(v6, a4);
}

@end