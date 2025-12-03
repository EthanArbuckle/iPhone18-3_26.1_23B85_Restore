@interface TransparencyGPBTimestamp
+ (id)descriptor;
- (NSDate)date;
- (TransparencyGPBTimestamp)initWithDate:(id)date;
- (TransparencyGPBTimestamp)initWithTimeIntervalSince1970:(double)since1970;
- (void)setDate:(id)date;
- (void)setTimeIntervalSince1970:(double)since1970;
@end

@implementation TransparencyGPBTimestamp

+ (id)descriptor
{
  result = qword_10015D068;
  if (!qword_10015D068)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBTimestamp messageName:@"Timestamp" fileDescription:off_1001557D8 fields:&off_100155798 fieldCount:2 storageSize:16 flags:v3];
    qword_10015D068 = result;
  }

  return result;
}

- (TransparencyGPBTimestamp)initWithDate:(id)date
{
  [date timeIntervalSince1970];

  return [(TransparencyGPBTimestamp *)self initWithTimeIntervalSince1970:?];
}

- (TransparencyGPBTimestamp)initWithTimeIntervalSince1970:(double)since1970
{
  v9.receiver = self;
  v9.super_class = TransparencyGPBTimestamp;
  v4 = [(TransparencyGPBMessage *)&v9 init];
  if (v4)
  {
    __y = 0.0;
    v5 = modf(since1970, &__y);
    v6 = __y;
    if (v5 < 0.0)
    {
      v6 = __y + -1.0;
      v5 = v5 + 1.0;
    }

    v7 = (v5 * 1000000000.0);
    [(TransparencyGPBTimestamp *)v4 setSeconds:v6];
    [(TransparencyGPBTimestamp *)v4 setNanos:v7];
  }

  return v4;
}

- (NSDate)date
{
  [(TransparencyGPBTimestamp *)self timeIntervalSince1970];

  return [NSDate dateWithTimeIntervalSince1970:?];
}

- (void)setDate:(id)date
{
  [date timeIntervalSince1970];

  [(TransparencyGPBTimestamp *)self setTimeIntervalSince1970:?];
}

- (void)setTimeIntervalSince1970:(double)since1970
{
  __y = 0.0;
  v4 = modf(since1970, &__y);
  v5 = __y;
  if (v4 < 0.0)
  {
    v5 = __y + -1.0;
    v4 = v4 + 1.0;
  }

  v6 = (v4 * 1000000000.0);
  [(TransparencyGPBTimestamp *)self setSeconds:v5];

  [(TransparencyGPBTimestamp *)self setNanos:v6];
}

@end