@interface KCSharingMessagingdXPCServer
- (NSString)description;
- (_TtC25keychainsharingmessagingd28KCSharingMessagingdXPCServer)init;
- (void)cancelPendingInvitesForGroup:(KCSharingGroup *)group participantHandles:(NSArray *)handles completion:(id)completion;
- (void)didAcceptInviteForGroupID:(NSString *)d completion:(id)completion;
- (void)didDeclineInviteForGroupID:(NSString *)d completion:(id)completion;
- (void)fetchReceivedInviteWithGroupID:(id)d completion:(id)completion;
- (void)fetchReceivedInvitesWithCompletion:(id)completion;
- (void)sendNewInvitesForGroup:(KCSharingGroup *)group completion:(id)completion;
@end

@implementation KCSharingMessagingdXPCServer

- (_TtC25keychainsharingmessagingd28KCSharingMessagingdXPCServer)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC25keychainsharingmessagingd28KCSharingMessagingdXPCServer_connection);
  selfCopy = self;
  v4 = [v2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (void)sendNewInvitesForGroup:(KCSharingGroup *)group completion:(id)completion
{
  v7 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = group;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017558;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017560;
  v14[5] = v13;
  groupCopy = group;
  selfCopy = self;
  sub_1000038C0(0, 0, v9, &unk_100017568, v14);
}

- (void)cancelPendingInvitesForGroup:(KCSharingGroup *)group participantHandles:(NSArray *)handles completion:(id)completion
{
  v9 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = group;
  v13[3] = handles;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017538;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100017540;
  v16[5] = v15;
  groupCopy = group;
  handlesCopy = handles;
  selfCopy = self;
  sub_1000038C0(0, 0, v11, &unk_100017548, v16);
}

- (void)didAcceptInviteForGroupID:(NSString *)d completion:(id)completion
{
  v7 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017518;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017520;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1000038C0(0, 0, v9, &unk_100017528, v14);
}

- (void)didDeclineInviteForGroupID:(NSString *)d completion:(id)completion
{
  v7 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000174F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017500;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1000038C0(0, 0, v9, &unk_100017508, v14);
}

- (void)fetchReceivedInviteWithGroupID:(id)d completion:(id)completion
{
  v6 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = _Block_copy(completion);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = sub_100003FB8;
  v15[8] = v13;
  selfCopy = self;
  sub_100002900(0, 0, v8, &unk_1000174D8, v15);
}

- (void)fetchReceivedInvitesWithCompletion:(id)completion
{
  v5 = (*(*(sub_100003338(&qword_100024DC0, &qword_100017480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100017490;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000174A0;
  v12[5] = v11;
  selfCopy = self;
  sub_1000038C0(0, 0, v7, &unk_1000174B0, v12);
}

@end