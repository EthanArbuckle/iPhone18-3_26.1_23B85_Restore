@interface TransparencyGPBDuration
+ (id)descriptor;
- (TransparencyGPBDuration)initWithTimeInterval:(double)interval;
- (void)setTimeInterval:(double)interval;
@end

@implementation TransparencyGPBDuration

+ (id)descriptor
{
  result = qword_1000AED88;
  if (!qword_1000AED88)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBDuration messageName:@"Duration" fileDescription:off_1000ADDB8 fields:&off_1000ADD78 fieldCount:2 storageSize:16 flags:v3];
    qword_1000AED88 = result;
  }

  return result;
}

- (TransparencyGPBDuration)initWithTimeInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = TransparencyGPBDuration;
  v4 = [(TransparencyGPBMessage *)&v7 init];
  if (v4)
  {
    __y = 0.0;
    v5 = (modf(interval, &__y) * 1000000000.0);
    [(TransparencyGPBDuration *)v4 setSeconds:__y];
    [(TransparencyGPBDuration *)v4 setNanos:v5];
  }

  return v4;
}

- (void)setTimeInterval:(double)interval
{
  __y = 0.0;
  v4 = (modf(interval, &__y) * 1000000000.0);
  [(TransparencyGPBDuration *)self setSeconds:__y];

  [(TransparencyGPBDuration *)self setNanos:v4];
}

@end