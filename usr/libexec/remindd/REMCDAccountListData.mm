@interface REMCDAccountListData
+ (id)cdEntityName;
- (REMCDAccountListData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation REMCDAccountListData

+ (id)cdEntityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (REMCDAccountListData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDAccountListData();
  return [(REMCDAccountListData *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end