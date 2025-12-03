@interface MOPOICategoryMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOPOICategoryMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOPOICategoryMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOPOICategoryMO *)v7 setIdentifier:identifier];

  category = [objectCopy category];

  [(MOPOICategoryMO *)v7 setCategory:category];

  return v7;
}

@end