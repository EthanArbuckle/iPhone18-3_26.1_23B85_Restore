@interface DeviceCapabilityObserver
- (_TtC14NanoPhotosSync24DeviceCapabilityObserver)init;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
@end

@implementation DeviceCapabilityObserver

- (_TtC14NanoPhotosSync24DeviceCapabilityObserver)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v9 = sub_100004180(&qword_100098AE0);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v19, 0, sizeof(v19));
    v15 = a3;

    goto LABEL_6;
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = a3;
  swift_unknownObjectRetain();

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  v17[5] = self;
  v17[6] = a4;
  v17[7] = v13;
  v18 = a3;

  sub_10003F3C4(0, 0, v11, &unk_100071EA8, v17);

  sub_100009BA4(v19, &qword_1000985D0);
}

@end