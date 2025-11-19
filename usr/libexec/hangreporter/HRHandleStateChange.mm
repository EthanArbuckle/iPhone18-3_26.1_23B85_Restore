@interface HRHandleStateChange
- (HRHandleStateChange)initWithType:(int64_t)a3 andTimestamp:(unint64_t)a4 andName:(unint64_t)a5;
@end

@implementation HRHandleStateChange

- (HRHandleStateChange)initWithType:(int64_t)a3 andTimestamp:(unint64_t)a4 andName:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = HRHandleStateChange;
  v8 = [(HRHandleStateChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HRHandleStateChange *)v8 setType:a3];
    [(HRHandleStateChange *)v9 setTimestamp:a4];
    [(HRHandleStateChange *)v9 setName:a5];
  }

  return v9;
}

@end