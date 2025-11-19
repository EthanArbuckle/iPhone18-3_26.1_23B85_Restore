@interface REMCDAccountListData
+ (id)cdEntityName;
- (REMCDAccountListData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation REMCDAccountListData

+ (id)cdEntityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (REMCDAccountListData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDAccountListData();
  return [(REMCDAccountListData *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end