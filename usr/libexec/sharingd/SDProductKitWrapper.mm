@interface SDProductKitWrapper
+ (void)fetchAssetBundleWithProductID:(unsigned __int16)d color:(unsigned int)color model:(NSString *)model timeout:(double)timeout completionHandler:(id)handler;
- (_TtC16DaemoniOSLibrary19SDProductKitWrapper)init;
@end

@implementation SDProductKitWrapper

+ (void)fetchAssetBundleWithProductID:(unsigned __int16)d color:(unsigned int)color model:(NSString *)model timeout:(double)timeout completionHandler:(id)handler
{
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = d;
  *(v18 + 20) = color;
  *(v18 + 24) = model;
  *(v18 + 32) = timeout;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10080F2B8;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10080F2C0;
  v21[5] = v20;
  modelCopy = model;
  sub_1006E2B30(0, 0, v16, &unk_1007FB9F0, v21);
}

- (_TtC16DaemoniOSLibrary19SDProductKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDProductKitWrapper *)&v3 init];
}

@end