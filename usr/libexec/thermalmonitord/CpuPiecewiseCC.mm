@interface CpuPiecewiseCC
- (int)maxLoadIndexToDVDFactor1:(int)factor1;
@end

@implementation CpuPiecewiseCC

- (int)maxLoadIndexToDVDFactor1:(int)factor1
{
  v3 = &self->super._directMapIntercept + 1;
  factor1Copy = *(&self->super._directMapIntercept + 1);
  directMapIntercept_low = LODWORD(self->super._directMapIntercept);
  if (factor1Copy <= factor1)
  {
    factor1Copy = LODWORD(v3[directMapIntercept_low - 1]);
    if (factor1Copy >= factor1)
    {
      factor1Copy = factor1;
    }
  }

  v6 = 1;
  if (directMapIntercept_low >= 2)
  {
    while (factor1Copy >= SLODWORD(v3[v6]))
    {
      if (directMapIntercept_low == ++v6)
      {
        *&v6 = self->super._directMapIntercept;
        break;
      }
    }
  }

  v7 = v6 - 1;
  v8 = v3[v7];
  v9 = v3[v6];
  if (LODWORD(v9) == LODWORD(v8))
  {
    return 0;
  }

  else
  {
    return ((((LODWORD(v9) - factor1Copy) * self->_maxLoadIndexLimits[v7 + 7]) + (self->_maxLoadIndexLimits[v6 + 7] * (factor1Copy - LODWORD(v8)))) / (LODWORD(v9) - LODWORD(v8)));
  }
}

@end