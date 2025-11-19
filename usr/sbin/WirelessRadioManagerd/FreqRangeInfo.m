@interface FreqRangeInfo
- (BOOL)isEqual:(id)a3;
- (FreqRangeInfo)init;
- (FreqRangeInfo)initWithFreq:(unint64_t)a3 Bw:(unint64_t)a4;
- (FreqRangeInfo)initWithObj:(id)a3;
- (FreqRangeInfo)initWithStartFreq:(unint64_t)a3 EndFreq:(unint64_t)a4;
- (void)applyBwLimitFromCenter:(unint64_t)a3;
- (void)applyBwLimitFromRight:(unint64_t)a3;
- (void)setBwOnly:(unint64_t)a3;
- (void)setCenterFreqOnly:(unint64_t)a3;
- (void)setEndFreqOnly:(unint64_t)a3;
- (void)setFreq:(unint64_t)a3 Bw:(unint64_t)a4;
- (void)setFreqWithObj:(id)a3;
- (void)setStartFreq:(unint64_t)a3 EndFreq:(unint64_t)a4;
- (void)setStartFreqOnly:(unint64_t)a3;
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

- (FreqRangeInfo)initWithStartFreq:(unint64_t)a3 EndFreq:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = FreqRangeInfo;
  v6 = [(FreqRangeInfo *)&v8 init];
  [(FreqRangeInfo *)v6 setStartFreq:a3 EndFreq:a4];
  v6->_Priority = 255;
  return v6;
}

- (FreqRangeInfo)initWithFreq:(unint64_t)a3 Bw:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = FreqRangeInfo;
  result = [(FreqRangeInfo *)&v7 init];
  result->_centerFreq = a3;
  result->_bw = a4;
  result->_FreqStart = a3 - (a4 >> 1);
  result->_FreqEnd = a3 + (a4 >> 1);
  result->_Priority = 255;
  return result;
}

- (FreqRangeInfo)initWithObj:(id)a3
{
  v7.receiver = self;
  v7.super_class = FreqRangeInfo;
  v3 = a3;
  v4 = [(FreqRangeInfo *)&v7 init];
  v4->_FreqStart = [v3 FreqStart];
  v4->_FreqEnd = [v3 FreqEnd];
  v4->_centerFreq = [v3 centerFreq];
  v5 = [v3 bw];

  v4->_bw = v5;
  return v4;
}

- (void)setStartFreq:(unint64_t)a3 EndFreq:(unint64_t)a4
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  self->_FreqStart = v4;
  self->_FreqEnd = v5;
  self->_centerFreq = (a4 + a3) >> 1;
  self->_bw = v5 - v4;
}

- (void)setStartFreqOnly:(unint64_t)a3
{
  self->_FreqStart = a3;
  FreqEnd = self->_FreqEnd;
  self->_centerFreq = (FreqEnd + a3) >> 1;
  self->_bw = FreqEnd - a3;
}

- (void)setEndFreqOnly:(unint64_t)a3
{
  FreqStart = self->_FreqStart;
  self->_FreqEnd = a3;
  self->_centerFreq = (FreqStart + a3) >> 1;
  self->_bw = a3 - FreqStart;
}

- (void)setFreqWithObj:(id)a3
{
  v4 = a3;
  self->_FreqStart = [v4 FreqStart];
  self->_FreqEnd = [v4 FreqEnd];
  self->_centerFreq = [v4 centerFreq];
  v5 = [v4 bw];

  self->_bw = v5;
}

- (void)setFreq:(unint64_t)a3 Bw:(unint64_t)a4
{
  self->_centerFreq = a3;
  self->_bw = a4;
  self->_FreqStart = a3 - (a4 >> 1);
  self->_FreqEnd = a3 + (a4 >> 1);
}

- (void)setCenterFreqOnly:(unint64_t)a3
{
  bw = self->_bw;
  self->_FreqStart = a3 - (bw >> 1);
  self->_FreqEnd = a3 + (bw >> 1);
  self->_centerFreq = a3;
}

- (void)setBwOnly:(unint64_t)a3
{
  self->_bw = a3;
  centerFreq = self->_centerFreq;
  self->_FreqStart = centerFreq - (a3 >> 1);
  self->_FreqEnd = centerFreq + (a3 >> 1);
}

- (void)applyBwLimitFromCenter:(unint64_t)a3
{
  if (self->_bw > a3)
  {
    v3 = self->_FreqStart + self->_FreqEnd;
    v4 = (v3 - a3) >> 1;
    v5 = (v3 + a3) >> 1;
    self->_FreqStart = v4;
    self->_FreqEnd = v5;
    self->_centerFreq = (v4 + v5) >> 1;
    self->_bw = v5 - v4;
  }
}

- (void)applyBwLimitFromRight:(unint64_t)a3
{
  if (self->_bw > a3)
  {
    FreqEnd = self->_FreqEnd;
    self->_FreqStart = FreqEnd - a3;
    self->_centerFreq = (FreqEnd - a3 + FreqEnd) >> 1;
    self->_bw = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  centerFreq = self->_centerFreq;
  v7 = 0;
  if (centerFreq == [v4 centerFreq])
  {
    bw = self->_bw;
    if (bw == [v4 bw])
    {
      v7 = 1;
    }
  }

  return v7;
}

@end