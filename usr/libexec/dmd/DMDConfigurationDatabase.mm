@interface DMDConfigurationDatabase
+ (id)_newDatabaseWithURL:(id)l;
+ (id)descriptionForSQLiteStoreWithDatabaseURL:(id)l;
+ (id)managedObjectModel;
+ (id)newUserDatabase;
- (DMDConfigurationDatabase)init;
- (id)description;
- (void)performBackgroundTask:(id)task;
@end

@implementation DMDConfigurationDatabase

+ (id)managedObjectModel
{
  if (qword_1000FF078 != -1)
  {
    sub_10007E84C();
  }

  v3 = qword_1000FF070;

  return v3;
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000261BC;
  v11 = sub_1000261CC;
  v12 = 0;
  newBackgroundContext = [(DMDConfigurationDatabase *)self newBackgroundContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000261D4;
  v6[3] = &unk_1000CDFE0;
  v6[4] = &v7;
  [newBackgroundContext performBlockAndWait:v6];

  v4 = [NSString stringWithFormat:@"<%@: %p\n%@>", objc_opt_class(), self, v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)descriptionForSQLiteStoreWithDatabaseURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setType:NSSQLiteStoreType];
  [v4 setURL:lCopy];

  return v4;
}

+ (id)newUserDatabase
{
  v3 = +[NSFileManager dmd_userConfigurationDatabaseURL];
  v4 = [self _newDatabaseWithURL:v3];

  return v4;
}

+ (id)_newDatabaseWithURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  v6 = [self descriptionForSQLiteStoreWithDatabaseURL:lCopy];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [v5 setPersistentStoreDescriptions:v7];

  return v5;
}

- (DMDConfigurationDatabase)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  managedObjectModel = [objc_opt_class() managedObjectModel];
  v6 = [(DMDConfigurationDatabase *)self initWithName:v4 managedObjectModel:managedObjectModel];

  return v6;
}

- (void)performBackgroundTask:(id)task
{
  taskCopy = task;
  if (!taskCopy)
  {
    sub_10007E860(a2, self);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026510;
  v8[3] = &unk_1000CE810;
  v9 = taskCopy;
  v7.receiver = self;
  v7.super_class = DMDConfigurationDatabase;
  v6 = taskCopy;
  [(DMDConfigurationDatabase *)&v7 performBackgroundTask:v8];
}

@end