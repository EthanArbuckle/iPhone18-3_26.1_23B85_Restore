@interface PRSettingsObserver
- (PRSettingsObserver)initWithSettings:(id)settings queue:(id)queue;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObserving:(id)observing observeImmediately:(BOOL)immediately callback:(id)callback;
- (void)stopObserving:(id)observing;
@end

@implementation PRSettingsObserver

- (PRSettingsObserver)initWithSettings:(id)settings queue:(id)queue
{
  settingsCopy = settings;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = PRSettingsObserver;
  v9 = [(PRSettingsObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_settings, settings);
    v11 = objc_alloc_init(NSMutableDictionary);
    settingsSubscriptions = v10->_settingsSubscriptions;
    v10->_settingsSubscriptions = v11;
  }

  return v10;
}

- (void)startObserving:(id)observing observeImmediately:(BOOL)immediately callback:(id)callback
{
  immediatelyCopy = immediately;
  observingCopy = observing;
  callbackCopy = callback;
  v10 = callbackCopy;
  if (observingCopy && callbackCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    settingsSubscriptions = selfCopy->_settingsSubscriptions;
    v13 = objc_retainBlock(v10);
    [(NSMutableDictionary *)settingsSubscriptions setObject:v13 forKey:observingCopy];

    [selfCopy->_settings addObserver:selfCopy forKeyPath:observingCopy options:0 context:0];
    objc_sync_exit(selfCopy);

    if (immediatelyCopy)
    {
      queue = selfCopy->_queue;
      if (queue)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10039485C;
        v16[3] = &unk_1009A8958;
        v18 = v10;
        v17 = observingCopy;
        dispatch_async(queue, v16);
      }

      else
      {
        (v10)[2](v10, observingCopy);
      }
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6948(v15);
    }
  }
}

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [selfCopy->_settings removeObserver:selfCopy forKeyPath:observingCopy];
  [(NSMutableDictionary *)selfCopy->_settingsSubscriptions removeObjectForKey:observingCopy];
  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(NSMutableDictionary *)selfCopy->_settingsSubscriptions objectForKey:pathCopy];
  v14 = v13;
  if (v13)
  {
    queue = selfCopy->_queue;
    if (queue)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100394A78;
      v17[3] = &unk_1009A8958;
      v19 = v13;
      v18 = pathCopy;
      dispatch_sync(queue, v17);
    }

    else
    {
      (v13)[2](v13, pathCopy);
    }
  }

  else
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C698C(pathCopy, v16);
    }

    [selfCopy->_settings removeObserver:selfCopy forKeyPath:pathCopy];
  }

  objc_sync_exit(selfCopy);
}

@end