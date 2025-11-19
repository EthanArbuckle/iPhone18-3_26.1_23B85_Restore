@interface REMCDManualSortHint
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)mergeWithLocalObject:(id)a3;
- (REMCDManualSortHint)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (void).cxx_construct;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
@end

@implementation REMCDManualSortHint

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
  v6 = [(REMCDManualSortHint *)v5 account];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isConnectedToAccountObject:v4];
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

- (REMCDManualSortHint)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDManualSortHint();
  return [(REMCDManualSortHint *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
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

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = sub_10051FA5C(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10051FBA4(v8, v9, v10);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_10051FFB8(v6);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = sub_10052118C();

  return v3;
}

- (id)parentCloudObject
{
  v2 = [(REMCDManualSortHint *)self account];

  return v2;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1005244E8();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100524660();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  sub_1005228A4();
}

@end