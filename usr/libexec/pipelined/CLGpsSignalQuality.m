@interface CLGpsSignalQuality
- (CLGpsSignalQuality)init;
- (CLGpsSignalQuality)initWithCoder:(id)a3;
- (CLGpsSignalQuality)initWithSignalQuality:(int)a3;
@end

@implementation CLGpsSignalQuality

- (CLGpsSignalQuality)init
{
  [(CLGpsSignalQuality *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLGpsSignalQuality)initWithSignalQuality:(int)a3
{
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v4 = [(CLGpsSignalQuality *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_quality = a3;
    v6 = v4;
  }

  return v5;
}

- (CLGpsSignalQuality)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v5 = [(CLGpsSignalQuality *)&v8 init];
  if (v5)
  {
    v5->_quality = [v4 decodeIntForKey:@"signalQuality"];
    v6 = v5;
  }

  return v5;
}

@end