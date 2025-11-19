@interface _DASGroupRecorder
+ (id)predicateForUniqueRecord:(id)a3;
- (id)createGroup:(id)a3;
- (id)createOrUpdateGroup:(id)a3 context:(id)a4;
- (id)fetchGroupsUsingPredicate:(id)a3 context:(id)a4;
- (id)getGroupFromManagedObject:(id)a3;
- (void)copyGroup:(id)a3 toManagedObject:(id)a4;
@end

@implementation _DASGroupRecorder

+ (id)predicateForUniqueRecord:(id)a3
{
  v3 = [a3 name];
  v4 = [NSPredicate predicateWithFormat:@"name == %@", v3];

  return v4;
}

- (id)getGroupFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v3 maxConcurrent];

  v6 = [_DASActivityGroup groupWithName:v4 maxConcurrent:v5];

  return v6;
}

- (void)copyGroup:(id)a3 toManagedObject:(id)a4
{
  v8 = a4;
  v5 = a3;
  v6 = [v5 name];
  [v8 setName:v6];

  v7 = [v5 maxConcurrent];
  [v8 setMaxConcurrent:v7];
}

- (id)createGroup:(id)a3
{
  v4 = a3;
  v5 = [(_DASGroupRecorder *)self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:v4];

  return v6;
}

- (id)createOrUpdateGroup:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_opt_new();
    v9 = [(_DASGroupRecorder *)self entityName];
    v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:v7];
    [v8 setEntity:v10];

    v11 = [_DASGroupRecorder predicateForUniqueRecord:v6];
    [v8 setPredicate:v11];

    v15 = 0;
    v12 = [v7 executeFetchRequest:v8 error:&v15];
    v13 = [v12 lastObject];

    if (!v13)
    {
      v13 = [(_DASGroupRecorder *)self createGroup:v7];
    }

    [(_DASGroupRecorder *)self copyGroup:v6 toManagedObject:v13];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchGroupsUsingPredicate:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(_DASGroupRecorder *)self entityName];
  v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:v6];
  [v8 setEntity:v10];

  [v8 setPredicate:v7];
  v13 = 0;
  v11 = [v6 executeFetchRequest:v8 error:&v13];

  return v11;
}

@end