@interface PRSettingsObserver
- (PRSettingsObserver)initWithSettings:(id)a3 queue:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObserving:(id)a3 observeImmediately:(BOOL)a4 callback:(id)a5;
- (void)stopObserving:(id)a3;
@end

@implementation PRSettingsObserver

- (PRSettingsObserver)initWithSettings:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PRSettingsObserver;
  v9 = [(PRSettingsObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_settings, a3);
    v11 = objc_alloc_init(NSMutableDictionary);
    settingsSubscriptions = v10->_settingsSubscriptions;
    v10->_settingsSubscriptions = v11;
  }

  return v10;
}

- (void)startObserving:(id)a3 observeImmediately:(BOOL)a4 callback:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = self;
    objc_sync_enter(v11);
    settingsSubscriptions = v11->_settingsSubscriptions;
    v13 = objc_retainBlock(v10);
    [(NSMutableDictionary *)settingsSubscriptions setObject:v13 forKey:v8];

    [v11->_settings addObserver:v11 forKeyPath:v8 options:0 context:0];
    objc_sync_exit(v11);

    if (v6)
    {
      queue = v11->_queue;
      if (queue)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10039485C;
        v16[3] = &unk_1009A8958;
        v18 = v10;
        v17 = v8;
        dispatch_async(queue, v16);
      }

      else
      {
        (v10)[2](v10, v8);
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

- (void)stopObserving:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v4->_settings removeObserver:v4 forKeyPath:v5];
  [(NSMutableDictionary *)v4->_settingsSubscriptions removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(NSMutableDictionary *)v12->_settingsSubscriptions objectForKey:v9];
  v14 = v13;
  if (v13)
  {
    queue = v12->_queue;
    if (queue)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100394A78;
      v17[3] = &unk_1009A8958;
      v19 = v13;
      v18 = v9;
      dispatch_sync(queue, v17);
    }

    else
    {
      (v13)[2](v13, v9);
    }
  }

  else
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C698C(v9, v16);
    }

    [v12->_settings removeObserver:v12 forKeyPath:v9];
  }

  objc_sync_exit(v12);
}

@end