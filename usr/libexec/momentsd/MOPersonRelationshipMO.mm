@interface MOPersonRelationshipMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOPersonRelationshipMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOPersonRelationshipMO alloc] initWithContext:contextCopy];

  -[MOPersonRelationshipMO setRelationship:](v7, "setRelationship:", [objectCopy relationship]);
  [objectCopy score];
  [(MOPersonRelationshipMO *)v7 setScore:?];
  source = [objectCopy source];

  [(MOPersonRelationshipMO *)v7 setSource:source];

  return v7;
}

@end