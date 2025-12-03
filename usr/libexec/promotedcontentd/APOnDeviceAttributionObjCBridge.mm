@interface APOnDeviceAttributionObjCBridge
- (APOnDeviceAttributionObjCBridge)init;
- (id)coordinatorFor:(id)for accountToken:(id)token;
@end

@implementation APOnDeviceAttributionObjCBridge

- (id)coordinatorFor:(id)for accountToken:(id)token
{
  v5 = sub_100398F58();
  v7 = v6;
  v8 = sub_100398F58();
  v10 = v9;
  sub_1000035B8((&self->super.isa + OBJC_IVAR___APOnDeviceAttributionObjCBridge_coordinatorProvider), *&self->coordinatorProvider[OBJC_IVAR___APOnDeviceAttributionObjCBridge_coordinatorProvider + 16]);
  selfCopy = self;
  v12 = sub_100251960(v5, v7, v8, v10);

  v13 = type metadata accessor for OnDeviceAttributionCoordinatorObjCBridge();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___APOnDeviceAttributionCoordinatorObjCBridge_coordinator] = v12;
  v17.receiver = v14;
  v17.super_class = v13;

  v15 = [(APOnDeviceAttributionObjCBridge *)&v17 init];

  return v15;
}

- (APOnDeviceAttributionObjCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end