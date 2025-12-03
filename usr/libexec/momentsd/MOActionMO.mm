@interface MOActionMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOActionMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOActionMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOActionMO *)v7 setIdentifier:identifier];

  actionName = [objectCopy actionName];
  [(MOActionMO *)v7 setAction:actionName];

  -[MOActionMO setActionType:](v7, "setActionType:", [objectCopy actionType]);
  -[MOActionMO setActionSubType:](v7, "setActionSubType:", [objectCopy actionSubtype]);
  [objectCopy actionNameConfidence];
  [(MOActionMO *)v7 setActionNameConfidence:?];
  actionMetaData = [objectCopy actionMetaData];
  [(MOActionMO *)v7 setActionMetaData:actionMetaData];

  -[MOActionMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [objectCopy sourceEventAccessType]);
  sourceEventIdentifier = [objectCopy sourceEventIdentifier];

  [(MOActionMO *)v7 setSourceEventIdentifier:sourceEventIdentifier];

  return v7;
}

@end