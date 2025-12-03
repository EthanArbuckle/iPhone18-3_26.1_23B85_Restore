@interface APOnDeviceAttributionCoordinatorObjCBridge
- (APOnDeviceAttributionCoordinatorObjCBridge)init;
- (void)appDidOpenWithBundleId:(id)id metadata:(id)metadata useDetailedToken:(BOOL)token intervalId:(unint64_t)intervalId tokenClosure:(id)closure completionHandler:(id)handler;
- (void)setV2TokenKey:(id)key intervalId:(unint64_t)id;
@end

@implementation APOnDeviceAttributionCoordinatorObjCBridge

- (void)appDidOpenWithBundleId:(id)id metadata:(id)metadata useDetailedToken:(BOOL)token intervalId:(unint64_t)intervalId tokenClosure:(id)closure completionHandler:(id)handler
{
  tokenCopy = token;
  v13 = _Block_copy(closure);
  v14 = _Block_copy(handler);
  v15 = sub_100398F58();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  metadataCopy = metadata;
  selfCopy = self;
  sub_100250250(v15, v17, metadataCopy, tokenCopy, intervalId, sub_100251950, v18, sub_100251958, v19);
}

- (void)setV2TokenKey:(id)key intervalId:(unint64_t)id
{
  v6 = type metadata accessor for OnDeviceAttributionTelemetry(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  if (key)
  {
    keyCopy = key;
    key = sub_100397558();
    v12 = v11;

    sub_1001EF9F4(key, v12);
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  sub_100398BE8();
  v13 = *(&self->super.isa + OBJC_IVAR___APOnDeviceAttributionCoordinatorObjCBridge_coordinator);

  sub_100251080(key, v12, v8, v13);
  sub_1001DDE50(key, v12);

  sub_1001DDE50(key, v12);
  sub_1002518F0(v8, type metadata accessor for OnDeviceAttributionTelemetry);
}

- (APOnDeviceAttributionCoordinatorObjCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end