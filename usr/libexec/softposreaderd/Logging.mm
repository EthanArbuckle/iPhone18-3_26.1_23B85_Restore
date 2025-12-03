@interface Logging
+ (NSString)entityName;
- (Logging)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation Logging

+ (NSString)entityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (Logging)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Logging();
  return [(Logging *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end