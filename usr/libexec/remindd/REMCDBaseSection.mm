@interface REMCDBaseSection
+ (NSString)cdEntityName;
+ (id)propertiesThatShouldTriggerReindexing;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (REMCDBaseSection)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (REMCDObject)parentCDObject;
- (void)incrementSpotlightIndexCount;
@end

@implementation REMCDBaseSection

- (REMCDObject)parentCDObject
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (NSString)cdEntityName
{
  v2 = [objc_opt_self() cdEntityName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    v2 = v3;
  }

  return v2;
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = REMCDBaseSection.isConnected(toAccountObject:)(v4);

  return self & 1;
}

- (REMCDBaseSection)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDBaseSection();
  return [(REMCDBaseSection *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void)incrementSpotlightIndexCount
{
  v4 = self;
  if ([(REMCDBaseSection *)v4 spotlightIndexCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(REMCDBaseSection *)v4 spotlightIndexCount];
    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }
  }

  [(REMCDBaseSection *)v4 setSpotlightIndexCount:v2];
}

+ (id)propertiesThatShouldTriggerReindexing
{
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end