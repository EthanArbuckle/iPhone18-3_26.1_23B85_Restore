@interface GKCacheTransactionGroup
+ (id)dispatchGroupWithName:(id)name;
+ (id)timeoutQueue;
+ (id)transactionGroupWithName:(id)name context:(id)context client:(id)client;
- (GKCacheTransactionGroup)initWithName:(id)name;
- (GKCacheTransactionGroup)initWithName:(id)name context:(id)context client:(id)client;
- (GKCacheTransactionGroup)transactionGroupWithName:(id)name;
- (void)dealloc;
- (void)notifyOnMainQueueWithBlock:(id)block;
- (void)notifyOnQueue:(id)queue block:(id)block;
- (void)performOnManagedObjectContext:(id)context;
- (void)performOnQueue:(id)queue block:(id)block;
- (void)scheduleTimeout;
- (void)stripGKPlayerInternalPIIs;
@end

@implementation GKCacheTransactionGroup

+ (id)dispatchGroupWithName:(id)name
{
  v3 = [NSString stringWithFormat:@"Cannot use dispatchGroupWithName with GKCacheTransactionGroup"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v3, "+[GKCacheTransactionGroup dispatchGroupWithName:]", [lastPathComponent UTF8String], 59);

  [NSException raise:@"GameKit Exception" format:@"%@", v6];
  return 0;
}

+ (id)transactionGroupWithName:(id)name context:(id)context client:(id)client
{
  nameCopy = name;
  contextCopy = context;
  clientCopy = client;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10029084C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = [[self alloc] initWithName:nameCopy context:contextCopy client:clientCopy];

  return v20;
}

- (GKCacheTransactionGroup)transactionGroupWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc(objc_opt_class());
  context = [(GKCacheTransactionGroup *)self context];
  client = [(GKCacheTransactionGroup *)self client];
  v8 = [v5 initWithName:nameCopy context:context client:client];

  return v8;
}

- (GKCacheTransactionGroup)initWithName:(id)name
{
  v4 = [NSString stringWithFormat:@"Cannot use initWithName: with GKCacheTransactionGroup"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCacheTransactionGroup initWithName:]", [lastPathComponent UTF8String], 82);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
  return 0;
}

- (GKCacheTransactionGroup)initWithName:(id)name context:(id)context client:(id)client
{
  nameCopy = name;
  contextCopy = context;
  clientCopy = client;
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
  v20 = [(GKCacheTransactionGroup *)&v26 initWithName:nameCopy];
  if (v20)
  {
    if (!contextCopy)
    {
      v21 = [NSString stringWithFormat:@"Assertion failed"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheTransactionGroup.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (context != ((void *)0))\n[%s (%s:%d)]", v21, "-[GKCacheTransactionGroup initWithName:context:client:]", [lastPathComponent UTF8String], 94);

      [NSException raise:@"GameKit Exception" format:@"%@", v24];
    }

    [(GKCacheTransactionGroup *)v20 setContext:contextCopy];
    [(GKCacheTransactionGroup *)v20 setClient:clientCopy];
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

- (void)performOnManagedObjectContext:(id)context
{
  contextCopy = context;
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
  v17 = contextCopy;
  v15.receiver = self;
  v15.super_class = GKCacheTransactionGroup;
  v14 = contextCopy;
  [(GKCacheTransactionGroup *)&v15 perform:v16];
}

- (void)performOnQueue:(id)queue block:(id)block
{
  v4.receiver = self;
  v4.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v4 performOnQueue:queue block:block];
}

- (void)stripGKPlayerInternalPIIs
{
  client = [(GKCacheTransactionGroup *)self client];
  clientHasAnyPrivateEntitlement = [client clientHasAnyPrivateEntitlement];

  if ((clientHasAnyPrivateEntitlement & 1) == 0)
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
          allValues = [*&self->GKDispatchGroup_opaque[v5] allValues];
          sub_10013C9F8(allValues, allValues);
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

- (void)notifyOnQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013CC14;
  v10[3] = &unk_100368028;
  objc_copyWeak(&v12, &location);
  v8 = blockCopy;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v9 notifyOnQueue:queueCopy block:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)notifyOnMainQueueWithBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013CD68;
  v7[3] = &unk_100368028;
  objc_copyWeak(&v9, &location);
  v5 = blockCopy;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = GKCacheTransactionGroup;
  [(GKCacheTransactionGroup *)&v6 notifyOnMainQueueWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end