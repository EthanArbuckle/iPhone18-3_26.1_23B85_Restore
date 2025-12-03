@interface LeCisParams
- (LeCisParams)initWithCISID:(unsigned __int8)d;
@end

@implementation LeCisParams

- (LeCisParams)initWithCISID:(unsigned __int8)d
{
  v5.receiver = self;
  v5.super_class = LeCisParams;
  result = [(LeCisParams *)&v5 init];
  if (result)
  {
    result->_cisID = d;
    *&result->_maxSduCToP = 0;
    *&result->_phyCToP = 0;
  }

  return result;
}

@end