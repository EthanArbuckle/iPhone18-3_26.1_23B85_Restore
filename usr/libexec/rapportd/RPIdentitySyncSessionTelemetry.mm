@interface RPIdentitySyncSessionTelemetry
- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)init;
- (void)logIdentityUpdateWithHandle:(NSString *)a3 deviceIRKData:(NSData *)a4 type:(int)a5 source:(int)a6 completionHandler:(id)a7;
- (void)logStartWithBtAddressData:(NSData *)a3 handles:(NSSet *)a4 completionHandler:(id)a5;
- (void)setWithIdentitySyncCache:(_TtC8rapportd19RPIdentitySyncCache *)a3 completionHandler:(id)a4;
@end

@implementation RPIdentitySyncSessionTelemetry

- (void)logStartWithBtAddressData:(NSData *)a3 handles:(NSSet *)a4 completionHandler:(id)a5
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10014BE88;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10014BE90;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_1000EED08(0, 0, v12, &unk_10014BE98, v17);
}

- (void)logIdentityUpdateWithHandle:(NSString *)a3 deviceIRKData:(NSData *)a4 type:(int)a5 source:(int)a6 completionHandler:(id)a7
{
  v13 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 36) = a6;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10014BE68;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10014BE70;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;

  sub_1000EED08(0, 0, v16, &unk_10014BE78, v21);
}

- (void)setWithIdentitySyncCache:(_TtC8rapportd19RPIdentitySyncCache *)a3 completionHandler:(id)a4
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
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
  v14[4] = &unk_10014BE30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014BE40;
  v15[5] = v14;

  sub_1000EED08(0, 0, v10, &unk_10014BE50, v15);
}

- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *self->sessions = &_swiftEmptyDictionarySingleton;
  *self->sessionDuration = 0x4024000000000000;
  type metadata accessor for RPIdentitySyncPathMonitor();
  swift_allocObject();
  *self->pathMonitor = sub_100102EF4();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(RPIdentitySyncSessionTelemetry *)&v5 init];
}

@end