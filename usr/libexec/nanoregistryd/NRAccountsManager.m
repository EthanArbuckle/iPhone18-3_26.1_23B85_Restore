@interface NRAccountsManager
+ (id)sharedInstance;
- (BOOL)_addCompletionBlock:(id)a3;
- (NRAccountsManager)init;
- (void)fireCompletionBlocks;
- (void)reset;
- (void)signOutAccountsWithKill:(BOOL)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation NRAccountsManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D18;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3708 != -1)
  {
    dispatch_once(&qword_1001B3708, block);
  }

  v2 = qword_1001B3700;

  return v2;
}

- (NRAccountsManager)init
{
  v3.receiver = self;
  v3.super_class = NRAccountsManager;
  result = [(NRAccountsManager *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)_addCompletionBlock:(id)a3
{
  v4 = a3;
  completions = self->_completions;
  if (!completions)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_completions;
    self->_completions = v6;
  }

  if (v4)
  {
    v8 = self->_completions;
    v9 = objc_retainBlock(v4);
    [(NSMutableArray *)v8 addObject:v9];
  }

  return completions == 0;
}

- (void)fireCompletionBlocks
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100006064;
  v29 = sub_100006074;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100006064;
  v23 = sub_100006074;
  v24 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_10000607C;
  v15 = &unk_1001756D0;
  v16 = self;
  v17 = &v25;
  v18 = &v19;
  v3 = v13;
  os_unfair_lock_lock_with_options();
  v14(v3);

  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v20[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v31 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v26[5];
        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v31 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)signOutAccountsWithKill:(BOOL)a3 queue:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)reset
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100006064;
  v29 = sub_100006074;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100006064;
  v23 = sub_100006074;
  v24 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_100006368;
  v15 = &unk_1001756D0;
  v16 = self;
  v17 = &v25;
  v18 = &v19;
  v3 = v13;
  os_unfair_lock_lock_with_options();
  v14(v3);

  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v20[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v31 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v26[5];
        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v31 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

@end