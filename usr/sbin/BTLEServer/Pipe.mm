@interface Pipe
- (Pipe)initWithDelegate:(id)delegate pipe:(id)pipe;
- (PipeDelegate)delegate;
- (void)dealloc;
- (void)receiveMessage:(char *)message length:(int64_t)length;
- (void)sendMessage:(id)message;
- (void)sendNextQueuedMessage;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation Pipe

- (Pipe)initWithDelegate:(id)delegate pipe:(id)pipe
{
  delegateCopy = delegate;
  pipeCopy = pipe;
  v21.receiver = self;
  v21.super_class = Pipe;
  v8 = [(Pipe *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_pipe, pipe);
    v10 = objc_opt_new();
    txMessageQueue = v9->_txMessageQueue;
    v9->_txMessageQueue = v10;

    input = [(CBScalablePipe *)v9->_pipe input];
    [input setDelegate:v9];

    output = [(CBScalablePipe *)v9->_pipe output];
    [output setDelegate:v9];

    input2 = [(CBScalablePipe *)v9->_pipe input];
    v15 = +[NSRunLoop currentRunLoop];
    [input2 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

    output2 = [(CBScalablePipe *)v9->_pipe output];
    v17 = +[NSRunLoop currentRunLoop];
    [output2 scheduleInRunLoop:v17 forMode:NSDefaultRunLoopMode];

    input3 = [(CBScalablePipe *)v9->_pipe input];
    [input3 open];

    output3 = [(CBScalablePipe *)v9->_pipe output];
    [output3 open];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  input = [(CBScalablePipe *)self->_pipe input];
  v4 = +[NSRunLoop currentRunLoop];
  [input removeFromRunLoop:v4 forMode:NSDefaultRunLoopMode];

  output = [(CBScalablePipe *)self->_pipe output];
  v6 = +[NSRunLoop currentRunLoop];
  [output removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];

  input2 = [(CBScalablePipe *)self->_pipe input];
  [input2 setDelegate:0];

  output2 = [(CBScalablePipe *)self->_pipe output];
  [output2 setDelegate:0];

  input3 = [(CBScalablePipe *)self->_pipe input];
  [input3 close];

  output3 = [(CBScalablePipe *)self->_pipe output];
  [output3 close];

  v11.receiver = self;
  v11.super_class = Pipe;
  [(Pipe *)&v11 dealloc];
}

- (void)sendMessage:(id)message
{
  v4 = [NSJSONSerialization dataWithJSONObject:message options:0 error:0];
  v10 = 0;
  v5 = [NSMutableData dataWithData:v4];
  [v5 appendBytes:&v10 length:1];
  txMessageQueue = [(Pipe *)self txMessageQueue];
  v7 = [[OutboundMessage alloc] initWithData:v5];
  [txMessageQueue addObject:v7];

  txMessageQueue2 = [(Pipe *)self txMessageQueue];
  v9 = [txMessageQueue2 count];

  if (v9 == 1)
  {
    [(Pipe *)self sendNextQueuedMessage];
  }
}

- (void)sendNextQueuedMessage
{
  txMessageQueue = [(Pipe *)self txMessageQueue];
  firstObject = [txMessageQueue firstObject];

  if (firstObject)
  {
    data = [firstObject data];
    bytes = [data bytes];
    offset = [firstObject offset];

    data2 = [firstObject data];
    v9 = [data2 length];
    v10 = v9 - [firstObject offset];

    pipe = [(Pipe *)self pipe];
    output = [pipe output];
    v13 = [output write:&offset[bytes] maxLength:v10];

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
      [firstObject setOffset:{objc_msgSend(firstObject, "offset") + v13}];
      offset2 = [firstObject offset];
      data3 = [firstObject data];
      v16 = [data3 length];

      if (offset2 >= v16)
      {
        txMessageQueue2 = [(Pipe *)self txMessageQueue];
        [txMessageQueue2 removeObject:firstObject];
      }
    }
  }
}

- (void)receiveMessage:(char *)message length:(int64_t)length
{
  receivedMessage = [(Pipe *)self receivedMessage];
  v8 = receivedMessage;
  if (receivedMessage)
  {
    v9 = receivedMessage;
  }

  else
  {
    v9 = +[NSMutableData data];
  }

  v10 = v9;

  if (length < 1)
  {
    lengthCopy = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (message[v12])
      {
        ++v12;
      }

      else
      {
        [v10 appendBytes:&message[v11] length:v12 - v11];
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

    while (v12 != length);
    lengthCopy = length;
  }

  if (v11 < length)
  {
    [v10 appendBytes:&message[v11] length:lengthCopy - v11];
    [(Pipe *)self setReceivedMessage:v10];
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  v7 = streamCopy;
  switch(event)
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
      v8 = [streamCopy read:v11 maxLength:256];
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