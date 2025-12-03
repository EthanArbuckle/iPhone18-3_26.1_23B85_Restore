@interface REMCDBaseSection
+ (NSString)cdEntityName;
+ (id)propertiesThatShouldTriggerReindexing;
- (BOOL)isConnectedToAccountObject:(id)object;
- (REMCDBaseSection)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
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
  cdEntityName = [objc_opt_self() cdEntityName];
  if (!cdEntityName)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    cdEntityName = v3;
  }

  return cdEntityName;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDBaseSection.isConnected(toAccountObject:)(objectCopy);

  return self & 1;
}

- (REMCDBaseSection)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDBaseSection();
  return [(REMCDBaseSection *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)incrementSpotlightIndexCount
{
  selfCopy = self;
  if ([(REMCDBaseSection *)selfCopy spotlightIndexCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    spotlightIndexCount = [(REMCDBaseSection *)selfCopy spotlightIndexCount];
    v2 = spotlightIndexCount + 1;
    if (__OFADD__(spotlightIndexCount, 1))
    {
      __break(1u);
      return;
    }
  }

  [(REMCDBaseSection *)selfCopy setSpotlightIndexCount:v2];
}

+ (id)propertiesThatShouldTriggerReindexing
{
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end