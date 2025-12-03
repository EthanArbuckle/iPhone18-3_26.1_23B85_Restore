@interface LeCigParams
- (LeCigParams)initWithCIGID:(unsigned __int8)d;
@end

@implementation LeCigParams

- (LeCigParams)initWithCIGID:(unsigned __int8)d
{
  v5.receiver = self;
  v5.super_class = LeCigParams;
  result = [(LeCigParams *)&v5 init];
  if (result)
  {
    result->_cigID = d;
    *&result->_peripheralClockAccuracy = 0;
    *&result->_sduIntervalCToP = 0;
  }

  return result;
}

@end