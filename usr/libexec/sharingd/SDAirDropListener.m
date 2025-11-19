@interface SDAirDropListener
- (NSString)description;
- (SDAirDropListener)init;
- (SDAirDropListenerDelegate)delegate;
- (void)dealloc;
- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropListener

- (SDAirDropListener)init
{
  v6.receiver = self;
  v6.super_class = SDAirDropListener;
  v2 = [(SDAirDropListener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    listener = v2->_listener;
    v2->_listener = 0;
  }

  return v3;
}

- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained listener:self informationDidChange:v10];
LABEL_15:

    goto LABEL_16;
  }

  if (a4 == 10)
  {
    v21 = airdrop_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "kSFOperationEventErrorOccurred", v25, 2u);
    }

    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = [v10 objectForKeyedSubscript:kSFOperationErrorKey];
    [v22 listener:self didReceiveError:v23];

    goto LABEL_11;
  }

  if (a4 != 1)
  {
LABEL_11:
    v24 = airdrop_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000FFA84(a4, v10, v24);
    }

    goto LABEL_16;
  }

  v11 = kSFOperationHTTPServerConnectionKey;
  v12 = [v9 objectForKeyedSubscript:kSFOperationHTTPServerConnectionKey];

  if (v12)
  {
    v13 = +[NSUUID UUID];
    WeakRetained = [v13 UUIDString];

    v15 = kSFOperationContactsOnlyKey;
    v16 = [v10 objectForKeyedSubscript:kSFOperationContactsOnlyKey];
    v17 = [SDNetworkOperation alloc];
    v18 = [(SDNetworkOperation *)v17 initWithKind:kSFOperationKindReceiver];
    v19 = v18;
    if (v16)
    {
      [(SDNetworkOperation *)v18 setProperty:v16 forKey:v15];
    }

    [(SDNetworkOperation *)v19 setProperty:v12 forKey:v11];
    [(SDNetworkOperation *)v19 setProperty:WeakRetained forKey:kSFOperationSessionIDKey];
    [(SDNetworkOperation *)v19 setObjectKey:WeakRetained];
    [(SDNetworkOperation *)v19 resume];
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 listener:self didReceiveNewRequest:v19];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)start
{
  if (!self->_listener)
  {
    v4 = [SDNetworkOperation alloc];
    v5 = [(SDNetworkOperation *)v4 initWithKind:kSFOperationKindListener];
    listener = self->_listener;
    self->_listener = v5;

    [(SDNetworkOperation *)self->_listener setDelegate:self];
    v7 = self->_listener;

    [(SDNetworkOperation *)v7 resume];
  }
}

- (void)stop
{
  listener = self->_listener;
  if (listener)
  {
    [(SDNetworkOperation *)listener setDelegate:0];
    [(SDNetworkOperation *)self->_listener invalidate];
    v4 = self->_listener;
    self->_listener = 0;
  }
}

- (void)dealloc
{
  [(SDAirDropListener *)self stop];
  v3.receiver = self;
  v3.super_class = SDAirDropListener;
  [(SDAirDropListener *)&v3 dealloc];
}

- (NSString)description
{
  listener = self->_listener;
  if (listener)
  {
    v5 = [(SDNetworkOperation *)listener description];
    NSAppendPrintF();
    v3 = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SDAirDropListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end