@interface _DASGroupRecorder
+ (id)predicateForUniqueRecord:(id)record;
- (id)createGroup:(id)group;
- (id)createOrUpdateGroup:(id)group context:(id)context;
- (id)fetchGroupsUsingPredicate:(id)predicate context:(id)context;
- (id)getGroupFromManagedObject:(id)object;
- (void)copyGroup:(id)group toManagedObject:(id)object;
@end

@implementation _DASGroupRecorder

+ (id)predicateForUniqueRecord:(id)record
{
  name = [record name];
  v4 = [NSPredicate predicateWithFormat:@"name == %@", name];

  return v4;
}

- (id)getGroupFromManagedObject:(id)object
{
  objectCopy = object;
  name = [objectCopy name];
  maxConcurrent = [objectCopy maxConcurrent];

  v6 = [_DASActivityGroup groupWithName:name maxConcurrent:maxConcurrent];

  return v6;
}

- (void)copyGroup:(id)group toManagedObject:(id)object
{
  objectCopy = object;
  groupCopy = group;
  name = [groupCopy name];
  [objectCopy setName:name];

  maxConcurrent = [groupCopy maxConcurrent];
  [objectCopy setMaxConcurrent:maxConcurrent];
}

- (id)createGroup:(id)group
{
  groupCopy = group;
  entityName = [(_DASGroupRecorder *)self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:groupCopy];

  return v6;
}

- (id)createOrUpdateGroup:(id)group context:(id)context
{
  groupCopy = group;
  contextCopy = context;
  if (groupCopy)
  {
    v8 = objc_opt_new();
    entityName = [(_DASGroupRecorder *)self entityName];
    v10 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
    [v8 setEntity:v10];

    v11 = [_DASGroupRecorder predicateForUniqueRecord:groupCopy];
    [v8 setPredicate:v11];

    v15 = 0;
    v12 = [contextCopy executeFetchRequest:v8 error:&v15];
    lastObject = [v12 lastObject];

    if (!lastObject)
    {
      lastObject = [(_DASGroupRecorder *)self createGroup:contextCopy];
    }

    [(_DASGroupRecorder *)self copyGroup:groupCopy toManagedObject:lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)fetchGroupsUsingPredicate:(id)predicate context:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  v8 = objc_opt_new();
  entityName = [(_DASGroupRecorder *)self entityName];
  v10 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
  [v8 setEntity:v10];

  [v8 setPredicate:predicateCopy];
  v13 = 0;
  v11 = [contextCopy executeFetchRequest:v8 error:&v13];

  return v11;
}

@end