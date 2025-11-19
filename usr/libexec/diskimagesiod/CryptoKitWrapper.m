@interface CryptoKitWrapper
+ (id)unwrapEncryptionKeyWithWrappedKey:(id)a3 encapsulatedKey:(id)a4 privateKey:(id)a5 error:(id *)a6;
+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)a3 certificate:(__SecCertificate *)a4 error:(id *)a5;
- (_TtC16FetchRestoreKeys16CryptoKitWrapper)init;
@end

@implementation CryptoKitWrapper

+ (id)unwrapEncryptionKeyWithWrappedKey:(id)a3 encapsulatedKey:(id)a4 privateKey:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

+ (id)wrappedDataDictionaryWithCertWithPlainText:(id)a3 certificate:(__SecCertificate *)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10001C56C(v8, v10, v7);
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