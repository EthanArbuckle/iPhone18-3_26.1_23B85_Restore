@interface MaxLoadIndexTableSection
- (MaxLoadIndexTableSection)initWithConstantMaxLI:(unint64_t)i;
- (unint64_t)getMaxLI:(unint64_t)i;
- (unint64_t)getReleaseMaxLI:(BOOL)i releaseRate:(int)rate;
@end

@implementation MaxLoadIndexTableSection

- (MaxLoadIndexTableSection)initWithConstantMaxLI:(unint64_t)i
{
  v5.receiver = self;
  v5.super_class = MaxLoadIndexTableSection;
  result = [(MaxLoadIndexTableSection *)&v5 init];
  if (result)
  {
    result->_constantMaxLI = i;
    result->_releaseMaxLI = i;
    result->_releaseRate = 0;
  }

  return result;
}

- (unint64_t)getMaxLI:(unint64_t)i
{
  constantMaxLI = self->_constantMaxLI;
  self->_maxLI = constantMaxLI;
  return constantMaxLI;
}

- (unint64_t)getReleaseMaxLI:(BOOL)i releaseRate:(int)rate
{
  if (rate == 999)
  {
    maxLI = self->_maxLI;
  }

  else
  {
    maxLI = self->_releaseMaxLI;
    if (!i)
    {
      maxLI += rate;
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