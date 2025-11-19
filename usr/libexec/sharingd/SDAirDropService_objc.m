@interface SDAirDropService_objc
- (SDAirDropService_objc)init;
- (void)dumpDBWithUrl:(id)a3;
- (void)start;
@end

@implementation SDAirDropService_objc

- (void)start
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_retain_n();
  static Task<>.noThrow(priority:operation:)();

  sub_10047B4C4(v5);
}

- (void)dumpDBWithUrl:(id)a3
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = self;
  (*(v9 + 32))(v17 + v16, v12, v8);
  swift_retain_n();
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  sub_10047B4C4(v7);
  (*(v9 + 8))(v14, v8);
}

- (SDAirDropService_objc)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *self->service = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SDAirDropService_objc *)&v5 init];
}

@end