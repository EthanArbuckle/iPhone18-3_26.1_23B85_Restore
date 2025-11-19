@interface Pipe
- (Pipe)initWithDelegate:(id)a3 pipe:(id)a4;
- (PipeDelegate)delegate;
- (void)dealloc;
- (void)receiveMessage:(char *)a3 length:(int64_t)a4;
- (void)sendMessage:(id)a3;
- (void)sendNextQueuedMessage;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation Pipe

- (Pipe)initWithDelegate:(id)a3 pipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = Pipe;
  v8 = [(Pipe *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_pipe, a4);
    v10 = objc_opt_new();
    txMessageQueue = v9->_txMessageQueue;
    v9->_txMessageQueue = v10;

    v12 = [(CBScalablePipe *)v9->_pipe input];
    [v12 setDelegate:v9];

    v13 = [(CBScalablePipe *)v9->_pipe output];
    [v13 setDelegate:v9];

    v14 = [(CBScalablePipe *)v9->_pipe input];
    v15 = +[NSRunLoop currentRunLoop];
    [v14 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

    v16 = [(CBScalablePipe *)v9->_pipe output];
    v17 = +[NSRunLoop currentRunLoop];
    [v16 scheduleInRunLoop:v17 forMode:NSDefaultRunLoopMode];

    v18 = [(CBScalablePipe *)v9->_pipe input];
    [v18 open];

    v19 = [(CBScalablePipe *)v9->_pipe output];
    [v19 open];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = [(CBScalablePipe *)self->_pipe input];
  v4 = +[NSRunLoop currentRunLoop];
  [v3 removeFromRunLoop:v4 forMode:NSDefaultRunLoopMode];

  v5 = [(CBScalablePipe *)self->_pipe output];
  v6 = +[NSRunLoop currentRunLoop];
  [v5 removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];

  v7 = [(CBScalablePipe *)self->_pipe input];
  [v7 setDelegate:0];

  v8 = [(CBScalablePipe *)self->_pipe output];
  [v8 setDelegate:0];

  v9 = [(CBScalablePipe *)self->_pipe input];
  [v9 close];

  v10 = [(CBScalablePipe *)self->_pipe output];
  [v10 close];

  v11.receiver = self;
  v11.super_class = Pipe;
  [(Pipe *)&v11 dealloc];
}

- (void)sendMessage:(id)a3
{
  v4 = [NSJSONSerialization dataWithJSONObject:a3 options:0 error:0];
  v10 = 0;
  v5 = [NSMutableData dataWithData:v4];
  [v5 appendBytes:&v10 length:1];
  v6 = [(Pipe *)self txMessageQueue];
  v7 = [[OutboundMessage alloc] initWithData:v5];
  [v6 addObject:v7];

  v8 = [(Pipe *)self txMessageQueue];
  v9 = [v8 count];

  if (v9 == 1)
  {
    [(Pipe *)self sendNextQueuedMessage];
  }
}

- (void)sendNextQueuedMessage
{
  v3 = [(Pipe *)self txMessageQueue];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 data];
    v6 = [v5 bytes];
    v7 = [v4 offset];

    v8 = [v4 data];
    v9 = [v8 length];
    v10 = v9 - [v4 offset];

    v11 = [(Pipe *)self pipe];
    v12 = [v11 output];
    v13 = [v12 write:&v7[v6] maxLength:v10];

    if (v13 < 1)
    {
      if (v13 < 0)
      {
        v18 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100075BCC(v18, self);
        }
      }
    }

    else
    {
      [v4 setOffset:{objc_msgSend(v4, "offset") + v13}];
      v14 = [v4 offset];
      v15 = [v4 data];
      v16 = [v15 length];

      if (v14 >= v16)
      {
        v17 = [(Pipe *)self txMessageQueue];
        [v17 removeObject:v4];
      }
    }
  }
}

- (void)receiveMessage:(char *)a3 length:(int64_t)a4
{
  v7 = [(Pipe *)self receivedMessage];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSMutableData data];
  }

  v10 = v9;

  if (a4 < 1)
  {
    v17 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a3[v12])
      {
        ++v12;
      }

      else
      {
        [v10 appendBytes:&a3[v11] length:v12 - v11];
        v18 = 0;
        v13 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v18];
        v14 = v18;
        if (v13)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained pipe:self didReceiveMessage:v13];
        }

        else
        {
          v16 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100075CB4(v19, v16, v14, &v20);
          }
        }

        [(Pipe *)self setReceivedMessage:0];
        ++v12;
        [v10 setLength:0];

        v11 = v12;
      }
    }

    while (v12 != a4);
    v17 = a4;
  }

  if (v11 < a4)
  {
    [v10 appendBytes:&a3[v11] length:v17 - v11];
    [(Pipe *)self setReceivedMessage:v10];
  }
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 0x10uLL:
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "End of stream found", v11, 2u);
      }

      break;
    case 4uLL:
      [(Pipe *)self sendNextQueuedMessage];
      break;
    case 2uLL:
      memset(v11, 0, sizeof(v11));
      v8 = [v6 read:v11 maxLength:256];
      if (v8)
      {
        [(Pipe *)self receiveMessage:v11 length:v8];
      }

      else
      {
        v10 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100075D38(v10, self);
        }
      }

      break;
  }
}

- (PipeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end