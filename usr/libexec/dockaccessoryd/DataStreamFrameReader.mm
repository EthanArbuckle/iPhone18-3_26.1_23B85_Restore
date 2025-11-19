@interface DataStreamFrameReader
+ (id)logCategory;
- (DataStreamFrameReader)init;
- (id)popRawFrame;
- (unint64_t)_getCurrentFrameSize;
- (unint64_t)bytesNeededForCurrentFrame;
- (void)_readFrameHeaderIfPossible;
- (void)pushFrameData:(id)a3;
- (void)reset;
@end

@implementation DataStreamFrameReader

- (DataStreamFrameReader)init
{
  v3.receiver = self;
  v3.super_class = DataStreamFrameReader;
  result = [(DataStreamFrameReader *)&v3 init];
  if (result)
  {
    *&result->_headerInfoRead = 0;
    result->_payloadLength = 0;
    result->_currentframeType = 0;
  }

  return result;
}

- (unint64_t)_getCurrentFrameSize
{
  if (self->_currentframeType - 1 > 2)
  {
    return 0;
  }

  else
  {
    return self->_payloadLength + qword_10023A7A8[(self->_currentframeType - 1)];
  }
}

- (unint64_t)bytesNeededForCurrentFrame
{
  if ([(DataStreamFrameReader *)self hasFailed])
  {
    return 0;
  }

  partialFrame = self->_partialFrame;
  if (!partialFrame)
  {
    return 4;
  }

  size = dispatch_data_get_size(partialFrame);
  v6 = size;
  if (!self->_headerInfoRead)
  {
    return 4 - size;
  }

  v7 = [(DataStreamFrameReader *)self _getCurrentFrameSize];
  if (v7 >= v6)
  {
    return v7 - v6;
  }

  else
  {
    return 0;
  }
}

- (void)pushFrameData:(id)a3
{
  data2 = a3;
  if (![(DataStreamFrameReader *)self hasFailed])
  {
    partialFrame = self->_partialFrame;
    if (partialFrame)
    {
      concat = dispatch_data_create_concat(partialFrame, data2);
    }

    else
    {
      concat = data2;
    }

    v6 = self->_partialFrame;
    self->_partialFrame = concat;

    [(DataStreamFrameReader *)self _readFrameHeaderIfPossible];
  }
}

- (void)_readFrameHeaderIfPossible
{
  if (!self->_headerInfoRead)
  {
    v3 = [DataStreamMessageCoder readHeaderFromPartialData:self->_partialFrame frameType:&self->_currentframeType payloadLength:&self->_payloadLength];
    self->_headerInfoRead = v3;
    if (v3)
    {
      if (self->_payloadLength - 1048572 <= 0xFFFFFFFFFFEFFFFFLL)
      {
        partialFrame = self->_partialFrame;
        self->_partialFrame = 0;

        self->_streamFailed = 1;
      }

      if (self->_currentframeType - 1 >= 3)
      {
        v5 = self->_partialFrame;
        self->_partialFrame = 0;

        self->_streamFailed = 1;
      }
    }
  }
}

- (void)reset
{
  partialFrame = self->_partialFrame;
  self->_partialFrame = 0;

  *&self->_headerInfoRead = 0;
}

- (id)popRawFrame
{
  if ([(DataStreamFrameReader *)self hasCompleteFrame])
  {
    v3 = [(DataStreamFrameReader *)self _getCurrentFrameSize];
    subrange = dispatch_data_create_subrange(self->_partialFrame, 0, v3);
    partialFrame = self->_partialFrame;
    size = dispatch_data_get_size(partialFrame);
    v7 = size - v3;
    if (size == v3)
    {
      [(DataStreamFrameReader *)self reset];
    }

    else
    {
      v8 = dispatch_data_create_subrange(partialFrame, v3, v7);
      [(DataStreamFrameReader *)self reset];
      [(DataStreamFrameReader *)self pushFrameData:v8];
    }
  }

  else
  {
    subrange = 0;
  }

  return subrange;
}

+ (id)logCategory
{
  if (qword_1002ACBD8 != -1)
  {
    sub_1001F7EBC();
  }

  v3 = qword_1002ACBE0;

  return v3;
}

@end