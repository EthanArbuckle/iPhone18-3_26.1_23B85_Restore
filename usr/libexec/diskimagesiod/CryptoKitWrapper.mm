@interface CryptoKitWrapper
+ (id)unwrapEncryptionKeyWithWrappedKey:(id)key encapsulatedKey:(id)encapsulatedKey privateKey:(id)privateKey error:(id *)error;
+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)text certificate:(__SecCertificate *)certificate error:(id *)error;
- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init;
@end

@implementation CryptoKitWrapper

+ (id)unwrapEncryptionKeyWithWrappedKey:(id)key encapsulatedKey:(id)encapsulatedKey privateKey:(id)privateKey error:(id *)error
{
  keyCopy = key;
  encapsulatedKeyCopy = encapsulatedKey;
  privateKeyCopy = privateKey;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_10001BF54(v11, v13, v14, v16, v17, v19);
  v22 = v21;
  sub_10001CDA0(v17, v19);
  sub_10001CDA0(v14, v16);
  sub_10001CDA0(v11, v13);
  v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001CDA0(v20, v22);

  return v23.super.isa;
}

+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)text certificate:(__SecCertificate *)certificate error:(id *)error
{
  textCopy = text;
  certificateCopy = certificate;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10001C56C(v8, v10, certificateCopy);
  sub_10001CDA0(v8, v10);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoKitWrapper();
  return [(CryptoKitWrapper *)&v3 init];
}

@end