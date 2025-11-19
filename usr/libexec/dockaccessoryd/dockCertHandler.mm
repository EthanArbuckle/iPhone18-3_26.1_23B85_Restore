@interface dockCertHandler
- (void)dumpStateWithCompletion:(id)a3;
- (void)getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completion:(id)a5;
- (void)haltWithInfo:(id)a3 completion:(id)a4;
- (void)manualFirmwareUpdateWithFilePath:(id)a3 sandboxExt:(id)a4 completion:(id)a5;
- (void)rebootWithInfo:(id)a3 completion:(id)a4;
@end

@implementation dockCertHandler

- (void)getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a3;
  v10 = self;
  sub_10009B3A4(a3, v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)manualFirmwareUpdateWithFilePath:(id)a3 sandboxExt:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_10009C520(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)haltWithInfo:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10009D82C(v7, v8, v6, byte_100275AE0, &unk_10023BF10, &unk_100275B08, &unk_10023BF10, &unk_10023BF20);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)rebootWithInfo:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10009D82C(v7, v8, v6, byte_100275A90, &unk_10023BEE8, &unk_100275AB8, &unk_10023BEE8, &unk_10023BF00);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)dumpStateWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  sub_1001DF270();
  v4 = String._bridgeToObjectiveC()();

  v3[2](v3, v4, 0);

  _Block_release(v3);
}

@end