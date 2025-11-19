@interface CpuPiecewiseCC
- (int)maxLoadIndexToDVDFactor1:(int)a3;
@end

@implementation CpuPiecewiseCC

- (int)maxLoadIndexToDVDFactor1:(int)a3
{
  v3 = &self->super._directMapIntercept + 1;
  v4 = *(&self->super._directMapIntercept + 1);
  directMapIntercept_low = LODWORD(self->super._directMapIntercept);
  if (v4 <= a3)
  {
    v4 = LODWORD(v3[directMapIntercept_low - 1]);
    if (v4 >= a3)
    {
      v4 = a3;
    }
  }

  v6 = 1;
  if (directMapIntercept_low >= 2)
  {
    while (v4 >= SLODWORD(v3[v6]))
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
    return ((((LODWORD(v9) - v4) * self->_maxLoadIndexLimits[v7 + 7]) + (self->_maxLoadIndexLimits[v6 + 7] * (v4 - LODWORD(v8)))) / (LODWORD(v9) - LODWORD(v8)));
  }
}

@end