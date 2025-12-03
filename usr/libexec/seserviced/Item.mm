@interface Item
- (Item)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation Item

- (Item)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Item();
  return [(Item *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end