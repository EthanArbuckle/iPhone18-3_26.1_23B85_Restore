@interface FMDOperationManager
+ (id)sharedManager;
- (BOOL)addAction:(id)action forIdentifier:(id)identifier;
- (BOOL)cancelAction:(id)action forIdentifier:(id)identifier;
- (FMDOperationManager)init;
@end

@implementation FMDOperationManager

+ (id)sharedManager
{
  if (qword_100314798 != -1)
  {
    sub_10022B284();
  }

  v3 = qword_100314790;

  return v3;
}

- (FMDOperationManager)init
{
  v6.receiver = self;
  v6.super_class = FMDOperationManager;
  v2 = [(FMDOperationManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FMDOperationManager *)v2 setActionQueueMap:v3];

    v4 = dispatch_queue_create("FMDOperationManagerSerialQueue", 0);
    [(FMDOperationManager *)v2 setSerialQueue:v4];
  }

  return v2;
}

- (BOOL)addAction:(id)action forIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serialQueue = [(FMDOperationManager *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10017FCD0;
  v12[3] = &unk_1002CFB10;
  v13 = actionCopy;
  selfCopy = self;
  v15 = identifierCopy;
  v16 = &v17;
  v9 = identifierCopy;
  v10 = actionCopy;
  dispatch_sync(serialQueue, v12);

  LOBYTE(identifierCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return identifierCopy;
}

- (BOOL)cancelAction:(id)action forIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serialQueue = [(FMDOperationManager *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100180084;
  v12[3] = &unk_1002CFB10;
  v13 = actionCopy;
  selfCopy = self;
  v15 = identifierCopy;
  v16 = &v17;
  v9 = identifierCopy;
  v10 = actionCopy;
  dispatch_sync(serialQueue, v12);

  LOBYTE(identifierCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return identifierCopy;
}

@end