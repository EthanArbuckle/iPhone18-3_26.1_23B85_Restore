@interface NSManagedObjectContext
- (BOOL)ic_saveWithLogDescription:(id)description;
- (id)reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:(id)ds;
- (id)rootEntityNameWithEntityName:(id)name;
- (void)ic_performBlock:(id)block andPerformBlockOnMainThread:(id)thread;
- (void)ic_performBlockAndWait:(id)wait andPerformBlockAndWaitOnMainThread:(id)thread;
@end

@implementation NSManagedObjectContext

- (BOOL)ic_saveWithLogDescription:(id)description
{
  descriptionCopy = description;
  if ([(NSManagedObjectContext *)self hasChanges])
  {
    v12 = 0;
    v5 = [(NSManagedObjectContext *)self save:&v12];
    v6 = v12;
    if (descriptionCopy)
    {
      *buf = &v14;
      v7 = [NSString alloc];
      v8 = [v7 initWithFormat:descriptionCopy arguments:*buf];
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

- (void)ic_performBlock:(id)block andPerformBlockOnMainThread:(id)thread
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E5F64;
  v8[3] = &unk_1008DC770;
  blockCopy = block;
  threadCopy = thread;
  v6 = threadCopy;
  v7 = blockCopy;
  [(NSManagedObjectContext *)self performBlock:v8];
}

- (void)ic_performBlockAndWait:(id)wait andPerformBlockAndWaitOnMainThread:(id)thread
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E6064;
  v8[3] = &unk_1008DA020;
  waitCopy = wait;
  v6 = waitCopy;
  threadCopy = thread;
  [(NSManagedObjectContext *)self performBlockAndWait:v8];
  performBlockOnMainThread(threadCopy);
}

- (id)reduceIntoDictionaryByRootEntityNamesWithManagedObjectIDs:(id)ds
{
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1005B0420(v4);

  sub_1000F5104(&qword_100937028, &qword_100791C10);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)rootEntityNameWithEntityName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
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