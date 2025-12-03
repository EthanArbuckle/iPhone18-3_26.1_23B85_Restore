@interface CLGpsSignalQuality
- (CLGpsSignalQuality)init;
- (CLGpsSignalQuality)initWithCoder:(id)coder;
- (CLGpsSignalQuality)initWithSignalQuality:(int)quality;
@end

@implementation CLGpsSignalQuality

- (CLGpsSignalQuality)init
{
  [(CLGpsSignalQuality *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLGpsSignalQuality)initWithSignalQuality:(int)quality
{
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v4 = [(CLGpsSignalQuality *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_quality = quality;
    v6 = v4;
  }

  return v5;
}

- (CLGpsSignalQuality)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v5 = [(CLGpsSignalQuality *)&v8 init];
  if (v5)
  {
    v5->_quality = [coderCopy decodeIntForKey:@"signalQuality"];
    v6 = v5;
  }

  return v5;
}

@end