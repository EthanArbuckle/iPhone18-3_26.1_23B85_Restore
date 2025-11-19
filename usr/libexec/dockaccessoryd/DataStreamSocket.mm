@interface DataStreamSocket
- (BOOL)isClosed;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (DataStreamSocket)initWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 workQueue:(id)a5;
- (DataStreamSocketDelegate)delegate;
- (DataStreamStreamProtocol)streamProtocol;
- (id)readData;
- (unint64_t)trafficClass;
- (void)_writeData:(id)a3 completion:(id)a4;
- (void)closeInitiated;
- (void)closeWithError:(id)a3;
- (void)handleIncomingData:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setTrafficClass:(unint64_t)a3;
- (void)writeData:(id)a3 completion:(id)a4;
@end

@implementation DataStreamSocket

- (DataStreamSocket)initWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DataStreamSocket;
  v11 = [(DataStreamSocket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_streamProtocol, v8);
    objc_storeStrong(&v12->_applicationProtocolName, a4);
    objc_storeStrong(&v12->_workQueue, a5);
    *&v12->_closing = 0;
    v12->_trafficClass = 0;
    v13 = +[NSMutableArray array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = v13;
  }

  return v12;
}

- (DataStreamSocketDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isClosed
{
  os_unfair_lock_lock_with_options();
  closed = self->_closed;
  os_unfair_lock_unlock(&self->_lock);
  return closed;
}

- (unint64_t)trafficClass
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  os_unfair_lock_unlock(&self->_lock);
  return trafficClass;
}

- (void)setTrafficClass:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  self->_trafficClass = a3;
  os_unfair_lock_unlock(&self->_lock);
  if (trafficClass != a3)
  {
    v6 = [(DataStreamSocket *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B4C0;
    block[3] = &unk_100273410;
    block[4] = self;
    block[5] = trafficClass;
    block[6] = a3;
    dispatch_async(v6, block);
  }
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DataStreamSocket *)self isClosed];
  if (v7)
  {
    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
    }
  }

  else
  {
    [(DataStreamSocket *)self _writeData:v6 completion:0];
  }

  return v7 ^ 1;
}

- (void)writeData:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(DataStreamSocket *)self isClosed])
  {
    v7 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
    v6[2](v6, v7);
  }

  else
  {
    [(DataStreamSocket *)self _writeData:v8 completion:v6];
  }
}

- (void)_writeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamSocket *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B7E8;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)readData
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingReads hmf_maybeDequeue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)closeWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_closed)
  {
    self->_closing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    *&self->_closing = 256;
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(DataStreamSocket *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001B994;
    v6[3] = &unk_100273370;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)handleIncomingData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_pendingReads hmf_enqueue:v4];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(DataStreamSocket *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BAE4;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)closeInitiated
{
  os_unfair_lock_lock_with_options();
  self->_closing = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (DataStreamStreamProtocol)streamProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_streamProtocol);

  return WeakRetained;
}

@end