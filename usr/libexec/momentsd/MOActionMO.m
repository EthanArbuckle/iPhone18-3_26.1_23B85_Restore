@interface MOActionMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOActionMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOActionMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOActionMO *)v7 setIdentifier:v8];

  v9 = [v6 actionName];
  [(MOActionMO *)v7 setAction:v9];

  -[MOActionMO setActionType:](v7, "setActionType:", [v6 actionType]);
  -[MOActionMO setActionSubType:](v7, "setActionSubType:", [v6 actionSubtype]);
  [v6 actionNameConfidence];
  [(MOActionMO *)v7 setActionNameConfidence:?];
  v10 = [v6 actionMetaData];
  [(MOActionMO *)v7 setActionMetaData:v10];

  -[MOActionMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [v6 sourceEventAccessType]);
  v11 = [v6 sourceEventIdentifier];

  [(MOActionMO *)v7 setSourceEventIdentifier:v11];

  return v7;
}

@end