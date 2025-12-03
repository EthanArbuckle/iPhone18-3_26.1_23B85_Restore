@interface DIDocUploadSessionProxy
- (_TtC8coreidvd23DIDocUploadSessionProxy)init;
- (void)cancelUploads;
- (void)uploadDocData:(NSArray *)data uploadSettings:(DIDocUploadSettings *)settings completion:(id)completion;
@end

@implementation DIDocUploadSessionProxy

- (void)uploadDocData:(NSArray *)data uploadSettings:(DIDocUploadSettings *)settings completion:(id)completion
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = settings;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5710;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006D9180;
  v17[5] = v16;
  dataCopy = data;
  settingsCopy = settings;
  selfCopy = self;
  sub_100500D54(0, 0, v12, &unk_1006E13D0, v17);
}

- (void)cancelUploads
{
  selfCopy = self;
  sub_10047DDB4();
}

- (_TtC8coreidvd23DIDocUploadSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end