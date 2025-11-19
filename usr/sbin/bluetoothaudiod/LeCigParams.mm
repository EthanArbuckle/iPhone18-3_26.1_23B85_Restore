@interface LeCigParams
- (LeCigParams)initWithCIGID:(unsigned __int8)a3;
@end

@implementation LeCigParams

- (LeCigParams)initWithCIGID:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = LeCigParams;
  result = [(LeCigParams *)&v5 init];
  if (result)
  {
    result->_cigID = a3;
    *&result->_peripheralClockAccuracy = 0;
    *&result->_sduIntervalCToP = 0;
  }

  return result;
}

@end