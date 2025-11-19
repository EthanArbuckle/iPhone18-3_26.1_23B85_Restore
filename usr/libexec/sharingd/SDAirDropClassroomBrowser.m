@interface SDAirDropClassroomBrowser
- (_TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser)init;
- (void)shareTargetBrowser:(id)a3 didInterruptWithError:(id)a4;
@end

@implementation SDAirDropClassroomBrowser

- (void)shareTargetBrowser:(id)a3 didInterruptWithError:(id)a4
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  v11[5] = v10;
  v12 = a4;
  sub_1002B3098(0, 0, v8, &unk_1007FA790, v11);
}

- (_TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end