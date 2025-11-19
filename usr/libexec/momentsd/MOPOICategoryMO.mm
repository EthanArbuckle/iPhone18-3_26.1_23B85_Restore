@interface MOPOICategoryMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOPOICategoryMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOPOICategoryMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOPOICategoryMO *)v7 setIdentifier:v8];

  v9 = [v6 category];

  [(MOPOICategoryMO *)v7 setCategory:v9];

  return v7;
}

@end