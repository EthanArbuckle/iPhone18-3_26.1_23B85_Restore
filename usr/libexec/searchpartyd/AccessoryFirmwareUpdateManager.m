@interface AccessoryFirmwareUpdateManager
- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5;
- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 firmwareUpdateRequestForDevice:(id)a4 completedWithError:(id)a5;
@end

@implementation AccessoryFirmwareUpdateManager

- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  if (a5)
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

  v14 = a3;
  v15 = a4;

  sub_101056E3C(v15, v11);

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryFirmwareUpdateManager:(id)a3 firmwareUpdateRequestForDevice:(id)a4 completedWithError:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;

  v13 = a5;
  sub_101057240(v11, a5);

  (*(v8 + 8))(v11, v7);
}

@end