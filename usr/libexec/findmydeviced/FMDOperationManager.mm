@interface FMDOperationManager
+ (id)sharedManager;
- (BOOL)addAction:(id)a3 forIdentifier:(id)a4;
- (BOOL)cancelAction:(id)a3 forIdentifier:(id)a4;
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

- (BOOL)addAction:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(FMDOperationManager *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10017FCD0;
  v12[3] = &unk_1002CFB10;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LOBYTE(v7) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v7;
}

- (BOOL)cancelAction:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(FMDOperationManager *)self serialQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100180084;
  v12[3] = &unk_1002CFB10;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LOBYTE(v7) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v7;
}

@end