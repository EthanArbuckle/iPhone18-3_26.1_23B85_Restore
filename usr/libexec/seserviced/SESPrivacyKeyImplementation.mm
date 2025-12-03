@interface SESPrivacyKeyImplementation
+ (void)createPrivacyKeyWithGroupIdentifier:(id)identifier options:(id)options completion:(id)completion;
+ (void)decryptPayload:(id)payload groupIdentifier:(id)identifier completion:(id)completion;
+ (void)deletePrivacyKey:(id)key completion:(id)completion;
+ (void)encryptPayload:(id)payload scheme:(id)scheme recipientPublicKey:(id)key completion:(id)completion;
+ (void)getPrivacyKeyWithGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier completion:(id)completion;
@end

@implementation SESPrivacyKeyImplementation

+ (void)createPrivacyKeyWithGroupIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  swift_getObjCClassMetadata();
  sub_10025EFB4(v7, v9, options, sub_100265FB8, v10);
}

+ (void)getPrivacyKeyWithGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (keyIdentifier)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    keyIdentifier = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  swift_getObjCClassMetadata();
  sub_10025F4F4(v7, v9, v10, keyIdentifier, sub_100265FB8, v12);
}

+ (void)deletePrivacyKey:(id)key completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  keyCopy = key;
  sub_1002609A4(keyCopy, sub_1002649F4, v6);
}

+ (void)decryptPayload:(id)payload groupIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  swift_getObjCClassMetadata();
  sub_10026132C(v6, v7, v9, sub_100264854, v10);
}

+ (void)encryptPayload:(id)payload scheme:(id)scheme recipientPublicKey:(id)key completion:(id)completion
{
  v9 = _Block_copy(completion);
  payloadCopy = payload;
  schemeCopy = scheme;
  keyCopy = key;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  swift_getObjCClassMetadata();
  sub_1002622A8(v12, v14, schemeCopy, v15, v17, sub_1002647BC, v18);

  sub_10006A178(v15, v17);
  sub_10006A178(v12, v14);
}

@end