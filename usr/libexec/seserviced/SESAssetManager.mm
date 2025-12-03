@interface SESAssetManager
+ (BOOL)kickOffAndReturnError:(id *)error;
+ (void)syncMobileAssetUserInitiated;
- (void)handleDownloadedAsset:(id)asset;
@end

@implementation SESAssetManager

+ (BOOL)kickOffAndReturnError:(id *)error
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (qword_100501C58 != -1)
  {
    v8 = ObjCClassMetadata;
    swift_once();
    ObjCClassMetadata = v8;
  }

  v4 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  __chkstk_darwin(ObjCClassMetadata);
  v6 = v5;
  OS_dispatch_queue.sync<A>(execute:)();

  return 1;
}

+ (void)syncMobileAssetUserInitiated
{
  if (qword_100501C58 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient);
  if (v2)
  {

    [v2 triggerUserInitiatedSync];
  }
}

- (void)handleDownloadedAsset:(id)asset
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002BA988(v8);

  (*(v5 + 8))(v8, v4);
}

@end