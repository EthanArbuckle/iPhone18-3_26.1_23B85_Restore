@interface SWTransparencyXPCImplementation
- (_TtC15swtransparencyd31SWTransparencyXPCImplementation)init;
- (void)clearAllCFUWithCompletion:(id)completion;
- (void)dailyWithCompletion:(id)completion;
- (void)postCFU:(NSString *)u completion:(id)completion;
- (void)sysdiagnoseInfoWithCompletion:(id)completion;
- (void)triggerConsistencyVerificationWithCompletion:(id)completion;
- (void)triggerMilestoneRefreshWithCompletion:(id)completion;
- (void)triggerPublicKeybagRefreshWithCompletion:(id)completion;
- (void)verifyProofs:(NSData *)proofs forDigest:(NSData *)digest configuration:(SWTransparencyOperationConfiguration *)configuration completion:(id)completion;
- (void)waitStateMachineReadyWithCompletion:(id)completion;
@end

@implementation SWTransparencyXPCImplementation

- (void)triggerMilestoneRefreshWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106908;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100106910;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_100106918, v13);
}

- (void)triggerConsistencyVerificationWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001068E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001068F0;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_1001068F8, v13);
}

- (void)triggerPublicKeybagRefreshWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001068C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001068D0;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_1001068D8, v13);
}

- (void)verifyProofs:(NSData *)proofs forDigest:(NSData *)digest configuration:(SWTransparencyOperationConfiguration *)configuration completion:(id)completion
{
  v11 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = proofs;
  v16[3] = digest;
  v16[4] = configuration;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001068A8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001068B0;
  v19[5] = v18;
  proofsCopy = proofs;
  digestCopy = digest;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100039048(0, 0, v14, &unk_1001068B8, v19);
}

- (void)sysdiagnoseInfoWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106888;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100106890;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_100106898, v13);
}

- (void)postCFU:(NSString *)u completion:(id)completion
{
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = u;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100106868;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100106870;
  v15[5] = v14;
  uCopy = u;
  selfCopy = self;
  sub_100039048(0, 0, v10, &unk_100106878, v15);
}

- (void)clearAllCFUWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106848;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100106850;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_100106858, v13);
}

- (void)waitStateMachineReadyWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106828;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100106830;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_100106838, v13);
}

- (void)dailyWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001067E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001067F0;
  v13[5] = v12;
  selfCopy = self;
  sub_100039048(0, 0, v8, &unk_100106800, v13);
}

- (_TtC15swtransparencyd31SWTransparencyXPCImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end