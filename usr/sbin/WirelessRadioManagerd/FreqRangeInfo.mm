@interface FreqRangeInfo
- (BOOL)isEqual:(id)equal;
- (FreqRangeInfo)init;
- (FreqRangeInfo)initWithFreq:(unint64_t)freq Bw:(unint64_t)bw;
- (FreqRangeInfo)initWithObj:(id)obj;
- (FreqRangeInfo)initWithStartFreq:(unint64_t)freq EndFreq:(unint64_t)endFreq;
- (void)applyBwLimitFromCenter:(unint64_t)center;
- (void)applyBwLimitFromRight:(unint64_t)right;
- (void)setBwOnly:(unint64_t)only;
- (void)setCenterFreqOnly:(unint64_t)only;
- (void)setEndFreqOnly:(unint64_t)only;
- (void)setFreq:(unint64_t)freq Bw:(unint64_t)bw;
- (void)setFreqWithObj:(id)obj;
- (void)setStartFreq:(unint64_t)freq EndFreq:(unint64_t)endFreq;
- (void)setStartFreqOnly:(unint64_t)only;
@end

@implementation FreqRangeInfo

- (FreqRangeInfo)init
{
  v3.receiver = self;
  v3.super_class = FreqRangeInfo;
  result = [(FreqRangeInfo *)&v3 init];
  *&result->_FreqStart = 0u;
  *&result->_centerFreq = 0u;
  result->_Priority = 255;
  return result;
}

- (FreqRangeInfo)initWithStartFreq:(unint64_t)freq EndFreq:(unint64_t)endFreq
{
  v8.receiver = self;
  v8.super_class = FreqRangeInfo;
  v6 = [(FreqRangeInfo *)&v8 init];
  [(FreqRangeInfo *)v6 setStartFreq:freq EndFreq:endFreq];
  v6->_Priority = 255;
  return v6;
}

- (FreqRangeInfo)initWithFreq:(unint64_t)freq Bw:(unint64_t)bw
{
  v7.receiver = self;
  v7.super_class = FreqRangeInfo;
  result = [(FreqRangeInfo *)&v7 init];
  result->_centerFreq = freq;
  result->_bw = bw;
  result->_FreqStart = freq - (bw >> 1);
  result->_FreqEnd = freq + (bw >> 1);
  result->_Priority = 255;
  return result;
}

- (FreqRangeInfo)initWithObj:(id)obj
{
  v7.receiver = self;
  v7.super_class = FreqRangeInfo;
  objCopy = obj;
  v4 = [(FreqRangeInfo *)&v7 init];
  v4->_FreqStart = [objCopy FreqStart];
  v4->_FreqEnd = [objCopy FreqEnd];
  v4->_centerFreq = [objCopy centerFreq];
  v5 = [objCopy bw];

  v4->_bw = v5;
  return v4;
}

- (void)setStartFreq:(unint64_t)freq EndFreq:(unint64_t)endFreq
{
  if (endFreq >= freq)
  {
    endFreqCopy = freq;
  }

  else
  {
    endFreqCopy = endFreq;
  }

  if (endFreq <= freq)
  {
    endFreqCopy2 = freq;
  }

  else
  {
    endFreqCopy2 = endFreq;
  }

  self->_FreqStart = endFreqCopy;
  self->_FreqEnd = endFreqCopy2;
  self->_centerFreq = (endFreq + freq) >> 1;
  self->_bw = endFreqCopy2 - endFreqCopy;
}

- (void)setStartFreqOnly:(unint64_t)only
{
  self->_FreqStart = only;
  FreqEnd = self->_FreqEnd;
  self->_centerFreq = (FreqEnd + only) >> 1;
  self->_bw = FreqEnd - only;
}

- (void)setEndFreqOnly:(unint64_t)only
{
  FreqStart = self->_FreqStart;
  self->_FreqEnd = only;
  self->_centerFreq = (FreqStart + only) >> 1;
  self->_bw = only - FreqStart;
}

- (void)setFreqWithObj:(id)obj
{
  objCopy = obj;
  self->_FreqStart = [objCopy FreqStart];
  self->_FreqEnd = [objCopy FreqEnd];
  self->_centerFreq = [objCopy centerFreq];
  v5 = [objCopy bw];

  self->_bw = v5;
}

- (void)setFreq:(unint64_t)freq Bw:(unint64_t)bw
{
  self->_centerFreq = freq;
  self->_bw = bw;
  self->_FreqStart = freq - (bw >> 1);
  self->_FreqEnd = freq + (bw >> 1);
}

- (void)setCenterFreqOnly:(unint64_t)only
{
  bw = self->_bw;
  self->_FreqStart = only - (bw >> 1);
  self->_FreqEnd = only + (bw >> 1);
  self->_centerFreq = only;
}

- (void)setBwOnly:(unint64_t)only
{
  self->_bw = only;
  centerFreq = self->_centerFreq;
  self->_FreqStart = centerFreq - (only >> 1);
  self->_FreqEnd = centerFreq + (only >> 1);
}

- (void)applyBwLimitFromCenter:(unint64_t)center
{
  if (self->_bw > center)
  {
    v3 = self->_FreqStart + self->_FreqEnd;
    v4 = (v3 - center) >> 1;
    v5 = (v3 + center) >> 1;
    self->_FreqStart = v4;
    self->_FreqEnd = v5;
    self->_centerFreq = (v4 + v5) >> 1;
    self->_bw = v5 - v4;
  }
}

- (void)applyBwLimitFromRight:(unint64_t)right
{
  if (self->_bw > right)
  {
    FreqEnd = self->_FreqEnd;
    self->_FreqStart = FreqEnd - right;
    self->_centerFreq = (FreqEnd - right + FreqEnd) >> 1;
    self->_bw = right;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  centerFreq = self->_centerFreq;
  v7 = 0;
  if (centerFreq == [equalCopy centerFreq])
  {
    bw = self->_bw;
    if (bw == [equalCopy bw])
    {
      v7 = 1;
    }
  }

  return v7;
}

@end