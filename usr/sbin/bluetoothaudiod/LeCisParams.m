@interface LeCisParams
- (LeCisParams)initWithCISID:(unsigned __int8)a3;
@end

@implementation LeCisParams

- (LeCisParams)initWithCISID:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = LeCisParams;
  result = [(LeCisParams *)&v5 init];
  if (result)
  {
    result->_cisID = a3;
    *&result->_maxSduCToP = 0;
    *&result->_phyCToP = 0;
  }

  return result;
}

@end