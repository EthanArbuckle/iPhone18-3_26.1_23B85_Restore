@interface dockCertHandler
- (void)dumpStateWithCompletion:(id)completion;
- (void)getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completion:(id)completion;
- (void)haltWithInfo:(id)info completion:(id)completion;
- (void)manualFirmwareUpdateWithFilePath:(id)path sandboxExt:(id)ext completion:(id)completion;
- (void)rebootWithInfo:(id)info completion:(id)completion;
@end

@implementation dockCertHandler

- (void)getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_10009B3A4(info, v8, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)manualFirmwareUpdateWithFilePath:(id)path sandboxExt:(id)ext completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_10009C520(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)haltWithInfo:(id)info completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  infoCopy = info;
  selfCopy = self;
  sub_10009D82C(infoCopy, selfCopy, v6, byte_100275AE0, &unk_10023BF10, &unk_100275B08, &unk_10023BF10, &unk_10023BF20);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)rebootWithInfo:(id)info completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  infoCopy = info;
  selfCopy = self;
  sub_10009D82C(infoCopy, selfCopy, v6, byte_100275A90, &unk_10023BEE8, &unk_100275AB8, &unk_10023BEE8, &unk_10023BF00);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)dumpStateWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  sub_1001DF270();
  v4 = String._bridgeToObjectiveC()();

  v3[2](v3, v4, 0);

  _Block_release(v3);
}

@end