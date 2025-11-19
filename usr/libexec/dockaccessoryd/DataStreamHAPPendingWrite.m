@interface DataStreamHAPPendingWrite
- (BOOL)isComplete;
- (DataStreamHAPPendingWrite)initWithData:(id)a3 completion:(id)a4;
- (id)popNextFrameUpToMaxLength:(unint64_t)a3;
@end

@implementation DataStreamHAPPendingWrite

- (DataStreamHAPPendingWrite)initWithData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DataStreamHAPPendingWrite;
  v8 = [(DataStreamHAPPendingWrite *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = objc_retainBlock(v7);
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

- (BOOL)isComplete
{
  v2 = self;
  v3 = [(DataStreamHAPPendingWrite *)self data];
  v4 = [v3 length];
  LOBYTE(v2) = v4 <= [(DataStreamHAPPendingWrite *)v2 bytesWritten];

  return v2;
}

- (id)popNextFrameUpToMaxLength:(unint64_t)a3
{
  v5 = [(DataStreamHAPPendingWrite *)self data];
  v6 = [v5 length];
  v7 = v6 - [(DataStreamHAPPendingWrite *)self bytesWritten];

  if (v7 < a3)
  {
    a3 = v7;
  }

  v8 = [(DataStreamHAPPendingWrite *)self data];
  v9 = [v8 subdataWithRange:{-[DataStreamHAPPendingWrite bytesWritten](self, "bytesWritten"), a3}];

  [(DataStreamHAPPendingWrite *)self setBytesWritten:[(DataStreamHAPPendingWrite *)self bytesWritten]+ a3];

  return v9;
}

@end