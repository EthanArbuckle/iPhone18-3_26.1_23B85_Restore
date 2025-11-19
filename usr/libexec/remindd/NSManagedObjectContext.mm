@interface NSManagedObjectContext
- (BOOL)ic_saveWithLogDescription:(id)a3;
- (id)reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:(id)a3;
- (id)rootEntityNameWithEntityName:(id)a3;
- (void)ic_performBlock:(id)a3 andPerformBlockOnMainThread:(id)a4;
- (void)ic_performBlockAndWait:(id)a3 andPerformBlockAndWaitOnMainThread:(id)a4;
@end

@implementation NSManagedObjectContext

- (BOOL)ic_saveWithLogDescription:(id)a3
{
  v4 = a3;
  if ([(NSManagedObjectContext *)self hasChanges])
  {
    v12 = 0;
    v5 = [(NSManagedObjectContext *)self save:&v12];
    v6 = v12;
    if (v4)
    {
      *buf = &v14;
      v7 = [NSString alloc];
      v8 = [v7 initWithFormat:v4 arguments:*buf];
      v9 = v8;
      if (v5)
      {
        if (!v8)
        {
LABEL_17:

          goto LABEL_18;
        }

        v10 = +[REMLog cloudkit];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saved context: %{public}@", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if (v8)
      {
        v10 = +[REMLog cloudkit];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10076DE64(v9, v6, v10);
        }

LABEL_13:

LABEL_16:
        goto LABEL_17;
      }
    }

    else if (v5)
    {
      goto LABEL_17;
    }

    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076DEEC(v6, v9);
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_18:

  return v5;
}

- (void)ic_performBlock:(id)a3 andPerformBlockOnMainThread:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E5F64;
  v8[3] = &unk_1008DC770;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(NSManagedObjectContext *)self performBlock:v8];
}

- (void)ic_performBlockAndWait:(id)a3 andPerformBlockAndWaitOnMainThread:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E6064;
  v8[3] = &unk_1008DA020;
  v9 = a3;
  v6 = v9;
  v7 = a4;
  [(NSManagedObjectContext *)self performBlockAndWait:v8];
  performBlockOnMainThread(v7);
}

- (id)reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:(id)a3
{
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1005B0420(v4);

  sub_1000F5104(&qword_100937028, &qword_100791C10);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)rootEntityNameWithEntityName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1005B0C78(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end