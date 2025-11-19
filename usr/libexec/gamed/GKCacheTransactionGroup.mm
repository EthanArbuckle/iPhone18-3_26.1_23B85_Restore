@interface GKCacheTransactionGroup
+ (id)dispatchGroupWithName:(id)a3;
+ (id)timeoutQueue;
+ (id)transactionGroupWithName:(id)a3 context:(id)a4 client:(id)a5;
- (GKCacheTransactionGroup)initWithName:(id)a3;
- (GKCacheTransactionGroup)initWithName:(id)a3 context:(id)a4 client:(id)a5;
- (GKCacheTransactionGroup)transactionGroupWithName:(id)a3;
- (void)dealloc;
- (void)notifyOnMainQueueWithBlock:(id)a3;
- (void)notifyOnQueue:(id)a3 block:(id)a4;
- (void)performOnManagedObjectContext:(id)a3;
- (void)performOnQueue:(id)a3 block:(id)a4;
- (void)scheduleTimeout;
- (void)stripGKPlayerInternalPIIs;
@end

@implementation GKCacheTransactionGroup

+ (id)dispatchGroupWithName:(id)a3
{
  v3 = [NSString stringWithFormat:@"Cannot use dispatchGroupWithName with GKCacheTransactionGroup"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
  v5 = [v4 lastPathComponent];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v3, "+[GKCacheTransactionGroup dispatchGroupWithName:]", [v5 UTF8String], 59);

  [NSException raise:@"GameKit Exception" format:@"%@", v6];
  return 0;
}

+ (id)transactionGroupWithName:(id)a3 context:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10029084C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = [[a1 alloc] initWithName:v8 context:v9 client:v10];

  return v20;
}

- (GKCacheTransactionGroup)transactionGroupWithName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(GKCacheTransactionGroup *)self context];
  v7 = [(GKCacheTransactionGroup *)self client];
  v8 = [v5 initWithName:v4 context:v6 client:v7];

  return v8;
}

- (GKCacheTransactionGroup)initWithName:(id)a3
{
  v4 = [NSString stringWithFormat:@"Cannot use initWithName: with GKCacheTransactionGroup"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
  v6 = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCacheTransactionGroup initWithName:]", [v6 UTF8String], 82);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (GKCacheTransactionGroup)initWithName:(id)a3 context:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290884(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v26.receiver = self;
  v26.super_class = GKCacheTransactionGroup;
  v20 = [(GKCacheTransactionGroup *)&v26 initWithName:v8];
  if (v20)
  {
    if (!v9)
    {
      v21 = [NSString stringWithFormat:@"Assertion failed"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
      v23 = [v22 lastPathComponent];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (context != ((void *)0))\n[%s (%s:%d)]", v21, "-[GKCacheTransactionGroup initWithName:context:client:]", [v23 UTF8String], 94);

      [NSException raise:@"GameKit Exception" format:@"%@", v24];
    }

    [(GKCacheTransactionGroup *)v20 setContext:v9];
    [(GKCacheTransactionGroup *)v20 setClient:v10];
    GKIncrementContextTransactionCount(v20->_context, 1, 0);
    [(GKCacheTransactionGroup *)v20 scheduleTimeout];
  }

  return v20;
}

- (void)scheduleTimeout
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 5000000000);
  v3 = +[GKCacheTransactionGroup timeoutQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013C210;
  v4[3] = &unk_100367F68;
  objc_copyWeak(&v5, &location);
  dispatch_after(v2, v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (id)timeoutQueue
{
  if (qword_1003B9260 != -1)
  {
    sub_100290A0C();
  }

  v3 = qword_1003B9258;

  return v3;
}

- (void)dealloc
{
  v3 = self->_context;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10013C42C;
  v6[3] = &unk_100367FB0;
  v7 = v3;
  v4 = v3;
  GKIncrementContextTransactionCount(v4, -1, v6);

  v5.receiver = self;
  v5.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v5 dealloc];
}

- (void)performOnManagedObjectContext:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290A9C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013C6E4;
  v16[3] = &unk_100368000;
  v16[4] = self;
  v17 = v4;
  v15.receiver = self;
  v15.super_class = GKCacheTransactionGroup;
  v14 = v4;
  [(GKCacheTransactionGroup *)&v15 perform:v16];
}

- (void)performOnQueue:(id)a3 block:(id)a4
{
  v4.receiver = self;
  v4.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v4 performOnQueue:a3 block:a4];
}

- (void)stripGKPlayerInternalPIIs
{
  v3 = [(GKCacheTransactionGroup *)self client];
  v4 = [v3 clientHasAnyPrivateEntitlement];

  if ((v4 & 1) == 0)
  {
    v5 = OBJC_IVAR___GKDispatchGroup__result;
    if (*&self->GKDispatchGroup_opaque[OBJC_IVAR___GKDispatchGroup__result])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = *&self->GKDispatchGroup_opaque[v5];

        sub_10013C9F8(isKindOfClass, v7);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [*&self->GKDispatchGroup_opaque[v5] allValues];
          sub_10013C9F8(v9, v9);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = *&self->GKDispatchGroup_opaque[v5];

            [v8 sanitize];
          }
        }
      }
    }
  }
}

- (void)notifyOnQueue:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013CC14;
  v10[3] = &unk_100368028;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v9 notifyOnQueue:v6 block:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)notifyOnMainQueueWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013CD68;
  v7[3] = &unk_100368028;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v6 notifyOnMainQueueWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end