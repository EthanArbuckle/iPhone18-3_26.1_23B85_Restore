@interface CLStore
- (BOOL)commitChangesToStore;
- (BOOL)deleteRecordsWithEntityName:(id)name byAndPredicates:(id)predicates;
- (CLStore)initWithDefaultPersistenceManager:(BOOL)manager;
- (CLStore)initWithPersistenceManager:(id)manager;
- (id)fetchRecordsWithEntityName:(id)name byAndPredicates:(id)predicates;
- (int)countRecordsWithEntityName:(id)name predicates:(id)predicates;
@end

@implementation CLStore

- (CLStore)initWithPersistenceManager:(id)manager
{
  if (!manager)
  {
    sub_10194FDF4(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CLStore;
  v5 = [(CLStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_persistenceManager = manager;
    v5->_managedObjectContext = [manager createManagedObjectContext];
  }

  return v6;
}

- (CLStore)initWithDefaultPersistenceManager:(BOOL)manager
{
  v4 = [[CLPersistenceManager alloc] initWithDefaultDirectories:manager];
  if ([(CLPersistenceManager *)v4 connectToStore])
  {

    return [(CLStore *)self initWithPersistenceManager:v4];
  }

  else
  {
    NSLog(@"CoreData, Could not connnect to store!");

    return 0;
  }
}

- (BOOL)commitChangesToStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000475E8;
  v10 = sub_1000484EC;
  v11 = 0;
  managedObjectContext = self->_managedObjectContext;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100835A90;
  v5[3] = &unk_102475E68;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v5];
  v3 = v7[5];
  if (v3)
  {
    NSLog(@"Could not save changes to store! Error: %@", v7[5]);
  }

  _Block_object_dispose(&v6, 8);
  return v3 == 0;
}

- (BOOL)deleteRecordsWithEntityName:(id)name byAndPredicates:(id)predicates
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1000475E8;
  v12 = sub_1000484EC;
  v13 = 0;
  managedObjectContext = self->_managedObjectContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100835BF4;
  v7[3] = &unk_102475E90;
  v7[4] = name;
  v7[5] = predicates;
  v7[6] = self;
  v7[7] = &v8;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v7];
  v5 = v9[5];
  if (v5)
  {
    NSLog(@"Couldnt perform delete request to store with error = %@", v9[5]);
  }

  _Block_object_dispose(&v8, 8);
  return v5 == 0;
}

- (id)fetchRecordsWithEntityName:(id)name byAndPredicates:(id)predicates
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_1000475E8;
  v22 = sub_1000484EC;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_1000475E8;
  v16 = sub_1000484EC;
  v17 = +[NSMutableArray array];
  managedObjectContext = self->_managedObjectContext;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100835E2C;
  v11[3] = &unk_102475EE0;
  v11[4] = name;
  v11[5] = self;
  v11[6] = predicates;
  v11[7] = &v18;
  v11[8] = &v12;
  v11[9] = a2;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v11];
  if (v19[5])
  {
    NSLog(@"Could not perform fetch request to store with error = %@", v19[5]);
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

- (int)countRecordsWithEntityName:(id)name predicates:(id)predicates
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_1000475E8;
  v16 = sub_1000484EC;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  managedObjectContext = self->_managedObjectContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10083611C;
  v7[3] = &unk_102475F08;
  v7[4] = name;
  v7[5] = predicates;
  v7[6] = self;
  v7[7] = &v8;
  v7[8] = &v12;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v7];
  if (v13[5])
  {
    NSLog(@"Could not perform fetch request to store with error = %@", v13[5]);
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

@end