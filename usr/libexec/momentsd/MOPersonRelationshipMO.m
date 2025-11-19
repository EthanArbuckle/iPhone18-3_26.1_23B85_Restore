@interface MOPersonRelationshipMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOPersonRelationshipMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOPersonRelationshipMO alloc] initWithContext:v5];

  -[MOPersonRelationshipMO setRelationship:](v7, "setRelationship:", [v6 relationship]);
  [v6 score];
  [(MOPersonRelationshipMO *)v7 setScore:?];
  v8 = [v6 source];

  [(MOPersonRelationshipMO *)v7 setSource:v8];

  return v7;
}

@end