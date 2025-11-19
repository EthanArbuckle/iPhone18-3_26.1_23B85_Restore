@interface SecMockAKS
+ (BOOL)isLocked:(int)a3;
+ (NSMutableDictionary)lockedStates;
+ (OS_dispatch_queue)mutabilityQueue;
+ (id)popDecryptRefKeyFailure;
+ (void)failNextDecryptRefKey:(id)a3;
+ (void)lockClassA;
+ (void)lockClassA_C;
+ (void)reset;
+ (void)resetDecryptRefKeyFailures;
+ (void)trapdoor;
+ (void)unlockAllClasses;
+ (void)updateOperationsUntilUnlock;
@end

@implementation SecMockAKS

+ (void)updateOperationsUntilUnlock
{
  if (dword_100073594 != -1)
  {
    if (dword_100073594)
    {
      --dword_100073594;
    }

    else
    {
      dword_100073594 = -1;
      +[SecMockAKS unlockAllClasses];
    }
  }
}

+ (id)popDecryptRefKeyFailure
{
  v2 = a1;
  objc_sync_enter(v2);
  if (qword_1000738C0 && [qword_1000738C0 count])
  {
    v3 = [qword_1000738C0 objectAtIndexedSubscript:0];
    [qword_1000738C0 removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

+ (void)resetDecryptRefKeyFailures
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = qword_1000738C0;
  qword_1000738C0 = 0;

  objc_sync_exit(obj);
}

+ (void)failNextDecryptRefKey:(id)a3
{
  v8 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = qword_1000738C0;
  if (!qword_1000738C0)
  {
    v6 = +[NSMutableArray array];
    v7 = qword_1000738C0;
    qword_1000738C0 = v6;

    v5 = qword_1000738C0;
  }

  [v5 addObject:v8];
  objc_sync_exit(v4);
}

+ (void)unlockAllClasses
{
  v3 = [a1 mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000300C8;
  block[3] = &unk_10005A068;
  block[4] = a1;
  dispatch_sync(v3, block);
}

+ (void)lockClassA_C
{
  v3 = [a1 mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000301DC;
  block[3] = &unk_10005A068;
  block[4] = a1;
  dispatch_sync(v3, block);
}

+ (void)lockClassA
{
  v3 = [a1 mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030538;
  block[3] = &unk_10005A068;
  block[4] = a1;
  dispatch_sync(v3, block);
}

+ (BOOL)isLocked:(int)a3
{
  v4 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [a1 mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000307F8;
  block[3] = &unk_100063A10;
  v8 = a3;
  block[4] = &v9;
  block[5] = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

+ (void)reset
{
  v3 = [a1 mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030914;
  block[3] = &unk_10005A068;
  block[4] = a1;
  dispatch_sync(v3, block);
}

+ (OS_dispatch_queue)mutabilityQueue
{
  if (qword_1000738D0 != -1)
  {
    dispatch_once(&qword_1000738D0, &stru_1000639E8);
  }

  v3 = qword_1000738B8;

  return v3;
}

+ (NSMutableDictionary)lockedStates
{
  v2 = qword_1000738B0;
  if (!qword_1000738B0)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = qword_1000738B0;
    qword_1000738B0 = v3;

    v2 = qword_1000738B0;
  }

  return v2;
}

+ (void)trapdoor
{
  if (qword_1000738C8 != -1)
  {
    dispatch_once(&qword_1000738C8, &stru_1000639C8);
  }
}

@end