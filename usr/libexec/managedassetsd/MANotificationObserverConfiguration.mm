@interface MANotificationObserverConfiguration
+ (id)genPrefix:(id)a3 profile:(id)a4;
- (MANotificationObserverConfiguration)init;
- (id)requireNotification:(unint64_t)a3 observerType:(unint64_t)a4 resourceNames:(id)a5 groupPrefix:(id)a6;
- (void)configNotificationFilter:(unint64_t)a3 observerType:(unint64_t)a4 resourceNames:(id)a5 groupPrefix:(id)a6;
@end

@implementation MANotificationObserverConfiguration

- (MANotificationObserverConfiguration)init
{
  v9.receiver = self;
  v9.super_class = MANotificationObserverConfiguration;
  v2 = [(MANotificationObserverConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isFileObserver = 0;
    v4 = +[NSMutableDictionary dictionary];
    filterForFiles = v3->_filterForFiles;
    v3->_filterForFiles = v4;

    v6 = +[NSMutableDictionary dictionary];
    filterForKVStores = v3->_filterForKVStores;
    v3->_filterForKVStores = v6;
  }

  return v3;
}

- (id)requireNotification:(unint64_t)a3 observerType:(unint64_t)a4 resourceNames:(id)a5 groupPrefix:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = +[NSMutableSet set];
  if (!a4)
  {
    v13 = 8;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v13 = 16;
LABEL_5:
    v14 = *(&self->super.isa + v13);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100004550;
    v20[3] = &unk_100115EF8;
    v21 = v11;
    v15 = v14;
    v22 = v15;
    v24 = a3;
    v16 = v12;
    v23 = v16;
    [v10 enumerateObjectsUsingBlock:v20];
    v17 = v23;
    v18 = v16;

    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v12;
}

- (void)configNotificationFilter:(unint64_t)a3 observerType:(unint64_t)a4 resourceNames:(id)a5 groupPrefix:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (!a4)
  {
    v12 = 8;
    v13 = 24;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v12 = 16;
    v13 = 25;
LABEL_5:
    *(&self->super.isa + v13) = 1;
    v14 = *(&self->super.isa + v12);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004760;
    v16[3] = &unk_100115F20;
    v17 = v11;
    v18 = v14;
    v19 = a3;
    v15 = v14;
    [v10 enumerateObjectsUsingBlock:v16];
  }
}

+ (id)genPrefix:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [NSString stringWithFormat:@"%@#%@", a4, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

@end