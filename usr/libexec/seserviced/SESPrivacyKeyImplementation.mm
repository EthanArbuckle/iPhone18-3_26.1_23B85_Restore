@interface SESPrivacyKeyImplementation
+ (void)createPrivacyKeyWithGroupIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)decryptPayload:(id)a3 groupIdentifier:(id)a4 completion:(id)a5;
+ (void)deletePrivacyKey:(id)a3 completion:(id)a4;
+ (void)encryptPayload:(id)a3 scheme:(id)a4 recipientPublicKey:(id)a5 completion:(id)a6;
+ (void)getPrivacyKeyWithGroupIdentifier:(id)a3 keyIdentifier:(id)a4 completion:(id)a5;
@end

@implementation SESPrivacyKeyImplementation

+ (void)createPrivacyKeyWithGroupIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  swift_getObjCClassMetadata();
  sub_10025EFB4(v7, v9, a4, sub_100265FB8, v10);
}

+ (void)getPrivacyKeyWithGroupIdentifier:(id)a3 keyIdentifier:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  swift_getObjCClassMetadata();
  sub_10025F4F4(v7, v9, v10, a4, sub_100265FB8, v12);
}

+ (void)deletePrivacyKey:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  v7 = a3;
  sub_1002609A4(v7, sub_1002649F4, v6);
}

+ (void)decryptPayload:(id)a3 groupIdentifier:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  swift_getObjCClassMetadata();
  sub_10026132C(v6, v7, v9, sub_100264854, v10);
}

+ (void)encryptPayload:(id)a3 scheme:(id)a4 recipientPublicKey:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = a3;
  v19 = a4;
  v11 = a5;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  swift_getObjCClassMetadata();
  sub_1002622A8(v12, v14, v19, v15, v17, sub_1002647BC, v18);

  sub_10006A178(v15, v17);
  sub_10006A178(v12, v14);
}

@end