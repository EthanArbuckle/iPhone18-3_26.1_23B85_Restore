@interface NPTOServerDeviceController
- (NPTOServerDeviceController)init;
- (void)controllerDidInvalidateContent:(id)a3;
@end

@implementation NPTOServerDeviceController

- (NPTOServerDeviceController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controllerDidInvalidateContent:(id)a3
{
  v4 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_10003F3C4(0, 0, v6, &unk_1000700C8, v8);
}

@end