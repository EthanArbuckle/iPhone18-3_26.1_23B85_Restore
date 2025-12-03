@interface RPNWBrowseAgent
+ (_TtC8rapportd15RPNWBrowseAgent)shared;
- (_TtC8rapportd15RPNWBrowseAgent)init;
- (id)filterEndpoints:(id)endpoints serviceName:(id)name predicate:(id)predicate;
@end

@implementation RPNWBrowseAgent

+ (_TtC8rapportd15RPNWBrowseAgent)shared
{
  if (qword_1001DA5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001DA730;

  return v3;
}

- (id)filterEndpoints:(id)endpoints serviceName:(id)name predicate:(id)predicate
{
  sub_10010D3B0();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  predicateCopy = predicate;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10010CA2C(v7);
  sub_1000C4AA4(v10, v12);

  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (_TtC8rapportd15RPNWBrowseAgent)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RPNWBrowseAgent *)&v3 init];
}

@end