@interface DataStreamSocket
- (BOOL)isClosed;
- (BOOL)writeData:(id)data error:(id *)error;
- (DataStreamSocket)initWithStreamProtocol:(id)protocol applicationProtocolName:(id)name workQueue:(id)queue;
- (DataStreamSocketDelegate)delegate;
- (DataStreamStreamProtocol)streamProtocol;
- (id)readData;
- (unint64_t)trafficClass;
- (void)_writeData:(id)data completion:(id)completion;
- (void)closeInitiated;
- (void)closeWithError:(id)error;
- (void)handleIncomingData:(id)data;
- (void)setDelegate:(id)delegate;
- (void)setTrafficClass:(unint64_t)class;
- (void)writeData:(id)data completion:(id)completion;
@end

@implementation DataStreamSocket

- (DataStreamSocket)initWithStreamProtocol:(id)protocol applicationProtocolName:(id)name workQueue:(id)queue
{
  protocolCopy = protocol;
  nameCopy = name;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = DataStreamSocket;
  v11 = [(DataStreamSocket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_streamProtocol, protocolCopy);
    objc_storeStrong(&v12->_applicationProtocolName, name);
    objc_storeStrong(&v12->_workQueue, queue);
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

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

- (void)setTrafficClass:(unint64_t)class
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  self->_trafficClass = class;
  os_unfair_lock_unlock(&self->_lock);
  if (trafficClass != class)
  {
    workQueue = [(DataStreamSocket *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B4C0;
    block[3] = &unk_100273410;
    block[4] = self;
    block[5] = trafficClass;
    block[6] = class;
    dispatch_async(workQueue, block);
  }
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  isClosed = [(DataStreamSocket *)self isClosed];
  if (isClosed)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
    }
  }

  else
  {
    [(DataStreamSocket *)self _writeData:dataCopy completion:0];
  }

  return isClosed ^ 1;
}

- (void)writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(DataStreamSocket *)self isClosed])
  {
    v7 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
    completionCopy[2](completionCopy, v7);
  }

  else
  {
    [(DataStreamSocket *)self _writeData:dataCopy completion:completionCopy];
  }
}

- (void)_writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(DataStreamSocket *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B7E8;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(workQueue, block);
}

- (id)readData
{
  os_unfair_lock_lock_with_options();
  hmf_maybeDequeue = [(NSMutableArray *)self->_pendingReads hmf_maybeDequeue];
  os_unfair_lock_unlock(&self->_lock);

  return hmf_maybeDequeue;
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
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
    workQueue = [(DataStreamSocket *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001B994;
    v6[3] = &unk_100273370;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_async(workQueue, v6);
  }
}

- (void)handleIncomingData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_pendingReads hmf_enqueue:dataCopy];
  os_unfair_lock_unlock(&self->_lock);
  workQueue = [(DataStreamSocket *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BAE4;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
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