@interface MaxLoadIndexTableSection
- (MaxLoadIndexTableSection)initWithConstantMaxLI:(unint64_t)a3;
- (unint64_t)getMaxLI:(unint64_t)a3;
- (unint64_t)getReleaseMaxLI:(BOOL)a3 releaseRate:(int)a4;
@end

@implementation MaxLoadIndexTableSection

- (MaxLoadIndexTableSection)initWithConstantMaxLI:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MaxLoadIndexTableSection;
  result = [(MaxLoadIndexTableSection *)&v5 init];
  if (result)
  {
    result->_constantMaxLI = a3;
    result->_releaseMaxLI = a3;
    result->_releaseRate = 0;
  }

  return result;
}

- (unint64_t)getMaxLI:(unint64_t)a3
{
  constantMaxLI = self->_constantMaxLI;
  self->_maxLI = constantMaxLI;
  return constantMaxLI;
}

- (unint64_t)getReleaseMaxLI:(BOOL)a3 releaseRate:(int)a4
{
  if (a4 == 999)
  {
    maxLI = self->_maxLI;
  }

  else
  {
    maxLI = self->_releaseMaxLI;
    if (!a3)
    {
      maxLI += a4;
    }

    if (maxLI >= self->_maxLI)
    {
      maxLI = self->_maxLI;
    }
  }

  self->_releaseMaxLI = maxLI;
  return maxLI;
}

@end