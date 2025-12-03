@interface AccessoryFirmwareUpdateManager
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error;
@end

@implementation AccessoryFirmwareUpdateManager

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  managerCopy = manager;
  errorCopy = error;

  sub_101056E3C(errorCopy, v11);

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)manager firmwareUpdateRequestForDevice:(id)device completedWithError:(id)error
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;

  errorCopy = error;
  sub_101057240(v11, error);

  (*(v8 + 8))(v11, v7);
}

@end