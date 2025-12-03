@interface SecMockAKS
+ (BOOL)isLocked:(int)locked;
+ (NSMutableDictionary)lockedStates;
+ (OS_dispatch_queue)mutabilityQueue;
+ (id)popDecryptRefKeyFailure;
+ (void)failNextDecryptRefKey:(id)key;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1000738C0 && [qword_1000738C0 count])
  {
    v3 = [qword_1000738C0 objectAtIndexedSubscript:0];
    [qword_1000738C0 removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)resetDecryptRefKeyFailures
{
  obj = self;
  objc_sync_enter(obj);
  v2 = qword_1000738C0;
  qword_1000738C0 = 0;

  objc_sync_exit(obj);
}

+ (void)failNextDecryptRefKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = qword_1000738C0;
  if (!qword_1000738C0)
  {
    v6 = +[NSMutableArray array];
    v7 = qword_1000738C0;
    qword_1000738C0 = v6;

    v5 = qword_1000738C0;
  }

  [v5 addObject:keyCopy];
  objc_sync_exit(selfCopy);
}

+ (void)unlockAllClasses
{
  mutabilityQueue = [self mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000300C8;
  block[3] = &unk_10005A068;
  block[4] = self;
  dispatch_sync(mutabilityQueue, block);
}

+ (void)lockClassA_C
{
  mutabilityQueue = [self mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000301DC;
  block[3] = &unk_10005A068;
  block[4] = self;
  dispatch_sync(mutabilityQueue, block);
}

+ (void)lockClassA
{
  mutabilityQueue = [self mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030538;
  block[3] = &unk_10005A068;
  block[4] = self;
  dispatch_sync(mutabilityQueue, block);
}

+ (BOOL)isLocked:(int)locked
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  mutabilityQueue = [self mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000307F8;
  block[3] = &unk_100063A10;
  lockedCopy = locked;
  block[4] = &v9;
  block[5] = selfCopy;
  dispatch_sync(mutabilityQueue, block);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

+ (void)reset
{
  mutabilityQueue = [self mutabilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030914;
  block[3] = &unk_10005A068;
  block[4] = self;
  dispatch_sync(mutabilityQueue, block);
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