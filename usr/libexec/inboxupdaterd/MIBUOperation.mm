@interface MIBUOperation
+ (unint64_t)currentOperationCode;
- (BOOL)inProgress;
- (BOOL)saveOpCode;
- (MIBUOperation)initWithDelegate:(id)delegate;
- (MIBUOperationDelegate)delegate;
- (void)resume;
- (void)terminateNow;
@end

@implementation MIBUOperation

+ (unint64_t)currentOperationCode
{
  v2 = [MIBUDefaultPreferences objectForKey:@"CurrentOperation"];
  v3 = v2;
  if (v2)
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (MIBUOperation)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MIBUOperation;
  v5 = [(MIBUOperation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUOperation *)v5 setOpCode:0];
    [(MIBUOperation *)v6 setDelegate:delegateCopy];
    v7 = [NSString stringWithFormat:@"com.apple.mibu_%@_op_queue", objc_opt_class()];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    [(MIBUOperation *)v6 setSyncQueue:v8];

    error = v6->_error;
    v6->_error = 0;
  }

  return v6;
}

- (void)resume
{
  syncQueue = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F774;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)terminateNow
{
  syncQueue = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F804;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

- (BOOL)inProgress
{
  v3 = +[MIBUOperation currentOperationCode];
  if (v3)
  {
    LOBYTE(v3) = v3 == [(MIBUOperation *)self opCode];
  }

  return v3;
}

- (BOOL)saveOpCode
{
  v2 = [NSNumber numberWithUnsignedInteger:[(MIBUOperation *)self opCode]];
  v3 = [MIBUDefaultPreferences setObject:v2 forKey:@"CurrentOperation"];

  return v3;
}

- (MIBUOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end