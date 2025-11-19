@interface NDCredentialStorage
- (NDCredentialStorage)initWithDelegate:(id)a3 forBundleID:(id)a4;
- (NDCredentialStorageDelegate)delegate;
- (id)allCredentials;
- (id)credentialsForProtectionSpace:(id)a3;
- (id)defaultCredentialForProtectionSpace:(id)a3;
- (void)populateWithInitialCredentials;
- (void)removeCredential:(id)a3 forProtectionSpace:(id)a4;
- (void)reset;
- (void)setCredential:(id)a3 forProtectionSpace:(id)a4;
- (void)setDefaultCredential:(id)a3 forProtectionSpace:(id)a4;
@end

@implementation NDCredentialStorage

- (void)populateWithInitialCredentials
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained getClientProxy];

  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004918;
    v5[3] = &unk_1000D5AD0;
    v5[4] = self;
    [v4 credStorage_getInitialCredentialDictionariesWithReply:v5];
  }
}

- (NDCredentialStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061590;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)setDefaultCredential:(id)a3 forProtectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained getClientProxy];

  if (v9)
  {
    [v9 credStorage_setDefaultCredential:v6 forProtectionSpace:v7];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006171C;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_sync(queue, block);
}

- (id)defaultCredentialForProtectionSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained getClientProxy];

  if (v6)
  {
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000D5BC8];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100061CD8;
    v36[3] = &unk_1000D5BF0;
    v36[4] = self;
    v37 = v4;
    [v7 credStorage_defaultCredentialForProtectionSpace:v37 reply:v36];
  }

  v8 = +[Daemon sharedDaemon];
  if ([v8 isInSyncBubble] && self->_bundleID)
  {
    v9 = [(NSMutableDictionary *)self->_cachedCredentials objectForKeyedSubscript:v4];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = [v4 host];
    v8 = [NSString stringWithFormat:@"%@%@%@", @"__com.apple.CFNetwork.prefix__", v10, self->_bundleID];

    v11 = [NSURLProtectionSpace alloc];
    v12 = [v4 port];
    v13 = [v4 protocol];
    v14 = [v4 realm];
    v15 = [v4 authenticationMethod];
    v16 = [v11 initWithHost:v8 port:v12 protocol:v13 realm:v14 authenticationMethod:v15];

    v17 = +[NSURLCredentialStorage sharedCredentialStorage];
    v18 = [v17 defaultCredentialForProtectionSpace:v16];

    if (v18)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100061D98;
      block[3] = &unk_1000D6130;
      block[4] = self;
      v34 = v4;
      v35 = v18;
      dispatch_sync(queue, block);
    }
  }

LABEL_10:
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100061EC4;
  v31 = sub_100061ED4;
  v32 = 0;
  v20 = self->_queue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100061EDC;
  v24[3] = &unk_1000D6158;
  v24[4] = self;
  v25 = v4;
  v26 = &v27;
  v21 = v4;
  dispatch_sync(v20, v24);
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

- (void)removeCredential:(id)a3 forProtectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained getClientProxy];

  if (v9)
  {
    [v9 credStorage_setCredential:v6 forProtectionSpace:v7];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062328;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_sync(queue, block);
}

- (void)setCredential:(id)a3 forProtectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained getClientProxy];

  if (v9)
  {
    [v9 credStorage_setCredential:v6 forProtectionSpace:v7];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000624F8;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_sync(queue, block);
}

- (id)allCredentials
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained getClientProxy];

  if (v4)
  {
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000D5B58];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000627C4;
    v16[3] = &unk_1000D5B80;
    v16[4] = self;
    [v5 credStorage_allCredentialsWithReply:v16];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100061EC4;
  v14 = sub_100061ED4;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062868;
  block[3] = &unk_1000D5BA8;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)credentialsForProtectionSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained getClientProxy];

  if (v6)
  {
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000D5B10];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100062BCC;
    v21[3] = &unk_1000D5B38;
    v21[4] = self;
    v22 = v4;
    [v7 credStorage_credentialsForProtectionSpace:v22 reply:v21];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100061EC4;
  v19 = sub_100061ED4;
  v20 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062C8C;
  block[3] = &unk_1000D6158;
  v13 = v4;
  v14 = &v15;
  block[4] = self;
  v9 = v4;
  dispatch_sync(queue, block);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (NDCredentialStorage)initWithDelegate:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NDCredentialStorage;
  v8 = [(NDCredentialStorage *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_bundleID, a4);
    v10 = +[NSMutableDictionary dictionary];
    cachedCredentials = v9->_cachedCredentials;
    v9->_cachedCredentials = v10;

    v12 = +[NSMutableDictionary dictionary];
    cachedDefaultCredentialUsers = v9->_cachedDefaultCredentialUsers;
    v9->_cachedDefaultCredentialUsers = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);
    v16 = dispatch_queue_create("com.apple.nsurlsessiond.credential-storage-queue", v15);
    queue = v9->_queue;
    v9->_queue = v16;
  }

  return v9;
}

@end