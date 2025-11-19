@interface PTPTransaction
- (char)bufMutableBytes;
- (char)rxDataMutableBytes;
- (unsigned)bufSize;
- (unsigned)rxDataBufferSize;
- (void)dealloc;
@end

@implementation PTPTransaction

- (unsigned)rxDataBufferSize
{
  if (self->_rxReadBuffer)
  {
    return 0x100000;
  }

  else
  {
    return [(PTPWrappedBytes *)self->_rxDataBuffer capacity:v2];
  }
}

- (char)rxDataMutableBytes
{
  if (self->_rxReadBuffer)
  {
    return self->_rxReadBuffer;
  }

  else
  {
    return [(PTPWrappedBytes *)self->_rxDataBuffer mutableBytes];
  }
}

- (char)bufMutableBytes
{
  if ([(PTPTransaction *)self dataExpected]&& ![(PTPTransaction *)self dataReceived])
  {
    if ([(PTPTransaction *)self dataExpected])
    {

      return [(PTPTransaction *)self rxDataMutableBytes];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(PTPTransaction *)self rxResponseMutableBytes];
  }
}

- (unsigned)bufSize
{
  if ([(PTPTransaction *)self dataExpected]&& ![(PTPTransaction *)self dataReceived])
  {
    result = [(PTPTransaction *)self dataExpected];
    if (result)
    {

      return [(PTPTransaction *)self rxDataBufferSize];
    }
  }

  else
  {

    return [(PTPTransaction *)self rxResponseBufferSize];
  }

  return result;
}

- (void)dealloc
{
  rxReadBuffer = self->_rxReadBuffer;
  if (rxReadBuffer)
  {
    free(rxReadBuffer);
  }

  v4.receiver = self;
  v4.super_class = PTPTransaction;
  [(PTPTransaction *)&v4 dealloc];
}

@end