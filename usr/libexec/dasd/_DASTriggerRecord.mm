@interface _DASTriggerRecord
- (id)createTrigger:(id)trigger managedObjectContext:(id)context;
- (id)fetchOrCreateTrigger:(id)trigger managedObjectContext:(id)context;
@end

@implementation _DASTriggerRecord

- (id)createTrigger:(id)trigger managedObjectContext:(id)context
{
  contextCopy = context;
  triggerCopy = trigger;
  entityName = [(_DASTriggerRecord *)self entityName];
  v9 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  [(_DASTriggerRecord *)self copyTrigger:triggerCopy toManagedObject:v9];

  return v9;
}

- (id)fetchOrCreateTrigger:(id)trigger managedObjectContext:(id)context
{
  triggerCopy = trigger;
  contextCopy = context;
  if (triggerCopy)
  {
    v8 = objc_opt_new();
    entityName = [(_DASTriggerRecord *)self entityName];
    v10 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
    [v8 setEntity:v10];

    triggerCopy = [NSPredicate predicateWithFormat:@"identifier == %@", triggerCopy];
    [v8 setPredicate:triggerCopy];

    v15 = 0;
    v12 = [contextCopy executeFetchRequest:v8 error:&v15];
    lastObject = [v12 lastObject];

    if (!lastObject)
    {
      lastObject = [(_DASTriggerRecord *)self createTrigger:triggerCopy managedObjectContext:contextCopy];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end