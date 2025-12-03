@interface REMCDManualSortHint
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (REMCDManualSortHint)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (void).cxx_construct;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
@end

@implementation REMCDManualSortHint

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
  account = [(REMCDManualSortHint *)selfCopy account];
  if (account)
  {
    v7 = account;
    v8 = [account isConnectedToAccountObject:objectCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion
{
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (REMCDManualSortHint)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDManualSortHint();
  return [(REMCDManualSortHint *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.super.super.isa + OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix);
  *v2 = 31868;
  v2[1] = 0xE200000000000000;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix);
  *v3 = 31868;
  v3[1] = 0xE200000000000000;
}

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = sub_10051FA5C(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = sub_10051FBA4(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  recordCopy = record;
  selfCopy = self;
  sub_10051FFB8(recordCopy);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = sub_10052118C();

  return v3;
}

- (id)parentCloudObject
{
  account = [(REMCDManualSortHint *)self account];

  return account;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = sub_1005244E8();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = sub_100524660();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  sub_1005228A4();
}

@end