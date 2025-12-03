@interface MANotificationObserverConfiguration
+ (id)genPrefix:(id)prefix profile:(id)profile;
- (MANotificationObserverConfiguration)init;
- (id)requireNotification:(unint64_t)notification observerType:(unint64_t)type resourceNames:(id)names groupPrefix:(id)prefix;
- (void)configNotificationFilter:(unint64_t)filter observerType:(unint64_t)type resourceNames:(id)names groupPrefix:(id)prefix;
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

- (id)requireNotification:(unint64_t)notification observerType:(unint64_t)type resourceNames:(id)names groupPrefix:(id)prefix
{
  namesCopy = names;
  prefixCopy = prefix;
  v12 = +[NSMutableSet set];
  if (!type)
  {
    v13 = 8;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v13 = 16;
LABEL_5:
    v14 = *(&self->super.isa + v13);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100004550;
    v20[3] = &unk_100115EF8;
    v21 = prefixCopy;
    v15 = v14;
    v22 = v15;
    notificationCopy = notification;
    v16 = v12;
    v23 = v16;
    [namesCopy enumerateObjectsUsingBlock:v20];
    v17 = v23;
    v18 = v16;

    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v12;
}

- (void)configNotificationFilter:(unint64_t)filter observerType:(unint64_t)type resourceNames:(id)names groupPrefix:(id)prefix
{
  namesCopy = names;
  prefixCopy = prefix;
  if (!type)
  {
    v12 = 8;
    v13 = 24;
    goto LABEL_5;
  }

  if (type == 1)
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
    v17 = prefixCopy;
    v18 = v14;
    filterCopy = filter;
    v15 = v14;
    [namesCopy enumerateObjectsUsingBlock:v16];
  }
}

+ (id)genPrefix:(id)prefix profile:(id)profile
{
  prefixCopy = prefix;
  v6 = prefixCopy;
  if (profile)
  {
    prefixCopy = [NSString stringWithFormat:@"%@#%@", profile, prefixCopy];
  }

  else
  {
    prefixCopy = prefixCopy;
  }

  v8 = prefixCopy;

  return v8;
}

@end