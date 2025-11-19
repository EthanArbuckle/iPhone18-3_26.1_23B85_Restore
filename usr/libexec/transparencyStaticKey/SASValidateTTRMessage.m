@interface SASValidateTTRMessage
+ (id)validateWithMessage:(id)a3 error:(id *)a4;
- (_TtC21transparencyStaticKey21SASValidateTTRMessage)init;
@end

@implementation SASValidateTTRMessage

+ (id)validateWithMessage:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_10006D328(v5, v7);
  v10 = v9;
  sub_10005F14C(v5, v7);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v10);

  return v11.super.isa;
}

- (_TtC21transparencyStaticKey21SASValidateTTRMessage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SASValidateTTRMessage *)&v3 init];
}

@end