@interface SDAirDropMoveToAppShareSheet
- (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet)init;
- (void)showShareSheetWith:(id)with completion:(id)completion;
@end

@implementation SDAirDropMoveToAppShareSheet

- (void)showShareSheetWith:(id)with completion:(id)completion
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  type metadata accessor for URL();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v11;
  v14[6] = sub_10066E1F8;
  v14[7] = v12;
  selfCopy = self;
  sub_1002B3098(0, 0, v9, &unk_10080F1E8, v14);
}

- (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDAirDropMoveToAppShareSheet *)&v3 init];
}

@end