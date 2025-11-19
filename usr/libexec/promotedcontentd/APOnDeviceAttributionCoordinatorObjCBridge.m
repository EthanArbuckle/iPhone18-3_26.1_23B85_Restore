@interface APOnDeviceAttributionCoordinatorObjCBridge
- (APOnDeviceAttributionCoordinatorObjCBridge)init;
- (void)appDidOpenWithBundleId:(id)a3 metadata:(id)a4 useDetailedToken:(BOOL)a5 intervalId:(unint64_t)a6 tokenClosure:(id)a7 completionHandler:(id)a8;
- (void)setV2TokenKey:(id)a3 intervalId:(unint64_t)a4;
@end

@implementation APOnDeviceAttributionCoordinatorObjCBridge

- (void)appDidOpenWithBundleId:(id)a3 metadata:(id)a4 useDetailedToken:(BOOL)a5 intervalId:(unint64_t)a6 tokenClosure:(id)a7 completionHandler:(id)a8
{
  v10 = a5;
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  v15 = sub_100398F58();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = a4;
  v21 = self;
  sub_100250250(v15, v17, v20, v10, a6, sub_100251950, v18, sub_100251958, v19);
}

- (void)setV2TokenKey:(id)a3 intervalId:(unint64_t)a4
{
  v6 = type metadata accessor for OnDeviceAttributionTelemetry(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  if (a3)
  {
    v10 = a3;
    a3 = sub_100397558();
    v12 = v11;

    sub_1001EF9F4(a3, v12);
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  sub_100398BE8();
  v13 = *(&self->super.isa + OBJC_IVAR___APOnDeviceAttributionCoordinatorObjCBridge_coordinator);

  sub_100251080(a3, v12, v8, v13);
  sub_1001DDE50(a3, v12);

  sub_1001DDE50(a3, v12);
  sub_1002518F0(v8, type metadata accessor for OnDeviceAttributionTelemetry);
}

- (APOnDeviceAttributionCoordinatorObjCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end