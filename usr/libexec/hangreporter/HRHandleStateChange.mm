@interface HRHandleStateChange
- (HRHandleStateChange)initWithType:(int64_t)type andTimestamp:(unint64_t)timestamp andName:(unint64_t)name;
@end

@implementation HRHandleStateChange

- (HRHandleStateChange)initWithType:(int64_t)type andTimestamp:(unint64_t)timestamp andName:(unint64_t)name
{
  v11.receiver = self;
  v11.super_class = HRHandleStateChange;
  v8 = [(HRHandleStateChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HRHandleStateChange *)v8 setType:type];
    [(HRHandleStateChange *)v9 setTimestamp:timestamp];
    [(HRHandleStateChange *)v9 setName:name];
  }

  return v9;
}

@end