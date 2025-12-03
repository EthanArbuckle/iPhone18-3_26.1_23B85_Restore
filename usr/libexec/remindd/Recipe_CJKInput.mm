@interface Recipe_CJKInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation Recipe_CJKInput

- (NSSet)featureNames
{
  sub_10038D894(&off_1008E45A0);
  sub_100034610(&unk_1008E45C0);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)featureValueForName:(id)name
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1954047348 && v4 == 0xE400000000000000)
  {

LABEL_5:
    v6 = *self->text;
    v7 = *&self->text[8];

    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() featureValueWithString:v8];

    goto LABEL_7;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end