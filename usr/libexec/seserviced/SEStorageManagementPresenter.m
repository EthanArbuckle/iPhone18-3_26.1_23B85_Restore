@interface SEStorageManagementPresenter
- (_TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter)init;
- (void)deletePassEntry:(NSData *)a3 completionHandler:(id)a4;
- (void)deleteSecureElementCredentials:(NSData *)a3 completionHandler:(id)a4;
- (void)dismiss:(NSData *)a3 completionHandler:(id)a4;
- (void)offloadMuirfieldWithCompletionHandler:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SEStorageManagementPresenter

- (_TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deletePassEntry:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F3F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10040F400;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001F0028(0, 0, v10, &unk_10040F408, v15);
}

- (void)deleteSecureElementCredentials:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F3D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10040F3D8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001F0028(0, 0, v10, &unk_10040F3E0, v15);
}

- (void)offloadMuirfieldWithCompletionHandler:(id)a3
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10040F3A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10040F3B0;
  v13[5] = v12;
  v14 = self;
  sub_1001F0028(0, 0, v8, &unk_10040F3B8, v13);
}

- (void)dismiss:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10040F358;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10040F368;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001F0028(0, 0, v10, &unk_10040F378, v15);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001F1DD4();
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001F2390();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1001F2564(a4);
}

@end