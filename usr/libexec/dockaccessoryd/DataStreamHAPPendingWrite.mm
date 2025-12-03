@interface DataStreamHAPPendingWrite
- (BOOL)isComplete;
- (DataStreamHAPPendingWrite)initWithData:(id)data completion:(id)completion;
- (id)popNextFrameUpToMaxLength:(unint64_t)length;
@end

@implementation DataStreamHAPPendingWrite

- (DataStreamHAPPendingWrite)initWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = DataStreamHAPPendingWrite;
  v8 = [(DataStreamHAPPendingWrite *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = objc_retainBlock(completionCopy);
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

- (BOOL)isComplete
{
  selfCopy = self;
  data = [(DataStreamHAPPendingWrite *)self data];
  v4 = [data length];
  LOBYTE(selfCopy) = v4 <= [(DataStreamHAPPendingWrite *)selfCopy bytesWritten];

  return selfCopy;
}

- (id)popNextFrameUpToMaxLength:(unint64_t)length
{
  data = [(DataStreamHAPPendingWrite *)self data];
  v6 = [data length];
  v7 = v6 - [(DataStreamHAPPendingWrite *)self bytesWritten];

  if (v7 < length)
  {
    length = v7;
  }

  data2 = [(DataStreamHAPPendingWrite *)self data];
  v9 = [data2 subdataWithRange:{-[DataStreamHAPPendingWrite bytesWritten](self, "bytesWritten"), length}];

  [(DataStreamHAPPendingWrite *)self setBytesWritten:[(DataStreamHAPPendingWrite *)self bytesWritten]+ length];

  return v9;
}

@end