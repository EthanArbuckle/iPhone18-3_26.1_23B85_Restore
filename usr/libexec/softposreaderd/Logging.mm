@interface Logging
+ (NSString)entityName;
- (Logging)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation Logging

+ (NSString)entityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (Logging)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Logging();
  return [(Logging *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end