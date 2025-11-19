@interface TransparencyGPBDuration
+ (id)descriptor;
- (TransparencyGPBDuration)initWithTimeInterval:(double)a3;
- (void)setTimeInterval:(double)a3;
@end

@implementation TransparencyGPBDuration

+ (id)descriptor
{
  result = qword_10039C5E8;
  if (!qword_10039C5E8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBDuration messageName:@"Duration" fileDescription:off_100388DB0 fields:&off_100388D70 fieldCount:2 storageSize:16 flags:v3];
    qword_10039C5E8 = result;
  }

  return result;
}

- (TransparencyGPBDuration)initWithTimeInterval:(double)a3
{
  v7.receiver = self;
  v7.super_class = TransparencyGPBDuration;
  v4 = [(TransparencyGPBMessage *)&v7 init];
  if (v4)
  {
    __y = 0.0;
    v5 = (modf(a3, &__y) * 1000000000.0);
    [(TransparencyGPBDuration *)v4 setSeconds:__y];
    [(TransparencyGPBDuration *)v4 setNanos:v5];
  }

  return v4;
}

- (void)setTimeInterval:(double)a3
{
  __y = 0.0;
  v4 = (modf(a3, &__y) * 1000000000.0);
  [(TransparencyGPBDuration *)self setSeconds:__y];

  [(TransparencyGPBDuration *)self setNanos:v4];
}

@end